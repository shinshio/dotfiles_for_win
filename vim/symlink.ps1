<#
Dotfiles for VIM installer for windows10
    - Required: vim for windows (kaoriya)
#>

$CurrentDir  = (Split-Path $MyInvocation.MyCommand.path) + "\"
$HOME_PATH = $env:USERPROFILE + "\"
$VIMFILES_PATH = $env:USERPROFILE + "\vimfiles\"
$DEIN_FILENAME = "dein.toml"
$DEIN_LAZY_FILENAME = "dein_lazy.toml"
$VIMRC_FILENAME = "_vimrc"


# vimfiles
if (!(Test-Path $VIMFILES_PATH)) {
    mkdir $VIMFILES_PATH
}

cmd /c mklink ($VIMFILES_PATH + $DEIN_FILENAME)      ($CurrentDir + "vimfiles\" + $DEIN_FILENAME)
cmd /c mklink ($VIMFILES_PATH + $DEIN_LAZY_FILENAME) ($CurrentDir + "vimfiles\" + $DEIN_LAZY_FILENAME)

# vimrc
cmd /c mklink ($HOME_PATH + $VIMRC_FILENAME) ($CurrentDir + "home\" + $VIMRC_FILENAME)

pause
