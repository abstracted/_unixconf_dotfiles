export XDG_CONFIG_HOME="$HOME/.config"
export QT_QPA_PLATFORMTHEME="qt5ct"

if [ -e /Users/$USER/.nix-profile/etc/profile.d/nix.sh ]; 
  then . /Users/$USER/.nix-profile/etc/profile.d/nix.sh; 
fi
