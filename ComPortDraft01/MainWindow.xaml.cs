using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO.Ports;
using System.Threading;

namespace ComPortDraft01
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private string[] availablePorts;

        private List<string> portNames = new List<string>();

        private List<SerialPort> realSerialPorts = new List<SerialPort>();

        private SerialPort[] virtualSerialPort = new SerialPort[2];
        public MainWindow()
        {
            InitializeComponent();

            availablePorts = SerialPort.GetPortNames();

            foreach (var item in availablePorts)
            {
                AvailablePortsListBox.Items.Add(item);
                VirtualPort1ComboBox.Items.Add(item);
                VirtualPort2ComboBox.Items.Add(item);
            }
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            var selectedAvailablePorts = AvailablePortsListBox.SelectedItem;

            AddedPortsListBox.Items.Add(selectedAvailablePorts);

            AvailablePortsListBox.Items.Remove(selectedAvailablePorts);
        }

        private void RemoveButton_Click(object sender, RoutedEventArgs e)
        {
            if(AddedPortsListBox.SelectedIndex != -1)
            {
                var selectedAddedPorts = AddedPortsListBox.SelectedItem;

                AddedPortsListBox.Items.Remove(selectedAddedPorts);

                AvailablePortsListBox.Items.Add(selectedAddedPorts);

                AvailablePortsListBox.Items.SortDescriptions.ToString();
            }
        }

        private void ConfigurePorts()
        {
            foreach(var item in AddedPortsListBox.Items)
            {
                portNames.Add(item.ToString());
            }
            for(int i = 0; i < portNames.Count; i++)
            {
                realSerialPorts.Add(new SerialPort(portNames[i], 9600, Parity.None, 8, StopBits.One));

                realSerialPorts[i].Open();
            }

            string[] selectedVirtualPortNames = new string[2];

            selectedVirtualPortNames[0] = VirtualPort1ComboBox.SelectedItem.ToString();
            selectedVirtualPortNames[1] = VirtualPort1ComboBox.SelectedItem.ToString();

            virtualSerialPort[0] = new SerialPort(selectedVirtualPortNames[0], 9600, Parity.None, 8, StopBits.One);
            virtualSerialPort[1] = new SerialPort(selectedVirtualPortNames[1], 9600, Parity.None, 8, StopBits.One);

            virtualSerialPort[0].Open();
        }

        private void ConnectButton_Click(object sender, RoutedEventArgs e)
        {
            ConfigurePorts();

            Connect();
        }

        private void Connect()
        {
            string[] values = new string[realSerialPorts.Count];

            string finalValue = null;

            while (true)
            {
                for(int i = 0; i < realSerialPorts.Count; i++)
                {
                    values[i] = realSerialPorts[i].ReadLine();
                }

                virtualSerialPort[0].WriteLine(Int32.Parse(values[0]) + "," + values[1]);
            }
        }
    }
}
