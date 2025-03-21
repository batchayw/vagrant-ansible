# Architecture du Projet

## Machines Virtuelles (VMs)

- **Ubuntu2310**
  - Processeur : 2 vCPU
  - RAM : 2 Go
  - Disque : 20 Go (SSD)
  - Réseau : Bridge ou NAT
  - Vagrant Box : Ubuntu2310

- **Debian12**
  - Processeur : 2 vCPU
  - RAM : 2 Go
  - Disque : 20 Go (SSD)
  - Réseau : Bridge ou NAT
  - Vagrant Box : Debian12

- **CentOS10**
  - Processeur : 2 vCPU
  - RAM : 2 Go
  - Disque : 20 Go (SSD)
  - Réseau : Bridge ou NAT
  - Vagrant Box : CentOS10

## Hyperviseur

- **KVM/QEMU** : Pour l'hyperviseur, on utilise KVM/QEMU sur une machine physique Linux.
- **VirtManager** : Gestionnaire de machines virtuelles sur une machine physique Linux.

## Approvisionnement
- Ansible pour provisionnement (sécurité, logs, métriques, Docker, Apache).

## Surveillance
- Machine physique (192.168.x.x) avec Rsyslog, ELK, Prometheus, Grafana.