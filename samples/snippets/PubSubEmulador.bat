@echo off
start cmd /c gcloud beta emulators pubsub start --project=hub-ecommerce
timeout 10
cd "C:\Users\dougl\Documents\desenvolvimento\python-pubsub\samples\snippets"

call gcloud beta emulators pubsub env-init > set_vars.cmd
call set_vars.cmd

call python publisher.py hub-ecommerce create dev-topic-save-produto 
call python subscriber.py hub-ecommerce create dev-topic-save-produto dev-subscribe-save-produto 
call python publisher.py hub-ecommerce create dev-topic-save-categoria 
call python subscriber.py hub-ecommerce create dev-topic-save-categoria dev-subscribe-save-categoria 
call python publisher.py hub-ecommerce create dev-topic-save-fabricante 
call python subscriber.py hub-ecommerce create dev-topic-save-fabricante dev-subscribe-save-fabricante 
call python publisher.py hub-ecommerce create dev-topic-save-estoque 
call python subscriber.py hub-ecommerce create dev-topic-save-estoque dev-subscribe-save-estoque 
call python publisher.py hub-ecommerce create dev-topic-save-preco 
call python subscriber.py hub-ecommerce create dev-topic-save-preco dev-subscribe-save-preco 
call python publisher.py hub-ecommerce create dev-topic-save-imagem 
call python subscriber.py hub-ecommerce create dev-topic-save-imagem dev-subscribe-save-imagem

call python publisher.py hub-ecommerce create dev-topic-update-token 
call python subscriber.py hub-ecommerce create dev-topic-update-token dev-subscribe-update-token

call python publisher.py hub-ecommerce create dev-topic-delete-produto 
call python subscriber.py hub-ecommerce create dev-topic-delete-produto dev-subscribe-delete-produto 
call python publisher.py hub-ecommerce create dev-topic-delete-categoria 
call python subscriber.py hub-ecommerce create dev-topic-delete-categoria dev-subscribe-delete-categoria 
call python publisher.py hub-ecommerce create dev-topic-delete-fabricante 
call python subscriber.py hub-ecommerce create dev-topic-delete-fabricante dev-subscribe-delete-fabricante 
call python publisher.py hub-ecommerce create dev-topic-delete-estoque 
call python subscriber.py hub-ecommerce create dev-topic-delete-estoque dev-subscribe-delete-estoque 

call python publisher.py hub-ecommerce create dev-topic-delete-preco 
call python subscriber.py hub-ecommerce create dev-topic-delete-preco dev-subscribe-delete-preco 

call python publisher.py hub-ecommerce create dev-topic-delete-imagem 
call python subscriber.py hub-ecommerce create dev-topic-delete-imagem dev-subscribe-delete-imagem

call python publisher.py hub-ecommerce create dev-topic-update-pedido-integrador
call python subscriber.py hub-ecommerce create dev-topic-update-pedido-integrador dev-subscribe-update-pedido-integrador

call python publisher.py hub-ecommerce create dev-topic-send-estoque-produto-ecommerce
call python subscriber.py hub-ecommerce create dev-topic-send-estoque-produto-ecommerce dev-subscribe-send-estoque-produto-ecommerce 

call python publisher.py hub-ecommerce create dev-topic-update-pedido-nota-fiscal
call python subscriber.py hub-ecommerce create dev-topic-update-pedido-nota-fiscal dev-subscribe-update-pedido-nota-fiscal 

call python publisher.py hub-ecommerce create dev-topic-update-produto-integrador
call python subscriber.py hub-ecommerce create dev-topic-update-produto-integrador dev-subscribe-update-produto-integrador 
call python publisher.py hub-ecommerce create dev-topic-update-categoria-integrador 
call python subscriber.py hub-ecommerce create dev-topic-update-categoria-integrador dev-subscribe-update-categoria-integrador 
call python publisher.py hub-ecommerce create dev-topic-update-fabricante-integrador 
call python subscriber.py hub-ecommerce create dev-topic-update-fabricante-integrador dev-subscribe-update-fabricante-integrador

set ecommerces= "korp";"tray";"magento";"cws"

for %%a in (%ecommerces%) do (
    call python publisher.py hub-ecommerce create dev-topic-send-produto-ecommerce-%%a
    call python subscriber.py hub-ecommerce create dev-topic-send-produto-ecommerce-%%a dev-subscribe-send-produto-ecommerce-%%a
    
    call python publisher.py hub-ecommerce create dev-topic-buscar-pedidos-id-ecommerce-%%a
    call python subscriber.py hub-ecommerce create dev-topic-buscar-pedidos-id-ecommerce-%%a dev-subscribe-buscar-pedidos-id-ecommerce-%%a

    call python publisher.py hub-ecommerce create dev-topic-send-categoria-ecommerce-%%a 
    call python subscriber.py hub-ecommerce create dev-topic-send-categoria-ecommerce-%%a dev-subscribe-send-categoria-ecommerce-%%a

    call python publisher.py hub-ecommerce create dev-topic-send-nota-fiscal-ecommerce-%%a 
    call python subscriber.py hub-ecommerce create dev-topic-send-nota-fiscal-ecommerce-%%a dev-subscribe-send-nota-fiscal-ecommerce-%%a
    
    call python publisher.py hub-ecommerce create dev-topic-atualizar-token-%%a 
    call python subscriber.py hub-ecommerce create dev-topic-atualizar-token-%%a dev-subscribe-atualizar-token-%%a

    call python publisher.py hub-ecommerce create dev-topic-atualizar-token-areacentral-%%a 
    call python subscriber.py hub-ecommerce create dev-topic-atualizar-token-areacentral-%%a dev-subscribe-atualizar-token-areacentral-%%a

    call python publisher.py hub-ecommerce create dev-topic-buscar-pedidos-ecommerce-erro-%%a 
    call python subscriber.py hub-ecommerce create dev-topic-buscar-pedidos-ecommerce-erro-%%a dev-topic-buscar-pedidos-ecommerce-erro-%%a

    call python publisher.py hub-ecommerce create dev-topic-send-fabricante-ecommerce-%%a 
    call python subscriber.py hub-ecommerce create dev-topic-send-fabricante-ecommerce-%%a dev-subscribe-send-fabricante-ecommerce-%%a
     
    call python publisher.py hub-ecommerce create dev-topic-send-estoque-produto-ecommerce-%%a 
    call python subscriber.py hub-ecommerce create dev-topic-send-estoque-produto-ecommerce-%%a dev-subscribe-send-estoque-produto-ecommerce-%%a
     
    call python publisher.py hub-ecommerce create dev-topic-send-preco-produto-ecommerce-%%a 
    call python subscriber.py hub-ecommerce create dev-topic-send-preco-produto-ecommerce-%%a dev-subscribe-send-preco-produto-ecommerce-%%a

    call python publisher.py hub-ecommerce create dev-topic-buscar-pedidos-ecommerce-%%a
    call python subscriber.py hub-ecommerce create dev-topic-buscar-pedidos-ecommerce-%%a dev-subscribe-buscar-pedidos-ecommerce-%%a

    call python publisher.py hub-ecommerce create dev-topic-send-estoque-ecommerce-%%a 
    call python subscriber.py hub-ecommerce create dev-topic-send-estoque-ecommerce-%%a dev-subscribe-send-estoque-ecommerce-%%a 
    call python publisher.py hub-ecommerce create dev-topic-send-preco-ecommerce-%%a 
    call python subscriber.py hub-ecommerce create dev-topic-send-preco-ecommerce-%%a dev-subscribe-send-preco-ecommerce-%%a 
    call python publisher.py hub-ecommerce create dev-topic-send-imagem-produto-ecommerce-%%a  
    call python subscriber.py hub-ecommerce create dev-topic-send-imagem-produto-ecommerce-%%a dev-subscribe-send-imagem-produto-ecommerce-%%a
    call python publisher.py hub-ecommerce create dev-topic-send-nota-fiscal-ecommerce-%%a  
    call python subscriber.py hub-ecommerce create dev-topic-send-nota-fiscal-ecommerce-%%a dev-subscribe-send-nota-fiscal-ecommerce-%%a
    call python publisher.py hub-ecommerce create dev-topic-delete-categoria-ecommerce-%%a 
    call python subscriber.py hub-ecommerce create dev-topic-delete-categoria-ecommerce-%%a dev-subscribe-delete-categoria-ecommerce-%%a 
    call python publisher.py hub-ecommerce create dev-topic-delete-produto-ecommerce-%%a
    call python subscriber.py hub-ecommerce create dev-topic-delete-produto-ecommerce-%%a dev-subscribe-delete-produto-ecommerce-%%a
    call python publisher.py hub-ecommerce create dev-topic-delete-fabricante-ecommerce-%%a
    call python subscriber.py hub-ecommerce create dev-topic-delete-fabricante-ecommerce-%%a dev-subscribe-delete-fabricante-ecommerce-%%a
    call python publisher.py hub-ecommerce create dev-topic-delete-imagem-ecommerce-%%a
    call python subscriber.py hub-ecommerce create dev-topic-delete-imagem-ecommerce-%%a dev-subscribe-delete-imagem-ecommerce-%%a
    call python publisher.py hub-ecommerce create dev-topic-delete-pedido-ecommerce-%%a
    call python subscriber.py hub-ecommerce create dev-topic-delete-pedido-ecommerce-%%a dev-subscribe-delete-pedido-ecommerce-%%a
    call python publisher.py hub-ecommerce create dev-topic-buscar-pedido-ecommerce-%%a
    call python subscriber.py hub-ecommerce create dev-topic-buscar-pedido-ecommerce-%%a dev-subscribe-buscar-pedido-ecommerce-%%a
)