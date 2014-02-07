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
function run-jshint() {
  & (join-path $specdir check.bat) 
}
$specdir = split-path -parent $MyInvocation.MyCommand.Definition
$havePsWatch = (get-module -ListAvailable | 
  select-object -ExpandProperty Name) -contains 'pswatch'
$psWatchIsLoaded = (get-module |
  select-object -ExpandProperty Name) -contains 'pswatch'
if($havePsWatch) {
  if(-not $psWatchIsLoaded) {
    import-module pswatch
  } 
  watch $specdir | get-item | 
    where-object { $_.Extension -eq ".js" } | 
    foreach-object -begin { clear-host } -process { 
      clear-host
      run-jshint 
    }
} else {
  clear-host
  run-jshint
}

