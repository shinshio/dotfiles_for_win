<# Dotfiles deleter for windows10
#>

$CurrentDir  = (Split-Path $MyInvocation.MyCommand.path) + "\"
$PS_PROFILE_PATH = $env:USERPROFILE + "\Documents\WindowsPowerShell\"
$PS_PROFILE_NAME = "Microsoft.PowerShell_profile.ps1"
$VIM_LOCAL_PATH = $env:USERPROFILE + "\.vim\"
$VIM_DEIN_NAME = "dein.toml"
$VIM_DEIN_LAZY_NAME = "dein_lazy.toml"
$VIM_VIMRC_NAME = "_vimrc"


# delete symboliclink of PS_PROFILE
del ($PS_PROFILE_PATH + $PS_PROFILE_NAME)


# make symboliclink of VIM_LOCAL_PATH
del ($VIM_LOCAL_PATH + $VIM_DEIN_NAME)
del ($VIM_LOCAL_PATH + $VIM_DEIN_LAZY_NAME)


# make symboliclink of vimrc
del ($env:USERPROFILE + "\" + $VIM_VIMRC_NAME)

pause