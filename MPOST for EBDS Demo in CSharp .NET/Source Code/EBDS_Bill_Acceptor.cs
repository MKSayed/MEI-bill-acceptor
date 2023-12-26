using System;
using System.IO;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using MPOST;

namespace M_POST_for_EBDS_Demo_In_CSharp_DotNet
{
    public partial class EBDS_Bill_Acceptor : Form
    {
        private String ComPortName;
        private PowerUp PupMode = PowerUp.A;
        private Launcher MainWindow;
        private MPOST.Acceptor BillAcceptor = new MPOST.Acceptor();

        #region Event Delegate Definitions

        private CalibrateFinishEventHandler CalibrateFinishDelegate;
        private CalibrateProgressEventHandler CalibrateProgressDelegate;
        private CalibrateStartEventHandler CalibrateStartDelegate;
        private CashBoxCleanlinessEventHandler CashBoxCleanlinessDelegate;
        private CashBoxAttachedEventHandler CashBoxAttachedDelegate;
        private CashBoxRemovedEventHandler CashBoxRemovedDelegate;
        private CheatedEventHandler CheatedDelegate;
        private ClearAuditEventHandler ClearAuditDelegate;
        private ConnectedEventHandler ConnectedDelegate;
        private DisconnectedEventHandler DisconnectedDelegate;
        private DownloadFinishEventHandler DownloadFinishDelegate;
        private DownloadProgressEventHandler DownloadProgressDelegate;
        private DownloadRestartEventHandler DownloadRestartDelegate;
        private DownloadStartEventHandler DownloadStartDelegate;
        private ErrorOnSendMessageEventHandler ErrorOnSendMessageDelegate;
        private EscrowEventHandler EscrowedDelegate;
        private FailureClearedEventHandler FailureClearedDelegate;
        private FailureDetectedEventHandler FailureDetectedDelegate;
        private InvalidCommandEventHandler InvalidCommandDelegate;
        private JamClearedEventHandler JamClearedDelegate;
        private JamDetectedEventHandler JamDetectedDelegate;
        private NoteRetrievedEventHandler NoteRetrievedDelegate;
        private PauseClearedEventHandler PauseClearedDelegate;
        private PauseDetectedEventHandler PauseDetectedDelegate;
        private PowerUpCompleteEventHandler PowerUpCompleteDelegate;
        private PowerUpEventHandler PowerUpDelegate;
        private PUPEscrowEventHandler PUPEscrowDelegate;
        private RejectedEventHandler RejectedDelegate;
        private ReturnedEventHandler ReturnedDelegate;
        private StackedEventHandler StackedDelegate;
        // A new stacked event with document information has been added. Recommanded to be used.
        private StackedWithDocInfoEventHandler StackedWithDocInfoDelegate;
        private StackerFullClearedEventHandler StackerFullClearedDelegate;
        private StackerFullEventHandler StackerFullDelegate;
        private StallClearedEventHandler StallClearedDelegate;
        private StallDetectedEventHandler StallDetectedDelegate;
        
        #endregion 

        public void SetPortName(String port_name)
        {
            ComPortName = port_name;
        }

        public string GetPortName()
        {
            return ComPortName;
        }

        public void SetMainWindow(Launcher main_window)
        {
            MainWindow = main_window;
        }

        // Form Window Constructor Function.
        public EBDS_Bill_Acceptor()
        {
            InitializeComponent();

            CalibrateFinishDelegate = new CalibrateFinishEventHandler(HandleCalibrateFinishEvent);
            CalibrateProgressDelegate = new CalibrateProgressEventHandler(HandleCalibrateProgressEvent);
            CalibrateStartDelegate = new CalibrateStartEventHandler(HandleCalibrateStartEvent);
            CashBoxCleanlinessDelegate = new CashBoxCleanlinessEventHandler(HandleCashBoxCleanlinessEvent);
            CashBoxAttachedDelegate = new CashBoxAttachedEventHandler(HandleCashBoxAttachedEvent);
            CashBoxRemovedDelegate = new CashBoxRemovedEventHandler(HandleCashBoxRemovedEvent);
            CheatedDelegate = new CheatedEventHandler(HandleCheatedEvent);
            ClearAuditDelegate = new ClearAuditEventHandler(HandleClearAuditEvent);
            ConnectedDelegate = new ConnectedEventHandler(HandleConnectedEvent);
            DisconnectedDelegate = new DisconnectedEventHandler(HandleDisconnectedEvent);
            DownloadFinishDelegate = new DownloadFinishEventHandler(HandleDownloadFinishEvent);
            DownloadProgressDelegate = new DownloadProgressEventHandler(HandleDownloadProgressEvent);
            DownloadRestartDelegate = new DownloadRestartEventHandler(HandleDownloadRestartEvent);
            DownloadStartDelegate = new DownloadStartEventHandler(HandleDownloadStartEvent);
            ErrorOnSendMessageDelegate = new ErrorOnSendMessageEventHandler(HandleSendMessageErrorEvent);
            EscrowedDelegate = new EscrowEventHandler(HandleEscrowedEvent);
            FailureClearedDelegate = new FailureClearedEventHandler(HandleFailureClearedEvent);
            FailureDetectedDelegate = new FailureDetectedEventHandler(HandleFailureDetectedEvent);
            InvalidCommandDelegate = new InvalidCommandEventHandler(HandleInvalidCommandEvent);
            JamClearedDelegate = new JamClearedEventHandler(HandleJamClearedEvent);
            JamDetectedDelegate = new JamDetectedEventHandler(HandleJamDetectedEvent);
            NoteRetrievedDelegate = new NoteRetrievedEventHandler(HandleNoteRetrievedEvent);
            PauseClearedDelegate = new PauseClearedEventHandler(HandlePauseClearedEvent);
            PauseDetectedDelegate = new PauseDetectedEventHandler(HandlePauseDetectedEvent);
            PowerUpCompleteDelegate = new PowerUpCompleteEventHandler(HandlePowerUpCompleteEvent);
            PowerUpDelegate = new PowerUpEventHandler(HandlePowerUpEvent);
            PUPEscrowDelegate = new PUPEscrowEventHandler(HandlePUPEscrowEvent);
            RejectedDelegate = new RejectedEventHandler(HandleRejectedEvent);
            ReturnedDelegate = new ReturnedEventHandler(HandleReturnedEvent);
            StackedDelegate = new StackedEventHandler(HandleStackedEvent);
            // A new stacked event with document information has been added. Recommanded to be used.
            StackedWithDocInfoDelegate = new StackedWithDocInfoEventHandler(HandleStackedWithDocInfoEvent);
            StackerFullClearedDelegate = new StackerFullClearedEventHandler(HandleStackerFullClearedEvent);
            StackerFullDelegate = new StackerFullEventHandler(HandleStackerFullEvent);
            StallClearedDelegate = new StallClearedEventHandler(HandleStallClearedEvent);
            StallDetectedDelegate = new StallDetectedEventHandler(HandleStallDetectedEvent);
            
            // Connect to the events.
            BillAcceptor.OnCalibrateFinish += CalibrateFinishDelegate;
            BillAcceptor.OnCalibrateProgress += CalibrateProgressDelegate;
            BillAcceptor.OnCalibrateStart += CalibrateStartDelegate;
            BillAcceptor.OnCashBoxCleanlinessDetected += CashBoxCleanlinessDelegate;
            BillAcceptor.OnCashBoxAttached += CashBoxAttachedDelegate;
            BillAcceptor.OnCashBoxRemoved += CashBoxRemovedDelegate;
            BillAcceptor.OnCheated += CheatedDelegate;
            BillAcceptor.OnClearAuditComplete += ClearAuditDelegate;
            BillAcceptor.OnConnected += ConnectedDelegate;
            BillAcceptor.OnDisconnected += DisconnectedDelegate;
            BillAcceptor.OnDownloadFinish += DownloadFinishDelegate;
            BillAcceptor.OnDownloadProgress += DownloadProgressDelegate;
            BillAcceptor.OnDownloadRestart += DownloadRestartDelegate;
            BillAcceptor.OnDownloadStart += DownloadStartDelegate;
            BillAcceptor.OnSendMessageFailure += ErrorOnSendMessageDelegate;
            BillAcceptor.OnEscrow += EscrowedDelegate;
            BillAcceptor.OnFailureCleared += FailureClearedDelegate;
            BillAcceptor.OnFailureDetected += FailureDetectedDelegate;
            BillAcceptor.OnInvalidCommand += InvalidCommandDelegate;
            BillAcceptor.OnJamCleared += JamClearedDelegate;
            BillAcceptor.OnJamDetected += JamDetectedDelegate;
            BillAcceptor.OnNoteRetrieved += NoteRetrievedDelegate;
            BillAcceptor.OnPauseCleared += PauseClearedDelegate;
            BillAcceptor.OnPauseDetected += PauseDetectedDelegate;
            BillAcceptor.OnPowerUpComplete += PowerUpCompleteDelegate;
            BillAcceptor.OnPowerUp += PowerUpDelegate;
            BillAcceptor.OnPUPEscrow += PUPEscrowDelegate;
            BillAcceptor.OnRejected += RejectedDelegate;
            BillAcceptor.OnReturned += ReturnedDelegate;
            BillAcceptor.OnStacked += StackedDelegate;
            //A new STACKED event with document information has been added. Recommended to be used.
            BillAcceptor.OnStackedWithDocInfo += StackedWithDocInfoDelegate;
            BillAcceptor.OnStackerFullCleared += StackerFullClearedDelegate;
            BillAcceptor.OnStackerFull += StackerFullDelegate;
            BillAcceptor.OnStallCleared += StallClearedDelegate;
            BillAcceptor.OnStallDetected += StallDetectedDelegate;
            
            DebugLogPath.Text = BillAcceptor.DebugLogPath;
        }

        private void EBDS_Bill_Acceptor_FormClosed(object sender, FormClosedEventArgs e)
        {
            MainWindow.CloseChild(this);

            if (!OpenBtn.Enabled)
                BillAcceptor.Close();
        }

        private void EBDS_Bill_Acceptor_Load(object sender, EventArgs e)
        {
            ComPortNameBox.Text = ComPortName;
        }

        private void PopulateCapabilities()
        {
            CapabilityGrid.Rows.Clear();
            string[] row;

            row = new string[] { "CapAdvBookmark", "False", "The advanced bookmark feature is available" };
            if (BillAcceptor.CapAdvBookmark) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapApplicationID", "False", "The application part number is available" };
            if (BillAcceptor.CapApplicationID) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapApplicationPN", "False", "The application file's part number is available" };
            if (BillAcceptor.CapApplicationPN) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapAssetNumber", "False", "The asset number may be set." };
            if (BillAcceptor.CapAssetNumber) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapAudit", "False", "Audit data is available" };
            if (BillAcceptor.CapAudit) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapBarCodes", "False", "The unit supports bar coded documents" };
            if (BillAcceptor.CapBarCodes) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapBarCodesExt", "False", "Extended bar codes are supported" };
            if (BillAcceptor.CapBarCodesExt) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapBNFStatus", "False", "The BNFStatus property is supported" };
            if (BillAcceptor.CapBNFStatus) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapBookmark", "False", "Bookmark documents are supported" };
            if (BillAcceptor.CapBookmark) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapBootPN", "False", "The bootloader part number is available" };
            if (BillAcceptor.CapBootPN) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapCalibrate", "False", "The unit may be calibrated" };
            if (BillAcceptor.CapCalibrate) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapCashBoxTotal", "False", "The unit supports a cash box total counter" };
            if (BillAcceptor.CapCashBoxTotal) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapClearAudit", "False", "The unit supports the clear audit command" };
            if (BillAcceptor.CapClearAudit) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapCouponExt", "False", "The unit supports a extended generic coupons" };
            if (BillAcceptor.CapCouponExt) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapDevicePaused", "False", "The unit supports the paused state" };
            if (BillAcceptor.CapDevicePaused) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapDeviceSoftReset", "False", "The unit supports the soft reset command" };
            if (BillAcceptor.CapDeviceSoftReset) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapDeviceType", "False", "The unit reports its device type" };
            if (BillAcceptor.CapDeviceType) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapDeviceResets", "False", "The unit reports its reset counter" };
            if (BillAcceptor.CapDeviceResets) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapDeviceSerialNumber", "False", "The unit reports its serial number" };
            if (BillAcceptor.CapDeviceSerialNumber) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapEasiTrax", "False", "EasiTrax is supported" };
            if (BillAcceptor.CapEasitrax) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapEscrowTimeout", "False", "The unit supports the escrow timeout command" };
            if (BillAcceptor.CapEscrowTimeout) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapFlashDownload", "False", "The unit supports flash download" };
            if (BillAcceptor.CapFlashDownload) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapNoPush", "False", "The unit supports no_push mode" };
            if (BillAcceptor.CapNoPush) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapNoteRetrieved", "False", "The unit supports reporting when user takes rejected/returned notes" };
            if (BillAcceptor.CapNoteRetrieved) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapOrientationExt", "False", "The unit supports extended handling of bill orientation" };
            if (BillAcceptor.CapOrientationExt) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapPupExt", "False", "The unit supports extended PUP mode" };
            if (BillAcceptor.CapPupExt) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapSetBezel", "False", "The bezel may be configured" };
            if (BillAcceptor.CapSetBezel) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapTestDoc", "False", "Special Test Documents are supported" };
            if (BillAcceptor.CapTestDoc) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapVariantID", "False", "The variant part number is available" };
            if (BillAcceptor.CapVariantID) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            row = new string[] { "CapVariantPN", "False", "The variant file's part number is available" };
            if (BillAcceptor.CapVariantPN) row[1] = "True";
            CapabilityGrid.Rows.Add(row);

            CapabilityGrid.Sort(CapabilityGrid.Columns[0], ListSortDirection.Ascending);
        }

        private void PopulateBillSet()
        {
            MPOST.Bill[] Bills = BillAcceptor.BillTypes;
            Boolean[] Enables = BillAcceptor.GetBillTypeEnables();
            BillSetGridView.Rows.Clear();

            for (int i = 0; i < Bills.Length; i++)
            {
                String[] row = new String[5]; 
                row[0] = (i+1).ToString();
                row[1] = Bills[i].Country;
                row[2] = Bills[i].Value.ToString();
                row[3] = Bills[i].Type.ToString() +
                         " " +
                         Bills[i].Series.ToString() +
                         " " +
                         Bills[i].Compatibility.ToString() +
                         " " +
                         Bills[i].Version.ToString();
                row[4] = Enables[i] ? "True" : "False";

                BillSetGridView.Rows.Add(row);
            }
        }

        private void PopulateBillValue()
        {
            MPOST.Bill[] Bills = BillAcceptor.BillValues;
            Boolean[] Enables = BillAcceptor.GetBillValueEnables();
            BillValueGridView.Rows.Clear();

            for (int i = 0; i < Bills.Length; i++)
            {
                String[] row = new String[5];
                row[0] = (i + 1).ToString();
                row[1] = Bills[i].Country;
                row[2] = Bills[i].Value.ToString();
                row[3] = Bills[i].Type.ToString() + 
                         " " +
                         Bills[i].Series.ToString() + 
                         " " +
                         Bills[i].Compatibility.ToString() + 
                         " " +
                         Bills[i].Version.ToString();
                row[4] = Enables[i] ? "True" : "False";

                BillValueGridView.Rows.Add(row);
            }
        }

        private void PopulateProperties()
        {
            AutoStack.Enabled = true;
            EnableBarCodes.Enabled = BillAcceptor.CapBarCodes;
            EnableBookmarks.Enabled = BillAcceptor.CapBookmark;
            ExtCoupon.Enabled = BillAcceptor.CapCouponExt;
            EnableNoPush.Enabled = BillAcceptor.CapNoPush;
            EnableHighSecurity.Enabled = true;
            OrientationCtl.Enabled = true;
            OrientationCtlExt.Enabled = BillAcceptor.CapOrientationExt;
            SoftReset.Enabled = BillAcceptor.CapDeviceSoftReset;
            billTimeout.Enabled = BillAcceptor.CapEscrowTimeout;
            barCodeTimeOut.Enabled = BillAcceptor.CapEscrowTimeout;
            setTimeout.Enabled = BillAcceptor.CapEscrowTimeout;
            sendRawBtn.Enabled = true;
            setDisconnectTimeOut.Enabled = disconnectTimeout.Enabled = true;
            bezelSelection.Enabled = BillAcceptor.CapSetBezel;

            if (BillAcceptor.CapEasitrax)
            {
                assetNumberEntry.Text = BillAcceptor.AssetNumber;
                assetNumberEntry.Enabled = true;
                setAssetBtn.Enabled = true;
                qryAssetBtn.Enabled = true;
            }
            else if (BillAcceptor.CapAssetNumber)
            {
                assetNumberEntry.Text = "";
                assetNumberEntry.Enabled = true;
                setAssetBtn.Enabled = true;
                qryAssetBtn.Enabled = false;
            }
            else
            {
                assetNumberEntry.Enabled = false;
                setAssetBtn.Enabled = false;
                qryAssetBtn.Enabled = false;
            }
        }

        private void PopulateInfo()
        {
            try
            {
                if (BillAcceptor.CapDeviceType)
                    DevType.Text = BillAcceptor.DeviceType;
                else
                    DevType.Text = "Not supported";

                try
                {
                    String t = BillAcceptor.DeviceSerialNumber;

                    if (t.Length > 0)
                        SerialNum.Text = t;
                    else
                        SerialNum.Text = "Not available";
                }
                catch
                {
                    SerialNum.Text = "Not supported";
                }

                if (BillAcceptor.CapApplicationPN)
                {
                    String t = BillAcceptor.ApplicationPN;

                    if (BillAcceptor.CapApplicationID)
                        t += "/" + BillAcceptor.ApplicationID;
                    else
                        t += "/Not supported";

                    AppPN.Text = t;
                }
                else
                    AppPN.Text = "Not supported";

                if (BillAcceptor.CapVariantPN)
                {
                    String t = BillAcceptor.VariantPN;

                    if (BillAcceptor.CapVariantID)
                        t += "/" + BillAcceptor.VariantID;
                    else
                        t += "/Not supported";

                    VarPN.Text = t;
                    t = "";

                    foreach (String v in BillAcceptor.VariantNames)
                    {
                        t = t + v + " ";
                    }

                    VarName.Text = t;
                }
                else
                {
                    VarPN.Text = "Not supported";
                    VarName.Text = "Not supported";
                }

                if (BillAcceptor.CapBootPN)
                    BootPN.Text = BillAcceptor.BootPN;
                else
                    BootPN.Text = "Not supported";

                CRC.Text = "0x" + BillAcceptor.DeviceCRC.ToString("X");

                if (BillAcceptor.CapBNFStatus)
                {
                    if (BillAcceptor.BNFStatus == BNFStatus.Unknown)
                        BNFState.Text = "Unknown";
                    else if (BillAcceptor.BNFStatus == BNFStatus.OK)
                        BNFState.Text = "OK";
                    else if (BillAcceptor.BNFStatus == BNFStatus.Error)
                        BNFState.Text = "Error";
                    else if (BillAcceptor.BNFStatus == BNFStatus.NotAttached)
                        BNFState.Text = "Not attached";
                }
                else
                    BNFState.Text = "Not supported";

                if (BillAcceptor.CapAudit)
                {
                    Int32[] t = BillAcceptor.AuditLifeTimeTotals;
                    LifeTime.Text = "";
                    DataMap.Text = t[0].ToString();
                    TotalOpHours.Text = t[1].ToString();
                    TotalMotStarts.Text = t[2].ToString();
                    TotalEscrow.Text = t[3].ToString();
                    TotalRecognized.Text = t[4].ToString();
                    TotalValidated.Text = t[5].ToString();

                    t = BillAcceptor.AuditQP;
                    QPMeasures.Text = "";
                    Last100.Text = "%" + t[0].ToString();
                    MotorStarts.Text = t[1].ToString();
                    DocsStacked.Text = t[2].ToString();
                    DocsEscrowed.Text = t[3].ToString();
                    DocsRecog.Text = t[4].ToString();
                    DocsValid.Text = t[5].ToString();
                    DocsRecReject.Text = t[6].ToString();
                    DocsSecReject.Text = t[7].ToString();
                    DocsOrientReject.Text = t[8].ToString();
                    DocsDisabledReject.Text = t[9].ToString();
                    DocsFFReject.Text = t[10].ToString();
                    DocsWhileDisabled.Text = t[11].ToString();
                    DocsHostReject.Text = t[12].ToString();
                    DocsBarcode.Text = t[13].ToString();

                    t = BillAcceptor.AuditPerformance;
                    Perfromance.Text = "";
                    CC0Reject.Text = t[0].ToString();
                    CC1Reject.Text = t[1].ToString();
                    AllJams.Text = t[2].ToString();
                    JamRecovery.Text = t[3].ToString();
                    JamReject.Text = t[4].ToString();
                    JamStacker.Text = t[5].ToString();
                    JamNoRec.Text = t[6].ToString();
                    OutOfService.Text = t[7].ToString();
                    OutOfOrder.Text = t[8].ToString();
                    OpHours.Text = t[9].ToString();
                    DocTooLong.Text = t[10].ToString();
                    DocTooShort.Text = t[11].ToString();
                    DocTease.Text = t[12].ToString();
                    Calibrations.Text = t[13].ToString();
                    Resets_B.Text = t[14].ToString();
                    Downloads.Text = t[15].ToString();
                    CassetteFull.Text = t[16].ToString();
                    CassetteRemoved.Text = t[17].ToString();
                }
                else
                {
                    LifeTime.Text = "Not supported";
                    QPMeasures.Text = "Not supported";
                    Perfromance.Text = "Not supported";
                }

                if (BillAcceptor.CapCashBoxTotal)
                {
                    CashInBox.Text = BillAcceptor.CashBoxTotal.ToString();
                    ClearCash.Visible = true;
                }
                else
                {
                    CashInBox.Text = "Not supported";
                    ClearCash.Visible = false;
                }

                if (BillAcceptor.CapDeviceResets)
                    Resets_A.Text = BillAcceptor.DeviceResets.ToString();
                else
                    Resets_A.Text = "Not supported";

                if (BillAcceptor.CashBoxAttached)
                {
                    if (BillAcceptor.CashBoxFull)
                        CassetteStatus.Text = "Full";
                    else
                        CassetteStatus.Text = "Installed";
                }
                else
                {
                    CassetteStatus.Text = "Removed";
                }

                BillPath.Text = (BillAcceptor.DeviceJammed) ? "Jammed" : "Clear";

                if (BillAcceptor.DeviceModel < 32)
                    Model.Text = BillAcceptor.DeviceModel.ToString();
                else
                    Model.Text = BillAcceptor.DeviceModel.ToString() +
                                 " (" +
                                 ((Char)BillAcceptor.DeviceModel).ToString() +
                                 ")";

                Int32 rev = BillAcceptor.DeviceRevision;

                Revision.Text = (rev / 10).ToString() +
                                "." +
                                (rev % 10).ToString();                
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message, 
                                "Populate Info Exception", 
                                MessageBoxButtons.OK, 
                                MessageBoxIcon.Error);
            }
        }

        private void ListEvent(String e)
        {
            EventListBox.Items.Add(e);
            EventListBox.SetSelected(EventListBox.Items.Count - 1, true);
        }

        private String DocInfoToString(DocumentType docType, IDocument doc)
        {
            if (docType == DocumentType.None)
                return "Doc Type: None";
            else if (docType == DocumentType.NoValue)
                return "Doc Type: No Value";
            else if (docType == DocumentType.Bill)
            {
                if (doc == null)
                    return "Doc Type Bill = null";
                else if (!BillAcceptor.CapOrientationExt)
                    return "Doc Type Bill = " + doc.ToString();
                else
                    return "Doc Type Bill = " + doc.ToString() + 
                           " (" + BillAcceptor.EscrowOrientation.ToString() + ")";
            }
            else if (docType == DocumentType.Barcode)
            {
                if (doc == null)
                    return "Doc Type Bar Code = null";
                else
                    return "Doc Type Bar Code = " + doc.ToString();
            }
            else if (docType == DocumentType.Coupon)
            {
                if (doc == null)
                    return "Doc Type Coupon = null";
                else
                    return "Doc Type Coupon = " + doc.ToString();
            }
            else
                return "Unknown Doc Type Error";
        }

        #region Event Handlers

        private void HandleCalibrateFinishEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(CalibrateFinishDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Calibrate Finish.");
            }
        }
        private void HandleCalibrateProgressEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(CalibrateProgressDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Calibrate Progress.");
            }
        }
        private void HandleCalibrateStartEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(CalibrateStartDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Calibrate Start.");
            }
        }
        
        private void HandleCashBoxCleanlinessEvent(object sender, CashBoxCleanlinessEventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(CashBoxCleanlinessDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent(string.Format("Event: Cashbox Cleanliness - {0}", e.Value.ToString()));
            }
        }
        private void HandleCashBoxAttachedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(CashBoxAttachedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Cassette Installed.");
            }
        }
        private void HandleCashBoxRemovedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(CashBoxRemovedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Cassette Removed.");
            }
        }
        private void HandleCheatedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(CheatedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Cheat Detected.");
            }
        }
        private void HandleClearAuditEvent(object sender, ClearAuditEventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(ClearAuditDelegate, new object[] { sender, e });
            }
            else
            {
                if (e.Success)
                {
                    ListEvent("Event: Clear Audit Complete: Success");
                }
                else
                {
                    ListEvent("Event: Clear Audit Complete: FAILED");
                }
            }
        }
        private void HandleConnectedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(ConnectedDelegate, new object[] { sender, e });
            }
            else
            {
                PopulateCapabilities();
                PopulateBillSet();
                PopulateBillValue();
                PopulateProperties();
                PopulateInfo();
                CloseBtn.Enabled = true;
                CalibrateBtn.Enabled = false;
                DownloadBtn.Enabled = BillAcceptor.CapFlashDownload;
                BillAcceptor.EnableAcceptance = EnableAcceptance.Checked;
                BillAcceptor.AutoStack = AutoStack.Checked;
                ListEvent("Event: Connected.");
            }
        }
        private void HandleDisconnectedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(DisconnectedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Disconnected.");
            }
        }
        private void HandleDownloadFinishEvent(object sender, AcceptorDownloadFinishEventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(DownloadFinishDelegate, new object[] { sender, e });
            }
            else
            {
                if (e.Success)
                {
                    ListEvent("Event: Download Finished: OK");
                }
                else
                {
                    ListEvent("Event: Download Finished: FAILED");
                }
            }
        }
        private void HandleDownloadProgressEvent(object sender, AcceptorDownloadEventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(DownloadProgressDelegate, new object[] { sender, e });
            }
            else
            {
                if (e.SectorCount % 100 == 0)
                {
                    ListEvent("Event: Download Progress:" + e.SectorCount.ToString());
                }
            }
        }
        private void HandleDownloadRestartEvent(object sender, EventArgs e)
        {

            if (InvokeRequired)
            {
                BeginInvoke(DownloadRestartDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Download Restart.");
                DoDownload();
            }
        }
        private void HandleDownloadStartEvent(object sender, AcceptorDownloadEventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(DownloadStartDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Download Start. Total Sectors: " + e.SectorCount.ToString());
            }
        }
        private void HandleSendMessageErrorEvent(object sender, AcceptorMessageEventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(ErrorOnSendMessageDelegate, new object[] { sender, e });
            }
            else
            {
                StringBuilder sb = new StringBuilder();
                sb.Append("Event: Error in send message. ");
                sb.Append(e.Msg.Description);
                sb.Append("  ");

                foreach (byte b in e.Msg.Payload)
                {
                    sb.Append(b.ToString("X2") + " ");
                }

                ListEvent(sb.ToString());

                if (BillAcceptor.DeviceState == State.Escrow)
                {
                    StackBtn.Enabled = true;
                    ReturnBtn.Enabled = true;
                }
            }
        }
        private void HandleEscrowedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(EscrowedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Escrowed: " + DocInfoToString(BillAcceptor.DocType, BillAcceptor.getDocument()));
                StackBtn.Enabled = true;
                ReturnBtn.Enabled = true;
            }
        }
        private void HandleFailureClearedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(FailureClearedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Device Failure Cleared. ");
            }
        }
        private void HandleFailureDetectedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(FailureDetectedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Device Failure Detected. ");
            }
        }
        private void HandleInvalidCommandEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(InvalidCommandDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Invalid Command.");
            }
        }
        private void HandleJamClearedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(JamClearedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Jam Cleared.");
            }
        }
        private void HandleJamDetectedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(JamDetectedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Jam Detected.");
            }
        }
        private void HandleNoteRetrievedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(NoteRetrievedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Note Retrieved.");
            }
        }
        private void HandlePauseClearedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(PauseClearedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Pause Cleared.");
            }
        }
        private void HandlePauseDetectedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(PauseDetectedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Pause Detected.");
            }
        }
        private void HandlePowerUpCompleteEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(PowerUpCompleteDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Power Up Complete.");
            }
        }
        private void HandlePowerUpEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(PowerUpDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Power Up.");
            }
        }
        private void HandlePUPEscrowEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(PUPEscrowDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Power Up with Escrow: " + DocInfoToString(BillAcceptor.DocType, BillAcceptor.getDocument()));
                StackBtn.Enabled = true;
                ReturnBtn.Enabled = true;
            }
        }
        private void HandleRejectedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(RejectedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Rejected.");
            }
        }
        private void HandleReturnedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(ReturnedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Returned.");
                StackBtn.Enabled = false;
                ReturnBtn.Enabled = false;
            }
        }
        private void HandleStackedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(StackedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Stacked");

                StackBtn.Enabled = false;
                ReturnBtn.Enabled = false;

                if (BillAcceptor.CapCashBoxTotal)
                {
                    CashInBox.Text = BillAcceptor.CashBoxTotal.ToString();
                }
            }
        }

        private void HandleStackedWithDocInfoEvent(object sender, StackedEventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(StackedWithDocInfoDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: StackedWithDocInfo: " + DocInfoToString(e.DocType, e.Document));

                StackBtn.Enabled = false;
                ReturnBtn.Enabled = false;

                if (BillAcceptor.CapCashBoxTotal)
                {
                    CashInBox.Text = BillAcceptor.CashBoxTotal.ToString();
                }
            }
        }
        private void HandleStackerFullClearedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(StackerFullClearedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Cassette Full Cleared.");
            }
        }
        private void HandleStackerFullEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(StackerFullDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Cassette Full.");
            }
        }
        private void HandleStallClearedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(StallClearedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Stall Cleared.");
            }
        }
        private void HandleStallDetectedEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(StallDetectedDelegate, new object[] { sender, e });
            }
            else
            {
                ListEvent("Event: Stall Detected.");
            }
        }
        
        #endregion

        #region Control Handlers
        
        private void OpenBtn_Click(object sender, EventArgs e)
        {
            OpenBtn.Enabled = false;
            PupControl.Enabled = false;
            ListEvent("Command: BillAccepter.Open()");

            try
            {
                BillAcceptor.Open(ComPortName, PupMode);
            }
            catch (Exception err)
            {
                MessageBox.Show("Unable to open the bill acceptor on com port <" + ComPortName + "> " + err.Message, 
                                "Open Bill Acceptor Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Close();
            }
        }

        private void CloseBtn_Click(object sender, EventArgs e)
        {
            if (!OpenBtn.Enabled)
            {
                ListEvent("Command: BillAccepter.Close()");
                BillAcceptor.Close();
                OpenBtn.Enabled = true;
                PupControl.Enabled = true;
            }

            Close();
        }
        
        private void StackBtn_Click(object sender, EventArgs e)
        {
            ListEvent("Command: BillAccepter.EscrowStack()");
            BillAcceptor.EscrowStack();
            StackBtn.Enabled = false;
            ReturnBtn.Enabled = false;
        }

        private void ReturnBtn_Click(object sender, EventArgs e)
        {
            ListEvent("Command: BillAccepter.EscrowReturn()");
            BillAcceptor.EscrowReturn();
            StackBtn.Enabled = false;
            ReturnBtn.Enabled = false;
        }

        private void BillSetGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (BillAcceptor.DeviceState == State.Idling)
            {
                if ((String)BillSetGridView.CurrentCell.Value == "True")
                {
                    Boolean[] enables = BillAcceptor.GetBillTypeEnables();
                    enables[e.RowIndex] = false;
                    BillAcceptor.SetBillTypeEnables(ref enables);
                    BillSetGridView.CurrentCell.Value = "False";
                }
                else if ((String)BillSetGridView.CurrentCell.Value == "False")
                {
                    Boolean[] enables = BillAcceptor.GetBillTypeEnables();
                    enables[e.RowIndex] = true;
                    BillAcceptor.SetBillTypeEnables(ref enables);
                    BillSetGridView.CurrentCell.Value = "True";
                }
            }
        }

        private void BillValueGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (BillAcceptor.DeviceState == State.Idling)
            {
                if ((String)BillValueGridView.CurrentCell.Value == "True")
                {
                    Boolean[] enables = BillAcceptor.GetBillValueEnables();
                    enables[e.RowIndex] = false;
                    BillAcceptor.SetBillValueEnables(ref enables);
                    BillValueGridView.CurrentCell.Value = "False";
                }
                else if ((String)BillValueGridView.CurrentCell.Value == "False")
                {
                    Boolean[] enables = BillAcceptor.GetBillValueEnables();
                    enables[e.RowIndex] = true;
                    BillAcceptor.SetBillValueEnables(ref enables);
                    BillValueGridView.CurrentCell.Value = "True";
                }

                PopulateBillSet();
            }
        }

        private void PupControl_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (PupControl.SelectedItem.ToString() == "PUP-A")
                PupMode = PowerUp.A;
            else if (PupControl.SelectedItem.ToString() == "PUP-B")
                PupMode = PowerUp.B;
            else if (PupControl.SelectedItem.ToString() == "PUP-C")
                PupMode = PowerUp.C;
            else if (PupControl.SelectedItem.ToString() == "PUP-E")
                PupMode = PowerUp.E;
        }

        private void AutoStack_Click(object sender, EventArgs e)
        {
            BillAcceptor.AutoStack = AutoStack.Checked;
        }

        private void EnableBarCodes_Click(object sender, EventArgs e)
        {
            BillAcceptor.EnableBarCodes = EnableBarCodes.Checked;
        }

        private void EnableBookmarks_Click(object sender, EventArgs e)
        {
            BillAcceptor.EnableBookmarks = EnableBookmarks.Checked;
        }

        private void EnableNoPush_Click(object sender, EventArgs e)
        {
            BillAcceptor.EnableNoPush = EnableNoPush.Checked;
        }

        private void EnableHighSecurity_Click(object sender, EventArgs e)
        {
            BillAcceptor.HighSecurity = EnableHighSecurity.Checked;
        }

        private void EnableDebugLog_Click(object sender, EventArgs e)
        {
            BillAcceptor.DebugLog = EnableDebugLog.Checked;
        }

        private void OrientationCtl_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (OrientationCtl.SelectedIndex == 0)
                BillAcceptor.OrientationCtl = OrientationControl.FourWay;
            else if (OrientationCtl.SelectedIndex == 1)
                BillAcceptor.OrientationCtl = OrientationControl.TwoWay;
            else if (OrientationCtl.SelectedIndex == 2)
                BillAcceptor.OrientationCtl = OrientationControl.OneWay;
        }

        private void OrientationCtlExt_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (OrientationCtlExt.SelectedIndex == 0)
                BillAcceptor.OrientationCtlExt = OrientationControl.FourWay;
            else if (OrientationCtlExt.SelectedIndex == 1)
                BillAcceptor.OrientationCtlExt = OrientationControl.TwoWay;
            else if (OrientationCtlExt.SelectedIndex == 2)
                BillAcceptor.OrientationCtlExt = OrientationControl.OneWay;
        }

        private void EnableAcceptance_Click(object sender, EventArgs e)
        {
            BillAcceptor.EnableAcceptance = EnableAcceptance.Checked;
        }

        private void RefreshInfo_Click(object sender, EventArgs e)
        {
            PopulateInfo();
        }

        private void ClearCash_Click(object sender, EventArgs e)
        {
            BillAcceptor.ClearCashBoxTotal();
            CashInBox.Text = BillAcceptor.CashBoxTotal.ToString();
        }

        private void ExtCoupon_Click(object sender, EventArgs e)
        {
            BillAcceptor.EnableCouponExt = ExtCoupon.Checked;
        }

        private void SoftReset_Click(object sender, EventArgs e)
        {
            ListEvent("Command: BillAccepter.SoftReset()");
            BillAcceptor.SoftReset();
        }

        private void ClearBtn_Click(object sender, EventArgs e)
        {
            EventListBox.Items.Clear();
        }

        private void SaveLog_Click(object sender, EventArgs e)
        {
            saveLogDialog.ShowDialog();

            if (saveLogDialog.FileName != "")
            {
                using (StreamWriter sw = new StreamWriter(saveLogDialog.FileName))
                {
                    sw.WriteLine("Event Log Saved: " + 
                                  DateTime.Now.ToLongDateString() + 
                                  "; " + 
                                  DateTime.Now.ToLongTimeString());

                    sw.WriteLine("-------------------------------------------------------------");

                    foreach (String s in EventListBox.Items)
                        sw.WriteLine(s);

                    sw.Close();
                }
 
            }
        }

        private void DownloadBtn_Click(object sender, EventArgs e)
        {
            DoDownload();
        }

        #endregion

        private Download dl = new Download();

        private void DoDownload()
        {
            dl.Hide();

            if (downloadFileDialog.ShowDialog(this) == DialogResult.OK)
            {
                if (downloadFileDialog.FileName.Length > 0)
                {
                    CloseBtn.Enabled = false;
                    CalibrateBtn.Enabled = false;
                    DownloadBtn.Enabled = false;

                    dl.BillAcceptor = BillAcceptor;
                    dl.parentForm = this;
                    dl.DLName = downloadFileDialog.FileName;
                    dl.Show();
                    try
                    {
                        dl.DoDownload();
                    }
                    catch (Exception)
                    {   // If there is any exception happens, enable the following buttons.
                        CloseBtn.Enabled = true;
                        CalibrateBtn.Enabled = true;
                        DownloadBtn.Enabled = true;
                    }
                }
            }
        }

        internal void downloadResults(Boolean success)
        {
            if (!success)
            {
                CloseBtn.Enabled = true;
                DownloadBtn.Enabled = true;
            }
        }

        private void DebugLogPathButton_Click(object sender, EventArgs e)
        {
            debugFolderDialog.ShowDialog(this);

            if (debugFolderDialog.SelectedPath.Length > 0)
            {
                DebugLogPath.Text = debugFolderDialog.SelectedPath;
                BillAcceptor.DebugLogPath = debugFolderDialog.SelectedPath;
            }
        }

        private void rawCommand_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 0x0D)
            {
                if (sendRawBtn.Enabled)
                {
                    e.Handled = true;
                    sendRawCommand();
                }
            }
            else if ((e.KeyChar >= '0' && e.KeyChar <= '9') ||
                     (e.KeyChar >= 'A' && e.KeyChar <= 'F') ||
                     (e.KeyChar >= 'a' && e.KeyChar <= 'f')
                    )
            {
                // NOP
            }
            else if (e.KeyChar <= ' ')
            {
                // NOP
            }
            else
            {
                e.Handled = true;
            }
        }


        private void sendRawBtn_Click(object sender, EventArgs e)
        {
            sendRawCommand();
        }  


        private void sendRawCommand()
        {
            String buffer = rawCommand.Text;
            Boolean v = false;
            Byte d = 0x00;
            Queue<Byte> q = new Queue<Byte>();

            foreach (Char c in buffer)
            {
                if (c == ' ' && v)
                {
                    q.Enqueue(d);
                    v = false;
                }
                else if (c >= '0' && c <= '9')
                {
                    d = (Byte)(((d & 0x07) << 4) + (Byte)(c - '0'));
                    v = true;
                }
                else if (c >= 'A' && c <= 'F')
                {
                    d = (Byte)(((d & 0x07) << 4) + (Byte)(c - 'A') + 0x0A);
                    v = true;
                }
            }

            if (v)
            {
                q.Enqueue(d);
            }

            Byte[] cmd = q.ToArray();

            buffer = "";

            foreach (Byte b in cmd)
            {
                buffer = buffer + b.ToString("X2") + " ";
            }

            rawCommand.Text = buffer;

            Byte[] reply = BillAcceptor.RawTransaction(ref cmd);

            buffer = "";

            foreach (Byte b in reply)
            {
                buffer = buffer + b.ToString("X2") + " ";
            }

            rawReply.Text = buffer;
        }

        private void setTimeout_Click(object sender, EventArgs e)
        {
            BillAcceptor.SpecifyEscrowTimeout((int)billTimeout.Value, (int)barCodeTimeOut.Value);
        }

        private void bezelSelection_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (bezelSelection.SelectedIndex)
            {
                case 0: BillAcceptor.SetBezel(Bezel.Standard); break;
                case 1: BillAcceptor.SetBezel(Bezel.Platform); break;
                case 2: BillAcceptor.SetBezel(Bezel.Diagnostic); break;
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            DeviceStateLabel.Text = BillAcceptor.DeviceState.ToString();
        }

        private void setAssetBtn_Click(object sender, EventArgs e)
        {
            BillAcceptor.AssetNumber = assetNumberEntry.Text;
        }

        private void qryAssetBtn_Click(object sender, EventArgs e)
        {
            assetNumberEntry.Text = BillAcceptor.AssetNumber;
        }

        private void assetNumberEntry_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.F5)
            {
                if (BillAcceptor.DeviceState == State.Idling)
                {
                    // I could have sworn I saw the Easter Bunny...
                    BillAcceptor.AssetNumber = "BLANK\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00";
                }

                e.Handled = true;
            }
        }

        private void btnClearAudit_Click(object sender, EventArgs e)
        {
            ListEvent("Command: ClearAudit()");

            try
            {
                if (BillAcceptor.ClearAudit())
                    ListEvent("Command acknowledged");
                else
                    ListEvent("Command NAK'd");
            }
            catch (InvalidOperationException ioEx)
            {
                MessageBox.Show("Exception detected: " + ioEx.Message,
                                "ClearAudit Exception", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCleanlinessReporting_Enable_Click(object sender, EventArgs e)
        {
            ListEvent("Command: EnableCashboxCleanlinessReporting()");

            try
            {
                if (BillAcceptor.EnableCashboxCleanlinessReporting())
                    ListEvent("Command successful");
                else
                    ListEvent("Command UNSUCCESSFUL");
            }
            catch (InvalidOperationException ioEx)
            {
                MessageBox.Show("Exception detected: " + ioEx.Message,
                                "EnableCashboxCleanlinessReporting Exception", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCleanlinessReporting_Disable_Click(object sender, EventArgs e)
        {
            ListEvent("Command: DisableCashboxCleanlinessReporting()");

            try
            {
                if (BillAcceptor.DisableCashboxCleanlinessReporting())
                    ListEvent("Command successful");
                else
                    ListEvent("Command UNSUCCESSFUL");
            }
            catch (InvalidOperationException ioEx)
            {
                MessageBox.Show("Exception detected: " + ioEx.Message,
                                "DisableCashboxCleanlinessReporting Exception", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void setDisconnectTimeOut_Click(object sender, EventArgs e)
        {
            
            if (disconnectTimeout.Value < 4000)
            {
                MessageBox.Show("DisconnectTimeout recommended setting is >= 4000 ms");
            }
            else
            {
                BillAcceptor.DisconnectTimeout = Convert.ToInt32(disconnectTimeout.Value);
            }
        }

        private void btnGetRFIDSerialNumber_Click(object sender, EventArgs e)
        {
            ListEvent("Command: GetRFIDSerialNumber()");

            try
            {
                MessageBox.Show(BillAcceptor.GetRFIDSerialNumber().ToString(),
                                "GetRFIDSerialNumber Confirmation", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Exception detected: " + ex.Message,
                                "GetRFIDSerialNumber Exception", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }


    }
}
