# shellcheck disable=SC2148
loadfiles=("LEEF-class" "LEEF-b3d" "LEEF-math" "LEEF-filesystem")
url="https://github.com/Luanti-Extended-Engine-Features/"

for reponame in "${loadfiles[@]}";
do
    activepath=./"$reponame"
    if [ -d "$activepath" ]; then
        cd "$activepath" || echo "failed to CD dir"+= "$(activepath)" exit
        git pull
        cd ../
    else
        git clone "$url""$reponame"
    fi
done
ldoc .
