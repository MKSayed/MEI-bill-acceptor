VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form CapabilitiesForm 
   Caption         =   "Capabilities"
   ClientHeight    =   9840
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7350
   LinkTopic       =   "Form2"
   ScaleHeight     =   9840
   ScaleWidth      =   7350
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ListView CapabilitiesListView 
      Height          =   9615
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   7095
      _ExtentX        =   12515
      _ExtentY        =   16960
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      Checkboxes      =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
End
Attribute VB_Name = "CapabilitiesForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

    Public WithEvents Acceptor As MPost.Acceptor
Attribute Acceptor.VB_VarHelpID = -1
    
    
    
Private Sub CapabilitiesListView_ItemCheck(ByVal Item As MSComctlLib.ListItem)
    If Item.Tag = "T" Then
        Item.Checked = True
    Else
        Item.Checked = False
    End If
End Sub

Private Sub Form_Load()
    
    CapabilitiesListView.ColumnHeaders.Add , , "Capability"
    CapabilitiesListView.ColumnHeaders.Add , , "Description"
    
    CapabilitiesListView.ColumnHeaders.Item(1).Width = "4000"

    If Acceptor.Connected Then
        CapabilitiesListView.ListItems.Add , , "CapAdvBookmark"
        
        'NOTE
        'The item tag is used to store the true/false value of the checkbox so that
        'it can be reset if the user checks the box.
        
        If Acceptor.CapAdvBookmark Then
            CapabilitiesListView.ListItems.Item(1).Checked = True
            CapabilitiesListView.ListItems.Item(1).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(1).Checked = False
            CapabilitiesListView.ListItems.Item(1).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapApplicationID"
        
        If Acceptor.CapApplicationID Then
            CapabilitiesListView.ListItems.Item(2).Checked = True
            CapabilitiesListView.ListItems.Item(2).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(2).Checked = False
            CapabilitiesListView.ListItems.Item(2).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapApplicationPN"
        
        If Acceptor.CapApplicationPN Then
            CapabilitiesListView.ListItems.Item(3).Checked = True
            CapabilitiesListView.ListItems.Item(3).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(3).Checked = False
            CapabilitiesListView.ListItems.Item(3).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapAssetNumber"
        
        If Acceptor.CapAssetNumber Then
            CapabilitiesListView.ListItems.Item(4).Checked = True
            CapabilitiesListView.ListItems.Item(4).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(4).Checked = False
            CapabilitiesListView.ListItems.Item(4).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapAudit"
        
        If Acceptor.CapAudit Then
            CapabilitiesListView.ListItems.Item(5).Checked = True
            CapabilitiesListView.ListItems.Item(5).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(5).Checked = False
            CapabilitiesListView.ListItems.Item(5).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapBarCodes"
        
        If Acceptor.CapBarCodes Then
            CapabilitiesListView.ListItems.Item(6).Checked = True
            CapabilitiesListView.ListItems.Item(6).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(6).Checked = False
            CapabilitiesListView.ListItems.Item(6).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapBarCodesExt"
        
        If Acceptor.CapBarCodesExt Then
            CapabilitiesListView.ListItems.Item(7).Checked = True
            CapabilitiesListView.ListItems.Item(7).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(7).Checked = False
            CapabilitiesListView.ListItems.Item(7).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapBNFStatus"
        
        If Acceptor.CapBNFStatus Then
            CapabilitiesListView.ListItems.Item(8).Checked = True
            CapabilitiesListView.ListItems.Item(8).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(8).Checked = False
            CapabilitiesListView.ListItems.Item(8).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapBookmark"
        
        If Acceptor.CapBookmark Then
            CapabilitiesListView.ListItems.Item(9).Checked = True
            CapabilitiesListView.ListItems.Item(9).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(9).Checked = False
            CapabilitiesListView.ListItems.Item(9).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapBootPN"
        
        If Acceptor.CapBootPN Then
            CapabilitiesListView.ListItems.Item(10).Checked = True
            CapabilitiesListView.ListItems.Item(10).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(10).Checked = False
            CapabilitiesListView.ListItems.Item(10).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapCalibrate"
        
        If Acceptor.CapCalibrate Then
            CapabilitiesListView.ListItems.Item(11).Checked = True
            CapabilitiesListView.ListItems.Item(11).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(11).Checked = False
            CapabilitiesListView.ListItems.Item(11).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapCashBoxTotal"
        
        If Acceptor.CapCashBoxTotal Then
            CapabilitiesListView.ListItems.Item(12).Checked = True
            CapabilitiesListView.ListItems.Item(12).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(12).Checked = False
            CapabilitiesListView.ListItems.Item(12).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapCouponExt"
        
        If Acceptor.CapCouponExt Then
            CapabilitiesListView.ListItems.Item(13).Checked = True
            CapabilitiesListView.ListItems.Item(13).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(13).Checked = False
            CapabilitiesListView.ListItems.Item(13).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapDevicePaused"
        
        If Acceptor.CapDevicePaused Then
            CapabilitiesListView.ListItems.Item(14).Checked = True
            CapabilitiesListView.ListItems.Item(14).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(14).Checked = False
            CapabilitiesListView.ListItems.Item(14).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapDeviceSoftReset"
        
        If Acceptor.CapDeviceSoftReset Then
            CapabilitiesListView.ListItems.Item(15).Checked = True
            CapabilitiesListView.ListItems.Item(15).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(15).Checked = False
            CapabilitiesListView.ListItems.Item(15).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapDeviceType"
        
        If Acceptor.CapDeviceType Then
            CapabilitiesListView.ListItems.Item(16).Checked = True
            CapabilitiesListView.ListItems.Item(16).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(16).Checked = False
            CapabilitiesListView.ListItems.Item(16).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapDeviceResets"
        
        If Acceptor.CapDeviceResets Then
            CapabilitiesListView.ListItems.Item(17).Checked = True
            CapabilitiesListView.ListItems.Item(17).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(17).Checked = False
            CapabilitiesListView.ListItems.Item(17).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapDeviceSerialNumber"
        
        If Acceptor.CapDeviceSerialNumber Then
            CapabilitiesListView.ListItems.Item(18).Checked = True
            CapabilitiesListView.ListItems.Item(18).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(18).Checked = False
            CapabilitiesListView.ListItems.Item(18).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapEasitrax"
        
        If Acceptor.CapEasitrax Then
            CapabilitiesListView.ListItems.Item(19).Checked = True
            CapabilitiesListView.ListItems.Item(19).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(19).Checked = False
            CapabilitiesListView.ListItems.Item(19).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapEscrowTimeout"
        
        If Acceptor.CapEscrowTimeout Then
            CapabilitiesListView.ListItems.Item(20).Checked = True
            CapabilitiesListView.ListItems.Item(20).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(20).Checked = False
            CapabilitiesListView.ListItems.Item(20).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapFlashDownload"
        
        If Acceptor.CapFlashDownload Then
            CapabilitiesListView.ListItems.Item(21).Checked = True
            CapabilitiesListView.ListItems.Item(21).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(21).Checked = False
            CapabilitiesListView.ListItems.Item(21).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapNoPush"
        
        If Acceptor.CapNoPush Then
            CapabilitiesListView.ListItems.Item(22).Checked = True
            CapabilitiesListView.ListItems.Item(22).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(22).Checked = False
            CapabilitiesListView.ListItems.Item(22).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapNoteRetrieved"
        
        If Acceptor.CapNoteRetrieved Then
            CapabilitiesListView.ListItems.Item(23).Checked = True
            CapabilitiesListView.ListItems.Item(23).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(23).Checked = False
            CapabilitiesListView.ListItems.Item(23).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapOrientationExt"
        
        If Acceptor.CapOrientationExt Then
            CapabilitiesListView.ListItems.Item(24).Checked = True
            CapabilitiesListView.ListItems.Item(24).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(24).Checked = False
            CapabilitiesListView.ListItems.Item(24).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapSetBezel"
        
        If Acceptor.CapSetBezel Then
            CapabilitiesListView.ListItems.Item(25).Checked = True
            CapabilitiesListView.ListItems.Item(25).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(25).Checked = False
            CapabilitiesListView.ListItems.Item(25).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapTestDoc"
        
        If Acceptor.CapTestDoc Then
            CapabilitiesListView.ListItems.Item(26).Checked = True
            CapabilitiesListView.ListItems.Item(26).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(26).Checked = False
            CapabilitiesListView.ListItems.Item(26).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapVariantID"
        
        If Acceptor.CapVariantID Then
            CapabilitiesListView.ListItems.Item(27).Checked = True
            CapabilitiesListView.ListItems.Item(27).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(27).Checked = False
            CapabilitiesListView.ListItems.Item(27).Tag = "F"
        End If
        
        
        CapabilitiesListView.ListItems.Add , , "CapVariantPN"
        
        If Acceptor.CapVariantPN Then
            CapabilitiesListView.ListItems.Item(28).Checked = True
            CapabilitiesListView.ListItems.Item(28).Tag = "T"
        Else
            CapabilitiesListView.ListItems.Item(28).Checked = False
            CapabilitiesListView.ListItems.Item(28).Tag = "F"
        End If
    End If
    
End Sub
