#!/bin/sh

echo Installing QEMU Agent
pkg install -y qemu-guest-agent > /dev/null

echo Activating startup configuration
cat > /etc/rc.conf.local << EOF
qemu_guest_agent_enable="YES"
qemu_guest_agent_flags="-v -l /var/log/qemu-ga.log"
virtio_console_load="YES"
EOF

cat > /usr/local/etc/rc.d/qemu-agent.sh << EOF
#!/bin/sh
sleep 3
service qemu-guest-agent start
EOF

chmod +x /usr/local/etc/rc.d/qemu-agent.sh

echo Re-configuring agent
sysrc qemu_guest_agent_enable="YES"
sysrc qemu_guest_agent_flags="-v -l /var/log/qemu-ga.log"
sysrc virtio_console_load="YES"

echo Starting QEMU Agent
service qemu-guest-agent start || service qemu-guest-agent restart
