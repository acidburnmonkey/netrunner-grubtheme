# netruner-grub2 theme
This is a theme for grub2 

![](https://lh3.googleusercontent.com/ctaQ91TLEYC8VmpbRqYnSauzm0YOioInxUDwC05qv4tql1af83QU35YCyt0xg1Uv4MdHfUkVAIsyhsuEFiDGAgeN2tik9N1F1qqsO_MinNuL3lg_UknVWO21IeSS4AK5UiVOjruQV7JdkPdtHRvMFNwItCAvDRC0mqfvRr0zCxGDr2Y4BL2L3olfUj-wcqm-1u7iGcwkks2Kc1NFOdmuKMgaLwKtT9jMcWzS8HCIgF2c3yUsej2pqXbLc2uocmlKlvdwV-5bWAVNONLFe3Makhvny0v4IDnAbrFRmeG26SjMMAr-uvU-cdhr9CYnb7UsktlCYITGIFZVDqRugRy0V3w-9-HrU2Nnh3PRO6SdenOENAGs1KcP2Amts89PHFfNfTSbGOTjZaJugLwAkopENrSQe0k3YEU7l8C2hlr7VBTdTZvhgF05G5sxd26mOg-Odsi_cwfRCc5uSvyZ7N78ocZdjXN4SDZQCaG30csYvFOq30CtaPwfcWP3fMGGMyi8LWv6uAnFIzjeDSog80x2tVlCBCdUmi1_PBLPT4djraSlx-xPVv7__hIAOH4Lx52O1xyMIQqJ33Mb3j8Pho23DrCj3Nm0WTM2Mg4YqKLdWTdni2BkMJGZeC3VdEVnxsrE3fIzlMaZyZZ6gI0MWdgg8raV-20UdnNgp-9vMHz5p6t3hPficKsWzp9B7ES7ZQh6zqdLjY4rTvSaIw6sEdmAgKxvmkPT8wcPqXHT7AWacJWVD7MpqqstoAVSEjYx8LypN6WhMXtGDvvNhXIsUT54eW2RKfYOVF8wTZWu_ycWfAyS_yMtPqsVfsnRz9OmGGsr7h_Xh0nTJlxNKf975lF8XC5wqAly4nRdTQFXI327tcyT4AcHj84sje2FY8kjGgnUOnUfe6DYc3jX0ezCZZjJ342LTCAOhrrMgiDsiwqaqunr5uQ=w1661-h934-no?authuser=0)


![](https://lh3.googleusercontent.com/VtHAkzdNKj9m7B-h77QjGYAHIHCbttYexrTpglFuP9Xj9taI-zUoh_pZK9nfCGDDMojhI2ybqc4FpKICcvXiT0mAls-HXl2m-2T1AyehA6E48NwbBX7xQV4Oh6b9yxq9kRNHbBmEn2wbPKY_Wf8OpW67hFFzc_gwYNEtt2zhpbI3OIKkKf0xFgsqEzyK5mqcyJXpFU1jdDo8fVCQvhEKT3R_kX9sMrRSgpP_iapIH_L6WR9RssVBjQi_TEdCZBOntkhsotloBJ7q6gxormdqCnOqg8fYiK1laMhJXuLDm6qX1FA-Xdcmei_AE0XhpPgQYR6gkL7EUS61Qi6Ssdg6hl8u0yCJ4QYSJvvVnbklFqD_S9rpxKGW-9tnrabZgEtyQQjup-3DCBZM5G_ZInc-z_R8JvPtiZ9UcdHhJ8TfVSzWDpTjv1T9C9nMeBRkdifc9ATR9MpIRsqGQcXhDYd-tAgFmrsh4K2-fGRVtAyg-qDqMb52bL2fOB1aStiDmbo1MiwM6H9D_aSd69Wt1BqNlYAWn_4Lx49JO8PYpt3oMDl8L7q81PY61umieIQACLDW8Pol4yVX0M20G1D_V4SixPkIj4Qri23sWlXmp5hQqION36m-oOsZNPMsjVCPeWhLTB7kirf121hlLieO67VRxMdFZgjOniVOJYLkY892_uEp-8f_Dkur1POZt7oMIjP9M7NXN5z--dSezTVCEnHjSmSrbHo2IQijqQeBE8hXJZZ_SEvLU0gwLhyZaMwbhLQ80UijHVpK0PvkgzgTke1o4nxmtxEciZC4sQ4Ykq_SUA8EjRk20zFfYW50J-Xf4Gh_FzUU0cbq1Yh4hhyfccBeKV8BHFm3gGVGy95tmj4g16Ai9nPrT-etAE6lI97wkaLZ6POgzrYcvt1TNj3O36lCfG7iQlTerTgHgmvEFO81VWPJ02c=w745-h395-no?authuser=0)

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