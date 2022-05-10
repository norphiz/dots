export KISS_PATH=''
export KISS_SU='su'
export KISS_DEBUG='0'
export KISS_GET='curl'
export KISS_KEEPLOG='0'
export KISS_PROMPT='0'
export KISS_COMPRESS='xz'
export CXXFLAGS='$CFLAGS'
export KISS_CHK='sha256sum'
export CPPFLAGS='$(CFLAGS)'
export MAKEFLAGS='-j$(nproc)'
export CFLAGS='-march=native -O3 -pipe'

KISS_PATH=$KISS_PATH:/var/db/kiss/repo/core
KISS_PATH=$KISS_PATH:/var/db/kiss/repo/extra
KISS_PATH=$KISS_PATH:/var/db/kiss/repo/wayland
