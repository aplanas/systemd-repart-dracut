#!/bin/bash

# called by dracut
check() {
	return 0
}

# called by dracut
depends() {
	echo systemd-repart
	return 0
}

# called by dracut
install() {
	inst_multiple mountpoint findmnt readlink

	inst_script "$moddir"/systemd-repart-dracut /usr/bin/systemd-repart-dracut

	for service in "systemd-repart-dracut.service"; do
		inst_simple "${moddir}/$service" "${systemdsystemunitdir}/$service"
		$SYSTEMCTL -q --root "$initdir" enable "$service"
		#$SYSTEMCTL -q --root "$initdir" enable "debug-shell.service"
	done
}
