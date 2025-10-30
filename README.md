# netrunner-grub2 theme
This is a theme for grub2

![](demo.png)


![](iconsdemo.png)

## Installation on Fedora & Ubuntu
```
sudo chmod +x install.sh
sudo ./install.sh
```
all done!

## Manual Installation
1.copy netruner into grub themes directory

```
sudo cp -r netruner  /usr/share/grub/themes
```

2. Edit grub file
```
sudo vim /etc/default/grub
```
and add the theme to the bottom of the text file
```
GRUB_THEME="/usr/share/grub/themes/netruner/theme.txt"
```
make sure to comment the console option
```
#GRUB_TERMINAL_OUTPUT="console"
```

3. Update grub2\
on Ubuntu\
``` sudo update-grub ```

On Fedora
```
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
```
## For LUKS users
Remember to change the theme location to the unencrypted part of your drive since grub loads before decryption happens for example :
```
sudo mkdir -p /boot/grub2/themes
sudo cp -r netruner  /boot/grub2/themes
```
Adjust the grub file accordingly
```
GRUB_THEME="/boot/grub2/themes/netruner/theme.txt"
```

##
<a href="https://www.buymeacoffee.com/acidburn" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>

## Monero <img src="https://www.getmonero.org/press-kit/symbols/monero-symbol-1280.png" width="60" height="60">
43Sxiso2FHsYhP7HTqZgsXa3m3uHtxHQdMeHxECqRefyazZfpGVCLVsf1gU68jxJBo1G171AC181q1BqAUaG1m554MLsspG

## Bitcon <img src="https://upload.wikimedia.org/wikipedia/commons/4/46/Bitcoin.svg" width="60" height="60">

bc1qk06cyheffclx7x434zpxjzcdl50452r9ducw0x

Original background by [nelsontai](https://nelsontai.com/projects/klrKNA)

Icons from [icons8](https://icons8.com/)
