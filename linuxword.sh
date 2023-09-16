search_dir="."
files=$(find "$search_dir" -type f -name "*.txt")
count=0
for file in $files; do
  occurrences=$(grep -o "Linux" "$file" | wc -l)
  count=$((count + occurrences))
done
echo "Total count of 'Linux' in all .txt files: $count"

