
# Instalando o Jenkins em uma EC2

Jenkins é um software focado em entrega contínua para fazer o pipeline de suas aplicações.


## Tecnologias utilizadas

 - [Amazon AWS](https://aws.amazon.com)
 - [Hashicorp Terraform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
 - [Hashicorp Vault](https://www.hashicorp.com/products/vault)

 - [Docker](https://www.docker.com/)


## Authors

- [@oguilhermesoares](https://www.github.com/guilhermesgit)


## Criação da aplicação

Antes de utilizar a aplicação é necessário ter os seguintes programas instalados: 

- Docker local
- AWS cli
- docker-compose
- terraform cli
- VSCode
```bash
   Subindo o hashicorp vault localmente utilizando docker-compose
   cd vault ; docker-compose up -d 

```

Para visualizar se o container subiu digite:
docker ps |grep -i vault

Acessando a aplicação:

http://localhost:8200
## Documentação


[AWS](https://aws.amazon.com)
[Docker](https://www.docker.com)
[Terraform](https://registry.terraform.io/providers/hashicorp/vault/latest/docs)
[Vault](https://www.vaultproject.io/)



## Cenário 



## Cenário

![AWS](jenkins.png)

