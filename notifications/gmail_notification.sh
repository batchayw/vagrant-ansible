#!/bin/bash

# Variables
TO="destinataire@example.com"  # Adresse email du destinataire
FROM="votre.email@gmail.com"   # Votre adresse Gmail
SUBJECT="Alerte Système - $(date '+%Y-%m-%d %H:%M:%S')"
BODY="Une alerte a été déclenchée sur le système. Vérifiez les logs pour plus de détails."

# Commande pour envoyer l'email avec ssmtp
echo -e "To: $TO\nFrom: $FROM\nSubject: $SUBJECT\n\n$BODY" | /usr/sbin/ssmtp "$TO"

# Vérification du statut
if [ $? -eq 0 ]; then
    echo "Email envoyé avec succès à $TO"
else
    echo "Échec de l'envoi de l'email" >&2
    exit 1
fi