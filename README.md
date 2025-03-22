# Projet Vagrant avec Ansible, ELK, Prometheus et Grafana

Ce projet vise à déployer, gérer et automatiser la création de 3 machines virtuelles avec des systèmes d'exploitation différents (Ubuntu2310, Debian12, CentOS9s) en utilisant Vagrant, sur un hyperviseur KVM/QEMU via VirtManager tournant sur une machine physique (PC).

## Fonctionnalités

- Déploiement de machines virtuelles avec Vagrant.
- Configuration des machines virtuelles avec Ansible.
- Collecte et visualisation des logs avec ELK.
- Collecte et visualisation des métriques avec Prometheus et Grafana.
- Tests de fonctionnalité et de sécurité.
- Pipeline CI/CD pour automatiser le déploiement.

## Attention

Pour envoyer une notification par email via Gmail avec un script nécessitant une configuration SMTP locale, il faut configurer correctement votre système pour utiliser le serveur SMTP de Gmail (`smtp.gmail.com`). Cela implique d'installer un outil comme `ssmtp` ou `postfix` sur votre machine physique (Linux dans cet exemple) et de le configurer avec vos identifiants Gmail.

### Configurer SMTP Localement avec ssmtp
1. **Prérequis**
    - Une machine Linux/Ubuntu/Debian sur votre IP `192.168.x.x`
    - Un compte Gmail avec un mot de passe d'application (si 2FA est activé).
    - Droits root/sudo pour installer et configurer les outils.

2. **Installation de ssmtp**
    - Mettez à jour votre système et installez ssmtp
    ```bash
    sudo apt update
    sudo apt install ssmtp
    ```
    - Configurez ssmtp pour utiliser Gmail
    ```bash
    sudo nano /etc/ssmtp/ssmtp.conf
    ```
    - Ajoutez les lignes suivantes (remplacez `votre.email@gmail.com` et `votre_mot_de_passe_app` par vos identifiants)
    ```conf
    root=votre.email@gmail.com
    mailhub=smtp.gmail.com:587
    AuthUser=votre.email@gmail.com
    AuthPass=votre_mot_de_passe_app
    UseSTARTTLS=YES
    FromLineOverride=YES
    ```
    - ***Explication*** 
        - ***root:*** Adresse email par défaut pour l'envoi.
        - ***mailhub:*** Serveur SMTP Gmail avec port 587 (TLS).
        - ***AuthUser et AuthPass:*** Vos identifiants Gmail (utilisez un mot de passe d'application si 2FA est activé).
        - ***UseSTARTTLS:*** Active le chiffrement TLS.
        - ***FromLineOverride:*** Permet au script de définir l'expéditeur.

    - **Sécurisez le fichier**
        ```bash
        sudo chmod 640 /etc/ssmtp/ssmtp.conf
        sudo chown root:mail /etc/ssmtp/ssmtp.conf
        ``` 

    - **Ajoutez un alias pour l'utilisateur local**
        - Éditez `/etc/ssmtp/revaliases`
        ```bash
        sudo nano /etc/ssmtp/revaliases
        ```
        - Ajoutez
        ```bash
        root:votre.email@gmail.com:smtp.gmail.com:587
        ```
3. Générer un mot de passe d'application Gmail
    Si la vérification en deux étapes (2FA) est activée (recommandé pour la sécurité) :
    - Allez sur `myaccount.google.com`> `Sécurité` > `Mots de passe` des applications.
    - Sélectionnez "Autre (`nom personnalisé`)", entrez "`ssmtp`" et générez un mot de passe (ex. `abcd-efgh-ijkl-mnop`).
    - Utilisez ce mot de passe dans `AuthPass`.