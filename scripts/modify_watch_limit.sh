#!/bin/sh

echo "Changing watch limit..."
sudo sh -c "echo \"fs.inotify.max_user_watches = 102400\" >> /etc/sysctl.conf"
sudo sysctl -p
echo "Done."
