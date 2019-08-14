# A Sample of Message Web Application by Golang

* Golangを使ったサンプルアプリケーション

## 使用技術
### Application
* Golang 1.12.7
* Web framework
    * Gin

### Database
* MySQL 5.7

### 開発環境
* docker 18.06.1
    * docker-compose  1.22.0

* goenv
    * https://github.com/syndbg/goenv
* make
* realize
    * https://github.com/oxequa/realize

## 開発環境構築
* goenvを使用しているので、goenvのインストール
    * https://github.com/syndbg/goenv/blob/master/INSTALL.md
* goenv で、 golang `1.12.7` のインストール

```
goenv install 1.12.7
```
* プロジェクトのClone
* プロジェクトのディレクトリで

```
make watch-server
```
* Webサーバが起動した後にcurlで確認する

```
curl "http://localhost:3000/status"
```
* {"message":"hello"} と返ればOK

* DBが起動したか確認する

```
docker-compose exec db mysql -uroot -ppassword --default-character-set=utf8mb4 message
```
