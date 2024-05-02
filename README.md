**(Pour information si vous voyez si ce message c'est que j'ai toujours pas réussi a faire fonctionner ma machine virtuelle et que je peux donc faire aucun screenshot)**
# PARTIE 1
> J'ai tout d'avord installer Nodejs , NPM et docker sur ma machine en suivant des exemples sur internet
J'ai donc fait les commande qui mon donné ces résultats
nmp i

node index.js

> Puis j'ai créer mon Dockerfile par qui est ci-dessus  dans le git.
J'ai ensuite build mon image docker comme-ci:
`docker build -t image /home/ugo/Desktop/VSC/dummy-app`




> Puis j'ai run mon conteneur docker avec la commande suivante :
`docker run -p 3000:3000 image`




## PARTIE 2
> Pour la deuxième partie de l'exercice j'ai d'abord essayé de comprendre comment faire en faisant un:
`docker run --help`



> Puis en faisant des recherches j'ai trouvé que la solution pour lancer depuis ma machine hôte il fallait changer
des choses directement dans la commande de lancement de mon docker run 
En effet si on change le 'PORT' par 1337 on peut retrouver notre conteneur sur : http://localhost:1337
`docker run -p 1337:1337 -e PORT=1337 image`

>  Pour la dernière éatpe nous avons une dernière chose à rajouter dans notre commande, on doit rajouter un composant dans notre commande run:
`docker run -p 1337:1337 -e PORT=1337 --hostname mydocker image`
Ici nous avons fait en sorte de modifier le hostname de notre conteneur pour qu'il soit décris en tant que mydocker.


## PARTIE 3
> 1. wordpress : Ce service utilise l'image WordPress, expose le port 8000 pour accéder au CMS depuis l'hôte, configure les variables d'environnement pour se connecter à la base de données MySQL, et définit deux répliques avec replicas: 2 pour avoir deux instances du CMS. Les données de WordPress sont persistées dans un volume nommé wordpress_data.
> 2. db : Ce service utilise l'image MySQL 5.7, utilise un volume nommé db_data pour stocker les données de la base de données MySQL, et configure les variables d'environnement pour créer la base de données WordPress avec un utilisateur dédié.
> 3. memcached : Ce service utilise l'image Memcached et expose le port 11211 pour Memcached.

> 4. Pour lancer tous les services, vous pouvez exécuter la commande suivante à la racine de votre projet :
`docker-compose up`
> Cela va construire les images, démarrer les conteneurs et les connecter entre eux selon la configuration définie dans le fichier docker-compose.yml. Vous pourrez ensuite accéder à votre CMS WordPress depuis votre navigateur en allant sur http://localhost:8000.
> Et pour, Redis sera disponible à l'adresse redis://localhost:6379 pour être utilisé comme base de données de cache par WordPress.













