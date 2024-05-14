#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# add NanoHatOLED for Neo2
#sed -i '$a src-git NanoHatOLED https://github.com/ctr54188/NanoHatOLED.git' feeds.conf.default
#wget https://github.com/ctr54188/NanoHatOLED/raw/master/openwrt/target/linux/sunxi/patches-5.4/499-neo2-enable-i2c.patch
#mv 499-neo2-enable-i2c.patch target/linux/sunxi/patches-5.4/

#git clone https://github.com/sbwml/luci-app-alist.git package/luci-app-alist

# add passwall
#sed -i '$a src-git diy1 https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default
#sed -i '$a src-git upx https://github.com/kuoruan/openwrt-upx.git' feeds.conf.default

# add helloworld
#git clone https://github.com/fw876/helloworld.git package/helloworld
sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git;master' feeds.conf.default
#git clone https://github.com/Mattaclp/helloworld.git package/helloworld

# add passwall
sed -i '$a src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
#svn co https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall package/openwrt-passwall/luci-app-passwall

# add luci-app-cpufreq
#sed -i 's/LUCI_DEPENDS.*/LUCI_DEPENDS:=\@\(arm\|\|aarch64\)/g' package/lean/luci-app-cpufreq/Makefile

# Add luci-app-amlogic
#svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/luci-app-amlogic

# Add my helloworld
#sed -i '$a src-git helloworld https://github.com/Mattaclp/helloworld' feeds.conf.default

# Add immortalwrt packages
#sed -i '$a src-git immortalwrtpackages https://github.com/chiwaicw/immortalwrtpackages' feeds.conf.default
#sed -i '$a src-git immortalwrtluci https://github.com/chiwaicw/immortalwrtluci' feeds.conf.default
sed -i '$a src-git immortalwrtpackages https://github.com/chiwaicw/immortalwrtpackagesslim2' feeds.conf.default
sed -i '$a src-git immortalwrtluci https://github.com/chiwaicw/immortalwrtlucislim2' feeds.conf.default
#svn co https://github.com/chiwaicw/immortalwrtpackages/trunk/net/gowebdav package/lean/gowebdav
#svn co https://github.com/chiwaicw/immortalwrtluci/trunk/applications/luci-app-gowebdav package/lean/luci-app-gowebdav
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
mv luci-app-adguardhome package/lean/
#sed -i '$a src-git projectpackages https://github.com/immortalwrt/packages.git;openwrt-23.05' feeds.conf.default
#sed -i '$a src-git projectluci https://github.com/immortalwrt/luci.git;openwrt-23.05' feeds.conf.default
#sed -i '$a src-git packagesImmortalWrt https://github.com/kwokwai6618/packages-ImmortalWrt.git;openwrt-18.06' feeds.conf.default
#sed -i '$a src-git luciImmortalWrt https://github.com/kwokwai6618/luci-ImmortalWrt.git;openwrt-18.06' feeds.conf.default
#sed -i '$a src-git immortalwrtpackages https://github.com/Mattaclp/immortalwrtpackages' feeds.conf.default
#sed -i '$a src-git immortalwrtluci https://github.com/Mattaclp/immortalwrtluci' feeds.conf.default
#svn co https://github.com/kenzok8/openwrt-packages/trunk/adguardhome package/AdGuardHome
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome package/luci-app-adguardhome
#svn co https://github.com/immortalwrt/packages/trunk/utils/filebrowser package/filebrowser
#svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-filebrowser package/luci-app-filebrowser
#svn co https://github.com/liuran001/openwrt-packages/trunk/packages/luci-app-adguardhome package/luci-app-adguardhome
#svn co https://github.com/liuran001/openwrt-packages/trunk/packages/adguardhome package/adguardhome
#svn co https://github.com/immortalwrt/packages/trunk/net/gowebdav package/gowebdav
#svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-gowebdav package/luci-app-gowebdav

# add argon theme
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
#rm -rf package/lean/luci-theme-argon && mv luci-theme-argon package/lean/

# add aliyundrive
#git clone https://github.com/jerrykuku/go-aliyundrive-webdav.git
#rm -rf package/lean/aliyundrive-webdav && mv go-aliyundrive-webdav package/lean/
#git clone https://github.com/jerrykuku/luci-app-go-aliyundrive-webdav.git
#mv luci-app-go-aliyundrive-webdav package/lean/
#rm -rf package/lean/luci-app-aliyundrive-webdav && mv luci-app-go-aliyundrive-webdav package/lean/

# add argon-config
#git clone https://github.com/jerrykuku/luci-app-argon-config.git
#mv luci-app-argon-config package/lean/

# add vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git
mv lua-maxminddb package/lean/
#git clone https://github.com/jerrykuku/luci-app-vssr.git
git clone https://github.com/Mattaclp/luci-app-vssr.git
mv luci-app-vssr package/lean/

# add luci-app-casaJJJos
#git clone https://github.com/chiwaicw/luci-app-casaJJJos.git
#mv luci-app-casaJJJos package/lean/
#git clone https://github.com/chiwaicw/casaJJJos.git
#mv casaJJJos package/lean/

# add JD
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git
#mv luci-app-jd-dailybonus package/lean/
#rm -rf package/lean/luci-app-jd-dailybonus && mv luci-app-jd-dailybonus package/lean/

# add DDNSTO
#sed -i '$a src-git nas https://github.com/linkease/nas-packages.git;master' feeds.conf.default

# change qBittorrent 4.2.5
#rm -rf package/lean/qBittorrent
#svn co https://github.com/kwokwai6618/lede/trunk/package/lean/qBittorrent package/lean/qBittorrent
#rm -rf package/lean/rblibtorrent
#svn co https://github.com/kwokwai6618/lede/trunk/package/lean/rblibtorrent package/lean/rblibtorrent
#svn co https://github.com/kwokwai6618/lede/trunk/package/lean/qt5 package/lean/qt5
#rm -rf package/lean/luci-app-qbittorrent
#svn co https://github.com/kwokwai6618/lede/trunk/package/lean/luci-app-qbittorrent package/lean/luci-app-qbittorrent

# change qBittorrent 4.2.5
#sed -i 's/8f615aa06f77286881d40b5f769f648221128b46f0bffc1f2fa101068f99ebe8/1dac52d6fe4b0c44dba04fcfc41f519c57a69cb30580255edca95c87053a4324/g' package/lean/qBittorrent/Makefile
#sed -i 's/4.3.4.1/4.2.5/g' package/lean/qBittorrent/Makefile
#sed -i 's/+qt5-core +qt5-network +qt5-sql +qt5-xml +rblibtorrent/+qt5-core +qt5-network +qt5-xml +rblibtorrent/g' package/lean/qBittorrent/Makefile
#sed -i 's/1.2.13/1.2.7/g' package/lean/rblibtorrent/Makefile
#sed -i 's/PKG_RELEASE=1/PKG_RELEASE=2/g' package/lean/rblibtorrent/Makefile
#sed -i 's/e00a152678fbce7903aa42bbd93e8b812f171928/8e710151c80e655ee0513ca37c367f75a448c6bd/g' package/lean/rblibtorrent/Makefile
#sed -i 's/*.so/libtorrent-rasterbar.so/g' package/lean/rblibtorrent/Makefile

# add Adguardhome
#svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-adguardhome package/lean/luci-app-adguardhome
#svn co https://github.com/immortalwrt/packages/trunk/net/adguardhome package/lean/adguardhome
#svn co https://github.com/immortalwrt/packages/trunk/lang/node-yarn package/lean/node-yarn
#svn co https://github.com/immortalwrt/packages/trunk/devel/packr package/lean/packr

# add filebrowser
#svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-filebrowser package/lean/luci-app-filebrowser
#svn co https://github.com/immortalwrt/packages/trunk/utils/filebrowser package/lean/filebrowser

# add gowebdav
#svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-gowebdav package/lean/luci-app-gowebdav
#svn co https://github.com/immortalwrt/packages/trunk/net/gowebdav package/lean/gowebdav

# set ARM to aarch64_generic
#rm -rf target/linux/armvirt/64/target.mk
#wget https://github.com/Mattaclp/NewLEDE/raw/main/aarch64_generic/target.mk
#mv target.mk target/linux/armvirt/64/

# set x86 DEFAULT_PACKAGES
#rm -rf target/linux/x86/Makefile
#git clone https://github.com/Mattaclp/x86DEFAULT_PACKAGES.git
#mv x86DEFAULT_PACKAGES/Makefile target/linux/x86/

# change Xray-core
#sed -i 's/PKG_VERSION:=1.2.4/PKG_VERSION:=1.3.0/g' feeds/helloworld/xray/Makefile
#sed -i 's/25f6c9edec0ac1f98328943cd2bb760ac7b69107582f9d27e43559da39dc01ed/1125af4411655abf47913af14a22fd7e2b13371e3566cc03676207519b0fe407/g' feeds/helloworld/xray/Makefile

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# add diskman
#rm -rf package/lean/luci-app-diskman
#rm -rf package/lean/parted
#svn co https://github.com/lisaac/luci-app-diskman/trunk/applications/luci-app-diskman package/lean/luci-app-diskman
#git clone https://github.com/lisaac/luci-app-diskman.git
#mkdir -p package/lean/parted && cp -i luci-app-diskman/Parted.Makefile package/lean/parted/Makefile

# add diskman
#svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-app-diskman package/lean/luci-app-diskman
#svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/parted package/lean/parted

# add koolproxyR
#git clone https://github.com/Beginner-Go/luci-app-koolproxyR
git clone https://github.com/chiwaicw/luci-app-koolproxyR
mv luci-app-koolproxyR package/lean/

# add serverchan
#git clone https://github.com/tty228/luci-app-serverchan.git package/lean/luci-app-serverchan

# Add Mattraks helloworld
#sed -i '$a src-git helloworld https://github.com/Mattraks/helloworld' feeds.conf.default

git clone -b dev https://github.com/vernesong/OpenClash.git package/lean/OpenClash
mv package/lean/OpenClash/luci-app-openclash package/lean/
rm -rf package/lean/OpenClash
#git clone https://github.com/vernesong/OpenClash.git package/OpenClash
#svn co https://github.com/vernesong/OpenClash/branches/dev/luci-app-openclash package/lean/luci-app-openclash
#svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/lean/luci-app-openclash
#git clone -b master https://github.com/vernesong/OpenClash.git package/lean/luci-app-openclash  #openclash出国软件
#git clone https://github.com/frainzy1477/luci-app-clash.git package/lean/luci-app-clash  #clash出国软件

#添加smartdns
#git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns

# Add po2lmo
#git clone https://github.com/openwrt-dev/po2lmo.git
#pushd po2lmo
#make && sudo make install
#popd

#Add UnblockNeteaseMusic
#git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic

# Add Beginner-Go packages
#svn co https://github.com/Beginner-Go/my-packages/trunk/luci-app-control-webrestriction package/lean/luci-app-control-webrestriction
#svn co https://github.com/Beginner-Go/my-packages/trunk/luci-app-control-weburl package/lean/luci-app-control-weburl
#svn co https://github.com/Beginner-Go/my-packages/trunk/luci-app-eqos package/lean/luci-app-eqos

# Add openclash
# echo "src-git openclash https://github.com/vernesong/OpenClash;master" >> feeds.conf.default

# Add clash
# git clone -b master https://github.com/frainzy1477/luci-app-clash.git package/lean/luci-app-clash
