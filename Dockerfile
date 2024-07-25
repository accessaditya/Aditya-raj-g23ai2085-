FROM ubuntu

# Label given to container.
LABEL "author"="Aditya raj"
LABEL "email"="addiittyy5@gmail.com"

# Opening various ports for better processing
EXPOSE 80 
EXPOSE 3306 
EXPOSE 443 
EXPOSE 3000 
EXPOSE 8000

# insalling various packages such as git, apache, network commands and curl
RUN apt update -y && apt install git apache2 net-tools curl -y

# Giving full permissions to the home folder of Apache
RUN chmod 777 /var/www/html/

# Changing the working directory to /var/www/html/
WORKDIR /var/www/html/

# Downloading the website from git and populating it in /var/www/html/
RUN git clone https://github.com/swapnilsparsh/30DaysOfJavaScript.git

# Changing the name of the directory to myproject/ for easy access
RUN mv 30DaysOfJavaScript/ myproject/

#Set the name of the server
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
