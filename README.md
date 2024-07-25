# Aditya-raj-g23ai2085-
This github repository is created for IIT-J Assignment Submission for VCC subject

# IIT Jodhpur Assignment - 1


**process**
I, Aditya raj(G23AI2085), have showed the process of how i have completed this assignment-1.

**Running the Container**

To run the container, follow these steps:

### Building the Docker Image
```
docker build -t mybuild -f dockerfile .
```
**Running the Container**
```
docker run -it --name -p 80:80 mypro mybuild
```
**After getting inside the container**
Run the following command:
```
service apache2 start
```
After which open the browser and type the following thing in the browser:
``` 
localhost/myproject/
```

**Installed Packages**
* Git
* Apache2
* Net-tools
* Curl

**For Troubleshooting**

You may also see the following commands for troubleshooting if everything went correctly or not. 

```
docker images
docker ps
docker ps -a
```
or after login into the container into the bash :

```
service apache2 status
```
**Apache Configuration**

Full permissions given to the home folder of Apache
Working directory changed to /var/www/html/
Website cloned from 
```https://github.com/swapnilsparsh/30DaysOfJavaScript.git ```

and populated in 
```/var/www/html/```
Directory renamed to myproject/ for easy access
Server name set to localhost in ```/etc/apache2/apache2.conf```

**Credits** 

Special thanks to Swapnil Srivastava for providing the 30 Days of JavaScript projects on GitHub, which were used in this project.

