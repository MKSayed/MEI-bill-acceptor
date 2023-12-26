VERSION 5.00
Begin VB.Form PropertiesForm 
   Caption         =   "Properties"
   ClientHeight    =   8610
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6255
   LinkTopic       =   "Form2"
   ScaleHeight     =   8610
   ScaleWidth      =   6255
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtTimeout 
      Height          =   285
      Left            =   3000
      TabIndex        =   23
      Text            =   "30000"
      Top             =   6000
      Width           =   1215
   End
   Begin VB.OptionButton DiagnosticOption 
      Caption         =   "Diagnostic"
      Height          =   255
      Left            =   3240
      TabIndex        =   22
      Top             =   2880
      Width           =   1215
   End
   Begin VB.OptionButton PlatformOption 
      Caption         =   "Platform"
      Height          =   255
      Left            =   3240
      TabIndex        =   21
      Top             =   2520
      Width           =   1215
   End
   Begin VB.OptionButton StandardOption 
      Caption         =   "Standard"
      Height          =   255
      Left            =   3240
      TabIndex        =   20
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Frame BezelFrame 
      Caption         =   "Bezel"
      Height          =   1695
      Left            =   3000
      TabIndex        =   19
      Top             =   1800
      Width           =   2175
   End
   Begin VB.Frame ExtendedOrientationFrame 
      Caption         =   "Extended Orientation"
      Height          =   1695
      Left            =   3000
      TabIndex        =   15
      Top             =   3960
      Width           =   2175
      Begin VB.OptionButton OneWayExOption 
         Caption         =   "One Way"
         Height          =   255
         Left            =   240
         TabIndex        =   18
         Top             =   1080
         Width           =   1695
      End
      Begin VB.OptionButton TwoWayExOption 
         Caption         =   "Two Way"
         Height          =   255
         Left            =   240
         TabIndex        =   17
         Top             =   720
         Width           =   1695
      End
      Begin VB.OptionButton FourWayExOption 
         Caption         =   "Four Way"
         Height          =   255
         Left            =   240
         TabIndex        =   16
         Top             =   360
         Width           =   1695
      End
   End
   Begin VB.CommandButton ApplyButton 
      Caption         =   "Apply"
      Height          =   495
      Left            =   4680
      TabIndex        =   14
      Top             =   7560
      Width           =   1215
   End
   Begin VB.Frame BasicOrientationFrame 
      Caption         =   "Basic Orientation"
      Height          =   1695
      Left            =   360
      TabIndex        =   10
      Top             =   3960
      Width           =   2175
      Begin VB.OptionButton FourWayOption 
         Caption         =   "Four Way"
         Height          =   255
         Left            =   240
         TabIndex        =   13
         Top             =   360
         Width           =   1455
      End
      Begin VB.OptionButton TwoWayOption 
         Caption         =   "Two Way"
         Height          =   255
         Left            =   240
         TabIndex        =   12
         Top             =   720
         Width           =   1455
      End
      Begin VB.OptionButton OneWayOption 
         Caption         =   "One Way"
         Height          =   255
         Left            =   240
         TabIndex        =   11
         Top             =   1080
         Width           =   1455
      End
   End
   Begin VB.CommandButton SoftResetButton 
      Caption         =   "Soft Reset"
      Height          =   495
      Left            =   480
      TabIndex        =   9
      Top             =   7560
      Width           =   1215
   End
   Begin VB.TextBox DebugLogPathText 
      Height          =   375
      Left            =   3000
      TabIndex        =   8
      Top             =   720
      Width           =   1935
   End
   Begin VB.CheckBox DebugLogCheck 
      Caption         =   "Debug Log"
      Height          =   375
      Left            =   480
      TabIndex        =   7
      Top             =   720
      Width           =   1935
   End
   Begin VB.CheckBox HighSecurityModeCheck 
      Caption         =   "High Security Mode"
      Height          =   375
      Left            =   480
      TabIndex        =   6
      Top             =   3240
      Width           =   1935
   End
   Begin VB.CheckBox NoPushModeCheck 
      Caption         =   "No Push Mode"
      Enabled         =   0   'False
      Height          =   375
      Left            =   480
      TabIndex        =   5
      Top             =   2880
      Width           =   1935
   End
   Begin VB.CheckBox ExtendedCouponCheck 
      Caption         =   "Extended Coupon"
      Enabled         =   0   'False
      Height          =   375
      Left            =   480
      TabIndex        =   4
      Top             =   2520
      Width           =   1935
   End
   Begin VB.CheckBox BookmarksCheck 
      Caption         =   "Bookmarks"
      Height          =   375
      Left            =   480
      TabIndex        =   3
      Top             =   2160
      Width           =   1935
   End
   Begin VB.CheckBox BarCodeCheck 
      Caption         =   "Bar Code Vouchers"
      Height          =   375
      Left            =   480
      TabIndex        =   2
      Top             =   1800
      Width           =   1935
   End
   Begin VB.CheckBox AutoStackCheck 
      Caption         =   "Auto Stack"
      Height          =   375
      Left            =   480
      TabIndex        =   1
      Top             =   1440
      Width           =   1935
   End
   Begin VB.CheckBox EnableAcceptanceCheck 
      Caption         =   "Enable Acceptance"
      Height          =   375
      Left            =   480
      TabIndex        =   0
      Top             =   1080
      Width           =   1815
   End
   Begin VB.Label lblDisconnectTimeout 
      Caption         =   "Disconnect Timeout (ms)"
      Height          =   255
      Left            =   480
      TabIndex        =   24
      Top             =   6000
      Width           =   1935
   End
End
Attribute VB_Name = "PropertiesForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public WithEvents Acceptor As MPost.Acceptor
Attribute Acceptor.VB_VarHelpID = -1

Private Sub ApplyButton_Click()
    Acceptor.DebugLogPath = DebugLogPathText.Text
    Acceptor.DisconnectTimeout = txtTimeout.Text
End Sub

Private Sub AutoStackCheck_Click()
    If AutoStackCheck.Value = 1 Then
        Acceptor.AutoStack = True
    Else
        Acceptor.AutoStack = False
    End If
End Sub

Private Sub BarCodeCheck_Click()
    If BarCodeCheck.Value = 1 Then
        Acceptor.EnableBarCodes = True
    Else
        Acceptor.EnableBarCodes = False
    End If
End Sub

Private Sub BookmarksCheck_Click()
    If BookmarksCheck.Value = 1 Then
        Acceptor.EnableBookmarks = True
    Else
        Acceptor.EnableBookmarks = False
    End If
End Sub

Private Sub DebugLogCheck_Click()
    If DebugLogCheck.Value = 1 Then
        Acceptor.DebugLog = True
    Else
        Acceptor.DebugLog = False
    End If
End Sub

Private Sub DiagnosticOption_Click()
    Acceptor.SetBezel Bezel_Diagnostic
End Sub

Private Sub EnableAcceptanceCheck_Click()
    If EnableAcceptanceCheck.Value = 1 Then
        Acceptor.EnableAcceptance = True
    Else
        Acceptor.EnableAcceptance = False
    End If
End Sub

Private Sub ExtendedCouponCheck_Click()
    If ExtendedCouponCheck.Value = 1 Then
        Acceptor.EnableCouponExt = True
    Else
        Acceptor.EnableCouponExt = False
    End If
End Sub

Private Sub FourWayExOption_Click()
    Acceptor.OrientationCtlExt = OrientationControl_FourWay
End Sub

Private Sub FourWayOption_Click()
    Acceptor.OrientationCtl = OrientationControl_FourWay
End Sub

Private Sub HighSecurityModeCheck_Click()
    If HighSecurityModeCheck.Value = 1 Then
        Acceptor.HighSecurity = True
    Else
        Acceptor.HighSecurity = False
    End If
End Sub

Private Sub NoPushModeCheck_Click()
    If NoPushModeCheck.Value = 1 Then
        Acceptor.EnableNoPush = True
    Else
        Acceptor.EnableNoPush = False
    End If
End Sub

Private Sub Form_Load()
    BarCodeCheck.Enabled = Acceptor.CapBarCodes
    BookmarksCheck.Enabled = Acceptor.CapBookmark
    ExtendedCouponCheck.Enabled = Acceptor.CapCouponExt
    NoPushModeCheck.Enabled = Acceptor.CapNoPush
    
    If Acceptor.OrientationCtl = OrientationControl_FourWay Then
        FourWayOption.Value = True
    ElseIf Acceptor.OrientationCtl = OrientationControl_TwoWay Then
        TwoWayOption.Value = True
    Else
        OneWayOption.Value = True
    End If
    
    If Not Acceptor.CapOrientationExt Then
        ExtendedOrientationFrame.Enabled = False
        FourWayExOption.Enabled = False
        TwoWayExOption.Enabled = False
        OneWayExOption.Enabled = False
    End If
    
    If Acceptor.OrientationCtlExt = OrientationControl_FourWay Then
        FourWayExOption.Value = True
    ElseIf Acceptor.OrientationCtlExt = OrientationControl_TwoWay Then
        TwoWayExOption.Value = True
    Else
        OneWayExOption.Value = True
    End If
    
    SoftResetButton.Enabled = Acceptor.CapDeviceSoftReset
    
    If Acceptor.EnableAcceptance Then
        EnableAcceptanceCheck.Value = 1
    Else
        EnableAcceptanceCheck.Value = 0
    End If
    
    If Acceptor.DebugLog Then
        DebugLogCheck.Value = 1
    Else
        DebugLogCheck.Value = 0
    End If
    
    DebugLogPathText.Text = Acceptor.DebugLogPath
End Sub

Private Sub OneWayExOption_Click()
    Acceptor.OrientationCtlExt = OrientationControl_OneWay
End Sub

Private Sub OneWayOption_Click()
    Acceptor.OrientationCtl = OrientationControl_OneWay
End Sub

Private Sub PlatformOption_Click()
    Acceptor.SetBezel Bezel_Platform
End Sub

Private Sub SoftResetButton_Click()
    Acceptor.SoftReset
End Sub

Private Sub StandardOption_Click()
    Acceptor.SetBezel Bezel_Standard
End Sub

Private Sub TwoWayExOption_Click()
    Acceptor.OrientationCtlExt = OrientationControl_TwoWay
End Sub

Private Sub TwoWayOption_Click()
    Acceptor.OrientationCtl = OrientationControl_TwoWay
End Sub
