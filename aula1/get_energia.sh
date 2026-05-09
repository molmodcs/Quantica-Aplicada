#!/bin/bash

# Nome do arquivo de saída consolidado
OUTPUT_CSV="resultados_energias.csv"

# Cabeçalho do arquivo
echo "Base,Energia(Hartree)" > "$OUTPUT_CSV"

# Lista dos diretórios (mesma ordem do script anterior)
DIRETORIOS=("STO3G" "321G" "631G" "6311G")

echo "Extraindo energias dos arquivos .out..."
echo "--------------------------------------------"

for DIR in "${DIRETORIOS[@]}"; do
    # Verifica se o diretório existe
    if [ -d "$DIR" ]; then
        
        # Procura por qualquer arquivo .out dentro da pasta
        # O ORCA geralmente gera o .out com o mesmo nome do .inp
        OUT_FILE=$(ls "$DIR"/*.out 2>/dev/null | head -n 1)

        if [ -f "$OUT_FILE" ]; then
            # Extrai o valor numérico da linha "FINAL SINGLE POINT ENERGY"
            # O awk '{print $NF}' pega o último campo da linha (o número)
            ENERGIA=$(grep "FINAL SINGLE POINT ENERGY" "$OUT_FILE" | awk '{print $NF}')
            
            if [ -z "$ENERGIA" ]; then
                ENERGIA="Não encontrada"
            fi

            # Salva no CSV (separado por vírgula) e exibe no terminal
            echo "$DIR,$ENERGIA" >> "$OUTPUT_CSV"
            printf "%-15s %s\n" "$DIR" "$ENERGIA"
        else
            echo "!! Arquivo .out não encontrado em $DIR"
        fi
    fi
done

echo "--------------------------------------------"
echo "Processo concluído! Os dados foram salvos em: $OUTPUT_CSV"
