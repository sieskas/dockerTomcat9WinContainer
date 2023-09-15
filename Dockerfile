# Utilisez une image de base Windows Server Core
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Copiez le dossier Java entier (JRE + Tomcat) dans l'image Docker
COPY java\\ C:\\java\\

# Exposez le port 8080 pour accéder à Tomcat
EXPOSE 8080

# Configurez l'environnement
ENV CATALINA_HOME C:\\java\\tomcat

# Définissez la commande de démarrage pour lancer Tomcat
CMD ["C:\\java\\tomcat\\bin\\catalina.bat", "run"]
