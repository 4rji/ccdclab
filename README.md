
The objective is to recreate a corporate environment, simulating the one we faced in the CCDC competition. We need to ensure secure computer network operations in a simulated business environment.

It consists of the following servers:
 

10 VMs – 7 servers, 2 workstations, and the Palo Alto firewall.

![Screenshot from 2024-11-12 17-20-38](https://github.com/user-attachments/assets/aba7f9ac-4a77-48e1-98a9-8e65fa965086)

In the example above, you will see the machines on the server at localhost:600. By using the govc tool, we can retrieve information about each machine.

TInstructions for Managing Machines on localhost:600

This guide will help you understand how to manage virtual machines on the server at localhost:600 using the govc tool.
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

By following these instructions, you can effectively manage and monitor the status of your virtual machines on localhost:600.
____________________________________________________________________________________________________________________________________________


Here, after waiting a few minutes for the firewall to fully start up, we can now see the firewall’s IP and access it from the assigned network.
![Screenshot from 2024-11-12 17-27-10](https://github.com/user-attachments/assets/970b303e-d9d9-41c3-b77e-9ee6bd0acbcf)





____________________________________________________________________________________________________________________________________________
CCDC Mission and Objectives

The Collegiate Cyber Defense Competition (CCDC) is designed to provide a controlled
competitive environment that will permit each participating institution to assess their
students’ depth of understanding and operational competency in managing the
challenges inherent in protecting an enterprise network infrastructure and business
information systems.
