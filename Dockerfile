# Usa a imagem oficial e leve do Nginx
FROM nginx:alpine

# Remove os arquivos padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos do seu site para o diretório de publicação do Nginx
COPY . /usr/share/nginx/html

# Expõe a porta padrão do HTTP
EXPOSE 80

# Inicia o Nginx em primeiro plano
CMD ["nginx", "-g", "daemon off;"]
