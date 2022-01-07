# raspberrypi-settings

Raspberry Pi settings for headless install.


## setting files for before install

* wpa_supplicant.conf
    * for Wi-Fi connection

* ssh
    * enable sshd


## usage

1. Download and launch the Raspberry Pi Imager.
2. Write Raspberry Pi OS Image to SD Card by Raspberry Pi Imager.
3. Open SD card by PC File Explorer.
4. Enable SSH
    * Copy ssh file to /boot directory
5. Set Wi-Fi
    * edit wpa_supplicant.conf
