## Instruções para Rodar os Testes via ./run_tests.sh

Este guia orienta sobre como executar os testes automatizados utilizando o script run_tests.sh em um projeto com Maestro.

Pré-requisitos
Instalar o Maestro:

Para rodar os testes, é necessário ter o Maestro instalado no seu sistema. Caso não tenha o Maestro instalado, siga as instruções de instalação no site oficial.
Ambiente Android:

Caso seus testes envolvam dispositivos Android, tenha o ADB configurado e funcionando para capturar as telas durante falhas de teste.

- Estrutura do Projeto:
Os testes são armazenados na pasta ./flows, com cada teste em formato YAML.
Os relatórios serão gerados na pasta ./reports.
Permissões:

Certifique-se de que o script run_tests.sh tem permissões para execução. Caso não tenha, execute:

chmod +x ./run_tests.sh