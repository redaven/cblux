#!/bin/bash
apt-get -y install libv4l-0
mv /usr/bin/skype /usr/bin/skype.old

cat << SKYPE > /usr/bin/skype
#!/bin/bash
LD_PRELOAD=/usr/lib/i386-linux-gnu/libv4l/v4l1compat.so skype.old
SKYPE
