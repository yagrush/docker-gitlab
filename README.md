# Docker で GitLab 構築セット

# 必要環境

* Linux または Mac
    * メモリ：8GB以上（←これが意外とハマりどころ…）
    * Docker
    * docker-compose

ちなみにWindowsではうまく動きませんでした。<br />
時間があるときにまた調べてみようかな。
<br />
# 使い方

## 0. ダウンロードする
```shell script
wget https://github.com/yagrush/docker-gitlab/archive/master.zip -O docker-gitlab.zip; unzip docker-gitlab.zip; rm docker-gitlab.zip

#ついでにディレクトリを移動しておく
cd docker-gitlab-master
```

## 1. ポート:80 を他のソフトウェアですでに使用していたら

`docker-compose.yml` の 
```yaml
    ports:
      - 80:80
```
`- 80:80` の左側の `80` を 
```yaml
    ports:
      - 8081:80
```
とか他の番号に変えてあげてください。

## 2. ビルド＆起動する
```shell script
docker-compose up -d
```

## 3. GitLab の WEB UIにアクセスしてみる

`http://構築したホストのアドレス`

成功すると、まずはじめに管理者ユーザー `root` のパスワード設定を求められるWEB画面が開きます。<br />
設定しおわったらあらためて `root` でログインしてみましょう。

## もしエラー画面になったら

念のため１分くらい待ってから再度アクセスしてみてください。<br />
それでもダメだったら、何か問題が発生しているかもしれません。
