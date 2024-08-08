# diplomv2  
# Доработки по диплому  
---
## Инфраструктура 

Так как в первой версии я уже создавал инфраструктуру и устанавливал кластер через terraform и kubespray и в качестве registry использовал DockerHub, решил попробовать через Managed Kubernetes и Container Registry.  

Вся инфраструктура, в том числе бакет, создавалась через terraform  

[terraform bucket sa](https://github.com/networksuperman/diplomv2/tree/main/bucket)

![](https://github.com/networksuperman/diplomv2/blob/main/img/17.png)  

![](https://github.com/networksuperman/diplomv2/blob/main/img/18.png)  

---
## K8s кластер  

[terraform k8s](https://github.com/networksuperman/diplomv2/tree/main/terraform)

В результате работы terraform мы получаем следующие ресурсы (LoadBalancer будет создан после деплоя мониторинга и приложения через CICD, но я сразу приложу полный скрин)  

![](https://github.com/networksuperman/diplomv2/blob/main/img/4.png)  

![](https://github.com/networksuperman/diplomv2/blob/main/img/19.png)  

Проверим кластер  

![](https://github.com/networksuperman/diplomv2/blob/main/img/2.png)  
---
## Приложение
Наш образ, регистри создал через terraform  

[Приложение](https://github.com/networksuperman/app.git)  

[terraform registry](https://github.com/networksuperman/diplomv2/blob/main/terraform/registry.tf)  

![](https://github.com/networksuperman/diplomv2/blob/main/img/11.png)  
---
# Мониторинг 

kube-prometheus задеплоим через Github Actions, отслеживание изменений в terraform также сделаем через CI/CD  

[deploy monitoring job](https://github.com/networksuperman/app/actions/runs/10305603510/job/28526821910)  

[deploy_kube_prometheus.yml](https://github.com/networksuperman/app/blob/main/.github/workflows/deploy_kube_prometheus.yml)  

![](https://github.com/networksuperman/diplomv2/blob/main/img/14.png)  

[deploy terraform job](https://github.com/networksuperman/app/actions/runs/10305568254/job/28526704608)  

[k8s-ci-cd.yaml](https://github.com/networksuperman/app/blob/main/.github/workflows/k8s-ci-cd.yaml)  

![](https://github.com/networksuperman/diplomv2/blob/main/img/15.png)  
---
# CI/CD  

[deploy app job](https://github.com/networksuperman/app/actions/runs/10305766738/job/28527362904)  

![](https://github.com/networksuperman/diplomv2/blob/main/img/13.png)    

[deploy murge request dev](https://github.com/networksuperman/app/actions/runs/10305796263]  

![](https://github.com/networksuperman/diplomv2/blob/main/img/16.png)    

Несколько версий нашего приложений  

![](https://github.com/networksuperman/diplomv2/blob/main/img/10.png)    

![](https://github.com/networksuperman/diplomv2/blob/main/img/12.png)    

[app](http://51.250.36.50/)  

[grafana](http://51.250.36.50:3000)  

С вашего позволения так как грант на исходе, кластер выключу, сделал скриншоты  

