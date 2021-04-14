set PATH=D:\jdk\bin

start rmiregistry
java -Djava.security.policy=policy.txt Server
pause 