namespace Reforged_Launcher {
    partial class Form1 {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing) {
            if(disposing && (components != null)) {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent() {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.playButton = new System.Windows.Forms.Button();
            this.optionsButton = new System.Windows.Forms.Button();
            this.connectionInformation = new System.Windows.Forms.Label();
            this.closeButton = new System.Windows.Forms.Button();
            this.minimizeButton = new System.Windows.Forms.Button();
            this.launcherTitle = new System.Windows.Forms.Label();
            this.launcherVersion = new System.Windows.Forms.Label();
            this.clientVersion = new System.Windows.Forms.Label();
            this.launcherLabel = new System.Windows.Forms.Label();
            this.clientLabel = new System.Windows.Forms.Label();
            this.newsLabel = new System.Windows.Forms.Label();
            this.moreNewsButton = new System.Windows.Forms.Button();
            this.websiteButton = new System.Windows.Forms.Button();
            this.serversButton = new System.Windows.Forms.Button();
            this.news1 = new System.Windows.Forms.Label();
            this.news2 = new System.Windows.Forms.Label();
            this.news3 = new System.Windows.Forms.Label();
            this.news4 = new System.Windows.Forms.Label();
            this.news5 = new System.Windows.Forms.Label();
            this.news6 = new System.Windows.Forms.Label();
            this.picture = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.picture)).BeginInit();
            this.SuspendLayout();
            // 
            // playButton
            // 
            this.playButton.BackColor = System.Drawing.Color.Transparent;
            this.playButton.BackgroundImage = global::Reforged_Launcher.Properties.Resources.play_normal;
            this.playButton.FlatAppearance.BorderSize = 0;
            this.playButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.playButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.playButton.ForeColor = System.Drawing.Color.Transparent;
            this.playButton.Location = new System.Drawing.Point(510, 469);
            this.playButton.Name = "playButton";
            this.playButton.Size = new System.Drawing.Size(233, 78);
            this.playButton.TabIndex = 0;
            this.playButton.UseVisualStyleBackColor = false;
            this.playButton.Click += new System.EventHandler(this.PlayButton_Click);
            this.playButton.MouseEnter += new System.EventHandler(this.playButton_MouseEnter);
            this.playButton.MouseLeave += new System.EventHandler(this.playButton_MouseLeave);
            // 
            // optionsButton
            // 
            this.optionsButton.BackColor = System.Drawing.Color.Transparent;
            this.optionsButton.BackgroundImage = global::Reforged_Launcher.Properties.Resources.button_normal;
            this.optionsButton.Enabled = false;
            this.optionsButton.FlatAppearance.BorderSize = 0;
            this.optionsButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.optionsButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.optionsButton.ForeColor = System.Drawing.Color.Khaki;
            this.optionsButton.Location = new System.Drawing.Point(14, 498);
            this.optionsButton.Name = "optionsButton";
            this.optionsButton.Padding = new System.Windows.Forms.Padding(0, 0, 0, 3);
            this.optionsButton.Size = new System.Drawing.Size(141, 47);
            this.optionsButton.TabIndex = 2;
            this.optionsButton.Text = "Options";
            this.optionsButton.UseVisualStyleBackColor = false;
            this.optionsButton.Click += new System.EventHandler(this.optionsButton_Click);
            this.optionsButton.MouseEnter += new System.EventHandler(this.optionsButton_MouseEnter);
            this.optionsButton.MouseLeave += new System.EventHandler(this.optionsButton_MouseLeave);
            // 
            // connectionInformation
            // 
            this.connectionInformation.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.connectionInformation.BackColor = System.Drawing.Color.Transparent;
            this.connectionInformation.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.connectionInformation.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.connectionInformation.Location = new System.Drawing.Point(17, 454);
            this.connectionInformation.Name = "connectionInformation";
            this.connectionInformation.Size = new System.Drawing.Size(468, 31);
            this.connectionInformation.TabIndex = 4;
            this.connectionInformation.Text = "Connection Information";
            this.connectionInformation.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // closeButton
            // 
            this.closeButton.BackColor = System.Drawing.Color.Transparent;
            this.closeButton.BackgroundImage = global::Reforged_Launcher.Properties.Resources.close_normal;
            this.closeButton.FlatAppearance.BorderSize = 0;
            this.closeButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.closeButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.closeButton.ForeColor = System.Drawing.Color.Transparent;
            this.closeButton.Location = new System.Drawing.Point(736, 3);
            this.closeButton.Name = "closeButton";
            this.closeButton.Size = new System.Drawing.Size(18, 19);
            this.closeButton.TabIndex = 5;
            this.closeButton.UseVisualStyleBackColor = false;
            this.closeButton.Click += new System.EventHandler(this.closeButton_Click);
            this.closeButton.MouseEnter += new System.EventHandler(this.closeButton_MouseEnter);
            this.closeButton.MouseLeave += new System.EventHandler(this.closeButton_MouseLeave);
            // 
            // minimizeButton
            // 
            this.minimizeButton.BackColor = System.Drawing.Color.Transparent;
            this.minimizeButton.BackgroundImage = global::Reforged_Launcher.Properties.Resources.minimize_normal;
            this.minimizeButton.FlatAppearance.BorderSize = 0;
            this.minimizeButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.minimizeButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.minimizeButton.ForeColor = System.Drawing.Color.Transparent;
            this.minimizeButton.Location = new System.Drawing.Point(712, 3);
            this.minimizeButton.Name = "minimizeButton";
            this.minimizeButton.Size = new System.Drawing.Size(18, 19);
            this.minimizeButton.TabIndex = 6;
            this.minimizeButton.UseVisualStyleBackColor = false;
            this.minimizeButton.Click += new System.EventHandler(this.minimizeButton_Click);
            this.minimizeButton.MouseEnter += new System.EventHandler(this.minimizeButton_MouseEnter);
            this.minimizeButton.MouseLeave += new System.EventHandler(this.minimizeButton_MouseLeave);
            // 
            // launcherTitle
            // 
            this.launcherTitle.AutoSize = true;
            this.launcherTitle.BackColor = System.Drawing.Color.Transparent;
            this.launcherTitle.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.launcherTitle.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.launcherTitle.Location = new System.Drawing.Point(13, 0);
            this.launcherTitle.Name = "launcherTitle";
            this.launcherTitle.Size = new System.Drawing.Size(140, 24);
            this.launcherTitle.TabIndex = 10;
            this.launcherTitle.Text = "WoW Reforged";
            // 
            // launcherVersion
            // 
            this.launcherVersion.AutoSize = true;
            this.launcherVersion.BackColor = System.Drawing.Color.Transparent;
            this.launcherVersion.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.launcherVersion.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.launcherVersion.Location = new System.Drawing.Point(281, 7);
            this.launcherVersion.Name = "launcherVersion";
            this.launcherVersion.Size = new System.Drawing.Size(40, 17);
            this.launcherVersion.TabIndex = 11;
            this.launcherVersion.Text = "1.1.4";
            // 
            // clientVersion
            // 
            this.clientVersion.AutoSize = true;
            this.clientVersion.BackColor = System.Drawing.Color.Transparent;
            this.clientVersion.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.clientVersion.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.clientVersion.Location = new System.Drawing.Point(443, 425);
            this.clientVersion.Name = "clientVersion";
            this.clientVersion.Size = new System.Drawing.Size(40, 17);
            this.clientVersion.TabIndex = 12;
            this.clientVersion.Text = "0.4.0";
            // 
            // launcherLabel
            // 
            this.launcherLabel.AutoSize = true;
            this.launcherLabel.BackColor = System.Drawing.Color.Transparent;
            this.launcherLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.launcherLabel.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.launcherLabel.Location = new System.Drawing.Point(160, 6);
            this.launcherLabel.Name = "launcherLabel";
            this.launcherLabel.Size = new System.Drawing.Size(122, 17);
            this.launcherLabel.TabIndex = 13;
            this.launcherLabel.Text = "Launcher version:";
            // 
            // clientLabel
            // 
            this.clientLabel.AutoSize = true;
            this.clientLabel.BackColor = System.Drawing.Color.Transparent;
            this.clientLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.clientLabel.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.clientLabel.Location = new System.Drawing.Point(394, 425);
            this.clientLabel.Name = "clientLabel";
            this.clientLabel.Size = new System.Drawing.Size(47, 17);
            this.clientLabel.TabIndex = 14;
            this.clientLabel.Text = "Client:";
            // 
            // newsLabel
            // 
            this.newsLabel.AutoSize = true;
            this.newsLabel.BackColor = System.Drawing.Color.Transparent;
            this.newsLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.newsLabel.ForeColor = System.Drawing.SystemColors.Info;
            this.newsLabel.Location = new System.Drawing.Point(601, 41);
            this.newsLabel.Name = "newsLabel";
            this.newsLabel.Size = new System.Drawing.Size(55, 22);
            this.newsLabel.TabIndex = 15;
            this.newsLabel.Text = "News";
            // 
            // moreNewsButton
            // 
            this.moreNewsButton.BackColor = System.Drawing.Color.Transparent;
            this.moreNewsButton.BackgroundImage = global::Reforged_Launcher.Properties.Resources.news_normal;
            this.moreNewsButton.FlatAppearance.BorderSize = 0;
            this.moreNewsButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.moreNewsButton.ForeColor = System.Drawing.Color.Transparent;
            this.moreNewsButton.Location = new System.Drawing.Point(553, 391);
            this.moreNewsButton.Name = "moreNewsButton";
            this.moreNewsButton.Size = new System.Drawing.Size(156, 46);
            this.moreNewsButton.TabIndex = 16;
            this.moreNewsButton.UseVisualStyleBackColor = false;
            this.moreNewsButton.Click += new System.EventHandler(this.moreNewsButton_Click);
            this.moreNewsButton.MouseEnter += new System.EventHandler(this.moreNewsButton_MouseEnter);
            this.moreNewsButton.MouseLeave += new System.EventHandler(this.moreNewsButton_MouseLeave);
            // 
            // websiteButton
            // 
            this.websiteButton.BackColor = System.Drawing.Color.Transparent;
            this.websiteButton.BackgroundImage = global::Reforged_Launcher.Properties.Resources.button_normal;
            this.websiteButton.Enabled = false;
            this.websiteButton.FlatAppearance.BorderSize = 0;
            this.websiteButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.websiteButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.websiteButton.ForeColor = System.Drawing.Color.Khaki;
            this.websiteButton.Location = new System.Drawing.Point(344, 498);
            this.websiteButton.Name = "websiteButton";
            this.websiteButton.Padding = new System.Windows.Forms.Padding(0, 0, 0, 3);
            this.websiteButton.Size = new System.Drawing.Size(141, 47);
            this.websiteButton.TabIndex = 17;
            this.websiteButton.Text = "Website";
            this.websiteButton.UseVisualStyleBackColor = false;
            this.websiteButton.Click += new System.EventHandler(this.websiteButton_Click);
            this.websiteButton.MouseEnter += new System.EventHandler(this.websiteButton_MouseEnter);
            this.websiteButton.MouseLeave += new System.EventHandler(this.websiteButton_MouseLeave);
            // 
            // serversButton
            // 
            this.serversButton.BackColor = System.Drawing.Color.Transparent;
            this.serversButton.BackgroundImage = global::Reforged_Launcher.Properties.Resources.button_normal;
            this.serversButton.Enabled = false;
            this.serversButton.FlatAppearance.BorderSize = 0;
            this.serversButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.serversButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.serversButton.ForeColor = System.Drawing.Color.Khaki;
            this.serversButton.Location = new System.Drawing.Point(180, 498);
            this.serversButton.Name = "serversButton";
            this.serversButton.Padding = new System.Windows.Forms.Padding(0, 0, 0, 3);
            this.serversButton.Size = new System.Drawing.Size(141, 47);
            this.serversButton.TabIndex = 18;
            this.serversButton.Text = "Servers";
            this.serversButton.UseVisualStyleBackColor = false;
            this.serversButton.Click += new System.EventHandler(this.serversButton_Click);
            this.serversButton.MouseEnter += new System.EventHandler(this.serversButton_MouseEnter);
            this.serversButton.MouseLeave += new System.EventHandler(this.serversButton_MouseLeave);
            // 
            // news1
            // 
            this.news1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.news1.BackColor = System.Drawing.Color.Transparent;
            this.news1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.news1.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.news1.Location = new System.Drawing.Point(510, 71);
            this.news1.Name = "news1";
            this.news1.Size = new System.Drawing.Size(233, 52);
            this.news1.TabIndex = 20;
            this.news1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // news2
            // 
            this.news2.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.news2.BackColor = System.Drawing.Color.Transparent;
            this.news2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.news2.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.news2.Location = new System.Drawing.Point(510, 123);
            this.news2.Name = "news2";
            this.news2.Size = new System.Drawing.Size(233, 51);
            this.news2.TabIndex = 21;
            this.news2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // news3
            // 
            this.news3.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.news3.BackColor = System.Drawing.Color.Transparent;
            this.news3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.news3.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.news3.Location = new System.Drawing.Point(510, 174);
            this.news3.Name = "news3";
            this.news3.Size = new System.Drawing.Size(233, 51);
            this.news3.TabIndex = 22;
            this.news3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // news4
            // 
            this.news4.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.news4.BackColor = System.Drawing.Color.Transparent;
            this.news4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.news4.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.news4.Location = new System.Drawing.Point(510, 225);
            this.news4.Name = "news4";
            this.news4.Size = new System.Drawing.Size(233, 51);
            this.news4.TabIndex = 23;
            this.news4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // news5
            // 
            this.news5.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.news5.BackColor = System.Drawing.Color.Transparent;
            this.news5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.news5.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.news5.Location = new System.Drawing.Point(510, 276);
            this.news5.Name = "news5";
            this.news5.Size = new System.Drawing.Size(233, 51);
            this.news5.TabIndex = 24;
            this.news5.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // news6
            // 
            this.news6.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.news6.BackColor = System.Drawing.Color.Transparent;
            this.news6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.news6.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.news6.Location = new System.Drawing.Point(511, 327);
            this.news6.Name = "news6";
            this.news6.Size = new System.Drawing.Size(233, 51);
            this.news6.TabIndex = 25;
            this.news6.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // picture
            // 
            this.picture.BackgroundImage = global::Reforged_Launcher.Properties.Resources.picture_default;
            this.picture.Location = new System.Drawing.Point(14, 34);
            this.picture.Name = "picture";
            this.picture.Size = new System.Drawing.Size(486, 416);
            this.picture.TabIndex = 26;
            this.picture.TabStop = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Reforged_Launcher.Properties.Resources.background_02;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(760, 560);
            this.Controls.Add(this.picture);
            this.Controls.Add(this.news6);
            this.Controls.Add(this.news5);
            this.Controls.Add(this.news4);
            this.Controls.Add(this.news3);
            this.Controls.Add(this.news2);
            this.Controls.Add(this.news1);
            this.Controls.Add(this.serversButton);
            this.Controls.Add(this.websiteButton);
            this.Controls.Add(this.moreNewsButton);
            this.Controls.Add(this.newsLabel);
            this.Controls.Add(this.clientLabel);
            this.Controls.Add(this.launcherLabel);
            this.Controls.Add(this.clientVersion);
            this.Controls.Add(this.launcherVersion);
            this.Controls.Add(this.launcherTitle);
            this.Controls.Add(this.minimizeButton);
            this.Controls.Add(this.closeButton);
            this.Controls.Add(this.connectionInformation);
            this.Controls.Add(this.optionsButton);
            this.Controls.Add(this.playButton);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "Reforged Launcher";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.MouseDown += new System.Windows.Forms.MouseEventHandler(this.Form1_MouseDown_1);
            ((System.ComponentModel.ISupportInitialize)(this.picture)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button playButton;
        private System.Windows.Forms.Button optionsButton;
        private System.Windows.Forms.Label connectionInformation;
        private System.Windows.Forms.Button closeButton;
        private System.Windows.Forms.Button minimizeButton;
        private System.Windows.Forms.Label launcherTitle;
        private System.Windows.Forms.Label launcherVersion;
        private System.Windows.Forms.Label clientVersion;
        private System.Windows.Forms.Label launcherLabel;
        private System.Windows.Forms.Label clientLabel;
        private System.Windows.Forms.Label newsLabel;
        private System.Windows.Forms.Button moreNewsButton;
        private System.Windows.Forms.Button websiteButton;
        private System.Windows.Forms.Button serversButton;
        private System.Windows.Forms.Label news1;
        private System.Windows.Forms.Label news2;
        private System.Windows.Forms.Label news3;
        private System.Windows.Forms.Label news4;
        private System.Windows.Forms.Label news5;
        private System.Windows.Forms.Label news6;
        private System.Windows.Forms.PictureBox picture;
    }
}

