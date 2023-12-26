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
    public partial class Download : Form
    {
        internal MPOST.Acceptor BillAcceptor;
        internal EBDS_Bill_Acceptor parentForm;
        internal String DLName;

        private DownloadStartEventHandler DownloadStartDelegate;
        private DownloadProgressEventHandler DownloadProgressDelegate;
        private DownloadFinishEventHandler DownloadFinishDelegate;
        private DownloadRestartEventHandler DownloadRestartDelegate;
        private DisconnectedEventHandler DisconnectedDelegate;

        public Download()
        {
            InitializeComponent();
        }

        private void Download_Load(object sender, EventArgs e)
        {
            DownloadStartDelegate = new DownloadStartEventHandler(HandleDownloadStartEvent);
            DownloadProgressDelegate = new DownloadProgressEventHandler(HandleDownloadProgressEvent);
            DownloadFinishDelegate = new DownloadFinishEventHandler(HandleDownloadFinishEvent);
            DownloadRestartDelegate = new DownloadRestartEventHandler(HandleDownloadRestartEvent);
            DisconnectedDelegate = new DisconnectedEventHandler(HandleDisconnectedEvent);

            BillAcceptor.OnDownloadStart += DownloadStartDelegate;
            BillAcceptor.OnDownloadProgress += DownloadProgressDelegate;
            BillAcceptor.OnDownloadFinish += DownloadFinishDelegate;
            BillAcceptor.OnDownloadRestart += DownloadRestartDelegate;
            BillAcceptor.OnDisconnected += DisconnectedDelegate;
        }

        private void HandleDownloadStartEvent(object sender, AcceptorDownloadEventArgs e)
        {
            if (InvokeRequired)
            {
                BeginInvoke(DownloadStartDelegate, new object[] { sender, e });
            }
            else
            {
                DLprogress.Maximum = e.SectorCount;
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
                DLprogress.Value = e.SectorCount + 1;
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
                    CloseBtn.Text = "Download SUCCESS";
                else
                    CloseBtn.Text = "Download FAILED";

                CloseBtn.Visible = true;
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
                CloseBtn.Visible = false;
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
                CloseBtn.Text = "Download FAILED";
                CloseBtn.Visible = true;
            }
        }

        internal void DoDownload()
        {
            try
            {
                CloseBtn.Visible = false;
                DLprogress.Value = 0;
                FileLabel.Text = DLName;            
                BillAcceptor.FlashDownload(DLName);
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
                Hide();
                throw new Exception(e.Message);
            }
        }

        private void CloseBtn_Click(object sender, EventArgs e)
        {
            // Inform the parent form.
            parentForm.downloadResults(CloseBtn.Text == "Download SUCCESS");

            // Clean up here!
            Hide();
            CloseBtn.Visible = false;
            DLprogress.Value = 0;
        }
    }
}