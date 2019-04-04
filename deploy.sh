#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
echo 'beijing.w3fun.com' > CNAME

git init
git add -A
git commit -m 'deploy'

git config --local user.name 'swpuLeo'
git config --local user.email 'swpu.leo@gmail.com'

git push -f https://${access_token}@github.com:swpuLeo/HereBeijing.git master:gh-pages

cd -
