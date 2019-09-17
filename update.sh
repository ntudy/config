cp ~/.zshrc .
cp ~/.vimrc .

git add -A
NOW=$(date + "%m-%d-%Y")

git commit -m '$NOW'
echo $NOW
