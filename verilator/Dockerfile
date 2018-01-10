FROM tuetuopay/gcc

# Install pacman deps
RUN pacman -S --noconfirm clang
RUN pacman -S --noconfirm clang-tools-extra
RUN pacman -S --noconfirm flex bison fakeroot

# Set makepkg to use 10 build threads
RUN sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j10"/' /etc/makepkg.conf

# Hot patch makepkg to run it as root
RUN cat $(which makepkg) | grep -v E_USER_ABORT > /root/makepkg && \
    chmod +x /root/makepkg

# Build verilator
RUN git clone https://aur.archlinux.org/verilator.git && \
    git clone https://aur.archlinux.org/systemc.git && \
    export PATH=$PATH:/usr/bin/core_perl && \
    cd verilator && \
    /root/makepkg -sirc --noconfirm && \
    cd ../ && rm -rf verilator && cd systemc && \
    /root/makepkg -sirc --noconfirm

