#! /bash/bin

case "$operacao" in
  "compactar")
    read -p "Nome do arquivo de saída (.tar.gz): " arquivo_saida
    read -p "Lista de arquivos a compactar (separados por espaço): " arquivos
    tar -czf "$arquivo_saida" $arquivos
    echo "Arquivos compactados com sucesso em $arquivo_saida."
    ;;
 "descompactar")
    read -p "Nome do arquivo a descompactar (.tar.gz): " arquivo
    read -p "Diretório de destino para a descompactação: " diretorio_destino
    if [ ! -e "$arquivo" ]; then
      echo "Arquivo não encontrado: $arquivo"
      exit 1
    fi
    tar -xzf "$arquivo" -C "$diretorio_destino"
    echo "Arquivo descompactado com sucesso em $diretorio_destino."
    ;;
esac


