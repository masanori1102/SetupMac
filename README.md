# SetupMac
This script sets up macOS with Homebrew.

## About Homebrew
Homebrew — The missing package manager for macOS
http://brew.sh/

---

## Preparations
1. Create Apple ID  
Apple ID - Official Apple Support : https://support.apple.com/apple-id
1. Install Xcode  
Download - Apple Developer : https://developer.apple.com/download/
1. Install SourceTree  
SourceTree - A free Git & Mercurial client for Windows or Mac | Atlassian : https://www.atlassian.com/software/sourcetree

## Steps
Launch Terminal and execute the following scripts.  

### 1. Agree to the Xcode license agreements
We need agree to the Xcode licence agreements with `sudo xcodebuild -license` for using Homebrew.  
Execute the following script, hit the Enter key, read all the Xcode licence agreements and type `agree`.
```
~ $ cd /
/ $ sudo xcodebuild -license


You have not agreed to the Xcode license agreements. You must agree to both license agreements below in order to use Xcode. 

Hit the Enter key to view the license agreements at '/Applications/Xcode.app/Contents/Resources/English.lproj/License.rtf'

Apple Inc.

Xcode and Apple SDKs Agreement


PLEASE SCROLL DOWN AND READ ALL OF THE FOLLOWING TERMS AND CONDITIONS CAREFULLY BEFORE USING THE APPLE SOFTWARE OR APPLE SERVICES.  THIS IS A LEGAL AGREEMENT BETWEEN YOU AND APPLE.  IF YOU AGREE TO BE BOUND BY ALL OF THE TERMS AND CONDITIONS, CLICK THE “AGREE” BUTTON.  BY CLICKING “AGREE” OR BY DOWNLOADING, USING OR COPYING ANY PART OF THIS APPLE SOFTWARE OR USING ANY PART OF THE APPLE SERVICES, YOU ARE AGREEING ON YOUR OWN BEHALF AND/OR ON BEHALF OF YOUR COMPANY OR ORGANIZATION TO THE TERMS AND CONDITIONS STATED BELOW.  IF YOU DO NOT OR CANNOT AGREE TO THE TERMS OF THIS AGREEMENT, YOU CANNOT USE THIS APPLE SOFTWARE OR THE APPLE SERVICES.  DO NOT DOWNLOAD OR USE THIS APPLE SOFTWARE OR APPLE SERVICES IN THAT CASE.
.
.
.
EA1421
8/24/16


By typing 'agree' you are agreeing to the terms of the software license agreements. Type 'print' to print them or anything else to cancel, [agree, print, cancel] agree

You can view the license agreements in Xcode's About Box, or at /Applications/Xcode.app/Contents/Resources/English.lproj/License.rtf
```

### 2. Execute this script
This sample clones this repo to `~/projects/SetupMac/` and sets up the applications written in [app.list](app.list).

After you execute [SetupMac.sh](SetupMac.sh), you do the followings:
* Press RETURN
* Enter your password
* Wait until outputing `===== END ====`.

```
/ $ git clone https://github.com/masanori1102/SetupMac ~/projects/SetupMac/
/ $ ~/projects/SetupMac/SetupMac.sh

1. Install Homebrew
==> This script will install:
/usr/local/bin/brew
/usr/local/share/doc/homebrew
/usr/local/share/man/man1/brew.1
/usr/local/share/zsh/site-functions/_brew
/usr/local/etc/bash_completion.d/brew
/usr/local/Homebrew

Press RETURN to continue or any other key to abort

2. Install Homebrew Cask
.
.
.
3. Install applications with Homebrew Cask
.
.
.
===== END ====
```
