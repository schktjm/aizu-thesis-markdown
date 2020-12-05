# aizu-thesis-markdown

会津大学の学部卒論をマークダウンで書くための一式

## Requirements

- Docker

## Getting Started

1. 必要なDockerイメージをダウンロードする

```shell script
docker pull plass/mdtopdf:include-font
```
2. 必要な文章フォーマットをダウンロードする

```shell script
echo "get /usr/local/texlive/texmf-local/tex/aizu/U-AizuGT.cls" | sftp [学籍番号]@sshgate.u-aizu.ac.jp
```


3. 実行

```shell script
scripts/topdf.sh thesis.md
```

### 変更があるたびに自動でコンパイルしたい場合

```shell script
scripts/w-topdf.sh thesis.md
```

## 一つ前のcommitとの差分をpdfで出力する

```shell script
scripts/generate-diff.sh thesis.tex
```

## 注意
Markdown の詳細などはフォーク元である [p1ass/kuee-thesis-markdown](https://github.com/p1ass/kuee-thesis-markdown) を参考にしてください。

## Licence

- [卒論ファイルの指針](https://web-int.u-aizu.ac.jp/official/students/sad/stsa14_j.html) で指定している、 `U-AizuGT` という文章フォーマットを `/usr/local/texlive/texmf-local/tex/aizu/U-AizuGT.cls` からダウンロードしています。
- `bibliographystyle` は [`ieicetr`](https://www.ieice.org/ftp/) を採用しました。
- [template.tex](/template.tex) は [Aizu-Graduation-Thesis-Template](https://github.com/v97ug/Aizu-Graduation-Thesis-Template) を参考にしました。

## Special Thanks
[@p1ass](https://github.com/p1ass) くん手伝ってくれてありがとう！
