using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO.Ports;
using MPOST;

namespace M_POST_for_EBDS_Demo_In_CSharp_DotNet
{
    public partial class Launcher : Form
    {
        public const String C_R_N = "Copyright © 2007-2012 MEI - " +
                                    "The information contained here-in is the property of MEI and is not to be " +
                                    "disclosed or used without prior written permission of MEI. This copyright " +
                                    "extends to all media in which this information may be preserved including " +
                                    "magnetic storage, computer print-out or visual display.";

        public Launcher()
        {
            InitializeComponent();
        }

        private void Launcher_Load(object sender, EventArgs e)
        {
            RefreshPortList();

            // Display product name and version in top of window
            Version myVer = System.Reflection.Assembly.GetExecutingAssembly().GetName().Version;
            this.Text = string.Format("{0} V{1}.{2}{3}", Application.ProductName, myVer.Major, myVer.Build, myVer.Revision);

        }

        private void RefreshBtn_Click(object sender, EventArgs e)
        {
            RefreshPortList();
        }

        private void ExitBtn_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void RefreshPortList()
        {
            // Get a list of serial port names.
            String[] ports = SerialPort.GetPortNames();

            Array.Sort(ports);
            
            // Set up the combo box.
            PortSelect.DataSource = ports;
        }

        private EBDS_Bill_Acceptor[] children = new EBDS_Bill_Acceptor[0];

        private void LaunchBtn_Click(object sender, EventArgs e)
        {
            foreach (EBDS_Bill_Acceptor child in children)
            {
                if ((String)PortSelect.SelectedItem == child.GetPortName())
                {
                    child.BringToFront();
                    return;
                }
            }

            Array.Resize(ref children, children.Length + 1);

            children[children.Length - 1] = new EBDS_Bill_Acceptor();
            children[children.Length - 1].SetPortName((String)PortSelect.SelectedItem);
            children[children.Length - 1].SetMainWindow(this);
            children[children.Length - 1].Show();
        }

        public void CloseChild(EBDS_Bill_Acceptor closing)
        {
            Queue<EBDS_Bill_Acceptor> temp = new Queue<EBDS_Bill_Acceptor>();

            foreach (EBDS_Bill_Acceptor child in children)
            {
                if (closing != child)
                    temp.Enqueue(child);
            }

            children = temp.ToArray();
        }

        private void Launcher_FormClosed(object sender, FormClosedEventArgs e)
        {
            foreach (EBDS_Bill_Acceptor child in children)
            {
                child.Close();
            }
        }
    }































}