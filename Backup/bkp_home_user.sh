#!/bin/bash

clear

DIRDEST=$HOME/Backup

if [ ! -d $DIRDEST ]
then
  echo "Criando diretório $DIRDEST..."
  mkdir -p $DIRDEST
fi

DAYS7=$(find $DIRDEST -ctime -7 -name backup_home\*tgz)

if [ "$DAYS7" ]
then
  echo "Já foi gerado um backup do diretório $HOME nos últimos 7 dias."
  echo -n "Deseja continuar? (N/s):"
  read -n1 CONT
  echo ""
  if [ "$CONT" = N -o "$CONT" = n -o "$CONT"="" ]
  then
    echo "Backup abortado!"
    exit 1
  elif [ $CONT = S -o $CONT = s ]
  then
    echo "Será criado mais um backup para a mesma semana."
  else
    echo "Opção inválida."
    exit 2
  fi
fi

echo "Criando Backup..."
ARQ="backup_home_$(date +%Y%m%d%H%M).tgz"

tar zcvpf $DIRDEST/$ARQ --absolute-names --exclude="$HOME/Google Drive" --exclude="$HOME/Videos" --exclude="$DIRDEST" "$HOME"/* > /dev/null
