Set-Alias g git
Set-Alias p pnpm
Set-Alias i wind

# To be compatible with @antfu/ni
Remove-Item Alias:ni -Force -ErrorAction Ignore

# gp => git push
Remove-Item Alias:gp -Force -ErrorAction Ignore

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Only need to set https proxy in general
$Env:https_proxy="socks5://127.0.0.1:7890"

# Manually set all proxy
function proxy { $Env:all_proxy = "socks5://127.0.0.1:7890" }

# Install NPM global package and set registry mirror
function npmsetup {
  npm install --global @antfu"/"ni pnpm yarn nrm
  nrm use taobao
}

# Fonts
function fontsetup {
  scoop bucket add nerd-fonts
  scoop install FiraCode
}

# powershell extension
function powershellsetup {
  scoop bucket add extras
  # Auto suggestions
  scoop install psreadline
  # Auto jump
  scoop install zlocation
}

function nio { ni --prefer-offline }
function s { nr start }
function d { nr dev }
function b { nr build }
function t { nr test }
function tu { nr test -u }
function lint { nr lint }
function lintfix { nr lint --fix }
function gpl { g pull }
function gp { g push }
function gb { g branch }
function wind { Set-Location D:\wind }
function gh { Set-Location D:\github }
function pns { Set-Location D:\pns }

# Set gitconfig
function closeautocrlf { git config --global core.autocrlf false }
