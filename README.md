# 📝Documentação do Script IAC1.sh


## 📋 Índice 

- [🔍 Visão Geral](#-visão-geral)
- [🏗️ Estrutura e Funcionalidades](#️-estrutura-e-funcionalidades)
  - [📁 1. Criação de Diretórios](#-1-criação-de-diretórios)
  - [👥 2. Criação de Grupos de Usuários](#-2-criação-de-grupos-de-usuários)
  - [👤 3. Criação de Usuários](#-3-criação-de-usuários)
  - [🔒 4. Configuração de Permissões](#-4-configuração-de-permissões)
- [▶️ Execução do Script](#️-execução-do-script)
- [🛡️ Considerações de Segurança](#️-considerações-de-segurança)
- [⚡ Possíveis Melhorias](#-possíveis-melhorias)
- [🏁 Conclusão](#-conclusão)
- [Licença](#licença)
- [Acesse o Projeto](#acesse-o-projeto)
- [Autor](#autor)


## 🔍Descrição
Este script de automação (Infrastructure as Code - IAC) tem como objetivo configurar uma infraestrutura básica de diretórios, grupos e usuários em um sistema Linux. Ele cria uma estrutura organizacional para uma empresa com diferentes departamentos e níveis hierárquicos, estabelecendo permissões de acesso apropriadas para cada grupo.

## 🏗️ Estrutura e Funcionalidades

### 📁 1. Criação de Diretórios
O script inicia criando os seguintes diretórios na raiz do sistema:
- `/publico` - Diretório com acesso para todos os usuários
- `/administrativo` - Diretório para o departamento administrativo
- `/vendas` - Diretório para o departamento de vendas
- `/secretariado` - Diretório para o departamento de secretariado
- `/diretoria` - Diretório para a diretoria
- `/gerencia` - Diretório para a gerência

### 👥 2. Criação de Grupos de Usuários
Em seguida, o script cria cinco grupos para organizar os usuários:
- `GRP_ADM` - Grupo para usuários do departamento administrativo
- `GRP_VEN` - Grupo para usuários do departamento de vendas
- `GRP_SEC` - Grupo para usuários do departamento de secretariado
- `GRP_DIRE` - Grupo para usuários da diretoria
- `GRP_GERE` - Grupo para usuários da gerência

### 👤 3. Criação de Usuários
O script cria vários usuários e os atribui aos grupos correspondentes:

**Departamento Administrativo (GRP_ADM):**
- carlos, maria, joao, jose, alessandra

**Departamento de Vendas (GRP_VEN):**
- debora, sebastiana, roberto, joana, helena

**Departamento de Secretariado (GRP_SEC):**
- josefina, amanda, rogerio, renata, andressa

**Diretoria (GRP_DIRE):**
- roger

**Gerência (GRP_GERE):**
- antonio, olivia

Para cada usuário, o script:
- Cria a conta com informações completas (nome completo)
- Define o shell padrão como `/bin/bash`
- Cria um diretório home (`-m`)
- Adiciona o usuário ao grupo correspondente (`-G`)
- Define uma senha inicial temporária ("senha123")
- Configura a senha para expirar no primeiro login (`passwd -e`), forçando a troca

### 🔒 4. Configuração de Permissões
O script configura as permissões para os diretórios:

- Atribui a propriedade dos diretórios ao usuário root e ao grupo correspondente
  ```
  chown root:GRP_ADM /administrativo
  chown root:GRP_VEN /vendas
  ...
  ```

- Define as permissões de acesso para cada diretório:
  - Diretórios departamentais: permissão 770 (rwxrwx---)
    - O proprietário (root) tem permissão total (leitura, escrita, execução)
    - Os membros do grupo têm permissão total
    - Outros usuários não têm acesso
  - Diretório público: permissão 777 (rwxrwxrwx)
    - Todos os usuários têm permissão total

## ▶️ Execução do Script
Para executar o script:
1. Certifique-se de que o arquivo tenha permissões de execução:
   ```
   chmod +x iac1.sh
   ```
2. Execute o script como usuário root (necessário para criar diretórios e usuários):
   ```
   sudo ./iac1.sh
   ```

## 🛡️ Considerações de Segurança
- Este script configura senhas iniciais iguais para todos os usuários ("senha123"), mas força a troca no primeiro login
- As permissões são configuradas para isolar os departamentos, permitindo compartilhamento apenas dentro do mesmo grupo
- O diretório `/publico` está acessível a todos os usuários para compartilhamento geral de arquivos

## ⚡ Possíveis Melhorias
- Adicionar verificações para evitar a criação de usuários ou grupos que já existem
- Implementar geração de senhas aleatórias para maior segurança
- Adicionar logs de execução para facilitar a depuração
- Incluir opções para backup ou reversão em caso de falha
- Considerar o uso de variáveis para facilitar a manutenção do código

## 🏁 Conclusão
Este script fornece uma base sólida para a configuração automatizada de uma infraestrutura organizacional em um sistema Linux, seguindo boas práticas de segurança e gerenciamento de usuários. Ele demonstra o conceito de "Infraestrutura como Código" (IAC), permitindo que a configuração do sistema seja reproduzível, versionável e auditável.

## 📜 Licença

Este projeto está licenciado sob a licença MIT 

## 🔗 Acesso ao Projeto

Você pode acessar e baixar este projeto através do seguinte link:
GitHub - [Script - iac1.sh](https://github.com/FredericoSander/linux_projeto1-iac/blob/main/scripts/iac1.sh)

Ou clone o repositório usando o comando:
git clone https://github.com/FredericoSander/linux_projeto1-iac

- Requisitos para execução: SO Linux

## 👤 Autor
| [<img loading="lazy" src="https://avatars.githubusercontent.com/u/136928502?s=96&v=4" width=115><br><sub>Frederico Sander</sub>](https://github.com/FredericoSander)
| :---: | 

Este README é parte da documentação do projeto de linu projeto 1 iac, desenvolvido como parte do curso do Bootcamp Santander Linux para Iniciantes.