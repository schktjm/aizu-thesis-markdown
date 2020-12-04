#! /bin/bash

filename=$1
filename_without_ext=${filename%.*}

# スクリプト終了時に呼び出される関数
function on_exit() {
  local exit_code=$1
  find | grep -E "${filename_without_ext}.(aux|bbl|blg|dvi|fdb_latexmk|fff|fls|out|synctex.gz|toc)" | xargs rm -f
  exit $exit_code
}
 
## ハンドラー関数を登録する
trap 'on_exit $?' EXIT

pandoc -s -N ${filename_without_ext}.md -o ${filename_without_ext}.tex \
--pdf-engine=latexmk \
--pdf-engine-opt="-pdfdvi" \
-F pandoc-crossref \
-F pandoc-citeproc \
-M "crossrefYaml=./crossref_config.yaml" \
--listings --template=template.tex &&
latexmk ${filename_without_ext}.tex
