# Guide de Dépannage

## Problèmes courants

1. **Les machines virtuelles ne démarrent pas**
   - Vérifiez que KVM/QEMU est correctement installé et configuré.
   - Vérifiez que VirtManager est en cours d'exécution.

2. **Ansible ne parvient pas à se connecter aux machines virtuelles**
   - Vérifiez que les machines virtuelles sont accessibles via SSH.
   - Vérifiez que les clés SSH sont correctement configurées.

3. **Les logs ne sont pas collectés dans ELK**
   - Vérifiez que Rsyslog est correctement configuré sur les machines virtuelles.
   - Vérifiez que Logstash est en cours d'exécution et configuré correctement.

4. **Les métriques ne sont pas visibles dans Grafana**
   - Vérifiez que Prometheus est en cours d'exécution et configuré correctement.
   - Vérifiez que les exporters Prometheus sont en cours d'exécution sur les machines virtuelles.