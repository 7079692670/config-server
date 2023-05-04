echo "PROCESSING BUILD"
mvn clean
echo "CLEAN COMPLETED"
mvn install -DskipTests
echo "BUILD COMPLETED"
#ON SERVER
#Build Image
sudo docker build -t sujityadav/config-server:configserver .
sudo docker push sujityadav/config-server:configserver


#Backup
#docker tag 7079692670/microservices-configserver 9873260761/microservices-configserver_BKP_20230123
#pull
#docker pull 7079692670/microservices-configserver
#run with docker network
#docker run -d 7079692670/microservices-configserver
#run with local network (no use of port defined)
#docker run --network=host -d 7079692670/microservices-configserver

sudo docker-compose up -d
echo "APPLICATION STARTED!"

