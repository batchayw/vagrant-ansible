# Guide d'Installation et d'Utilisation

## Prérequis

- Une machine physique avec Linux installé.
- Vagrant installé.
- Ansible installé.
- KVM/QEMU et VirtManager installés.

## Étapes d'Installation

1. Cloner le dépôt du projet.
2. Exécuter le script `init_vms.sh` pour initialiser les machines virtuelles.
3. Exécuter le playbook Ansible `site.yml` pour configurer les machines virtuelles.
4. Configurer ELK et Grafana pour la visualisation des logs et des métriques.
5. Exécuter les scripts de test pour vérifier le bon fonctionnement des services.