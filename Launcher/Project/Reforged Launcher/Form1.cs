using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Threading.Tasks;
using System.Windows.Forms;
using Renci.SshNet;
using Renci.SshNet.Sftp;
using System.IO;

namespace Reforged_Launcher {
    public partial class Form1 : Form {

        #region FIELDS

        //Basic data
        string username = "stefanzalan.wowreforged.com";
        string password = "2pCVm2BB";
        string globalAddress = "stefanzalan.wowreforged.com";
        int globalPort = 22;
        string remotePath = "/web/download/launcher";

        //Window drag data
        const int WM_NCLBUTTONDOWN = 0xA1;
        const int HT_CAPTION = 0x2;
        [System.Runtime.InteropServices.DllImportAttribute("user32.dll")]
        static extern int SendMessage(IntPtr hWnd, int Msg, int wParam, int lParam);
        [System.Runtime.InteropServices.DllImportAttribute("user32.dll")]
        static extern bool ReleaseCapture();

        //SSH data
        SftpClient CSSH = null;
        string serverLauncherVersion = "";
        string serverClientVersion = "";

        //Other data
        string wowLauncherName = "Reforged_Launcher";
        Label[] labels = new Label[6];
        PaintEventHandler handler;

        string applicationPath = AppDomain.CurrentDomain.BaseDirectory;

        #endregion

        public Form1() {
            CheckIfAlreadyRunning();
            InitializeComponent();
            SetUpButtons();
            AddLabels();
        }

        private void AddLabels() {
            labels[0] = news1;
            labels[1] = news2;
            labels[2] = news3;
            labels[3] = news4;
            labels[4] = news5;
            labels[5] = news6;
        }

        private void SetUpButtons() {
            moreNewsButton.MouseEnter += new EventHandler(moreNewsButton_MouseEnter);
            moreNewsButton.MouseLeave += new EventHandler(moreNewsButton_MouseLeave);
            moreNewsButton.FlatAppearance.MouseOverBackColor = Color.Transparent;
            moreNewsButton.FlatAppearance.MouseDownBackColor = Color.Transparent;

            playButton.MouseEnter += new EventHandler(playButton_MouseEnter);
            playButton.MouseLeave += new EventHandler(playButton_MouseLeave);
            playButton.FlatAppearance.MouseOverBackColor = Color.Transparent;
            playButton.FlatAppearance.MouseDownBackColor = Color.Transparent;

            optionsButton.MouseEnter += new EventHandler(optionsButton_MouseEnter);
            optionsButton.MouseLeave += new EventHandler(optionsButton_MouseLeave);
            optionsButton.FlatAppearance.MouseOverBackColor = Color.Transparent;
            optionsButton.FlatAppearance.MouseDownBackColor = Color.Transparent;

            serversButton.MouseEnter += new EventHandler(serversButton_MouseEnter);
            serversButton.MouseLeave += new EventHandler(serversButton_MouseLeave);
            serversButton.FlatAppearance.MouseOverBackColor = Color.Transparent;
            serversButton.FlatAppearance.MouseDownBackColor = Color.Transparent;

            websiteButton.MouseEnter += new EventHandler(websiteButton_MouseEnter);
            websiteButton.MouseLeave += new EventHandler(websiteButton_MouseLeave);
            websiteButton.FlatAppearance.MouseOverBackColor = Color.Transparent;
            websiteButton.FlatAppearance.MouseDownBackColor = Color.Transparent;

            minimizeButton.MouseEnter += new EventHandler(minimizeButton_MouseEnter);
            minimizeButton.MouseLeave += new EventHandler(minimizeButton_MouseLeave);
            minimizeButton.FlatAppearance.MouseOverBackColor = Color.Transparent;
            minimizeButton.FlatAppearance.MouseDownBackColor = Color.Transparent;

            closeButton.MouseEnter += new EventHandler(closeButton_MouseEnter);
            closeButton.MouseLeave += new EventHandler(closeButton_MouseLeave);
            closeButton.FlatAppearance.MouseOverBackColor = Color.Transparent;
            closeButton.FlatAppearance.MouseDownBackColor = Color.Transparent;
        }

        private async void Form1_Load(object sender, EventArgs e) {
            DisableEnableButtons(true);
            connectionInformation.Text = "";

            await Task.Delay(500);
            if (!File.Exists(applicationPath + "Renci.SshNet.dll") || !File.Exists(applicationPath + "Renci.SshNet.xml")) {
                await Task.Delay(1000);
                if (!File.Exists(applicationPath + "Renci.SshNet.dll") || !File.Exists(applicationPath + "Renci.SshNet.xml")) {
                    MessageBox.Show("Missing files, please download the launcher from the website!", "Missing files", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    Application.Exit();
                }
            }

            if (!Connect()) {
                    MessageBox.Show("Could not connect to the server!",
                    "Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Application.Exit();
            }
            await DownloadAndStoreServerVersions();

            if(CheckVersionForUpdate("LauncherVersion", serverLauncherVersion)) {
                await UpdateLauncher();
            }
            if(CheckVersionForUpdate("ClientVersion", serverClientVersion) || !(File.Exists(applicationPath + "//..//Data//patch-9.MPQ"))) {
                await UpdateClient();
            }

            LoadPicture();
            DrawClientVersionNumber();
            UpdateNews();
            UpdateRealmlist();

            //Update client version number
            picture.Invalidate();

            //DeleteTemp();
            connectionInformation.Text = "Everything is up to date!";
            DisableEnableButtons(false);
        }

        private void CheckIfAlreadyRunning() {
            if (System.Diagnostics.Process.GetProcessesByName(System.IO.Path.GetFileNameWithoutExtension(System.Reflection.Assembly.GetEntryAssembly().Location)).Length > 1) {
                MessageBox.Show("Application is already running", System.Diagnostics.Process.GetCurrentProcess().ProcessName);
                System.Diagnostics.Process.GetCurrentProcess().Kill();
            }
        }


        #region BUTTONS

        private void PlayButton_Click(object sender, EventArgs e) {
            string path = applicationPath + "..\\WoW.exe";
            if(!System.IO.File.Exists(path)) MessageBox.Show(
                "Please put this launcher into your Vanilla World of Warcraft directory!",
                "Error - WoW.exe not found!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            else {
                ProcessStartInfo info = new ProcessStartInfo(applicationPath + "\\WoW.exe");
                string dir = Directory.GetCurrentDirectory();
                dir = dir.Substring(0, dir.LastIndexOf("\\"));
                dir += "\\WoW.exe";
                Process.Start(dir);
                this.Close();
            }
        }
        
        private void Form1_MouseDown_1(object sender, MouseEventArgs e) {
            if(e.Button == MouseButtons.Left) {
                ReleaseCapture();
                SendMessage(Handle, WM_NCLBUTTONDOWN, HT_CAPTION, 0);
            }
        }


        private void closeButton_Click(object sender, EventArgs e) {
            this.Close();
        }

        private void minimizeButton_Click(object sender, EventArgs e) {
            this.WindowState = FormWindowState.Minimized;
        }

        #endregion

        #region CONNECTION

        private bool Connect() {
            if (!SSHDir(username, password, globalAddress)) return false;

            return true;
        }

        private bool SSHDir(string user, string password, string address) {
            connectionInformation.Text = "Connecting...";
            try {
                CSSH = new SftpClient(address, globalPort, user, password);
                try {
                    CSSH.Connect();          //SSH connection
                } catch(Exception ex) {
                    MessageBox.Show(ex.Message, "Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }

                if(CSSH.IsConnected) {
                    connectionInformation.Text = "Connected!";

                    //Do stuff
                } else {
                    connectionInformation.Text = "An error occured while connecting!";
                    return false;
                }
            } catch {
                MessageBox.Show("An error ocurred while getting folder names.", "Error",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            
            return true;
        }

        #endregion

        #region METHODS


        private void LoadPicture() {
            if (Directory.Exists(applicationPath + "Temp")) {
                string path = applicationPath + "Temp\\picture.png";
                if (File.Exists(path)) {
                    picture.Image = new Bitmap(path);
                } else {
                    UpdateImage();
                    if (File.Exists(path)) {
                        picture.Image = new Bitmap(path);
                    }
                }
            }
        }

        private void DrawClientVersionNumber() {
            //Version number should be above the picture
            handler =
                new PaintEventHandler((sender, e) => {
                    e.Graphics.TextRenderingHint = System.Drawing.Text.TextRenderingHint.ClearTypeGridFit;

                    string text = clientLabel.Text + " " + clientVersion.Text;
                    Font font = new Font(Font.FontFamily, 11.0f);
                    SizeF textSize = e.Graphics.MeasureString(text, font);

                    PointF locationToDraw = new PointF();
                    locationToDraw.X = picture.Width - textSize.Width - (textSize.Width / 4);
                    locationToDraw.Y = picture.Height - textSize.Height - (textSize.Height / 3);

                    e.Graphics.DrawString(text, font, Brushes.Gray, locationToDraw);
                });
            picture.Paint += handler;
        }

        private async Task UpdateLauncher() {
            connectionInformation.Text = "Updating launcher";
            await Task.Delay(500);

            //Download new launcher & launcher restarter bat to temp
            IEnumerable<SftpFile> result = CSSH.ListDirectory(remotePath);
            SftpFile launcher = null;
            SftpFile restarter = null;
            foreach(SftpFile item in result) {
                if(item.Name.Contains(wowLauncherName))
                    launcher = item;
                if(item.Name.Contains("Reforged_Launcher_Restarter"))
                    restarter = item;
                if(launcher != null && restarter != null)
                    break;
            }

            UpdateImage();

            if (launcher != null) DownloadFile(launcher, applicationPath + "Temp\\");
            
            if(restarter != null) DownloadFile(restarter, applicationPath + "Temp\\");
            

            if(restarter == null || launcher == null) return;
            
            await Task.Delay(500);

            //Connection Information update
            connectionInformation.Text = "Restarting launcher";

            await Task.Delay(500);

            //Start bat file
            string filePath = applicationPath + "Temp\\Reforged_Launcher_Restarter.exe";
            if(File.Exists(filePath)) {
                Process.Start(filePath);
            } else {
                MessageBox.Show("Launcher restarter not found!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Application.Exit();
            }
            Environment.Exit(0);
        }

        private void UpdateNews() {
            //Download the new news.txt to the temp folder
            IEnumerable<SftpFile> result = CSSH.ListDirectory(remotePath);
            SftpFile news = null;
            foreach(SftpFile item in result) {
                if(item.Name.Contains("News")) {
                    news = item;
                    break;
                }
            }
            if(news != null) {
                DownloadFile(news, applicationPath + "Temp\\");
            }

            string path = applicationPath + "Temp\\News.txt";

            //Setup the launcher news texts, then delete the file
            if(File.Exists(path)) {
                string[] lines = File.ReadAllLines(path);
                for(int i = 0; i < lines.Length; i++) {
                    labels[i].Text = lines[i];
                }

                File.Delete(path);
            }
        }

        private void UpdateImage() {
        //Download the new picture.png to the temp folder
            IEnumerable<SftpFile> result = CSSH.ListDirectory(remotePath);
            SftpFile image = null;
            foreach(SftpFile item in result) {
                if(item.Name.Contains("picture")) {
                    image = item;
                    break;
                }
            }
            if(image != null) {
                DownloadFile(image, applicationPath + "Temp\\");
            }
        }

        private void UpdateRealmlist() {
            File.WriteAllText(applicationPath + "..\\" + "realmlist.wtf", "set realmlist wowreforged.ddns.net");
        }

        private void DisableEnableButtons(bool disable) {
            if(disable) {
                playButton.Enabled = false;
                optionsButton.Enabled = false;
                minimizeButton.Enabled = false;
                closeButton.Enabled = false;
                moreNewsButton.Enabled = false;
                serversButton.Enabled = false;
                websiteButton.Enabled = false;
            } else {
                playButton.Enabled = true;
                //optionsButton.Enabled = true;
                minimizeButton.Enabled = true;
                closeButton.Enabled = true;
                moreNewsButton.Enabled = true;
                //serversButton.Enabled = true;
                websiteButton.Enabled = true;
            }
        }

        private async Task UpdateClient() {
            connectionInformation.Text = "Updating client...";
            await Task.Delay(500);

            DeleteCache(false);
            //Download the new client version to the temp folder
            IEnumerable<SftpFile> result = CSSH.ListDirectory(remotePath);
            SftpFile patch = null;
            SftpFile exe = null;
            SftpFile pic = null;
            foreach (SftpFile item in result) {
                if(item.Name.Contains("patch")) patch = item;
                else if(item.Name.Contains("WoW")) exe = item;
                else if (item.Name.Contains("picture")) pic = item;
                if (patch != null && exe != null && pic != null) break;
            }
            if(patch != null) DownloadFile(patch, applicationPath + "..\\Data\\");
            if(exe != null) DownloadFile(exe, applicationPath + "..\\");
            if (pic != null) DownloadFile(pic, applicationPath + "Temp\\");

            //Client info update
            clientVersion.Text = serverClientVersion;

            //Update picture
            if(File.Exists(applicationPath + "Temp\\" + pic.Name))
                picture.Image = Image.FromFile(applicationPath + "Temp\\" + pic.Name);
        }

        /// <summary>
        /// This method should be called, when you want to download a file.
        /// </summary>
        /// <param name="item">The item to download.</param>
        /// <param name="toFolder">The folder to download. Should end with a "/"!</param>
        private void DownloadFile(SftpFile item, string toFolder) {
            //toFolder should end with a "/" if you want to put it into a specific folder
            string path = toFolder;
            if (!Directory.Exists(path)) {
                MessageBox.Show("Data folder doesn't exist! Please copy the launcher into your vanilla WoW directory.",
                    "WoW not found", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Application.Exit();
            }

            //Download
            FileInfo file = new FileInfo(path + item.Name);
            if(file.Exists) {
                File.Delete(path + item.Name);
            }
            using (Stream filestream = File.Create(path + item.Name)) {
                CSSH.DownloadFile(remotePath + "/" + item.Name, filestream);
            }
        }

        private async Task DownloadAndStoreServerVersions() {
            connectionInformation.Text = "Checking versions...";
            await Task.Delay(500);

            //Find the file on server
            IEnumerable<SftpFile> result = CSSH.ListDirectory(remotePath);
            SftpFile serverVersions = null;
            foreach(SftpFile item in result) {
                if(item.Name.Contains("ServerVersions")) {
                    serverVersions = item;
                    break;
                }
            }
            
            Directory.CreateDirectory(applicationPath + "Temp");

            string path = applicationPath + "Temp\\ServerVersions.txt";
            //Delete local version
            FileInfo file = new FileInfo(path);
            if(file.Exists) file.Delete();
            //Download the new one
            using(Stream filestream = File.Create(path)) {
                CSSH.DownloadFile(remotePath + "/ServerVersions.txt", filestream);
            }

            string[] lines = File.ReadAllLines(path);

            foreach(string item in lines) {
                string[] split = item.Split('=');
                if(split[0] == "LauncherVersion") serverLauncherVersion = split[1];
                else if(split[0] == "ClientVersion") serverClientVersion = split[1];
            }

        }

        private void DeleteCache(bool tempToo) {
            /*if(!System.IO.Directory.Exists(debugPath + "Launcher"))
                System.IO.Directory.CreateDirectory(debugPath + "Launcher");*/

            //Empty WDB and Temp folders
            string wdbPath = applicationPath + "..\\WDB";
            string wdbPath2 = applicationPath + "..\\..\\WDB";
            if (Directory.Exists(wdbPath)) {
                System.IO.Directory.Delete(wdbPath, true);
                System.IO.Directory.CreateDirectory(wdbPath);
            } else if(Directory.Exists(wdbPath2)) {
                System.IO.Directory.Delete(wdbPath2, true);
                System.IO.Directory.CreateDirectory(wdbPath2);
            }
            string tempPath = applicationPath + "Temp";
            if (tempToo) {
                if(System.IO.Directory.Exists(tempPath))
                    System.IO.Directory.Delete(tempPath, true);

                System.IO.Directory.CreateDirectory(tempPath);
            }
        }

        private bool CheckVersionForUpdate(string tag, string value) {
            if(tag.Contains("Launcher")) {
                string version = launcherVersion.Text;
                if(version.Equals(value)) return false;
            } else if(tag.Contains("Client")){

                if(Directory.Exists(applicationPath + "Temp")) {
                    string path = applicationPath + "Temp\\ClientVersion.txt";
                    if (File.Exists(path)) {
                        string str = File.ReadAllText(path);
                        if(str.Equals(serverClientVersion)) {
                            clientVersion.Text = serverClientVersion;
                            return false;
                        } else {
                            clientVersion.Text = serverClientVersion;
                            File.WriteAllText(path, serverClientVersion);
                        }
                    } else {
                        clientVersion.Text = serverClientVersion;
                        File.WriteAllText(path, serverClientVersion);
                    }
                } else Directory.CreateDirectory(applicationPath + "Temp");
                
            }
            return true;
        }

        #endregion

        #region EVENTS

        private void moreNewsButton_MouseLeave(object sender, EventArgs e) {
            this.moreNewsButton.BackgroundImage = ((System.Drawing.Image)(Properties.Resources.news_normal));
        }

        private void moreNewsButton_MouseEnter(object sender, EventArgs e) {
            this.moreNewsButton.BackgroundImage = ((System.Drawing.Image)(Properties.Resources.news_hover));
        }

        private void moreNewsButton_Click(object sender, EventArgs e) {
            Process.Start("https://www.wowreforged.com/changelog");
        }

        private void playButton_MouseEnter(object sender, EventArgs e) {
            this.playButton.BackgroundImage = ((System.Drawing.Image)(Properties.Resources.play_hover));
        }

        private void playButton_MouseLeave(object sender, EventArgs e) {
            this.playButton.BackgroundImage = ((System.Drawing.Image)(Properties.Resources.play_normal));
        }

        private void optionsButton_Click(object sender, EventArgs e) {
            //TODO
        }

        private void optionsButton_MouseEnter(object sender, EventArgs e) {
            this.optionsButton.BackgroundImage = ((System.Drawing.Image)(Properties.Resources.button_hover));
        }

        private void optionsButton_MouseLeave(object sender, EventArgs e) {
            this.optionsButton.BackgroundImage = ((System.Drawing.Image)(Properties.Resources.button_normal));
        }

        private void websiteButton_Click(object sender, EventArgs e) {
            Process.Start("https://www.wowreforged.com/");
        }

        private void websiteButton_MouseEnter(object sender, EventArgs e) {
            this.websiteButton.BackgroundImage = ((System.Drawing.Image)(Properties.Resources.button_hover));
        }

        private void websiteButton_MouseLeave(object sender, EventArgs e) {
            this.websiteButton.BackgroundImage = ((System.Drawing.Image)(Properties.Resources.button_normal));
        }

        private void serversButton_Click(object sender, EventArgs e) {
            //TODO
        }

        private void serversButton_MouseEnter(object sender, EventArgs e) {
            this.serversButton.BackgroundImage = ((System.Drawing.Image)(Properties.Resources.button_hover));
        }

        private void serversButton_MouseLeave(object sender, EventArgs e) {
            this.serversButton.BackgroundImage = ((System.Drawing.Image)(Properties.Resources.button_normal));
        }

        private void minimizeButton_MouseEnter(object sender, EventArgs e) {
            this.minimizeButton.BackgroundImage = ((System.Drawing.Image)(Properties.Resources.minimize_hover));
        }

        private void minimizeButton_MouseLeave(object sender, EventArgs e) {
            this.minimizeButton.BackgroundImage = ((System.Drawing.Image)(Properties.Resources.minimize_normal));
        }

        private void closeButton_MouseEnter(object sender, EventArgs e) {
            this.closeButton.BackgroundImage = ((System.Drawing.Image)(Properties.Resources.close_hover));
        }

        private void closeButton_MouseLeave(object sender, EventArgs e) {
            this.closeButton.BackgroundImage = ((System.Drawing.Image)(Properties.Resources.close_normal));
        }

        #endregion
    }
}
