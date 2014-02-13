# javascript-kata

## Introduction

Starting point for doing a code kata, using [node.js][node] and 
[jasmine-node][jasmn] which is a 'port' of the [jasmine][jasm] behavior 
driven development framework for testing javascript code.

## What's in it?

This directory contains the following:

- `README.md`, you're currently reading it.
- `bootstrap.bat`, a wrapper around bootstrap.ps1 for those how run [PowerShell][ps] 
  with the Restricted or AllSigned, ExecutionPolicy.
- `bootstrap.ps1`
    - installs chocolatey if not already installed
    - installs nodejs.install chocolatey package
    - installs node package jasmine-node plus it's dependencies
    - installs jshint plus it's dependencies
    - installs node-inspector plus it's dependencies

  Note that this script needs an internet connection to function.

- `check.bat` a script that invokes jshint on the current directory.
- `check.ps1` a script that can take advantage of the [pswatch][psw] module,
  such that jshint can be run whenever a javascript file changes on the 
  filesystem.
- `debug.bat` a scripts that starts a debugging session using node-inspector,
  you have to supply the name of the spec you wish to debug. Be sure to add a
  `debugger;` statement to your spec where you want to break.
- `example.js`, example javascript file containing you're production code.
- `example.spec.js`, example javascript file containing a single 
  specification.
- `LICENSE`, a copy of the license that applies to this repository, which is 
  the [GNU General Public License version 3][gplv3] or later.
- `run.bat`, run and watch the specs. Watch the specs means that the filesystem 
  will be watched for modifications to `.js` files and as soon as changes are 
  detected the specs will be run.

## Links with quick references and tutorials

- [JavaScript: The Good Parts][jtgp]
- [Jasmine Documentation][jasm]
- [JavaScript Quick Guide][jqg]
- [JavaScript Reference][jr]
- [w3schools JavaScript page][w3s]
- [ECMA-262 standard][ecma]
- [Mozilla JavaScript Guide][mjg]
- [Mozzilla JavaScript Reference][mjr]

[node]: http://nodejs.org/
[jasmn]: https://github.com/mhevery/jasmine-node
[jasm]: http://pivotal.github.io/jasmine/
[ps]: http://technet.microsoft.com/en-us/scriptcenter/powershell.aspx
[gplv3]: http://www.gnu.org/licenses/gpl-3.0.html
[jtgp]: http://shop.oreilly.com/product/9780596517748.do
[jqg]: http://www.tutorialspoint.com/javascript/javascript_quick_guide.htm
[jr]: http://javascript-reference.info/ 
[w3s]: http://www.w3schools.com/js/default.asp
[ecma]: http://www.ecma-international.org/publications/files/ECMA-ST/Ecma-262.pdf
[mjg]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide
[mjr]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference 
[psw]: https://github.com/jfromaniello/pswatch


# Ubuntu-howto

## Install node package manager
sudo apt-get install npm

## set global registry for npm
npm config set registry http://registry.npmjs.org/

## install packages using npm
### install packages globally
sudo npm install jasmine-node -g
sudo npm install jshint -g
sudo npm install node-inspector -g

### install packages as user (This will install the packages in <some dir>/node_modules)
cd <some dir>
npm install jasmine-node
npm install jshint
npm install node-inspector

export PATH=`pwd`/.bin:$PATH

