shopt -s extglob
rm -rfv !(README.md|diy1.sh)
shopt -u extglob
git clone https://github.com/fw876/helloworld
git clone https://github.com/xiaorouji/openwrt-passwall
svn export https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall2
git clone https://github.com/jerrykuku/luci-app-vssr
rm -rf ./*/.git
git rm -r --cache *
