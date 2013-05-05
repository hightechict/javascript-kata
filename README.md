javascript-kata
===============

Starting point for doing a code kata, using [node.js][node] and 
[jasmine-node][jasmn] which is a 'port' of the [jasmine][jasm] behavior 
driven development framework for testing javascript code.

This directory contains the following:
- README.md, you're currently reading it
- bootstrap.bat, wrapper around bootstrap.ps1 for those how run [PowerShell][ps] 
  with the Restricted or AllSigned, ExecutionPolicy
- bootstrap.ps1
    - installs chocolatey if not already installed
    - installs nodejs.install chocolatey package
    - installs node package jasmine-node
  Note that this script needs an internet connection to function.
- example.js, example javascript file containing you're production code
- example.spec.js, example javascript file containing a single 
  specification
- LICENSE, a copy of the license that applies to this repository, which is 
  the [GNU General Public License version 3][gplv3] or later
- run.bat, run and watch the specs 

[node]: http://nodejs.org/
[jasmn]: https://github.com/mhevery/jasmine-node
[jasm]: http://pivotal.github.io/jasmine/
[ps]: http://technet.microsoft.com/en-us/scriptcenter/powershell.aspx
[gplv3]: http://www.gnu.org/licenses/gpl-3.0.html
