
<p align="center">
  <img src="https://user-images.githubusercontent.com/50468352/141820811-412e9364-7f5c-4889-826a-fcba23b92e23.png" width="350" alt="Logo do Projeto" />
</p>

<h3 align="center">📌 Projeto Integrador em Computação II - 2025</h3>

<p align="center"><strong>Polo:</strong> DRP04</p>
<p align="center"><strong>Orientador do PI:</strong> Marcio de Oliveira Santiago Filho</p>

---

## 👥 Integrantes do grupo

| Nome                              | RA         |
|-----------------------------------|------------|
| Alexandre dos Reis                | 23215840   |
| André Perantoni Guigen            | 23207477   |
| Eliton Mauro Nachbar              | 23207355   |
| Feliphe Gomes Tebalde             | 23209995   |
| Flavio Jorge de Medeiros          | 23205233   |
| Gustavo Nunes Melo                | 23227579   |
| João Felipe B. Brandão            | 23201444   |
| Vinicius Santiago Ramos           | 23205584   |


---

## 💡 Projeto: *CondoServiços*

> **Sistema web para oferta de serviços e produtos em condomínios.**

---

<details>
<summary>🟡 <strong>Sobre o problema encontrado</strong></summary>
<br/>

🔍Condomínios têm dificuldade em gerenciar e disponibilizar informações sobre prestadores de serviço de forma centralizada, segura e acessível. Uma solução local pode atender inicialmente a necessidade deste gerenciamento, porém nem sempre há suporte barato e rápido para atender a gestão deste ambiente local. O desafio proposto é modernizar o sistema existente para funcionamento em nuvem.

</details>

---

<details>
<summary>🟡 <strong>Solução implementada</strong></summary>
<br/>

✅ Desenvolver um software com framework web, hospedado na nuvem da Microsoft (Azure). O entendimento do código exige que se tenha um conhecimento do funcionamento de Terraform. Como referencia, é sugerido que acesse o site https://developer.hashicorp.com/terraform/docs

</details>

---

<details>
<summary>🟡 <strong>Estrutura do IaaS</strong></summary>
<br/>

O ambiente de Azure, foi criado com os seguintes componentes para que a aplicação CondoServicos possam rodar:

- Azure App Service Plan
- Azure App Service, com Node.JS, na versão 22 LT
- Azure Database for MySQL flexible server
- Private DNS Zone
- Managed Identity

</details>

---

<details>
<summary>🛠️ <strong>Como baixar o projeto localmente</strong></summary>
<br/>

✅ **Clonar o projeto para a máquina local:**  
<code>git clone https://github.com/flavio-univesp/projeto_integrador2_IaaS_Azure</code>

✅ **Entendimento do Codigo**  

Os dados de sergurança como usuário de conexão de banco de dados assim como senha e definição do managed identity foram removidos do código e para serem utilizados necessita serem substituido por valores a serem utilizados em seus projeto.

Nome de recursos foram deixados da maneira que está sendo utilizada, porém podem ser substituídos, conforme a sua necessidade.

Este repositório está aberto para que qq pessoa possa baixar e customizar o mesmo.
</br>

</details>

---

## 🧰 Tecnologias e ferramentas utilizadas

<p>

  <img src ="https://img.shields.io/badge/microsoft%20azure-0089D6?style=for-the-badge&logo=microsoft-azure&logoColor=white"/>
  <img src ="https://img.shields.io/badge/TERRAFORM-8A2BE2?style=for-the-badge&logo=microsoft-azure&logoColor=white"/>
  <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub Badge"/>
</p>
