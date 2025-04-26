#!/bin/bash

red() {
	git config --local user.name red
	git config --local user.email red@mail.ru
}


blue() {
	git config --local user.name blue
	git config --local user.email blue@mail.ru
}

# удаление ненужнх данных
rm -rf .git
rm -f .gitignore

# создание репозитория и начальная ревизия (r0)
git init
echo "- git init"

red
echo "- user red created"

git checkout -b branch1

echo "commits" >> .gitignore
echo "git.sh" >> .gitignore
git add .gitignore




unzip -o commits/commit0.zip -d src 
git commit -m "Initial commit (r0)"

