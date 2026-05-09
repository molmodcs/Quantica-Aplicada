#!/bin/bash

# Lista dos diretórios que contêm os cálculos
DIRETORIOS=("STO3G" "321G" "631G" "6311G")

# Caminho absoluto ou relativo para o script run-orca.sh
# Se o script estiver no PATH, basta 'run-orca.sh'
# Se estiver na pasta raiz de onde você vai rodar este script, use "$(pwd)/run-orca.sh"
EXEC_ORCA="run-orca.sh"

echo "Iniciando processamento em lote para o ORCA..."
echo "--------------------------------------------"

for DIR in "${DIRETORIOS[@]}"; do
    if [ -d "$DIR" ]; then
        echo ">> Entrando no diretório: $DIR"
        
        # Entra no diretório
        cd "$DIR" || continue

        # Procura por arquivos .inp dentro da pasta
        for INP_FILE in *.inp; do
            # Verifica se o arquivo realmente existe (evita erro se a pasta estiver vazia)
            if [ -f "$INP_FILE" ]; then
                echo "   Executando $EXEC_ORCA para $INP_FILE..."
                
                # Executa o comando solicitado
                $EXEC_ORCA "$INP_FILE"
            fi
        done

        # Volta para o diretório raiz para a próxima iteração
        cd ..
    else
        echo "!! Aviso: Diretório $DIR não encontrado. Pulando..."
    fi
done

echo "--------------------------------------------"
echo "Processo concluído!"
