VERSION 5.00
Begin VB.Form DeviceInfoForm 
   Caption         =   "Device Info"
   ClientHeight    =   8505
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9480
   LinkTopic       =   "Form2"
   ScaleHeight     =   8505
   ScaleWidth      =   9480
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton ClearCashButton 
      Caption         =   "Clear"
      Height          =   495
      Left            =   8520
      TabIndex        =   105
      Top             =   840
      Width           =   855
   End
   Begin VB.Label ApplicationPartNumText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   110
      Top             =   1440
      Width           =   2775
   End
   Begin VB.Label VariantPartNumText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   109
      Top             =   1680
      Width           =   2535
   End
   Begin VB.Label QPMeasuresText 
      Height          =   255
      Left            =   2400
      TabIndex        =   108
      Top             =   4560
      Width           =   2055
   End
   Begin VB.Label PerformanceText 
      Height          =   255
      Left            =   6720
      TabIndex        =   107
      Top             =   2520
      Width           =   1695
   End
   Begin VB.Label LifeTimeTotalsText 
      Height          =   255
      Left            =   2400
      TabIndex        =   106
      Top             =   2520
      Width           =   2055
   End
   Begin VB.Label Label41 
      Alignment       =   1  'Right Justify
      Caption         =   "Device Type:"
      Height          =   255
      Left            =   240
      TabIndex        =   104
      Top             =   480
      Width           =   2055
   End
   Begin VB.Label BNFStatusText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   103
      Top             =   1920
      Width           =   1695
   End
   Begin VB.Label ModelText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   102
      Top             =   1680
      Width           =   1695
   End
   Begin VB.Label BillPathText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   101
      Top             =   1440
      Width           =   1695
   End
   Begin VB.Label ResetsText1 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   100
      Top             =   1200
      Width           =   1695
   End
   Begin VB.Label CashInCassetteText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   99
      Top             =   960
      Width           =   1695
   End
   Begin VB.Label CassetteText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   98
      Top             =   720
      Width           =   1695
   End
   Begin VB.Label Label40 
      Alignment       =   1  'Right Justify
      Caption         =   "BNF Status:"
      Height          =   255
      Left            =   4560
      TabIndex        =   97
      Top             =   1920
      Width           =   2055
   End
   Begin VB.Label Label39 
      Alignment       =   1  'Right Justify
      Caption         =   "Model:"
      Height          =   255
      Left            =   4560
      TabIndex        =   96
      Top             =   1680
      Width           =   2055
   End
   Begin VB.Label Label38 
      Alignment       =   1  'Right Justify
      Caption         =   "Bill Path:"
      Height          =   255
      Left            =   4560
      TabIndex        =   95
      Top             =   1440
      Width           =   2055
   End
   Begin VB.Label Label37 
      Alignment       =   1  'Right Justify
      Caption         =   "Resets:"
      Height          =   255
      Left            =   4560
      TabIndex        =   94
      Top             =   1200
      Width           =   2055
   End
   Begin VB.Label DeviceCRCLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Device CRC:"
      Height          =   255
      Index           =   1
      Left            =   240
      TabIndex        =   93
      Top             =   720
      Width           =   2055
   End
   Begin VB.Label Label36 
      Alignment       =   1  'Right Justify
      Caption         =   "Cash in Cassette:"
      Height          =   255
      Left            =   4560
      TabIndex        =   92
      Top             =   960
      Width           =   2055
   End
   Begin VB.Label Label35 
      Alignment       =   1  'Right Justify
      Caption         =   "Cassette:"
      Height          =   255
      Left            =   4560
      TabIndex        =   91
      Top             =   720
      Width           =   2055
   End
   Begin VB.Label DocTooShortText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   90
      Top             =   5400
      Width           =   1695
   End
   Begin VB.Label Label34 
      Alignment       =   1  'Right Justify
      Caption         =   "Doc Too Short:"
      Height          =   255
      Left            =   4560
      TabIndex        =   89
      Top             =   5400
      Width           =   2055
   End
   Begin VB.Label CassetteRemovedText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   88
      Top             =   6840
      Width           =   1695
   End
   Begin VB.Label CassetteFullText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   87
      Top             =   6600
      Width           =   1695
   End
   Begin VB.Label DownloadsText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   86
      Top             =   6360
      Width           =   1695
   End
   Begin VB.Label ResetsText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   85
      Top             =   6120
      Width           =   1695
   End
   Begin VB.Label CalibrationsText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   84
      Top             =   5880
      Width           =   1695
   End
   Begin VB.Label DocTeaseText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   83
      Top             =   5640
      Width           =   1695
   End
   Begin VB.Label DocTooLongText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   82
      Top             =   5160
      Width           =   1695
   End
   Begin VB.Label OperatingHoursText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   81
      Top             =   4920
      Width           =   1695
   End
   Begin VB.Label OutOfOrderText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   80
      Top             =   4680
      Width           =   1695
   End
   Begin VB.Label OutOfServiceText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   79
      Top             =   4440
      Width           =   1695
   End
   Begin VB.Label JamNoRecoveryText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   78
      Top             =   4200
      Width           =   1695
   End
   Begin VB.Label JamStackerText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   77
      Top             =   3960
      Width           =   1695
   End
   Begin VB.Label JamRejectText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   76
      Top             =   3720
      Width           =   1695
   End
   Begin VB.Label JamsRecoveryText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   75
      Top             =   3480
      Width           =   1695
   End
   Begin VB.Label AllJamsText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   74
      Top             =   3240
      Width           =   1695
   End
   Begin VB.Label CC1RejectText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   73
      Top             =   3000
      Width           =   1695
   End
   Begin VB.Label CC0RejectText 
      Caption         =   "-"
      Height          =   255
      Left            =   6720
      TabIndex        =   72
      Top             =   2760
      Width           =   1695
   End
   Begin VB.Label Label33 
      Alignment       =   1  'Right Justify
      Caption         =   "Cassette Removed:"
      Height          =   255
      Left            =   4560
      TabIndex        =   71
      Top             =   6840
      Width           =   2055
   End
   Begin VB.Label Label32 
      Alignment       =   1  'Right Justify
      Caption         =   "Cassette Full:"
      Height          =   255
      Left            =   4560
      TabIndex        =   70
      Top             =   6600
      Width           =   2055
   End
   Begin VB.Label Label31 
      Alignment       =   1  'Right Justify
      Caption         =   "Downloads:"
      Height          =   255
      Left            =   4560
      TabIndex        =   69
      Top             =   6360
      Width           =   2055
   End
   Begin VB.Label Label30 
      Alignment       =   1  'Right Justify
      Caption         =   "Resets:"
      Height          =   255
      Left            =   4560
      TabIndex        =   68
      Top             =   6120
      Width           =   2055
   End
   Begin VB.Label Label29 
      Alignment       =   1  'Right Justify
      Caption         =   "Calibrations:"
      Height          =   255
      Left            =   4560
      TabIndex        =   67
      Top             =   5880
      Width           =   2055
   End
   Begin VB.Label Label28 
      Alignment       =   1  'Right Justify
      Caption         =   "Doc Tease:"
      Height          =   255
      Left            =   4560
      TabIndex        =   66
      Top             =   5640
      Width           =   2055
   End
   Begin VB.Label Label27 
      Alignment       =   1  'Right Justify
      Caption         =   "Doc Too Long:"
      Height          =   255
      Left            =   4560
      TabIndex        =   65
      Top             =   5160
      Width           =   2055
   End
   Begin VB.Label Label26 
      Alignment       =   1  'Right Justify
      Caption         =   "Operating Hours:"
      Height          =   255
      Left            =   4560
      TabIndex        =   64
      Top             =   4920
      Width           =   2055
   End
   Begin VB.Label Label25 
      Alignment       =   1  'Right Justify
      Caption         =   "Out of Order:"
      Height          =   255
      Left            =   4560
      TabIndex        =   63
      Top             =   4680
      Width           =   2055
   End
   Begin VB.Label Label24 
      Alignment       =   1  'Right Justify
      Caption         =   "Out of Service:"
      Height          =   255
      Left            =   4560
      TabIndex        =   62
      Top             =   4440
      Width           =   2055
   End
   Begin VB.Label Label23 
      Alignment       =   1  'Right Justify
      Caption         =   "Jam No Recovery:"
      Height          =   255
      Left            =   4560
      TabIndex        =   61
      Top             =   4200
      Width           =   2055
   End
   Begin VB.Label Label22 
      Alignment       =   1  'Right Justify
      Caption         =   "Jam Stacker:"
      Height          =   255
      Left            =   4560
      TabIndex        =   60
      Top             =   3960
      Width           =   2055
   End
   Begin VB.Label Label21 
      Alignment       =   1  'Right Justify
      Caption         =   "Jam Reject:"
      Height          =   255
      Left            =   4560
      TabIndex        =   59
      Top             =   3720
      Width           =   2055
   End
   Begin VB.Label Label20 
      Alignment       =   1  'Right Justify
      Caption         =   "Jam Recovery:"
      Height          =   255
      Left            =   4560
      TabIndex        =   58
      Top             =   3480
      Width           =   2055
   End
   Begin VB.Label Label19 
      Alignment       =   1  'Right Justify
      Caption         =   "All Jams:"
      Height          =   255
      Left            =   4560
      TabIndex        =   57
      Top             =   3240
      Width           =   2055
   End
   Begin VB.Label Label18 
      Alignment       =   1  'Right Justify
      Caption         =   "CC1Reject:"
      Height          =   255
      Left            =   4560
      TabIndex        =   56
      Top             =   3000
      Width           =   2055
   End
   Begin VB.Label Label17 
      Alignment       =   1  'Right Justify
      Caption         =   "CC0 Reject:"
      Height          =   255
      Left            =   4560
      TabIndex        =   55
      Top             =   2760
      Width           =   2055
   End
   Begin VB.Label Label16 
      Alignment       =   1  'Right Justify
      Caption         =   "Performance"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4560
      TabIndex        =   54
      Top             =   2520
      Width           =   2055
   End
   Begin VB.Label DocsBarcodeText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   53
      Top             =   7920
      Width           =   2055
   End
   Begin VB.Label DocsHostRejectText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   52
      Top             =   7680
      Width           =   2055
   End
   Begin VB.Label DocsWhileDisabledText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   51
      Top             =   7440
      Width           =   2055
   End
   Begin VB.Label DocsFFRejectText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   50
      Top             =   7200
      Width           =   2055
   End
   Begin VB.Label DocsDisabledRejectText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   49
      Top             =   6960
      Width           =   2055
   End
   Begin VB.Label DocsOrientRejectText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   48
      Top             =   6720
      Width           =   2055
   End
   Begin VB.Label DocsSecRejectText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   47
      Top             =   6480
      Width           =   2055
   End
   Begin VB.Label DocsRecRejectText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   46
      Top             =   6240
      Width           =   2055
   End
   Begin VB.Label DocsValidatedText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   45
      Top             =   6000
      Width           =   2055
   End
   Begin VB.Label DocsRecognitionText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   44
      Top             =   5760
      Width           =   2055
   End
   Begin VB.Label DocsEscrowText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   43
      Top             =   5520
      Width           =   2055
   End
   Begin VB.Label DocsStackedText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   42
      Top             =   5280
      Width           =   2055
   End
   Begin VB.Label MotorStartsText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   41
      Top             =   5040
      Width           =   2055
   End
   Begin VB.Label Last100Text 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   40
      Top             =   4800
      Width           =   2055
   End
   Begin VB.Label Label15 
      Alignment       =   1  'Right Justify
      Caption         =   "Docs Barcode:"
      Height          =   255
      Left            =   240
      TabIndex        =   39
      Top             =   7920
      Width           =   2055
   End
   Begin VB.Label Label14 
      Alignment       =   1  'Right Justify
      Caption         =   "Docs Host Reject:"
      Height          =   255
      Left            =   240
      TabIndex        =   38
      Top             =   7680
      Width           =   2055
   End
   Begin VB.Label Label13 
      Alignment       =   1  'Right Justify
      Caption         =   "Docs While Disabled:"
      Height          =   255
      Left            =   240
      TabIndex        =   37
      Top             =   7440
      Width           =   2055
   End
   Begin VB.Label Label12 
      Alignment       =   1  'Right Justify
      Caption         =   "Docs FF Reject:"
      Height          =   255
      Left            =   240
      TabIndex        =   36
      Top             =   7200
      Width           =   2055
   End
   Begin VB.Label Label11 
      Alignment       =   1  'Right Justify
      Caption         =   "Docs Disabled Reject:"
      Height          =   255
      Left            =   240
      TabIndex        =   35
      Top             =   6960
      Width           =   2055
   End
   Begin VB.Label Label10 
      Alignment       =   1  'Right Justify
      Caption         =   "Docs Orient Reject:"
      Height          =   255
      Left            =   240
      TabIndex        =   34
      Top             =   6720
      Width           =   2055
   End
   Begin VB.Label Label9 
      Alignment       =   1  'Right Justify
      Caption         =   "Docs Sec Reject:"
      Height          =   255
      Left            =   240
      TabIndex        =   33
      Top             =   6480
      Width           =   2055
   End
   Begin VB.Label Label8 
      Alignment       =   1  'Right Justify
      Caption         =   "Docs Rec Reject:"
      Height          =   255
      Left            =   240
      TabIndex        =   32
      Top             =   6240
      Width           =   2055
   End
   Begin VB.Label Label7 
      Alignment       =   1  'Right Justify
      Caption         =   "Docs Validated:"
      Height          =   255
      Left            =   240
      TabIndex        =   31
      Top             =   6000
      Width           =   2055
   End
   Begin VB.Label Label6 
      Alignment       =   1  'Right Justify
      Caption         =   "Docs Recognition:"
      Height          =   255
      Left            =   240
      TabIndex        =   30
      Top             =   5760
      Width           =   2055
   End
   Begin VB.Label Label5 
      Alignment       =   1  'Right Justify
      Caption         =   "Docs Escrow:"
      Height          =   255
      Left            =   240
      TabIndex        =   29
      Top             =   5520
      Width           =   2055
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      Caption         =   "Docs Stacked:"
      Height          =   255
      Left            =   240
      TabIndex        =   28
      Top             =   5280
      Width           =   2055
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      Caption         =   "Motor Starts:"
      Height          =   255
      Left            =   240
      TabIndex        =   27
      Top             =   5040
      Width           =   2055
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Caption         =   "Last 100:"
      Height          =   255
      Left            =   240
      TabIndex        =   26
      Top             =   4800
      Width           =   2055
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "QP Measures"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   25
      Top             =   4560
      Width           =   2055
   End
   Begin VB.Label VariantNameText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   24
      Top             =   1920
      Width           =   2055
   End
   Begin VB.Label BootPartNumText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   23
      Top             =   1200
      Width           =   2055
   End
   Begin VB.Label SerialNumText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   22
      Top             =   960
      Width           =   2055
   End
   Begin VB.Label DeviceCRCText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   21
      Top             =   720
      Width           =   2055
   End
   Begin VB.Label DeviceTypeText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   20
      Top             =   480
      Width           =   2055
   End
   Begin VB.Label TotalValidatedText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   19
      Top             =   3960
      Width           =   2055
   End
   Begin VB.Label TotalRecognizedText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   18
      Top             =   3720
      Width           =   2055
   End
   Begin VB.Label TotalEscrowText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   17
      Top             =   3480
      Width           =   2055
   End
   Begin VB.Label TotalOpHoursText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   16
      Top             =   3000
      Width           =   2055
   End
   Begin VB.Label DataMapText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   15
      Top             =   2760
      Width           =   2055
   End
   Begin VB.Label TotalMotStartsText 
      Caption         =   "-"
      Height          =   255
      Left            =   2400
      TabIndex        =   14
      Top             =   3240
      Width           =   2055
   End
   Begin VB.Label DataMapLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Data Map:"
      Height          =   255
      Index           =   1
      Left            =   240
      TabIndex        =   13
      Top             =   2760
      Width           =   2055
   End
   Begin VB.Label TotalOpHoursLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Total Op Hours:"
      Height          =   255
      Index           =   0
      Left            =   240
      TabIndex        =   12
      Top             =   3000
      Width           =   2055
   End
   Begin VB.Label TotalMotStartsLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Total Mot Starts:"
      Height          =   255
      Index           =   0
      Left            =   240
      TabIndex        =   11
      Top             =   3240
      Width           =   2055
   End
   Begin VB.Label TotalEscrowLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Total Escrow:"
      Height          =   255
      Index           =   0
      Left            =   240
      TabIndex        =   10
      Top             =   3480
      Width           =   2055
   End
   Begin VB.Label TotalRecognizedLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Total Recognized:"
      Height          =   255
      Index           =   0
      Left            =   240
      TabIndex        =   9
      Top             =   3720
      Width           =   2055
   End
   Begin VB.Label TotalValidatedLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Total Validated:"
      Height          =   255
      Index           =   0
      Left            =   240
      TabIndex        =   8
      Top             =   3960
      Width           =   2055
   End
   Begin VB.Label LifeTimeTotalsLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Life Time Totals"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   7
      Top             =   2520
      Width           =   2055
   End
   Begin VB.Label VariantNameLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Variant Name:"
      Height          =   255
      Index           =   6
      Left            =   240
      TabIndex        =   6
      Top             =   1920
      Width           =   2055
   End
   Begin VB.Label VariantPartNumLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Variant Part #:"
      Height          =   255
      Index           =   5
      Left            =   240
      TabIndex        =   5
      Top             =   1680
      Width           =   2055
   End
   Begin VB.Label ApplicationPartNumLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Application Part #/ID:"
      Height          =   255
      Index           =   4
      Left            =   240
      TabIndex        =   4
      Top             =   1440
      Width           =   2055
   End
   Begin VB.Label BootPartNumLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Boot Part #:"
      Height          =   255
      Index           =   3
      Left            =   240
      TabIndex        =   3
      Top             =   1200
      Width           =   2055
   End
   Begin VB.Label SerialNumLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Serial #:"
      Height          =   255
      Index           =   2
      Left            =   240
      TabIndex        =   2
      Top             =   960
      Width           =   2055
   End
   Begin VB.Label DeviceTypeLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Device Type:"
      Height          =   255
      Index           =   0
      Left            =   5280
      TabIndex        =   1
      Top             =   -3120
      Width           =   2055
   End
   Begin VB.Label DeviceInfoLabel 
      Caption         =   "Device Info"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "DeviceInfoForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public WithEvents Acceptor As MPost.Acceptor
Attribute Acceptor.VB_VarHelpID = -1

Private Sub ClearCashButton_Click()
    Acceptor.ClearCashBoxTotal
End Sub

Private Sub Form_Load()

    Dim LifeTimeTotals, AuditQP, Performance

    If Acceptor.CapDeviceType Then
        DeviceTypeText.Caption = Acceptor.DeviceType
    Else
        DeviceTypeText.Caption = "Not supported"
    End If
    
    DeviceCRCText.Caption = Acceptor.DeviceCRC
    
    If True Then
    If Acceptor.CapDeviceSerialNumber Then
        SerialNumText.Caption = Acceptor.DeviceSerialNumber
    Else
        SerialNumText.Caption = "Not supported"
    End If
    
    If Acceptor.CapBootPN Then
        BootPartNumText.Caption = Acceptor.BootPN
    Else
        BootPartNumText.Caption = "Not supported"
    End If
    
    If Acceptor.CapApplicationPN Then
        Dim Text As String
        
        Text = Acceptor.ApplicationPN
        
        If Acceptor.CapApplicationID Then
            Text = Text + "/" + Acceptor.ApplicationId
        Else
            Text = Text + "/Not supported"
        End If
        
        ApplicationPartNumText.Caption = Text
    Else
        ApplicationPartNumText.Caption = "Not supported"
    End If
    
    If Acceptor.CapVariantPN Then
        Text = Acceptor.VariantPN
        
        If Acceptor.CapVariantID Then
            Text = Text + "/" + Acceptor.VariantID
        Else
            Text = Text + "/Not supported"
        End If
    
        VariantPartNumText.Caption = Text
        
        Dim Names() As String
        
        Names = Acceptor.VariantNames
        
        Text = ""
        
        Dim I As Integer
        
        For I = LBound(Names) To UBound(Names)
            Text = Text + Names(I) + " "
        Next I
        
        VariantNameText.Caption = Text
    Else
        VariantPartNumText.Caption = "Not supported"
        VariantNameText.Caption = "Not supported"
    End If
    
    
    
    If Acceptor.CapAudit Then
        LifeTimeTotals = Acceptor.AuditLifeTimeTotals
        
        If (Not IsEmpty(LifeTimeTotals)) Then
            DataMapText.Caption = LifeTimeTotals(0)
            TotalOpHoursText.Caption = LifeTimeTotals(1)
            TotalMotStartsText.Caption = LifeTimeTotals(2)
            TotalEscrowText.Caption = LifeTimeTotals(3)
            TotalRecognizedText.Caption = LifeTimeTotals(4)
            TotalValidatedText.Caption = LifeTimeTotals(5)
        Else
            DataMapText.Caption = "Empty"
            TotalOpHoursText.Caption = "Empty"
            TotalMotStartsText.Caption = "Empty"
            TotalEscrowText.Caption = "Empty"
            TotalRecognizedText.Caption = "Empty"
            TotalValidatedText.Caption = "Empty"
        End If
        AuditQP = Acceptor.AuditQP
        
        If (Not IsEmpty(AuditQP)) Then
            Last100Text.Caption = AuditQP(0)
            MotorStartsText.Caption = AuditQP(1)
            DocsStackedText.Caption = AuditQP(2)
            DocsEscrowText.Caption = AuditQP(3)
            DocsRecognitionText.Caption = AuditQP(4)
            DocsValidatedText.Caption = AuditQP(5)
            DocsRecRejectText.Caption = AuditQP(6)
            DocsSecRejectText.Caption = AuditQP(7)
            DocsOrientRejectText.Caption = AuditQP(8)
            DocsDisabledRejectText.Caption = AuditQP(9)
            DocsFFRejectText.Caption = AuditQP(10)
            DocsWhileDisabledText.Caption = AuditQP(11)
            DocsHostRejectText.Caption = AuditQP(12)
            DocsBarcodeText.Caption = AuditQP(13)
        Else
            Last100Text.Caption = "Empty"
            MotorStartsText.Caption = "Empty"
            DocsStackedText.Caption = "Empty"
            DocsEscrowText.Caption = "Empty"
            DocsRecognitionText.Caption = "Empty"
            DocsValidatedText.Caption = "Empty"
            DocsRecRejectText.Caption = "Empty"
            DocsSecRejectText.Caption = "Empty"
            DocsOrientRejectText.Caption = "Empty"
            DocsDisabledRejectText.Caption = "Empty"
            DocsFFRejectText.Caption = "Empty"
            DocsWhileDisabledText.Caption = "Empty"
            DocsHostRejectText.Caption = "Empty"
            DocsBarcodeText.Caption = "Empty"
        End If
        
        Performance = Acceptor.AuditPerformance
        
        If (Not IsEmpty(Performance)) Then
            CC0RejectText.Caption = Performance(0)
            CC1RejectText.Caption = Performance(1)
            AllJamsText.Caption = Performance(2)
            JamsRecoveryText.Caption = Performance(3)
            JamRejectText.Caption = Performance(4)
            JamStackerText.Caption = Performance(5)
            JamNoRecoveryText.Caption = Performance(6)
            OutOfServiceText.Caption = Performance(7)
            OutOfOrderText.Caption = Performance(8)
            OperatingHoursText.Caption = Performance(9)
            DocTooLongText.Caption = Performance(10)
            DocTooShortText.Caption = Performance(11)
            DocTeaseText.Caption = Performance(12)
            CalibrationsText.Caption = Performance(13)
            ResetsText.Caption = Performance(14)
            DownloadsText.Caption = Performance(15)
            CassetteFullText.Caption = Performance(16)
            CassetteRemovedText.Caption = Performance(17)
        Else
            CC0RejectText.Caption = "Empty"
            CC1RejectText.Caption = "Empty"
            AllJamsText.Caption = "Empty"
            JamsRecoveryText.Caption = "Empty"
            JamRejectText.Caption = "Empty"
            JamStackerText.Caption = "Empty"
            JamNoRecoveryText.Caption = "Empty"
            OutOfServiceText.Caption = "Empty"
            OutOfOrderText.Caption = "Empty"
            OperatingHoursText.Caption = "Empty"
            DocTooLongText.Caption = "Empty"
            DocTooShortText.Caption = "Empty"
            DocTeaseText.Caption = "Empty"
            CalibrationsText.Caption = "Empty"
            ResetsText.Caption = "Empty"
            DownloadsText.Caption = "Empty"
            CassetteFullText.Caption = "Empty"
            CassetteRemovedText.Caption = "Empty"
        End If
    Else
        LifeTimeTotalsText.Caption = "Not supported"
        PerformanceText.Caption = "Not supported"
        QPMeasuresText.Caption = "Not supported"
    End If
    
    If Acceptor.CashBoxAttached Then
        If Acceptor.CashBoxFull Then
            CassetteText.Caption = "Full"
        Else
            CassetteText.Caption = "Installed"
        End If
    Else
        CassetteText.Caption = "Removed"
    End If

    If Acceptor.CapCashBoxTotal Then
        CashInCassetteText.Caption = CStr(Acceptor.CashBoxTotal)
        ClearCashButton.Visible = True
    Else
        CashInCassetteText.Caption = "Not supported"
        ClearCashButton.Visible = False
    End If
    
    If Acceptor.CapDeviceResets Then
        ResetsText1.Caption = CStr(Acceptor.DeviceResets)
    Else
        ResetsText1.Caption = "Not supported"
    End If
    
    If Acceptor.DeviceJammed Then
        BillPathText.Caption = "Jammed"
    Else
        BillPathText.Caption = "Clear"
    End If
        
    If Acceptor.DeviceModel < 32 Then
        ModelText.Caption = CStr(Acceptor.DeviceModel)
    Else
        ModelText.Caption = CStr(Acceptor.DeviceModel) + " (" + Chr(Acceptor.DeviceModel) + ")"
    End If
    
    If Acceptor.CapBNFStatus Then
        Select Case Acceptor.BNFStatus
            Case BNFStatus_Unknown
                BNFStatusText.Caption = "Unknown"
            Case BNFStatus_OK
                BNFStatusText.Caption = "OK"
            Case BNFStatus_NotAttached
                BNFStatusText.Caption = "Not Attached"
            Case BNFStatus_Error
                BNFStatusText.Caption = "Error"
        End Select
    Else
        BNFStatusText.Caption = "Not supported"
    End If
    End If
End Sub
