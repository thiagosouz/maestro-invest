#!/bin/bash

FLOW_DIR="./flows"
REPORTS_DIR="./reports"

mkdir -p $REPORTS_DIR

for test_file in $FLOW_DIR/*.yaml; do
  test_name=$(basename "$test_file" .yaml)
  log_file="$REPORTS_DIR/log_${test_name}.log"
  screenshot_file="$REPORTS_DIR/failure_${test_name}.png"

  echo "Iniciando teste: $test_name"

  # Executa o teste com Maestro e salva o log
  maestro test $test_file > $log_file 2>&1

  if [ $? -ne 0 ]; then
    echo "Teste $test_name falhou! Capturando a tela."
    adb exec-out screencap -p > $screenshot_file
  else
    echo "Teste $test_name passou com sucesso!"
  fi
done

echo "Execução de todos os testes concluída."
