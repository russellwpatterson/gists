mkdir -p bundles

for D in ./*; do
    if [ -d "$D" ]; then
        cd "$D"
        
        FILENAME=$(basename "$(pwd)").bundle

        git bundle create $FILENAME --all
        mv $FILENAME ../bundles/
        echo Created $FILENAME
        cd ..
    fi
done
