@echo off
rem This file is part of javascript-kata.
rem 
rem javascript-kata is free software: you can redistribute it and/or modify
rem it under the terms of the GNU General Public License as published by
rem the Free Software Foundation, either version 3 of the License, or
rem (at your option) any later version.
rem 
rem javascript-kata is distributed in the hope that it will be useful,
rem but WITHOUT ANY WARRANTY; without even the implied warranty of
rem MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
rem GNU General Public License for more details.
rem 
rem You should have received a copy of the GNU General Public License
rem along with javascript-kata.  If not, see <http://www.gnu.org/licenses/>.
start node --debug-brk %APPDATA%\npm\node_modules\jasmine-node\lib\jasmine-node\cli.js --verbose %* 
ping -n 3 localhost > nul
start node-inspector
ping -n 3 localhost > nul
start http://127.0.0.1:8080/debug?port=5858
