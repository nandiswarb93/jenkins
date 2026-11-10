#!/bin/bash

growpart /dev/nvme0n1 4

lvextend -L +10G /dev/mapper/RootVG-varVol

lvextend -L +10G /dev/mapper/RootVG-rootVol

lvextend -l +100%FREE /dev/mapper/RootVG-homeVol

xfs_growfs /

xfs_growfs /var

xfs_growfs /home

# sudo curl -o /etc/yum.repos.d/jenkins.repo \
#     https://pkg.jenkins.io/redhat-stable/jenkins.repo


sudo curl -fsSL https://pkg.jenkins.io/redhat-stable/jenkins.repo \
| tee /etc/yum.repos.d/jenkins.repo


sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum install fontconfig java-21-openjdk -y

sudo yum install jenkins -y

sudo systemctl daemon-reload

sudo systemctl start jenkins

sudo systemctl enable jenkins



# # 1. Download repo file
# sudo curl -fsSL https://pkg.jenkins.io/redhat-stable/jenkins.repo -o /etc/yum.repos.d/jenkins.repo

# # 2. Import Jenkins GPG key
# sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# # 3. Install dependencies
# sudo yum install fontconfig java-21-openjdk -y

# # 4. Install Jenkins
# sudo yum install jenkins -y

# # 5. Start and enable Jenkins
# sudo systemctl daemon-reload
# sudo systemctl start jenkins
# sudo systemctl enable jenkins

# # 6. Check status
# systemctl status jenkins
