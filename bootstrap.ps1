<#
This file is part of javascript-kata.

javascript-kata is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

javascript-kata is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with javascript-kata.  If not, see <http://www.gnu.org/licenses/>.
#>
$choco = Get-Command -ErrorAction SilentlyContinue chocolatey
if ($choco -eq $null) {
    Write-Verbose "Installing chocolatey"
    Invoke-Expression ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
    $env:PATH+=";$($env:systemdrive)\chocolatey\bin"
}
chocolatey install nodejs.install
& 'C:\Program Files\nodejs\npm.cmd' install jasmine-node -g

