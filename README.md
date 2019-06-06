# Projet PostGreSQL

## 1 - Script "Set-Up Postgres"

## 2 - Script "Import Github"

## 3 - Script "Create Event Database" 
Pour pouvoir utiliser ce script, vous devez avoir démarré le service postgres : 
```
sudo service postgresql start
```

## 4 - Script "Configure"

**Modifier la configuration : changer le port pour `1234` et configurer la mémoire pour une traitement efficace des données**

## 5 - Script "Create Users" 

**Créer deux utilisateurs :** 
* un utilisateur `super_admin` avec un role de superuser et pour mot de passe `12345`. La base de donnée `super_admin` lui sera attribuée.** 
* un utilisateur `github_eventss` avec pour mot de passe `12345`. La base de donnée `github_events` lui sera attribuée.**

Pour pouvoir utiliser ce script, vous devez avoir démarré le service postgres : 
```
sudo service postgresql start
```

Une fois le script éxecuté, il faut modifier le fichier `pg_hba.conf`
Le chemin qui devrait mener au fichier : `/etc/postgresql/11/main/pg_hba.conf`
Vous devez ajouter les lignes ⬇

```
local all super_admin md5 
local all github_events md5 
```

Vous pouvez également enregistrer le mot de passe des utilisateurs en créant le fichier `~/.pgpass`
Et y ajouter les lignes suivantes : 

```
#Pattern 
# hostname:port:database:username:password

#User super_admin
*:*:*:super_admin:12345

#User github_events
*:*:*:github_events:12345
```

Executer la commande 
```
chmod 600 ~/.pgpass
```

Vous pouvez désormais vous connecter simplement avec la commande `psql --username=[nom du user]`

## 6 - Script "Populate Raw Events"