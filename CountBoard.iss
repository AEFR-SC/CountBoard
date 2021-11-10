; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "CountBoard"
#define MyAppVersion "1.2.0.3"
#define MyAppPublisher "Gaoyongxian"
#define MyAppURL "https://github.com/Gaoyongxian666/CountBoard"
#define MyAppExeName "CountBoard.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{6DA65E00-FAAE-4286-B277-6D6F99519AD0}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userdocs}/{#MyAppName}/{#MyAppVersion}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\Gao yongxian\Desktop
OutputBaseFilename=CountBoard_{#MyAppVersion}
SetupIconFile=C:\Users\Gao yongxian\PycharmProjects\CountBoard\favicon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
UninstallDisplayIcon={app}\{#MyAppExeName} 

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "cn"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\cacert.pem"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\favicon.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\README.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\Snipaste_2021-11-04_00-41-00.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\Snipaste_2021-11-04_00-41-15.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Gao yongxian\PycharmProjects\CountBoard\pack\CountBoard\Snipaste_2021-11-04_00-42-38.png"; DestDir: "{app}"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

