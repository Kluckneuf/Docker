# Utiliser l'image officielle de Node.js en tant qu'image de base
FROM node:14

# Définir le répertoire de travail dans l'image Docker
WORKDIR /app

# Copier le fichier package.json et package-lock.json (s'ils existent) dans le répertoire de travail
COPY package*.json ./

# Installer les dépendances de l'application
RUN npm install

# Copier tous les fichiers de l'application dans le répertoire de travail de l'image Docker
COPY . .

# Exposer le port sur lequel l'application fonctionne
EXPOSE 3000

# Définir la commande de démarrage de l'application
CMD ["npm", "start"]
