<#
    required for powerline:
        Install-Modele posh-git -Scope CurrentUser
        Install-Modele oh-my-posh  -Scope CurrentUser
#>


if (Test-Path ~/.config/powershell/config.ps1) {
    . "~/.config/powershell/config.ps1"
}

# ----------
# variables
# ----------

$work = "C:/work/"
$tools = "C:/tools/"
$desktop = "C:/Users/$env:USERNAME/desktop/"
$jr_hp = "https://traininfo.jr-central.co.jp/zairaisen/index.html?lang=ja"


# ----------
# functions
# ----------

# open $Program as superuser
function Global:sudo($Program="powershell", $Argument){
    if($null -eq $Argument){
        Start-Process $Program -Verb runas
    }
    else{
        Start-Process $Program -Verb runas $Argument
    }
}

# ls -force as alias as lsa
function la() { Get-ChildItem -force }

# ls after cd automatically
function cl() {
    param($path)
    try{
        Set-Location $path -ErrorAction 'stop'
        Get-ChildItem
    }
    catch {"$_"}
}


# ----------
# alias
# ----------
# start application
function q() {exit}
Set-Alias v vim
Set-Alias g git
Set-Alias which where.exe
Set-Alias activate ./.venv/Scripts/activate.ps1
# change directory
function home() {cd $home}
function work() {cd $work}
function tools() {cd $tools}
function desktop() {cd $desktop}
# open HP with edge
function densha() {start $jr_hp}


# ------------
#  encoding
# ------------
Set-PSReadLineOption -EditMode Vi
# Set-PSReadLineKeyHandler -Chord j,j -Function ViCommandMode
Set-PSReadLineKeyHandler -Key Ctrl+j -Function ViCommandMode

# ------------
#  encoding
# ------------
[System.Console]::OutputEncoding = [System.Text.Encoding]::GetEncoding("utf-8")
[System.Console]::InputEncoding = [System.Text.Encoding]::GetEncoding("utf-8")


# ----------
# proxy server settings
# ----------
# Not write at this file
# Set at windows path setting

# ----------
#  prompt
# ----------
# function Prompt {
    # # inplace HOME to ~
    # $curPath = $ExecutionContext.SessionState.Path.CurrentLocation.Path
    # if ($curPath.ToLower().StartsWith($Home.ToLower())){
        # $curPath = "~" + $curPath.SubString($Home.Length)
    # }

    # # omit long path
    # $maxPathLength = 40
    # if ($curPath.Length -gt $maxPathLength) {
        # $curPath = '...' + $curPath.SubString($curPath.Length - $maxPathLength + 3)
    # }
    # $host.UI.WriteLine("")
    # $host.UI.Write("[")
    # $host.UI.Write("Cyan", $host.UI.RawUI.BackgroundColor, $env:USERNAME)
    # $host.UI.Write("@")
    # $host.UI.Write("Cyan", $host.UI.RawUI.BackgroundColor, $env:COMPUTERNAME)
    # $host.UI.Write("] ")
    # $host.UI.Write("Yellow", $host.UI.RawUI.BackgroundColor, ">> ")
    # $host.UI.WriteLine("Green", $host.UI.RawUI.BackgroundColor, $curPath)
    # $host.UI.Write("Red", $host.UI.RawUI.BackgroundColor, ">")
    # $host.UI.Write("Yellow", $host.UI.RawUI.BackgroundColor, ">")
    # $host.UI.Write("Green", $host.UI.RawUI.BackgroundColor, ">")
    # " "
# }
# ------------
#  powerline
# ------------
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
