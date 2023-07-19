mkdir -p /home/jenkins_home
chmod 777 /home/jenkins_home
docker stop jenkins
docker rm jenkins
sudo docker run -d -uroot -p 8080:8080 -p 50000:50000 --name jenkins \
-v /home/jenkins_home:/var/jenkins_home \
-v /home:/home \
-v /root:/root \
-v /etc/localtime:/etc/localtime \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /var/run/docker:/var/run/docker \
saxzhou/jenkins:latest
