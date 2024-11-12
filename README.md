
The objective is to recreate a corporate environment, simulating the one we faced in the CCDC competition. We need to ensure secure computer network operations in a simulated business environment.

It consists of the following servers:
 

10 VMs – 7 servers, 2 workstations, and the Palo Alto firewall.

![Screenshot from 2024-11-12 17-20-38](https://github.com/user-attachments/assets/aba7f9ac-4a77-48e1-98a9-8e65fa965086)

In the example above, you will see the machines on the server at localhost:600. By using the govc tool, we can retrieve information about each machine.


This guide will help you understand how to manage virtual machines on the server at localhost:600
Machine Status Indicators

    White Background: The machine is OFF.
    Green Background: The machine is POWERED ON.
    "No-active" Status: The machine has no assigned IP address.
    IP Address Displayed & Green Background: The machine is powered on and ready for use.

How to Control Machines
Turning On a Machine

    Click the "Turn on" button to power on the machine.
    Wait a few seconds for the machine to boot up.
    The machine's background will change to green once it's powered on.

Turning Off a Machine

    Click the "Turn off" button to shut down the machine.
    Wait a few seconds for the machine to completely power off.
    The machine's background will change to white once it's turned off.

Accessing the Firewall

After powering on the firewall:

    Wait a few minutes for the firewall to fully start up.
    Once the firewall's IP address is displayed, you can access it from the assigned network.

____________________________________________________________________________________________________________________________________________


Here, after waiting a few minutes for the firewall to fully start up, we can now see the firewall’s IP and access it from the assigned network.
![Screenshot from 2024-11-12 17-27-10](https://github.com/user-attachments/assets/970b303e-d9d9-41c3-b77e-9ee6bd0acbcf)



____________________________________________________________________________________________________________________________________________



Configuring the ccdclabprogram File

To allow access and control of the machines, you need to update the ccdclabprogram file with your server details and credentials. Follow the steps below to configure the necessary settings.
Steps to Edit the ccdclabprogram File

    Open the File:

    Locate and open the ccdclabprogram file in your preferred text editor.

    Locate the Configuration Section:

    Find the section of the file that configures the environment variables for govc. It should look like this:

# Configure environment variables for govc

Update the Configuration Details:

Replace the placeholder values with your actual server information and credentials:

    GOVC_URL: The URL of your govc server.
    GOVC_USERNAME: Your username.
    GOVC_PASSWORD: Your password.


Important Security Notice:     Protect Your Credentials: Ensure that your GOVC_PASSWORD and other sensitive information are not exposed in public repositories or shared publicly.
    Use Environment Variables (Optional): For enhanced security, consider using environment variables or a separate configuration file to store sensitive information instead of hardcoding them into your scripts.



Example Configuration

Here's how your configuration section might look after updating with your details:

# Configure environment variables for govc
os.environ['GOVC_URL'] = 'https://192.168.1.100/sdk'
os.environ['GOVC_USERNAME'] = r'\adminUser'
os.environ['GOVC_PASSWORD'] = 'SecureP@ssw0rd!'

____________________________________________________________________________________________________________________________________________


Defining Virtual Machines in the Program

To define the servers in the program and have them recognized within your server, simply add their names within single quotes as shown in the example below. This should be done within the same ccdclabprogram file.
Steps to Define Virtual Machines

    Open the ccdclabprogram File:

    Use your preferred text editor to open the ccdclabprogram file.

    Locate the Machines Configuration Section:

    Find the section where the list of virtual machines is defined. It should look like this:

# Define the list of virtual machines with their display names and vCenter names
machines = [
    {'display_name': 'Windows 10', 'vcenter_name': 'windows10'},
    {'display_name': '2016 Docker/Remote', 'vcenter_name': 'CCDC-2016-Docker-Remote'},
    {'display_name': 'Debian 10 DNS/NTP', 'vcenter_name': 'CCDC-Debian10-DNS-NTP'},
]

Add Your Virtual Machines:
To add a new virtual machine, include a new dictionary within the machines list with the following keys:

    display_name: The name you want to display in your application.
    vcenter_name: The exact name of the virtual machine as it appears in vCenter.
____________________________________________________________________________________________________________________________________________




____________________________________________________________________________________________________________________________________________
CCDC Mission and Objectives

The Collegiate Cyber Defense Competition (CCDC) is designed to provide a controlled
competitive environment that will permit each participating institution to assess their
students’ depth of understanding and operational competency in managing the
challenges inherent in protecting an enterprise network infrastructure and business
information systems.
