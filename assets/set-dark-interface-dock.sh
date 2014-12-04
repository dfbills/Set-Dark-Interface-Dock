#!/bin/sh

#  set-dark-interface.sh
#  
#
#  Created by David F. Bills on 12/4/14.
#
#  Based on Rob Griffiths' post summarizing Peter Maurer's findings on Twitter.
#  http://robservatory.com/yosemite-dark-dock-and-app-switcher-with-light-menu-bar/
#
#  Uncomment terminal-notifier strings for more feedback
#
#


# terminal-notifier -title 'Set Dark Interface' -message 'Writing'

defaults write NSGlobalDomain AppleInterfaceStyle Dark;

# terminal-notifier -title 'Set Dark Interface' -message 'Killing dock'

killall Dock;

# terminal-notifier -title 'Set Dark Interface' -message 'Sleeping'

sleep 3

# terminal-notifier -title 'Set Dark Interface' -message 'Removing'

defaults remove NSGlobalDomain AppleInterfaceStyle


