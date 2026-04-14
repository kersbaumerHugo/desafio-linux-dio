# 📦 Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões

## 📖 Descrição

Este projeto tem como objetivo automatizar a criação e configuração de uma estrutura organizacional em sistemas Linux, incluindo:

- Criação de usuários
- Criação de grupos
- Estruturação de diretórios
- Definição de permissões de acesso

A abordagem segue o conceito de **Infraestrutura como Código (IaC)**, permitindo reprodutibilidade, padronização e redução de erros manuais.

---

## 🎯 Objetivo

Facilitar a configuração inicial de servidores ou ambientes corporativos, garantindo:

- Organização lógica de usuários e departamentos
- Segurança através de permissões adequadas
- Rapidez na implementação de ambientes

---

## 🛠️ Tecnologias Utilizadas

- Bash Script
- Sistemas Linux (compatível com distribuições baseadas em Debian/Ubuntu e RHEL/CentOS)

---

## 📂 Estrutura Criada

O script realiza automaticamente:

### 👥 Usuários e Grupos

Criação de grupos representando departamentos, por exemplo:

- `GRP_ADM`
- `GRP_VEN`
- `GRP_SEC`

E usuários associados a esses grupos.

---

### 📁 Diretórios

Estrutura de diretórios como:

```
/publico
/adm
/ven
/sec
```

---

### 🔐 Permissões

- Diretório `/publico`: acesso total para todos os usuários
- Diretórios departamentais:
  - Acesso total apenas para o grupo correspondente
  - Sem acesso para outros usuários

Exemplo:

| Diretório | Permissão |
|----------|--------|
| /adm     | GRP_ADM: full |
| /ven     | GRP_VEN: full |
| /sec     | GRP_SEC: full |
| /publico | todos: full |

---

## 🚀 Como Executar

### 1. Clone o repositório

```bash
git clone https://github.com/seu-usuario/seu-repo.git
cd seu-repo
```

### 2. Dê permissão de execução ao script

```bash
chmod +x script.sh
```

### 3. Execute como root

```bash
sudo ./script.sh
```

⚠️ **Importante:** O script deve ser executado com privilégios administrativos.

---

## ⚙️ Funcionalidades

- Verifica existência de usuários e grupos antes de criar
- Cria diretórios apenas se não existirem
- Aplica permissões automaticamente
- Estrutura padronizada e reutilizável

---

## 📌 Exemplo de Uso

Ideal para:

- Laboratórios de estudo (Linux, DevOps)
- Configuração inicial de servidores
- Simulações de ambientes corporativos
- Projetos acadêmicos

---

## ⚠️ Cuidados

- Execute em ambiente controlado ou máquina virtual antes de usar em produção
- Revise nomes de usuários/grupos conforme sua necessidade
- Pode sobrescrever permissões existentes

---

## 📈 Possíveis Melhorias

- Parametrização via arquivo `.env`
- Logs de execução
- Suporte a múltiplos ambientes (dev, staging, prod)
- Integração com ferramentas como Ansible ou Terraform

---

## 🤝 Contribuição

Contribuições são bem-vindas!

1. Fork o projeto  
2. Crie uma branch (`feature/minha-feature`)  
3. Commit suas alterações  
4. Abra um Pull Request  

---

## 📄 Licença

Este projeto está sob a licença MIT. Sinta-se livre para usar e modificar.
