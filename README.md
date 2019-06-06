#Projet PostGreSQL

## 1 - Script "Set-Up Postgres"

## 2 - Script "Import Github"

## 3 - Script "Create Event Database" 
Pour pouvoir utiliser ce script, vous devez avoir démarré le service postgres : 
```
sudo service postgresql start
```

## 4 - Script "Configure"


## 5 - Script "Create Users" 
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
#User super_admin
127.0.0.1:5432:super_admin:super_admin:12345

#User github_events
127.0.0.1:5432:github_events:github_events:12345
```

## 6 - 