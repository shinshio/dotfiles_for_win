<# Dotfiles deleter for windows10
#>

$CurrentDir  = (Split-Path $MyInvocation.MyCommand.path) + "\"
$HOME_PATH = $env:USERPROFILE + "\"
$PS_PROFILE_PATH = $HOME_PATH + "Documents\WindowsPowerShell\"
$PS_PROFILE_NAME = "Microsoft.PowerShell_profile.ps1"
$VIMFILES_PATH = $HOME_PATH + "vimfiles\"
$VIM_DEIN_NAME = "dein.toml"
$VIM_DEIN_LAZY_NAME = "dein_lazy.toml"
$VIM_VIMRC_NAME = "_vimrc"


# powershell
$ps1_profile_file = $PS_PROFILE_PATH + $PS_PROFILE_NAME
del $ps1_profile_file


# vim
$vimrc_file = $HOME_PATH + $VIM_VIMRC_NAME
$dein_file = $VIMFILES_PATH + $VIM_DEIN_NAME
$dein_lazy_file = $VIMFILES_PATH + $VIM_DEIN_LAZY_NAME
del $vimrc_file
del $dein_file
del $dein_lazy_file

pause
