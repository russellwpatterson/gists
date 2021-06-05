OLD_USERNAME=rwpcpe
NEW_USERNAME=russellwpatterson

for D in ./*; do
    if [ -d "$D" ]; then
        cd "$D"
	OLD_URL=$(git remote get-url origin)
	NEW_URL=$(echo $OLD_URL | sed "s/$OLD_USERNAME/$NEW_USERNAME/")
	
	if [ "$OLD_URL" != "$NEW_URL" ]; then
		git remote set-url origin $NEW_URL
		echo Replaced $OLD_URL with $NEW_URL
	else
		echo Remote $OLD_URL already correct.
	fi

        cd ..
    fi
done
