systemd-repart-dracut is a dracut service module which reparts the disk while booting the system (initrd).
Despite of systemd-repart service systemd-repart-dracut service  will be called before starting the encryption.
The format of the definition files are the same as systemd-repart:
https://www.freedesktop.org/software/systemd/man/latest/repart.d.html