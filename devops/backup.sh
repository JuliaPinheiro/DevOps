#! /bin/bash

diretorio_backup=" /home/julia/devops"
nome_arquivo="backup_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$nome_arquivo" "diretorio_backup"
echo "Seu script de backup foi executado com sucesso! Em: $nome_arquivo"

