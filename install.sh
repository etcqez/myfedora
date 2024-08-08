sudo dnf copr enable zhullyb/v2rayA
sudo dnf install v2ray v2raya -y
sudo systemctl enable v2raya.service --now
sudo dnf config-manager --add-repo https://repo.vivaldi.com/archive/vivaldi-fedora.repo
sudo dnf install vivaldi-stable -y
sudo dnf copr enable alternateved/keyd
sudo dnf install keyd -y
sudo cp -a /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo.backup
sudo cp -a /etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo.backup
sudo sed -i "s/#baseurl/baseurl/g" /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora-updates.repo
sudo sed -i "s/metalink/#metalink/g" /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora-updates.repo
sudo sed -i "s@http://download.fedoraproject.org/pub/fedora/linux@https://mirrors.huaweicloud.com/fedora@g" /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora-updates.repo

