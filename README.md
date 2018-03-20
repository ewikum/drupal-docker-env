#siteの設定

###サイトフォールダーの`main`は標準のサイトのおきフォールダーです。


1.`SITES/WWW/{サイトフォールダー}`の中にdrupal本体ファイルを設置


２.`SITES/WWW/{サイトフォールダー}/sites/default/files`の中にdrupalのfilesのファイルを設置

３.`SITES/DBS/`の中に`{Databasename}.sql`でdbファイルを設置

４。`SITES/WWW/{サイトフォールダー}/sites/default/settings.php` に下記のDB設定入れる。

```
hostname: mysqldb
db: {Databasename}
user : root
password : root

```

5.新しいサイトフォールダーを追加したら必要道理`.WEB_SERVER/.vhost.conf`を編集

６.terminalでこのフォルダーへcdし、下記のコマンドでコンテーナーをアップする。

```
docker-compose up --build -d
```

７.DBが最初化したいとき下記のコマーンド実行

```
 docker exec -it mysql-cont /initdb.sh {databasename}
```
こちらで`SITES/DBS/{databasename}.sql`を`{databasename}`に対して実行される。

８。DBのバックアップが必要な場合下記のコマーンド実行
```
 docker exec -it mysql-cont /dumpdb.sh {databasename}
```

こちらで`SITES/DB_DUMPS/`の中に`{databasename}`のバックアップが取れます。

### site access

[http://localhost](http://localhost)

こちらは`SITES/WWW/main`のサイトになります。

５の設定によって他のサイトもアクセスできます。


### DB access via phpmyadmin

[http://localhost:8080](http://localhost:8080)


### Docker conatainer をストップ

```
docker-compose down
```