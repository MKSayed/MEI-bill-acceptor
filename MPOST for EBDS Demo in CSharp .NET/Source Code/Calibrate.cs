using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using MPOST;

namespace M_POST_for_EBDS_Demo_In_CSharp_DotNet
{
    public partial class Calibrate : Form
    {
        internal MPOST.Acceptor BillAcceptor;
        private CalibrateStartEventHandler CalibrateStartDelegate;
        private CalibrateProgressEventHandler CalibrateProgressDelegate;
        private CalibrateFinishEventHandler CalibrateFinishDelegate;
        private DisconnectedEventHandler DisconnectDelegate;

        public Calibrate()
        {
            InitializeComponent();
        }

        private void Calibrate_Load(object sender, EventArgs e)
        {
            CalibrateStartDelegate = new CalibrateStartEventHandler(HandleCalibrateStartEvent);
            CalibrateProgressDelegate = new CalibrateProgressEventHandler(HandleCalibrateProgressEvent);
            CalibrateFinishDelegate = new CalibrateFinishEventHandler(HandleCalibrateFinishEvent);
            DisconnectDelegate = new DisconnectedEventHandler(HandleDisconnectEvent);

            BillAcceptor.OnCalibrateStart += CalibrateStartDelegate;
            BillAcceptor.OnCalibrateProgress += CalibrateProgressDelegate;
            BillAcceptor.OnCalibrateFinish += CalibrateFinishDelegate;
            BillAcceptor.OnDisconnected += DisconnectDelegate;
        }

        private void HandleCalibrateStartEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(CalibrateStartDelegate, new object[] { sender, e });
            }
            else
            {
                Progress.Text = "Calibrate Start";
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
                Progress.Text = "Insert Calibration Document";
            }
        }

        private void HandleCalibrateFinishEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(CalibrateFinishDelegate, new object[] { sender, e });
            }
            else
            {
                BillAcceptor.OnCalibrateStart -= CalibrateStartDelegate;
                BillAcceptor.OnCalibrateProgress -= CalibrateProgressDelegate;
                BillAcceptor.OnCalibrateFinish -= CalibrateFinishDelegate;
                BillAcceptor.OnDisconnected -= DisconnectDelegate;

                Close();
            }
        }

        private void HandleDisconnectEvent(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(DisconnectDelegate, new object[] { sender, e });
            }
            else
            {
                BillAcceptor.OnCalibrateStart -= CalibrateStartDelegate;
                BillAcceptor.OnCalibrateProgress -= CalibrateProgressDelegate;
                BillAcceptor.OnCalibrateFinish -= CalibrateFinishDelegate;
                BillAcceptor.OnDisconnected -= DisconnectDelegate;

                Close();
            }
        }

        private void Calibrate_Shown(object sender, EventArgs e)
        {
            try
            {
                CancelBtn.Enabled = BillAcceptor.CapDeviceSoftReset;
                BillAcceptor.Calibrate();
            }
            catch (Exception err)
            {
                DialogResult result = MessageBox.Show(err.Message +
                                                      " Acceptor State = (" +
                                                      BillAcceptor.DeviceState.ToString() +
                                                      ")",
                                                      "Calibrate Error",
                                                      MessageBoxButtons.OK,
                                                      MessageBoxIcon.Error);

                BillAcceptor.OnCalibrateStart -= CalibrateStartDelegate;
                BillAcceptor.OnCalibrateProgress -= CalibrateProgressDelegate;
                BillAcceptor.OnCalibrateFinish -= CalibrateFinishDelegate;
                BillAcceptor.OnDisconnected -= DisconnectDelegate;

                Close();
            }
        }

        private void CancelBtn_Click(object sender, EventArgs e)
        {
            BillAcceptor.SoftReset();
        }
    }
}