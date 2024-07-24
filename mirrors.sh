URL=http://download.example/pub/fedora/linux

# backup
sudo mkdir /etc/yum.repos.d/bak/
sudo sh -c "find -type f | xargs mv d"

# huawei mirrors
sudo sed -i "s/#baseurl/baseurl/g" /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora-updates.repo
sudo sed -i "s/metalink/#metalink/g" /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora-updates.repo
sudo sed -i "s@\$URL@https://mirrors.huaweicloud.com/fedora@g" /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora-updates.repo
sudo dnf copr enable zhullyb/v2rayA
sudo dnf copr enable alternateved/keyd
sudo yum makecache
