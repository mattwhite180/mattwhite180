# add the user `mattw` to raspberry pi

```bash
sudo adduser mattw
groups pi # view the groups pi is in
sudo usermod -a -G adm,dialout,cdrom,sudo,audio,video,plugdev,games,users,input,netdev,spi,i2c,gpio mattw # add mattw to the groups that pi is in
cp ~/box/devOps/freshInstall/git /home/mattw # give mattw the git setup instructions
```

# remove the user `pi`
```bash
sudo deluser pi sudo # remove pi from sudo group
sudo pkill -u pi
sudo deluser pi
sudo deluser -remove-home pi
```