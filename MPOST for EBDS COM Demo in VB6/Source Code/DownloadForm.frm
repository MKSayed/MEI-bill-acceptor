VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form DownloadForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Flash Download"
   ClientHeight    =   3195
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5430
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   5430
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton CloseButton 
      Caption         =   "Close"
      Enabled         =   0   'False
      Height          =   495
      Left            =   1920
      TabIndex        =   4
      Top             =   2520
      Width           =   1215
   End
   Begin VB.TextBox SectorsDownloadedText 
      Height          =   495
      Left            =   2040
      TabIndex        =   3
      Text            =   "0"
      Top             =   840
      Width           =   2415
   End
   Begin VB.TextBox TotalSectorsText 
      Height          =   495
      Left            =   2040
      TabIndex        =   1
      Text            =   "0"
      Top             =   120
      Width           =   2415
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   4800
      Top             =   2640
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Caption         =   "Sectors Downloaded:"
      Height          =   495
      Left            =   240
      TabIndex        =   2
      Top             =   840
      Width           =   1575
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "Total Sectors:"
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1575
   End
End
Attribute VB_Name = "DownloadForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

    Public WithEvents Acceptor As MPost.Acceptor
Attribute Acceptor.VB_VarHelpID = -1
    
Private Declare Function PostMessage Lib "user32" Alias "PostMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
Private Const WM_CLOSE = &H10

Private Sub Acceptor_OnDownloadFinish(ByVal sender As Variant, ByVal e As MPost.IAcceptorDownloadFinishEventArgs)
    CloseButton.Enabled = True
End Sub

Private Sub Acceptor_OnDownloadProgress(ByVal sender As Variant, ByVal e As MPost.IDownloadEventArgs)
    SectorsDownloadedText.Text = CStr(e.sectorCount + 1)
End Sub

Private Sub Acceptor_OnDownloadStart(ByVal sender As Variant, ByVal e As MPost.IDownloadEventArgs)
    TotalSectorsText.Text = CStr(e.sectorCount)
End Sub

Private Sub CloseButton_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    If False Then
        Acceptor.FlashDownload "C:\PROJECTS\490021211_SC83_JPY_FLASH.BIN" ' CommonDialog1.FileName
    Else
    
        CommonDialog1.Filter = "Bin files|*.bin|Series 2000 files|*.bds"
        
        CommonDialog1.ShowOpen
        
        On Error GoTo LocalHandler
        
        Acceptor.FlashDownload CommonDialog1.FileName
    
        Exit Sub
    End If
    
LocalHandler:
    MsgBox (Err.Description)
    
    'Note that you cannot call Unload Me from Form_Load
    PostMessage Me.hwnd, WM_CLOSE, 0, 0
End Sub
