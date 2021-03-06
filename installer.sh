#!/bin/sh

#wget -q "--no-check-certificate" https://raw.githubusercontent.com/emil237/multistalker/main/installer.sh -O - | /bin/sh
VERSION=1.3
MY_URL="https://raw.githubusercontent.com/emil237/multistalker/main"
PLUGIN_PATH='/usr/lib/enigma2/python/Plugins/Extensions/MultiStalker'
STALKER_CONF='/home/stalker.conf'

if [ -f /etc/apt/apt.conf ] ; then
    STATUS='/var/lib/dpkg/status'
    OS='DreamOS'
elif [ -f /etc/opkg/opkg.conf ] ; then
   STATUS='/var/lib/opkg/status'
   OS='Opensource'
fi

if python --version 2>&1 | grep -q '^Python 3\.'; then
   echo "You have Python3 image"
   PYTHON='PY3'
   PYTHONPACK='python3-requests'
else
   echo "You have Python2 image"
   PYTHON='PY2'
   PYTHONPACK='python-requests'
fi

if [ -d $PLUGIN_PATH ]; then

   rm -rf $PLUGIN_PATH
   
fi


CHECK='/tmp/check'
uname -m > $CHECK
sleep 1;
if grep -qs -i 'mips' cat $CHECK ; then
	echo "[ Your device is MIPS ]"
    if [ $PYTHON = "PY3" ]; then
	    wget -q  "--no-check-certificate" https://raw.githubusercontent.com/emil237/multistalker/main/multistalker$VERSION-py3-mipsel.tar.gz -O /tmp/multistalker$VERSION-py3-mipsel.tar.gz
        tar -xzf /tmp/multistalker$VERSION-py3-mipsel.tar.gz -C /
        rm -f /tmp/multistalker$VERSION-py3-mipsel.tar.gz
        
        if [ ! -f '/usr/lib/libpython3.7m.so.1.0' ]; then
            wget -q  "--no-check-certificate" https://raw.githubusercontent.com/emil237/multistalker/main/libpython3.7-mipsel.tar.gz -O /tmp/libpython3.7-mipsel.tar.gz
            tar -xzf /tmp/libpython3.7-mipsel.tar.gz -C /
            rm -f /tmp/libpython3.7-mipsel.tar.gz
            
            echo "Send libpython3.7m"
        fi
    else
        wget -q  "--no-check-certificate" https://raw.githubusercontent.com/emil237/multistalker/main/multistalker$VERSION-py2-mipsel.tar.gz -O /tmp/multistalker$VERSION-py2-mipsel.tar.gz
        tar -xzf /tmp/multistalker$VERSION-py2-mipsel.tar.gz -C /
        rm -f /tmp/multistalker$VERSION-py2-mipsel.tar.gz
        
    fi
elif grep -qs -i 'armv7l' cat $CHECK ; then
	echo "[ Your device is armv7l ]"
    if [ $PYTHON = "PY3" ]; then
	    wget -q  "--no-check-certificate" https://raw.githubusercontent.com/emil237/multistalker/main/multistalker$VERSION-py3-arm.tar.gz -O /tmp/multistalker$VERSION-py3-arm.tar.gz
        tar -xzf /tmp/multistalker$VERSION-py3-arm.tar.gz -C /
        rm -f /tmp/multistalker$VERSION-py3-arm.tar.gz
        
        if [ ! -f '/usr/lib/libpython3.7m.so.1.0' ]; then
            wget -q  "--no-check-certificate" https://raw.githubusercontent.com/emil237/multistalker/main/libpython3.7-arm.tar.gz -O /tmp/libpython3.7-arm.tar.gz
            tar -xzf /tmp/libpython3.7-arm.tar.gz -C /
            rm -f /tmp/libpython3.7-arm.tar.gz
            
            echo "Send libpython3.7m"
        fi
    else
        wget -q  "--no-check-certificate" https://raw.githubusercontent.com/emil237/multistalker/main/multistalker$VERSION-py2-arm.tar.gz -O /tmp/multistalker$VERSION-py2-arm.tar.gz
        tar -xzf /tmp/multistalker$VERSION-py2-arm.tar.gz -C /
        rm -f /tmp/multistalker$VERSION-py2-arm.tar.gz
        
    fi
	
elif grep -qs -i 'aarch64' cat $CHECK ; then
	echo "[ Your device is aarch64 ]"
    if [ $PYTHON = "PY3" ]; then
	    wget -q  "--no-check-certificate" https://raw.githubusercontent.com/emil237/multistalker/main/multistalker$VERSION-py3-aarch64.tar.gz -O /tmp/multistalker$VERSION-py3-aarch64.tar.gz
        tar -xzf /tmp/multistalker$VERSION-py3-aarch64.tar.gz -C /
        rm -f /tmp/multistalker$VERSION-py3-aarch64.tar.gz
        
        if [ ! -f '/usr/lib/libpython3.7m.so.1.0' ]; then
            wget -q  "--no-check-certificate" https://raw.githubusercontent.com/emil237/multistalker/main/libpython3.7-aarch64.tar.gz -O /tmp/libpython3.7-aarch64.tar.gz
            tar -xzf /tmp/libpython3.7-aarch64.tar.gz -C /
            rm -f /tmp/libpython3.7-aarch64.tar.gz
            
            echo "Send libpython3.7m"
        fi
    else
        wget -q  "--no-check-certificate" https://raw.githubusercontent.com/emil237/multistalker/main/multistalker$VERSION-py2-aarch64.tar.gz -O /tmp/multistalker$VERSION-py2-aarch64.tar.gz
        tar -xzf /tmp/multistalker$VERSION-py2-aarch64.tar.gz -C /
        rm -f /tmp/multistalker$VERSION-py2-aarch64.tar.gz
        
    fi
	
elif grep -qs -i 'sh4' cat $CHECK ; then
	echo "[ Your device is sh4 ]"
	if [ $PYTHON = "PY3" ]; then
	    wget -q  "--no-check-certificate" https://raw.githubusercontent.com/emil237/multistalker/main/multistalker$VERSION-py3-sh4.tar.gz -O /tmp/multistalker$VERSION-py3-sh4.tar.gz
        tar -xzf /tmp/multistalker$VERSION-py3-sh4.tar.gz -C /
        rm -f /tmp/multistalker$VERSION-py3-sh4.tar.gz
        
        if [ ! -f '/usr/lib/libpython3.7m.so.1.0' ]; then
            wget -q  "--no-check-certificate" https://raw.githubusercontent.com/emil237/multistalker/main/libpython3.7-sh4.tar.gz -O /tmp/libpython3.7-sh4.tar.gz
            tar -xzf /tmp/libpython3.7-sh4.tar.gz -C /
            rm -f /tmp/libpython3.7-sh4.tar.gz
            
            echo "Send libpython3.7m"
        fi
    else
        wget -q  "--no-check-certificate" https://raw.githubusercontent.com/emil237/multistalker/main/multistalker$VERSION-py2-sh4.tar.gz -O /tmp/multistalker$VERSION-py2-sh4.tar.gz
        tar -xzf /tmp/multistalker$VERSION-py2-sh4.tar.gz -C /
        rm -f /tmp/multistalker$VERSION-py2-sh4.tar.gz
        
    fi
else
    echo "Your device is not supported"
    exit 1
fi

if [ ! -f $STALKER_CONF ]; then

   wget -q  "--no-check-certificate" https://raw.githubusercontent.com/emil237/multistalker/main/stalker-conf.tar.gz -O /tmp/stalker-conf.tar.gz
   tar -xzf /tmp/stalker-conf.tar.gz  -C /
   rm -f /tmp/stalker-conf.tar.gz 
    echo "Send $STALKER_CONF"
fi

echo ""
echo "#########################################################"
echo "#     MultiStalker $VERSION INSTALLED SUCCESSFULLY          #"
echo "#                    BY ziko-ZR1                        #"
echo "#########################################################"
echo "#                Restart Enigma2 GUI                    #"
echo "#########################################################"
sleep 2
#if [ $OS = 'DreamOS' ]; then 
    systemctl restart enigma2
#else
    killall -9 enigma2
#fi
exit 0
