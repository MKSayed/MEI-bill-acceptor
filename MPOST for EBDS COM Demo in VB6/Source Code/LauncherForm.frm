VERSION 5.00
Begin VB.Form LauncherForm 
   Caption         =   "Launcher"
   ClientHeight    =   4545
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6450
   LinkTopic       =   "Form1"
   ScaleHeight     =   4545
   ScaleWidth      =   6450
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton ExitApplicationButton 
      Caption         =   "Exit Application"
      Height          =   495
      Left            =   3600
      TabIndex        =   4
      Top             =   1920
      Width           =   2055
   End
   Begin VB.CommandButton RefreshPortListButton 
      Caption         =   "Refresh Port List"
      Enabled         =   0   'False
      Height          =   495
      Left            =   3600
      TabIndex        =   3
      Top             =   1200
      Width           =   2055
   End
   Begin VB.CommandButton LaunchControlPanelButton 
      Caption         =   "Launch Control Panel"
      Height          =   495
      Left            =   3600
      TabIndex        =   2
      Top             =   480
      Width           =   2055
   End
   Begin VB.TextBox PortNameTextBox 
      Height          =   375
      Left            =   480
      TabIndex        =   0
      Text            =   "COM1"
      Top             =   600
      Width           =   2535
   End
   Begin VB.Label VersionLabel 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   5
      Top             =   3480
      Width           =   5175
   End
   Begin VB.Label Label1 
      Caption         =   "Serial Port"
      Height          =   255
      Left            =   480
      TabIndex        =   1
      Top             =   360
      Width           =   1215
   End
End
Attribute VB_Name = "LauncherForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

    Dim WithEvents a As Acceptor
Attribute a.VB_VarHelpID = -1
    
    
    'http://www.developerfusion.co.uk/show/21/2/
    
Private Sub ExitApplicationButton_Click()
    Unload Me
End Sub

Private Sub Form_Load()

    Set a = New MPost.Acceptor
    
    VersionLabel.Caption = "M/POST EBDS Toolkit = " + a.APIVersion
End Sub


Private Sub LaunchControlPanelButton_Click()
    Dim D As ControlPanelForm
    
    Set D = New ControlPanelForm
    
    Set D.Acceptor = a
    
    D.PortNameTextBox = PortNameTextBox.Text
    
    D.Show
End Sub
