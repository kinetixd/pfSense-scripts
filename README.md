# pfSense-scripts

Author: [Weehooey Inc](https://github.com/Weehooey/pfSense-scripts)

The scripts in this repo have been collected and tweaked from various places.

The instructions and scripts have been tested but there is no guarrantee they will work in your situation. Make appropriate backups before using.

As with all scripts you download from the internet, inspect them and **kiddy scriptor usus cautela**.


---

## install-qemu-guest-agent.sh

If you are using pfSense in Proxmox Virtual Environment (PVE), running this script from the pfSense command line will install the QEMU guest agent and set it to run on boot.


### Enable QEMU Guest Agent in Proxmox VE

When creating your pfSense virtual machine (VM), set Options > QEMU Guest Agent to `enabled` when you create your VM.

If you enable the QEMU Guest Agent while the VM is running, you will need to reboot it.


### Usage

1. Log into pfSense command line as `root`
2. READ THE DOWNLOADED FILE! You should never blindly run scripts from the internet.
3. Run the installation script `curl -s https://raw.githubusercontent.com/kinetixd/pfSense-scripts/main/install-qemu-guest-agent.sh | sh`
4. You should now see the IP addresses for the interfaces on the VMs summary page (click the More button to see all of them)

## Tested On

- pfSense CE
  - 2.5.2
  - 2.6.0
  - 2.7.0
  - 2.7.1
- pfSense Plus
  - 23.05
  - 23.05.1

Thank you to contributors on this [Netgate forum post](https://forum.netgate.com/topic/162083/pfsense-vm-on-proxmox-qemu-agent-installation). You can also find some troubleshooting tips on the same forum post.
