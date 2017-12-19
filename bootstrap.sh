#!/bin/sh
clt_placeholder='/tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress' &&
    sudo touch "$clt_placeholder" &&
    clt_label="$(softwareupdate -l | grep -B 1 -E 'Command Line (Developer|Tools)' | awk -F'*' '/^ +\\*/ { print $2 }' | sed 's/^ *//' | tail -n 1)"
    sudo softwareupdate -i "$clt_label" &&
    sudo rm -f "$clt_placeholder" &&
    sudo xcode-select --switch /Library/Developer/CommandLineTools &&
    curl -o /Users/vagrant/MacPorts-2.4.2-10.13-HighSierra.pkg -L https://github.com/macports/macports-base/releases/download/v2.4.2/MacPorts-2.4.2-10.13-HighSierra.pkg &&
    sudo installer -pkg /Users/vagrant/MacPorts-2.4.2-10.13-HighSierra.pkg -target / &&
    rm /Users/vagrant/MacPorts-2.4.2-10.13-HighSierra.pkg &&
    echo 'export PATH="/opt/local/bin:/opt/local/sbin:$PATH"' >>/Users/vagrant/.bash_profile
