### 1. Grub Setup

`/etc/default/grub`

```shell
GRUB_CMDLINE_LINUX_DEFAULT="loglevel=0 console=tty2 udev.log_level=0 intel_idle.max_cstate=1 cryptomgr.notests initcall_debug intel_iommu=igfx_off no_timer_check noreplace-smp page_alloc.shuffle=1 rcupdate.rcu_expedited=1 tsc=reliable nowatchdog module_blacklist=iTCO_wdt,iTCO_vendor_support,btusb,btrtl,btbcm,btintel,bluetooth"
```

### 2. Enabling Esync

`/etc/security/limits.conf`

```shell
username hard nofile 524288
```

### 3. Wine Setup

```shell
doas pacman -S --needed --noconfirm lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader vulkan-mesa-layers lib32-vulkan-mesa-layers lib32-gnutls lib32-libxcomposite lib32-pipewire lib32-libpulse vkd3d lib32-vkd3d gamemode lib32-gamemode lib32-alsa-plugins winetricks lutris
```

### 4. osu! Setup
```shell
WINEPREFIX=~/Games/osu WINEARCH=win32 WINE=~/.local/share/lutris/runners/wine/lutris-fshack-5.6-5-x86_64/bin/wine winetricks dotnet45 gdiplus sound=alsa fontfix fontsmooth=rgb
```

### 5. Virt-Manager Setup
```shell
doas pacman -S --needed virt-manager qemu-full libvirt-dinit iptables-nft dmidecode openbsd-netcat
```

```shell
doas virsh net-start default; doas virsh net-autostart default; doas usermod -aG libvirt $USER; doas dinitctl enable libvirtd; doas dinitctl enable virtlogd
```
