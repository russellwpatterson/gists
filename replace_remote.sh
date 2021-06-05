OLD_USERNAME=rwpcpe
NEW_USERNAME=russellwpatterson

OLD_URL=$(git remote get-url origin)
NEW_URL=$(echo $OLD_URL | sed "s/$OLD_USERNAME/$NEW_USERNAME/")
git remote set-url origin $NEW_URL
echo Replaced $OLD_URL with $NEW_URL
