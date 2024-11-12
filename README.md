
The objective is to recreate a corporate environment, simulating the one we faced in the CCDC competition. We need to ensure secure computer network operations in a simulated business environment.

It consists of the following servers:
 

10 VMs – 7 servers, 2 workstations, and the Palo Alto firewall.

![Screenshot from 2024-11-12 17-20-38](https://github.com/user-attachments/assets/aba7f9ac-4a77-48e1-98a9-8e65fa965086)

In the example above, you will see the machines on the server at localhost:600. By using the govc tool, we can retrieve information about each machine.

The white background color of each machine indicates that it is OFF.
The green background color means the machine is POWERED ON.
If a machine shows as "No-active," it means it has no assigned IP.
If a machine has an IP and a green background, then it is ready for use.

The "Turn on" button powers on the machine (wait a few seconds to see its status change to green as it powers on).
The "Turn off" button powers off the machine (and again, wait a few seconds to see the status update on the machine).
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
