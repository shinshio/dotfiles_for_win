# required for powerline:
#     Install-Modele posh-git -Scope CurrentUser
#     Install-Modele oh-my-posh  -Scope CurrentUser

# ----------
# variables
# ----------

$work = "C:/work/"
$tools = "C:/tools/"
$desktop = "C:/Users/$env:USERNAME/desktop/"
$keijiban = "\\sd042cfs2037/02.掲示板"
$hino = "\\sd042cfs2037\02.掲示板\38.日野"
$isuzu = "\\sd042cfs2037\02.掲示板\39.いすゞ"
$fuso = "\\sd042cfs2037\02.掲示板\38.ふそう"

$jr_hp = "https://traininfo.jr-central.co.jp/zairaisen/index.html?lang=ja"
$webkintai_hp = "https://www.kintaiatweb.jp/k_ta/login.aspx"
$dtems_hp = "https://www-pt.densotechno.co.jp/wps/myportal/"


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
function la() {
    Get-ChildItem -force
    # Get-ChildItem -force | Sort-Object {$_.Name}
}

# ls after cd automatically
function cl() {
    param($path)
    try{
        Set-Location $path -ErrorAction 'stop'
        Get-ChildItem
    }
    catch {"$_"}
}

# exec python scripts
function qr() {
    $pwd = pwd
    cd C:/work/python3/QRcode/
    pipenv run python main.py
    cd $pwd
}
function goodmorning() {
    $pwd = pwd
    cd C:/work/python3/goodmorning/
    pipenv run python ./src/main.py
    cd $pwd
}
function goodbye() {
    $pwd = pwd
    cd C:/work/python3/goodbye/
    pipenv run python ./src/main.py
    cd $pwd
}
function kintai() {
    C:/work/powershell/scripts/kintai.ps1
}
function todo() {
    Param($option)
    $pwd = pwd
    cd C:/work/python3/todo/
    pipenv run python ./src/main.py $option
    cd $pwd
}
# cd
function cd_home() {cd $home}
function cd_work() {cd $work}
function cd_tools() {cd $tools}
function cd_desktop() {cd $desktop}

# open HP with edge
function edge_jrhp() {start microsoft-edge:$jr_hp}
function edge_webkintai() {start microsoft-edge:$webkintai_hp}
function edge_dtems() {start microsoft-edge:$dtems_hp}

# open with explorer
function hino() {start $hino}
function isuzu() {start $isuzu}
function fuso() {start $fuso}

# ----------
# alias
# ----------
function exit_(){exit}
Set-Alias q exit_
Set-Alias v vim
Set-Alias g git
Set-Alias which where.exe
Set-Alias yoyakuhyo c:/tools/yoyakuhyo/yoyakuhyo.exe

Set-Alias home cd_home
Set-Alias work cd_work
Set-Alias tools cd_tools
Set-Alias desktop cd_desktop
Set-Alias keijiban cd_keijiban
Set-Alias densha edge_jrhp
Set-Alias webkintai edge_webkintai
Set-Alias dtems edge_dtems

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
