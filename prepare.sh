# download RT-Thread git code
git clone https://github.com/RT-Thread/rt-thread.git

# prepare toolchains and scons 
apt-get install scons

if [ ! -f "arm-2012.09-63-arm-none-eabi-i686-pc-linux-gnu.tar.bz2" ];then
wget -c https://sourcery.mentor.com/public/gnu_toolchain/arm-none-eabi/arm-2012.09-63-arm-none-eabi-i686-pc-linux-gnu.tar.bz2
tar jxvf arm-2012.09-63-arm-none-eabi-i686-pc-linux-gnu.tar.bz2
fi
