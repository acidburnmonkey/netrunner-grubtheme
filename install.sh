#!/bin/bash

# Grub2 Theme

ROOT_UID=0
THEME_DIR="/usr/share/grub/themes"
THEME_NAME=netruner


CDEF=" \033[0m"                                     
CCIN=" \033[0;36m"                                  
CGSC=" \033[0;32m"                                  
CRER=" \033[0;31m"                                  
CWAR=" \033[0;33m"                                  
b_CDEF=" \033[1;37m"                                
b_CCIN=" \033[1;36m"                                
b_CGSC=" \033[1;32m"                                
b_CRER=" \033[1;31m"                                
b_CWAR=" \033[1;33m"                                


prompt () {
  case ${1} in
    "-s"|"--success")
      echo -e "${b_CGSC}${@/-s/}${CDEF}";;          # print success message
    "-e"|"--error")
      echo -e "${b_CRER}${@/-e/}${CDEF}";;          # print error message
    "-w"|"--warning")
      echo -e "${b_CWAR}${@/-w/}${CDEF}";;          # print warning message
    "-i"|"--info")
      echo -e "${b_CCIN}${@/-i/}${CDEF}";;          # print info message
    *)
    echo -e "$@"
    ;;
  esac
}

# welcome message
prompt -s "\n\t  ${THEME_NAME} - Grub2-Theme  \n\t"

# check command avalibility
function has_command() {
  command -v $1 > /dev/null
}

prompt -w "\nChecking for root access...\n"

# checks for root access
if [ "$UID" -eq "$ROOT_UID" ]; then

  # create themes directory if not existent
  prompt -i "\nChecking for the existence of themes directory...\n"
  [[ -d ${THEME_DIR}/${THEME_NAME} ]] && rm -rf ${THEME_DIR}/${THEME_NAME}
  mkdir -p "${THEME_DIR}/${THEME_NAME}"

  # copy theme
  prompt -i "\nInstalling ${THEME_NAME} theme...\n"

  cp -a ${THEME_NAME}/* ${THEME_DIR}/${THEME_NAME}

  # set theme
  prompt -i "\nSetting ${THEME_NAME} as default...\n"

  # backup grub-config
  cp -an /etc/default/grub /etc/default/grub.bak

  grep "GRUB_THEME=" /etc/default/grub 2>&1 >/dev/null && sed -i '/GRUB_THEME=/d' /etc/default/grub

  echo "GRUB_THEME=\"${THEME_DIR}/${THEME_NAME}/theme.txt\"" >> /etc/default/grub

  # update grub-config
  echo -e "Updating grub config..."
  if has_command update-grub; then
    update-grub
  elif has_command grub-mkconfig; then
    grub-mkconfig -o /boot/grub/grub.cfg
  elif has_command grub2-mkconfig; then
    if has_command zypper; then
      grub2-mkconfig -o /boot/grub2/grub.cfg
    elif has_command dnf; then
      grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
    fi
  fi

  # success 
  prompt -s "\n\t  Successfully Installed  \t\n"

else

  # error 
  prompt -e "\n [ Error! ]  Must execute as root "

  
  read -p "[ trusted ] specify the root password : " -t${MAX_DELAY} -s
  [[ -n "$REPLY" ]] && {
    sudo -S <<< $REPLY $0
  } || {
    prompt  "\n ~Canceled~ "
    exit 1
  }
fi
