VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form BillValuesForm 
   Caption         =   "Bill Values"
   ClientHeight    =   8730
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7485
   LinkTopic       =   "Form2"
   ScaleHeight     =   8730
   ScaleWidth      =   7485
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ListView BillValuesListView 
      Height          =   8415
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   7215
      _ExtentX        =   12726
      _ExtentY        =   14843
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
Attribute VB_Name = "BillValuesForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

    Public WithEvents Acceptor As MPost.Acceptor
Attribute Acceptor.VB_VarHelpID = -1
    
    Dim BillValues() As Bill
    Dim BillValueEnables() As Boolean

Private Sub BillValuesListView_ItemCheck(ByVal Item As MSComctlLib.ListItem)
    If Item.Checked Then
        BillValueEnables(Item.Index - 1) = True
    Else
        BillValueEnables(Item.Index - 1) = False
    End If
    
    Acceptor.SetBillValueEnables BillValueEnables
End Sub

Private Sub Form_Load()
    BillValuesListView.ColumnHeaders.Add , , "#"
    BillValuesListView.ColumnHeaders.Add , , "ISO Code"
    BillValuesListView.ColumnHeaders.Add , , "Value"
    BillValuesListView.ColumnHeaders.Add , , "Attributes"
    

    If Acceptor.Connected Then
        BillValues = Acceptor.BillValues
        BillValueEnables = Acceptor.GetBillValueEnables
        
        Dim I As Integer
        
        For I = 0 To UBound(BillValues)
            
            BillValuesListView.ListItems.Add , , CStr(I + 1)
            
            BillValuesListView.ListItems.Item(I + 1).SubItems(1) = BillValues(I).Country
            BillValuesListView.ListItems.Item(I + 1).SubItems(2) = CStr(BillValues(I).Value)
            BillValuesListView.ListItems.Item(I + 1).SubItems(3) = BillValues(I).Series + " " + BillValues(I).Type + " " + BillValues(I).Compatibility + " " + BillValues(I).Version
        
            If BillValueEnables(I) Then
                BillValuesListView.ListItems.Item(I + 1).Checked = True
            End If
       Next I
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    BillValuesListView.ColumnHeaders.Clear
    BillValuesListView.ListItems.Clear
End Sub
