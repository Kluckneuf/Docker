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




> Pour la dernière éatpe nous avons une dernière chose à rajouter dans notre commande, on doit rajouter un composant dans notre commande run:
`docker run -p 1337:1337 -e PORT=1337 --hostname mydocker image`
> Ici nous avons fait en sorte de modifier le hostname de notre conteneur pour qu'il soit décris en tant que mydocker.


