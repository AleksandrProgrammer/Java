del ..\client\*.class
del *.class

set PATH=D:\jdk\bin

javac *.java 
rmic ServerImpl
copy ServerIntf.class ..\client
copy ServerImpl_Stub.class ..\client
javac ..\client\*.java
pause
 
