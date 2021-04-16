
# minieap for OpenWRT

## Build

First download [OpenWRT SDK](https://downloads.openwrt.org/) for your device.

```sh
cd /path/to/your/sdk
cd package
git clone https://github.com/2512500960/zzu-minieap-openwrt.git
cd ..
make menuconfig # choose `minieap` in section `Network`
make package/zzu-minieap-openwrt/compile V=s
```
