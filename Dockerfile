# Nginxの公式イメージをベースイメージとして使用
FROM nginx:latest

# /usr/share/nginx/htmlディレクトリにカスタムコンテンツをコピー
COPY ./html /usr/share/nginx/html

# コンテナ起動時にNginxを起動し、フォアグラウンドで実行
CMD ["nginx", "-g", "daemon off;"]
