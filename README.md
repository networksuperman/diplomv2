# diplomv2
## Доработки по диплому

Так как в первой версии я уже создавал инфраструктуру и устанавливал кластер через terraform и kubespray и в качестве registry использовал DockerHub, решил попробовать через Managed Kubernetes и Container Registry.  

Вся инфраструктура, в том числе бакет, создавалась через terraform

[terraform](https://github.com/networksuperman/diplomv2/tree/main/terraform)

В результате работы terraform мы получаем следующие ресурсы (LoadBalancer будет создан после деплоя мониторинга и приложения через CICD, но я сразу приложу полный скрин)  

![](https://github.com/networksuperman/diplomv2/blob/main/img/4.png)  

Проверим кластер

![](https://github.com/networksuperman/diplomv2/blob/main/img/2.png)  

Наш образ, регистри создал через terraform  

[terraform registry](https://github.com/networksuperman/diplomv2/blob/main/terraform/registry.tf)  

![](https://github.com/networksuperman/diplomv2/blob/main/img/11.png)  

Мониторинг 

