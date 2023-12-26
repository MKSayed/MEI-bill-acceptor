VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form ControlPanelForm 
   Caption         =   "M/POST Demo Application"
   ClientHeight    =   7935
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9045
   LinkTopic       =   "Form1"
   ScaleHeight     =   7935
   ScaleWidth      =   9045
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnClearAudit 
      Caption         =   "Clear Audit"
      Height          =   375
      Left            =   7200
      TabIndex        =   23
      Top             =   5760
      Width           =   1455
   End
   Begin VB.CommandButton btnDisableCashboxCleanlinessReported 
      Caption         =   "Disable"
      Height          =   375
      Left            =   7200
      TabIndex        =   21
      Top             =   5040
      Width           =   1455
   End
   Begin VB.CommandButton btnEnableCashboxCleanlinessReported 
      Caption         =   "Enable"
      Height          =   375
      Left            =   7200
      TabIndex        =   20
      Top             =   4560
      Width           =   1455
   End
   Begin VB.CommandButton BillValuesButton 
      Caption         =   "Bill Values"
      Enabled         =   0   'False
      Height          =   495
      Left            =   7200
      TabIndex        =   18
      Top             =   2520
      Width           =   1455
   End
   Begin MSComDlg.CommonDialog SaveEventsDialog 
      Left            =   8400
      Top             =   6240
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      Filter          =   "Event Log File |*.txt"
   End
   Begin VB.CommandButton PropertiesButton 
      Caption         =   "Properties"
      Enabled         =   0   'False
      Height          =   495
      Left            =   7200
      TabIndex        =   16
      Top             =   1080
      Width           =   1455
   End
   Begin VB.CommandButton BillSetButton 
      Caption         =   "Bill Set"
      Enabled         =   0   'False
      Height          =   495
      Left            =   7200
      TabIndex        =   15
      Top             =   1800
      Width           =   1455
   End
   Begin VB.CommandButton CapabilitiesButton 
      Caption         =   "Capabilities"
      Enabled         =   0   'False
      Height          =   495
      Left            =   7200
      TabIndex        =   14
      Top             =   360
      Width           =   1455
   End
   Begin VB.CommandButton DeviceInfoButton 
      Caption         =   "Device Info"
      Enabled         =   0   'False
      Height          =   495
      Left            =   7200
      TabIndex        =   13
      Top             =   3240
      Width           =   1455
   End
   Begin VB.CommandButton ClearEventsButton 
      Caption         =   "Clear Events"
      Height          =   495
      Left            =   5040
      TabIndex        =   12
      Top             =   6000
      Width           =   1215
   End
   Begin VB.CommandButton SaveEventsButton 
      Caption         =   "Save Events"
      Height          =   495
      Left            =   5040
      TabIndex        =   11
      Top             =   5400
      Width           =   1215
   End
   Begin VB.CommandButton DownloadButton 
      Caption         =   "Download"
      Enabled         =   0   'False
      Height          =   495
      Left            =   5040
      TabIndex        =   10
      Top             =   3960
      Width           =   1215
   End
   Begin VB.CommandButton CalibrateButton 
      Caption         =   "Calibrate"
      Enabled         =   0   'False
      Height          =   495
      Left            =   5040
      TabIndex        =   9
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton ReturnButton 
      Caption         =   "Return"
      Enabled         =   0   'False
      Height          =   495
      Left            =   5040
      TabIndex        =   8
      Top             =   2520
      Width           =   1215
   End
   Begin VB.CommandButton StackButton 
      Caption         =   "Stack"
      Enabled         =   0   'False
      Height          =   495
      Left            =   5040
      TabIndex        =   7
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CommandButton CloseButton 
      Caption         =   "Close"
      Height          =   495
      Left            =   5040
      TabIndex        =   6
      Top             =   1080
      Width           =   1215
   End
   Begin VB.CommandButton OpenButton 
      Caption         =   "Open"
      Height          =   495
      Left            =   5040
      TabIndex        =   5
      Top             =   360
      Width           =   1215
   End
   Begin MSComctlLib.ListView EventsListView 
      Height          =   4935
      Left            =   120
      TabIndex        =   4
      Top             =   1560
      Width           =   4695
      _ExtentX        =   8281
      _ExtentY        =   8705
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin VB.ComboBox PowerUpComboBox 
      Height          =   315
      Left            =   3600
      TabIndex        =   2
      Text            =   "PUP-A"
      Top             =   480
      Width           =   1215
   End
   Begin VB.TextBox PortNameTextBox 
      Enabled         =   0   'False
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "COM1"
      Top             =   480
      Width           =   2055
   End
   Begin VB.Label Label4 
      Caption         =   "CashBox Cleanliness Reporting"
      Height          =   255
      Left            =   6720
      TabIndex        =   22
      Top             =   4320
      Width           =   2295
   End
   Begin VB.Label VersionLabel 
      Caption         =   "M/POST OLE VERSION:"
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
      Left            =   120
      TabIndex        =   19
      Top             =   6720
      Width           =   6615
   End
   Begin VB.Label Label3 
      Caption         =   "Power Up"
      Height          =   255
      Left            =   3240
      TabIndex        =   17
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label2 
      Caption         =   "Events"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   1080
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "Port"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   735
   End
End
Attribute VB_Name = "ControlPanelForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public WithEvents Acceptor As MPost.Acceptor
Attribute Acceptor.VB_VarHelpID = -1
   
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)


Private Sub Acceptor_OnCalibrateFinish(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Calibrate Finish"
End Sub

Private Sub Acceptor_OnCalibrateProgress(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Calibrate Progress"
End Sub

Private Sub Acceptor_OnCalibrateStart(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Calibrate Start"
End Sub

Private Sub Acceptor_OnCashBoxAttached(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Cash Box Attached"
End Sub

Private Sub Acceptor_OnCashBoxCleanlinessDetected(ByVal sender As Variant, ByVal e As MPost.ICashBoxCleanlinessEventArgs)
    If (e.Value = CashBoxCleanlinessEnum_CleaningRecommended) Then
        EventsListView.ListItems.Add , , "Event: Cashbox Cleanliness - Cleaning Recommended"
    Else
        EventsListView.ListItems.Add , , "Event: Cashbox Cleanliness - Cleaning Required"
    End If
End Sub

Private Sub Acceptor_OnCashBoxRemoved(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Cash Box Removed"
End Sub

Private Sub Acceptor_OnCheated(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Cheated"
End Sub

Private Sub Acceptor_OnClearAuditComplete(ByVal sender As Variant, ByVal e As MPost.IClearAuditEventArgs)
    If (e.Success) Then
        EventsListView.ListItems.Add , , "Event: Clear Audit Complete - Success"
    Else
        EventsListView.ListItems.Add , , "Event: Clear Audit Complete - FAILURE"
    End If
End Sub

Private Sub Acceptor_OnConnected(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Connected"

    CapabilitiesButton.Enabled = True
    DeviceInfoButton.Enabled = True
    BillSetButton.Enabled = True
    BillValuesButton.Enabled = True
    PropertiesButton.Enabled = True
    CalibrateButton.Enabled = False
    DownloadButton.Enabled = True

    Acceptor.EnableAcceptance = True

End Sub

Private Sub Acceptor_OnDisconnected(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Disconnected"

    CapabilitiesButton.Enabled = False
    DeviceInfoButton.Enabled = False
    BillSetButton.Enabled = False
    BillValuesButton.Enabled = False
    PropertiesButton.Enabled = False
    CalibrateButton.Enabled = False
    DownloadButton.Enabled = False
    StackButton.Enabled = False
    ReturnButton.Enabled = False
End Sub

Private Sub Acceptor_OnDownloadFinish(ByVal sender As Variant, ByVal e As MPost.IAcceptorDownloadFinishEventArgs)
    EventsListView.ListItems.Add , , "Event: Download Complete : " + CStr(e.Success)
End Sub

Private Sub Acceptor_OnDownloadProgress(ByVal sender As Variant, ByVal e As MPost.IDownloadEventArgs)
    EventsListView.ListItems.Add , , "Event: Download Start : " + CStr(e.SectorCount)
End Sub

Private Sub Acceptor_OnDownloadRestart(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Download Restart"
    DoDownload
End Sub
    

Private Sub Acceptor_OnDownloadStart(ByVal sender As Variant, ByVal e As MPost.IDownloadEventArgs)
    EventsListView.ListItems.Add , , "Event: Download Start : " + CStr(e.SectorCount)
End Sub

Private Sub Acceptor_OnEscrow(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Escrowed: " + DocInfoToString(Acceptor.DocType, Acceptor.GetDocument)
    StackButton.Enabled = True
    ReturnButton.Enabled = True
End Sub

Private Sub Acceptor_OnFailureCleared(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Failure Cleared"
End Sub

Private Sub Acceptor_OnFailureDetected(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Failure Detected"
End Sub

Private Sub Acceptor_OnInvlaidCommand(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Invalid Command"
End Sub

Private Sub Acceptor_OnJamCleared(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Jam Cleared"
End Sub

Private Sub Acceptor_OnJamDetected(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Jam Detected"
End Sub

Private Sub Acceptor_OnNoteRetrieved(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Note Retrieved"
End Sub

Private Sub Acceptor_OnPauseCleared(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Pause Cleared"
End Sub

Private Sub Acceptor_OnPauseDetected(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Pause Detected"
End Sub

Private Sub Acceptor_OnPowerUp(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Power Up"
End Sub

Private Sub Acceptor_OnPowerUpComplete(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Power Up Complete"
End Sub

Private Sub Acceptor_OnPupEscrow(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Pup Escrow"
End Sub

Private Sub Acceptor_OnRejected(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Rejected"
End Sub

Private Sub Acceptor_OnReturned(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Returned"
End Sub

Private Sub Acceptor_OnSendMessageFailure(ByVal sender As Variant, ByVal e As MPost.IAcceptorMessageEventArgs)
    EventsListView.ListItems.Add , , "Event: Send Message Failure"
End Sub

Private Sub Acceptor_OnStacked(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Stacked"

    StackButton.Enabled = False
    ReturnButton.Enabled = False
End Sub

Private Sub Acceptor_OnStackedWithDocInfo(ByVal sender As Variant, ByVal e As MPost.IStackedEventArgs)
    EventsListView.ListItems.Add , , "Event: Stacked " + DocInfoToString(e.DocType, e.Document)

    StackButton.Enabled = False
    ReturnButton.Enabled = False
End Sub

Private Sub Acceptor_OnStackerFull(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Stacker Full"
End Sub

Private Sub Acceptor_OnStackerFullCleared(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Stacker Full Cleared"
End Sub

Private Sub Acceptor_OnStallCleared(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Stall Cleared"
End Sub

Private Sub Acceptor_OnStallDetected(ByVal sender As Variant, ByVal e As mscorlib.EventArgs)
    EventsListView.ListItems.Add , , "Event: Stall Detected"
End Sub

Private Sub BillSetButton_Click()
    Set BillSetForm.Acceptor = Acceptor
    
    BillSetForm.Show
End Sub

Private Sub BillValuesButton_Click()
    Set BillValuesForm.Acceptor = Acceptor
    
    BillValuesForm.Show
End Sub

Private Sub btnClearAudit_Click()
    EventsListView.ListItems.Add , , "Command: BillAccepter.ClearAudit()"
    If Acceptor.ClearAudit Then
        EventsListView.ListItems.Add , , "Command: Acknowledged"
    Else
        EventsListView.ListItems.Add , , "Command: NAK'd"
    End If
End Sub

Private Sub btnDisableCashboxCleanlinessReported_Click()
    EventsListView.ListItems.Add , , "Command: BillAccepter.DisableCashboxCleanlinessReporting()"
    If Acceptor.DisableCashboxCleanlinessReporting Then
        EventsListView.ListItems.Add , , "Command: Successful"
    Else
        EventsListView.ListItems.Add , , "Command: UNSUCCESSFUL"
    End If
End Sub

Private Sub btnEnableCashboxCleanlinessReported_Click()
    EventsListView.ListItems.Add , , "Command: BillAccepter.EnableCashboxCleanlinessReporting()"
    If Acceptor.EnableCashboxCleanlinessReporting Then
        EventsListView.ListItems.Add , , "Command: Successful"
    Else
        EventsListView.ListItems.Add , , "Command: UNSUCCESSFUL"
    End If
End Sub

Private Sub ClearEventsButton_Click()
    EventsListView.ListItems.Clear
End Sub

Private Sub CloseButton_Click()
    If Not OpenButton.Enabled Then
        EventsListView.ListItems.Add , , "Command: BillAccepter.Close()"
        Acceptor.Close
        OpenButton.Enabled = True
        PowerUpComboBox.Enabled = True
    Else
        
        Unload Me
    End If
End Sub

Private Sub CapabilitiesButton_Click()
    Set CapabilitiesForm.Acceptor = Acceptor
    
    CapabilitiesForm.Show
End Sub

Private Sub DeviceInfoButton_Click()
    Set DeviceInfoForm.Acceptor = Acceptor
        
        DeviceInfoForm.Hide
    DeviceInfoForm.Show
End Sub

Private Sub DoDownload()
    
    Set DownloadForm.Acceptor = Acceptor
    
    DownloadForm.Show vbModal, Me
    
End Sub

Private Sub DownloadButton_Click()
    DoDownload
End Sub

Private Sub OpenButton_Click()
    Dim Pup As PowerUp
    
    If PowerUpComboBox.Text = "PUP-A" Then
        Pup = PowerUp.PowerUp_A
    ElseIf PowerUpComboBox.Text = "PUP-B" Then
        Pup = PowerUp.PowerUp_B
    ElseIf PowerUpComboBox.Text = "PUP-C" Then
        Pup = PowerUp.PowerUp_C
    ElseIf PowerUpComboBox.Text = "PUP-E" Then
        Pup = PowerUp.PowerUp_E
    End If
    
    OpenButton.Enabled = False
    PowerUpComboBox.Enabled = False
    
    EventsListView.ListItems.Add , , "Command: BillAccepter.Open()"
    
    Acceptor.Open_2 PortNameTextBox.Text, Pup
    
End Sub

Private Sub PropertiesButton_Click()
    Set PropertiesForm.Acceptor = Acceptor
    
    PropertiesForm.Show
End Sub

Private Sub ReturnButton_Click()
    EventsListView.ListItems.Add , , "Command: BillAccepter.EscrowReturn()"
    Acceptor.EscrowReturn
    StackButton.Enabled = False
    ReturnButton.Enabled = False
End Sub

Private Sub SaveEventsButton_Click()
    SaveEventsDialog.ShowSave
    
    If SaveEventsDialog.FileName <> "" Then
        Open SaveEventsDialog.FileName For Output As #1
        
        Print #1, "Event Log Saved: " + Format$(Now, "dddd, mmmm dd, yyyy") + "; " + Format$(Time, "hh:mm:ss AM/PM")
        
        Print #1, "-------------------------------------------------------------"
        
        Dim I As Integer
        
        For I = 1 To EventsListView.ListItems.Count
            Print #1, EventsListView.ListItems.Item(I).Text
        Next I

        Close #1
        
    End If
    
End Sub

Private Sub StackButton_Click()
    EventsListView.ListItems.Add , , "Command: BillAccepter.EscrowStack()"
    Acceptor.EscrowStack
    StackButton.Enabled = False
    ReturnButton.Enabled = False
End Sub

Private Sub Form_Load()
    Me.Caption = "M/POST COM Demo Application V3.50"
    VersionLabel.Caption = "M/POST EBDS Toolkit = " + Acceptor.APIVersion
    
    EventsListView.ColumnHeaders.Add , , "Events"
    EventsListView.ColumnHeaders.Item(1).Width = "4600"
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Acceptor.Close
End Sub

Private Function EscrowOrientationToString(ByVal EscrowOrientation As Orientation) As String
    Select Case EscrowOrientation
        Case Orientation_RightUp
            EscrowOrientationToString = "RightUp"
        Case Orientation_RightDown
            EscrowOrientationToString = "RightDown"
        Case Orientation_LeftUp
            EscrowOrientationToString = "LeftUp"
        Case Orientation_LeftDown
            EscrowOrientationToString = "LeftDown"
    End Select
End Function

Private Function DocInfoToString(ByVal DocType As DocumentType, ByVal Doc As IDocument) As String
    If DocType = DocumentType_None Then
        DocInfoToString = "Doc Type: None"
    ElseIf DocType = DocumentType_NoValue Then
        DocInfoToString = "Doc Type: No Value"
    ElseIf DocType = DocumentType_Bill Then
        If Acceptor.CapOrientationExt Then
            DocInfoToString = "Doc Type Bill : " + Doc.ValueString + " (" + EscrowOrientationToString(Acceptor.EscrowOrientation) + ")"
        Else
            DocInfoToString = "Doc Type Bill : " + Doc.ValueString
        End If
    ElseIf DocType = DocumentType_Barcode Then
        If Doc.ValueString = "" Then
            DocInfoToString = "Doc Type Bar Code = null"
        Else
            DocInfoToString = "Doc Type Bar Code = " + Doc.ValueString
        End If
    ElseIf DocType = DocumentType_Coupon Then
            DocInfoToString = "Doc Type Coupon = " + Doc.ValueString
    Else
        DocInfoToString = "Unknown Doc Type Error"
    End If
End Function


