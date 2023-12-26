VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form BillSetForm 
   Caption         =   "Bill Set"
   ClientHeight    =   8460
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7380
   LinkTopic       =   "Form2"
   ScaleHeight     =   8460
   ScaleWidth      =   7380
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ListView BillSetListView 
      Height          =   8175
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   7095
      _ExtentX        =   12515
      _ExtentY        =   14420
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
Attribute VB_Name = "BillSetForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

    Public WithEvents Acceptor As MPost.Acceptor
Attribute Acceptor.VB_VarHelpID = -1
    
    Dim Bills() As Bill
    Dim BillEnables() As Boolean
    

Private Sub BillSetListView_ItemCheck(ByVal Item As MSComctlLib.ListItem)
    If Item.Checked Then
        BillEnables(Item.Index - 1) = True
    Else
        BillEnables(Item.Index - 1) = False
    End If
    
    Acceptor.SetBillTypeEnables BillEnables
End Sub

Private Sub Form_Load()
    BillSetListView.ColumnHeaders.Add , , "#"
    BillSetListView.ColumnHeaders.Add , , "ISO Code"
    BillSetListView.ColumnHeaders.Add , , "Value"
    BillSetListView.ColumnHeaders.Add , , "Attributes"
    
'    BillSetListView.ColumnHeaders.Item(1).Width = "4000"


    If Acceptor.Connected Then
        Bills = Acceptor.BillTypes
        BillEnables = Acceptor.GetBillTypeEnables
        
        Dim I As Integer
        
        For I = 0 To UBound(Bills)
            BillSetListView.ListItems.Add , , CStr(I + 1)
            
            BillSetListView.ListItems.Item(I + 1).SubItems(1) = CStr(Bills(I).Country)
            BillSetListView.ListItems.Item(I + 1).SubItems(2) = CStr(Bills(I).Value)
            BillSetListView.ListItems.Item(I + 1).SubItems(3) = Bills(I).Series + " " + Bills(I).Type + " " + Bills(I).Compatibility + " " + Bills(I).Version
        
            If BillEnables(I) Then
                BillSetListView.ListItems.Item(I + 1).Checked = True
            End If
        Next I
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    BillSetListView.ColumnHeaders.Clear
    BillSetListView.ListItems.Clear
End Sub
