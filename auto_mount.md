# Mount my drive on boot
```
UUID=01D6E903EBEC3D70 /media/D    auto nodev,x-gvfs-show,remove_hiberfile 0 0
```
### steps to automount:
```shell
sudo vim /etc/fstab
# at the bottom of the file, add the entry above
# now to test that the configuration works, run:
sudo mount -a
# if you see no errors, the fstab entry is correct and you're safe to reboot
```
