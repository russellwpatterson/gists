for D in ./*; do
    if [ -d "$D" ]; then
        cd "$D"

        git bundle create $(basename "$(pwd)").gitbundle HEAD master && mv $(basename "$(pwd)").gitbundle ../

        cd ..
    fi
done
