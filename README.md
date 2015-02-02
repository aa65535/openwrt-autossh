Autossh for OpenWrt
===

Install
---

 - [Download a release][0], then 

   ```
   opkg update
   opkg install openssh-client
   opkg install autossh_1.4d-x_xxxxx.ipk
   ```

Build
---

 - If you use other OpenWRT versions, build yourself: cd into [SDK][S] root, then

   ```bash
   # clone the Makefile
   git clone https://github.com/aa65535/openwrt-autossh.git package/autossh
   # select Network -> autossh
   make menuconfig
   make package/autossh/compile V=99
   ```

Usage
---

 1. Enable PubkeyAuthentication and put your public key to `.ssh/authorized_keys` on server-side.

 2. If you need to access it from the public network, you need to enable GatewayPorts.

 3. Put your private key to `.ssh/id_rsa` on OpenWrt.

 4. First, manually connect the server in the command line, to write `.ssh/known_hosts`.

 5. Then, configure and use it.

----------


  [0]: https://github.com/aa65535/openwrt-autossh/releases
  [S]: http://wiki.openwrt.org/doc/howto/obtain.firmware.sdk
