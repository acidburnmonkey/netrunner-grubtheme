# netruner-grub2 theme
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
sudo cp netruner  /usr/share/grub/themes 
```

2. Edit grub file 
```
sudo vim /etc/default/grub
```
and add the theme to the bottom of the text file
```
GRUB_THEME="/usr/share/grub/themes/netruner/theme.txt"
```

3. Update grub2\
on Ubuntu\
``` sudo update-grub ```

On Fedora 
```
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
```
##
Your donations will help WingsOfRedemption's wife buy new shoes lamao

<a href="https://www.buymeacoffee.com/acidburn" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>

Original background by [nelsontai](https://nelsontai.com/projects/klrKNA)

Icons from [icons8](https://icons8.com/)