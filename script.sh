repo_name=sites2
test -z $repo_name && echo "Repo name required." 1>&2 && exit 1
curl -u 'KranthiDevtest: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' https://api.github.com/user/repos -d "{\"KranthiDevtest\":\"$repo_name\"}"
git init
git add .
git commit -m "initial commit"
git remote add origin "https://github.com/KranthiDevtest/$repo_name.git"
git push -u origin master
