## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

https://github.com/centexcajun/ELK-Project-Homework/blob/main/ELK%20Project%20Network%20Diagram.pdf

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the install-elk.yml file may be used to install only certain pieces of it, such as Filebeat.

  - install-elk.yml
  - filebeat-config.yml
  - filebeat-playbook.yml
  - metricbeat-config.yml
  - metricbeat-playbook.yml
  - pentest.yml

This document contains the following details:
- Description of the Topology
  - The envirnment includes two web servers (Web-1 and Web-2) behind a load load balancer. Admin access to the web servers is restricted to a Jump-Box. See the table below for all IP details.
  - Firewall policies via Aure Network Security Groups are implemented to restrict access to the environment. See the Access Polocies scetion below for details.
  - An ELK stack is deployed that makes use of Metricbet and Filebeat for monitoring purposes.


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available and the use of a jump box helps restrict access to the network.
  - The load balancers help ensure high availability by distributing the overall load between the two web servers.
  - Use of the jump box helps ensure that only authorized users have administrative (root) access to the web servers. This is done by whitelisting a single external IP address over port 22 (SSH).

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the configuration and system health.
  - Filebeat and Metricbeat are installed.
  - Filebat monitors and forwards log data of the Red network.
  - Metricbeat monitors the health of the hardware of the host machines

The configuration details of each machine may be found below.

| Name       | Function      | IP Address     | Operating System |
|------------|---------------|----------------|------------------|
| Jump Box   | Gateway       | 10.0.0.4       | Linux            |
| Web-1      | Web Server    | 10.0.0.5       | Linux            |
| Web-2      | Web Server    | 10.0.0.6       | Linux            |
| NA         | Load Balancer | 23.101.177.178 | NA               |
| ELK-SERVER | ELK Stack     | 10.1.0.4       | Linux            |


### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump-Box machine can accept connections from the Internet. Access to this machine is only allowed from internet facing IP address of the administrator's system.

Machines within the Azure Virtual Subnet can only be accessed by the Jump Box.
Because the ELK server and Jump Box are on different networks, access to the ELK server is granted to the IP address of the system adminstrtors system.

A summary of the access policies in place can be found in the table below.

| Name              | Publicly Accessible | Allowed IP Addresses |
|-------------------|---------------------|----------------------|
| Jump Box          | Yes                 | Not displayed        |
| SSH_from_Jump-Box | No                  | 10.0.0.4             |
| Connect_to_LB     | Yes                 | 99.64.98.122         |
| External_Access   | Yes                 | 99.64.98.122         |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...

  - Automation allows for automatic configuration of new or replacement systems.
  - Automation creates a verly scalable solution.
  - Automation helps eliminate inconsistences created by human error.
 
  
The playbook implements the following tasks:

  - Install docker.io, Python 3, and Docker module
  - Configure memory usage
  - Download and launch ELK container
  - Enable the docker service on boot

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
| Name  | IP Address |
|-------|------------|
| Web-1 | 10.0.0.5   |
| Web-2 | 10.0.0.6   |

We have installed the following Beats on these machines:

  - Filebeat and Metricbeat have both been installed to monitor the health of the system.
  
These Beats allow us to collect the following information from each machine:
  - Filebeat monitors security related logs.
  - Metricbeat monitors the health of the systems.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
