#!/bin/bash

# 1. Création d'un dossier avec la date du jour
NOM_DOSSIER="backup_$(date +%d-%m-%Y)"
echo "🚀 Création du dossier : $NOM_DOSSIER"
mkdir -p $NOM_DOSSIER

# 2. Création d'un fichier de log
echo "📝 Initialisation du fichier de log Rapport.txt..."
echo "Script lancé par : $USER" > $NOM_DOSSIER/rapport.txt

# 3. Test réseau rapide
echo "🌐 Vérification de la connexion internet via Google.com..."
ping -c 2 google.com >> $NOM_DOSSIER/rapport.txt

# 4. Affichage du résultat
echo "✅ Terminé. Voici le contenu du dossier :"
ls -l $NOM_DOSSIER

# 5. Vérification des ports ouverts
echo "🔍 Analyse des ports en écoute..."
# On utilise sudo car le flag -p (process) a besoin des droits admin pour tout voir
sudo ss -tunlp