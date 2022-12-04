; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Grabby Toolkit"
#define MyAppVersion "0.50.0"
#define MyAppPublisher "Pouria Pirhadi"
#define MyAppURL "https://github.com/pouriap/grabby"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{816B6E55-43E9-42F1-9CD8-7D160F531538}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=Grabby-Toolkit-{#MyAppVersion}-Setup
SetupIconFile=D:\Personal Folder\Pouria\My Documents\_Projects\JavaScript\Grabby\src\icons\icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "D:\Personal Folder\Pouria\My Documents\_Projects\JavaScript\Grabby\_installer\files\ffmpeg.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Personal Folder\Pouria\My Documents\_Projects\JavaScript\Grabby\_installer\files\grabby_flashgot.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Personal Folder\Pouria\My Documents\_Projects\JavaScript\Grabby\_installer\files\grabby_native_app.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Personal Folder\Pouria\My Documents\_Projects\JavaScript\Grabby\_installer\files\native-manifest.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Personal Folder\Pouria\My Documents\_Projects\JavaScript\Grabby\_installer\files\native-manifest-chrome.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Personal Folder\Pouria\My Documents\_Projects\JavaScript\Grabby\_installer\files\yt-dlp.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Personal Folder\Pouria\My Documents\_Projects\JavaScript\Grabby\_installer\files\firefox-extension\*"; DestDir: "{app}\firefox"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\Personal Folder\Pouria\My Documents\_Projects\JavaScript\Grabby\_installer\files\chrome-extension\*"; DestDir: "{app}\chrome"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Registry]
Root: HKLM; Subkey: "SOFTWARE\Mozilla\NativeMessagingHosts\grabby.pouriap"; Flags: uninsdeletekey; ValueType: string; ValueData: "{app}\native-manifest.json"
Root: HKLM; Subkey: "SOFTWARE\Google\Chrome\NativeMessagingHosts\grabby.pouriap"; Flags: uninsdeletekey; ValueType: string; ValueData: "{app}\native-manifest-chrome.json"