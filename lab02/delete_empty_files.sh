if [ "$#" -ne 1 ]; then
    echo "Provide only one argument"
    exit 1
fi

directory=$1

if [ ! -d "$directory" ]; then
    echo "Directory '$directory' is not a valid."
    exit 1
fi

empty_files=$(find "$directory" -type f -empty)

if [ -z "$empty_files" ]; then
    echo "No empty files found in the directory '$directory'."
else
    echo "Deleting the following empty files:"
    echo "$empty_files"
    find "$directory" -type f -empty -delete
fi
