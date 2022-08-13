using System;
using System.Diagnostics;
using System.IO;

namespace Reforged_Launcher_Restarter {
    class Program {

        static string applicationPath = AppDomain.CurrentDomain.BaseDirectory;

        static void Main() {
            try {
                Console.WriteLine("Copying files... please don't close this panel!");

                System.Threading.Thread.Sleep(1000);

                if (File.Exists(applicationPath + "Reforged_Launcher.exe")) {
                    File.Copy(applicationPath + "Reforged_Launcher.exe", applicationPath + "..\\Reforged_Launcher.exe", true);
                }

                System.Threading.Thread.Sleep(500);

                if (File.Exists(applicationPath + "..\\Reforged_Launcher.exe")) {
                    Console.WriteLine("Copy successful... Starting the new Launcher!");

                    ProcessStartInfo info = new ProcessStartInfo(applicationPath + "Reforged_Launcher.exe");
                    string dir = Directory.GetCurrentDirectory();
                    dir += "Reforged_Launcher.exe";
                    Process.Start(dir);
                } else {
                    Console.WriteLine("Error: Copy was unsuccessful!");
                    Console.ReadKey();
                }
            } catch (Exception) {
                try {
                    Console.WriteLine("Copying files was unsuccessfull. Retrying...");
                    System.Threading.Thread.Sleep(1000);

                    if (File.Exists(applicationPath + "Reforged_Launcher.exe")) {
                        File.Copy(applicationPath + "Reforged_Launcher.exe", applicationPath + "..\\Reforged_Launcher.exe", true);
                    }
                }
                catch (Exception e)  {
                    Console.WriteLine(e.Message);
                    Console.ReadKey();
                }
            }
        }
    }
}
