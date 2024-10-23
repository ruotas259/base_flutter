# ベース環境
ベース環境について、特記事項を記載する。

## モックサーバーについて
APIがない状態において、ダミーデータを取得したい場合に利用します。
<br>
返却される値は、API仕様書(OpenAPI)で定義された内容となります。
<br>
openapi.ymlファイルの内容を変更することで、取得する値の変更が可能です。

### OpenAPIからAPIクライアントを自動生成する
1. npm環境があること(なければインストールし導入すること)
2. openapi-generatorをインストール
<br>
`npm install @openapitools/openapi-generator-cli -g`
3. infrastructureのclientフォルダ配下に、openapi.ymlファイルを格納する
4. 以下コマンドを実行する
<br>
`openapi-generator-cli generate -i ./lib/infrastructure/client/openapi.yml -g dart -o ./lib/infrastructure/client`
5. clientフォルダ配下にAPIクライアントが自動生成される

### モックサーバー導入手順
1. npm環境があること(なければインストールし導入すること)
2. prismをインストール
<br>
`npm install -g @stoplight/prism-cli`
3. prismのバージョンが表示されればインストール完了
<br>
Mac: `prism --version`
<br>
Windows: `npx prism --version`
4. 自分のIPアドレスを確認する
<br>
Mac: `ifconfig`
<br>
Windows: `ipconfig`
<br>
例)192.168.1.3
5. モックサーバーを起動する
<br>
`prism mock -h 192.168.1.3 -p 8080 ./lib/infrastructure/client/openapi.yml`