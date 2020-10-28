<# Dotfiles installer for windows10
    - Required: vim for windows (kaoriya)
#>

$CurrentDir  = (Split-Path $MyInvocation.MyCommand.path) + "\"
$PS_PROFILE_PATH = $env:USERPROFILE + "\Documents\WindowsPowerShell\"
$PS_PROFILE_NAME = "Microsoft.PowerShell_profile.ps1"
$VIM_LOCAL_PATH = $env:USERPROFILE + "\.vim\"
$VIM_DEIN_NAME = "dein.toml"
$VIM_DEIN_LAZY_NAME = "dein_lazy.toml"
$VIM_VIMRC_NAME = "_vimrc"


# make symboliclink of PS_PROFILE
if (!(Test-Path $PS_PROFILE_PATH)) {
    mkdir $PS_PROFILE_PATH
}

cmd /c mklink ($PS_PROFILE_PATH + $PS_PROFILE_NAME) ($CurrentDir + $PS_PROFILE_NAME)


# make symboliclink of VIM_LOCAL_PATH
if (!(Test-Path $VIM_LOCAL_PATH)) {
    mkdir $VIM_LOCAL_PATH
}

cmd /c mklink ($VIM_LOCAL_PATH + $VIM_DEIN_NAME) ($CurrentDir + ".vim\" + $VIM_DEIN_NAME)
cmd /c mklink ($VIM_LOCAL_PATH + $VIM_DEIN_LAZY_NAME) ($CurrentDir + ".vim\" + $VIM_DEIN_LAZY_NAME)

# make symboliclink of vimrc
cmd /c mklink ($env:USERPROFILE + "\" + $VIM_VIMRC_NAME) ($CurrentDir + $VIM_VIMRC_NAME)
