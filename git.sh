#/bin/bash

USER_NAME = $(git config user.name)

red() {
	git config --local user.name red
	git config --local user.email red@mail.ru
}


blue() {
	git config --local user.name blue
	git config --local user.email blue@mail.ru
}

commit() {
	unzip -o commits/commit$1.zip -d src
	git add ./src/*
	git commit -m "Revision $1 (r$1)"
	echo "- Коммит $1 ($USER_NAME)"
}

checkout() {
	git checkout $2 $1
}

merge() {
	git merge $1 --no-commit -X
	if [ $? -ne 0 ]; then
		echo "Обнаружен конфликт при слиянии, пожалуйста разрешите конфликт"
		read -p "После разрешения конфликта выполните 'git add .' нажмите Enter"
		while git ls-files --unmerged | grep -q '^' ; do
			read -p "Обнаружены неразрешенные конфликты, разрешите их, выполните 'git add .' и  нажмите Enter"
		done
	fi

}

# Удаление ненужнх данных
rm -rf .git
rm -f .gitignore
rm -rf ./src

# Создание репозитория 
git init
echo "- git init"

red
echo "- user red created"

checkout master -b

# Новый .gitignore {
echo "commits" >> .gitignore
echo "git.sh" >> .gitignore
echo "svn.sh" >> .gitignore
echo "svn" >> .gitignore
git add .gitignore
echo "- Новый .gitignore создан" 
# }

# Ревизия r0 (пользователь 1) {
commit 0
# }


# Ревизия r1 (пользователь 2) {
blue
checkout branch2 -b
commit 1
# }

# Ревизия r2 (пользователь 1)  {
red
checkout branch5 -b
commit 2
# }

# Ревизия r3 (пользователь 1) {
checkout branch13 -b
commit 3
# }

# Ревизия r4 (пользователь 1) {
checkout branch6 -b
commit 4
# }

# Ревизия r5 (пользователь 1) {
checkout branch5
commit 5
# }

# Ревизия r6 (пользователь 2) {
blue
checkout branch3 -b
commit 6
# }

# Ревизия r7 (пользователь 1) {
red
checkout branch6
commit 7
# }

# Ревизия r8 (пользователь 1) {
checkout branch4 -b
commit 8
# }

# Ревизия r9 (пользователь 1) {
checkout branch13
commit 9
# }

# Ревизия r10 (пользователь 1) {
checkout branch5
commit 10
# }

# Ревизия r11 (пользователь 1) {
checkout branch13
commit 11
# }

# Ревизия r12 (пользователь 1) {
checkout branch4
commit 12
# }

# Ревизия r13 (пользователь 1) {
checkout master
commit 13
# }

# Ревизия r14 (пользователь 1) {
checkout branch11 -b
commit 14
# }

# Ревизия r15 (пользователь 2) {
blue
checkout branch9 -b
commit 15
# }

# Ревизия r16 (пользователь 2) {
checkout branch2
commit 16
# }

# Ревизия r17 (пользователь 1) {
red
checkout branch4
commit 17
# }

# Ревизия r18 (пользователь 1) {
checkout master
commit 18
# }

# Ревизия r19 (пользователь 1) {
checkout branch13
commit 19
# }

# Ревизия r20 (пользователь 1) {
checkout master
commit 20
# }

# Ревизия r21 (пользователь 1) {
checkout branch5
commit 21
# }

# Ревизия r22 (пользователь 1) {
checkout branch13
commit 22
# }

# Ревизия r23 (пользователь 2) {
blue
checkout branch3
commit 23
# }

# Ревизия r24 (пользователь 1) {
red
checkout branch13
commit 24
# }

# Ревизия r25 (пользователь 2) {
blue
checkout branch10 -b
commit 25
# }

# Ревизия r26 (пользователь 2) {
checkout branch14 -b
commit 26
# }

# Ревизия r27 (пользователь 2) {
checkout branch2
commit 27
# }

# Ревизия r28 (пользователь 2) {
checkout branch10
commit 28
# }

# Ревизия r29 (пользователь 1) {
red
checkout branch7 -b
commit 29
# }

# Ревизия r30 (пользователь 1) {
checkout branch13
commit 30
# }

# Ревизия r31 (пользователь 2) {
checkout branch2
commit 31
# }

# Ревизия r32 (пользователь 2) {
checkout branch9
commit 32
# }

# Ревизия r33 (пользователь 2) {
checkout branch10
commit 33
# }

# Ревизия r34 (пользователь 1) {
red
checkout branch6
commit 34
# }

# Ревизия r35 (пользователь 2) {
blue
checkout branch9
commit 35
# }

# Ревизия r36 (пользователь 1) {
red
checkout branch6
commit 36
# }

# Ревизия r37 (пользователь 2) {
blue
checkout branch8 -b
commit 37
# }

# Ревизия r38 (пользователь 2) {
checkout branch9
commit 38
# }

# Ревизия r39 (пользователь 2) {
checkout branch3
commit 39
# }

# Ревизия r40-r41 (пользователь 2) {
checkout branch9
merge branch3
commit 40
commit 41
# }

# Ревизия r42 (пользователь 1) {
red 
checkout branch4
commit 42
# }

# Ревизия r43 (пользователь 2) {
blue
checkout branch8
commit 43
# }

# Ревизия r44 (пользователь 2) {
checkout branch10
commit 44
# }

# Ревизия r45 (пользователь 1) {
red
checkout branch6
commit 45
# }

# Ревизия r46 (пользователь 1) {
checkout branch13
commit 46
# }

# Ревизия r47 (пользователь 1) {
checkout branch7
commit 47
# }

# Ревизия r48 (пользователь 1) {
checkout master
commit 48
# }

# Ревизия r49 (пользователь 2) {
blue
checkout branch8
commit 49
# }

# Ревизия r50 (пользователь 1) {
red
checkout branch11
commit 50
# }

# Ревизия r51 (пользователь 2) {
blue
checkout branch9
commit 51
# }

# Ревизия r52 (пользователь 1) {
red
checkout branch5
commit 52
# }

# Ревизия r53 (пользователь 2) {
blue
checkout branch14
merge branch5
commit 53
# }

# Ревизия r54 (пользователь 2) {
checkout branch9
commit 54
# }

# Ревизия r55 (пользователь 2) {
checkout branch2
commit 55
# }

# Ревизия r56 (пользователь 2) {
checkout branch12 -b
commit 56
# }

# Ревизия r57 (пользователь 2) {
checkout branch8
commit 57
# }

# Ревизия r58 (пользователь 2) {
checkout branch10
commit 58
# }

# Ревизия r59 (пользователь 2) {
checkout branch8
commit 59
# }

# Ревизия r60 (пользователь 1) {
red
checkout branch4
commit 60
# }

# Ревизия r61 (пользователь 1) {
checkout master
commit 61
# }

# Ревизия r62 (пользователь 2) {
blue
checkout branch12
commit 62
# }

# Ревизия r63-r64 (пользователь 2) {
checkout branch14
commit 63
commit 64
# }

# Ревизия r65 (пользователь 2) {
checkout branch9
commit 65
# }

# Ревизия r66 (пользователь 1) {
red
checkout branch11
commit 66
# }

# Ревизия r67 (пользователь 1) {
checkout branch6
commit 67
# }

# Ревизия r68-r69 (пользователь 2) {
blue
checkout branch10
commit 68
commit 69
# }

# Ревизия r70 (пользователь 2) {
checkout branch2
commit 70
# }

# Ревизия r71 (пользователь 1) {
red
checkout branch11
commit 71
# }

# Ревизия r72 (пользователь 2) {
blue
checkout branch8
merge branch11
commit 72
# }

# Ревизия r73 (пользователь 1) {
red
checkout branch4
commit 73
# }

# Ревизия r74 (пользователь 2) {
blue
checkout branch2
commit 74
# }

# Ревизия r75 (пользователь 1) {
red
checkout branch4
commit 75
# }

# Ревизия r76 (пользователь 1) {
checkout branch13
commit 76
# }

# Ревизия r77 (пользователь 2) {
blue
checkout branch10
merge branch13
commit 77
# }

# Ревизия r78 (пользователь 2) {
checkout branch2
merge branch10
commit 78
# }

# Ревизия r79 (пользователь 2) {
checkout branch8
merge branch2
commit 79
# }

# Ревизия r80 (пользователь 1) {
red
checkout branch6
commit 80
# }

# Ревизия r81 (пользователь 2) {
blue
checkout branch14
merge branch6
commit 81
# }

# Ревизия r82 (пользователь 2) {
checkout branch8
merge branch14
commit 82
# }

# Ревизия r83 (пользователь 2) {
checkout branch9
merge branch8
commit 83
# }

# Ревизия r84-r85 (пользователь 1) {
red
checkout master
merge branch9
commit 84
commit 85
# }

# Ревизия r86-r87 (пользователь 1) {
checkout branch4
commit 86
commit 87
# }

# Ревизия r88 (пользователь 2) {
blue
checkout branch12
merge branch4
commit 88
# }

# Ревизия r89 (пользователь 1) {
red
checkout branch7
merge branch12
commit 89
# }

# Ревизия r90 (пользователь 1) {
checkout master
merge branch7
commit 90
# }

