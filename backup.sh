#!/bin/bash

set -eu

SCRIPT_DIR=$(readlink -f "$(dirname "${BASH_SOURCE[0]}")")
TUMBLR_SCRIPT="$SCRIPT_DIR/tumblr-utils/tumblr_backup.py"

function make_dir {
    dir_path=$1

    if [ ! -d "$dir_path" ]; then
        mkdir -p "$dir_path"
    fi
}

function run_backup_script {
    base_dir=$1
    blog_name=$2
    min_chars=$3
    blog_dir="$base_dir/$blog_name"

    if (( $min_chars  > 0 )); then
        extra_args="-l $min_chars"
    else
        extra_args=""
    fi

    make_dir "$blog_dir"
    echo python "$TUMBLR_SCRIPT" -j -q -i -O "$blog_dir" $extra_args $blog_name
    python "$TUMBLR_SCRIPT" -j -q -i -O "$blog_dir" $extra_args $blog_name
}

function backup_all_blogs {
    echo "Begin Tumblr Backup: $(date)"

    blogs_dir="$SCRIPT_DIR/blogs"
    blog_list_file="$blogs_dir/blogs.csv"

    regex="\\s*([^, ]*)\\s*,\\s*(.*)\\s*"
    while read line; do
        if [[ $line =~ $regex ]]
        then
            blog_name="${BASH_REMATCH[1]}"
            min_chars="${BASH_REMATCH[2]}"
            run_backup_script "$blogs_dir" $blog_name $min_chars
        else
            echo "Malformed line: $line" >&2
        fi
    done < "$blog_list_file"

    echo "End Tumblr Backup: $(date)"
}

backup_all_blogs
