# mazy-food-database-infra

Este repositório contém a estrutura necessária para provisionar recursos na AWS utilizando Terraform.

## Requisitos

Certifique-se de ter as seguintes ferramentas instaladas:

- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [AWS CLI](https://aws.amazon.com/cli/)

## Configuração Inicial

1. **Clone o Repositório**

```bash
git clone <URL_DO_REPOSITORIO>
cd <NOME_DO_REPOSITORIO>/terraform
```

2. **Configure suas credenciais AWS**

Certifique-se de que suas credenciais da AWS estão configuradas corretamente:

```bash
aws configure
```

3. **Inicialize o Terraform**

Antes de executar qualquer comando, é necessário mudar o diretório para `terraform/`e inicializar o Terraform para baixar os provedores e preparar o ambiente de execução:

```bash
cd terraform/
terraform init
```

4. **Validar a Configuração**

Verifique se sua configuração está correta:

```bash
terraform validate
```

5. **Visualizar o Plano de Implementação**

Antes de aplicar as mudanças, visualize o que será feito:

```bash
terraform plan
```

6. **Aplicar a Configuração**

Para provisionar os recursos na AWS, execute:

```bash
terraform apply
```

Confirme a operação digitando `yes` quando solicitado.

7. **Destruir os Recursos**

Caso queira remover todos os recursos provisionados:

```bash
terraform destroy
```

Confirme a operação digitando `yes` quando solicitado.


## Boas Práticas
- Utilize `terraform fmt` para manter um código padronizado e organizado.
- Utilize `terraform workspace` para gerenciar diferentes ambientes (dev, staging, production).
- Utilize `terraform taint` caso precise marcar um recurso para ser recriado.

## Contato
Em caso de dúvidas ou sugestões, entre em contato com o mantenedor deste projeto.

---

✅ **Lembre-se de revisar cuidadosamente seu plano antes de aplicar qualquer alteração em ambientes de produção.**
