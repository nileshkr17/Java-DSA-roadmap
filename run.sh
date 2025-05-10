mkdir -p 30-Days-of-DSA-Java/{Day0_Setup,Resources/{Diagrams,Cheatsheets}}

touch 30-Days-of-DSA-Java/README.md
touch 30-Days-of-DSA-Java/Day0_Setup/Java_Setup_Guide.md
touch 30-Days-of-DSA-Java/Glossary.md

topics=("Arrays" "Strings" "LinkedLists" "StacksQueues" "Trees" "Graphs" "SortingSearching" "DynamicProgramming" "Backtracking" "Hashing" "Heaps" "Tries" "Greedy" "Miscellaneous")

for i in "${!topics[@]}"; do
  day=$((i+1))
  folder="30-Days-of-DSA-Java/Day${day}_${topics[$i]}"
  mkdir -p "$folder"
  touch "$folder/${topics[$i]}.md"
  touch "$folder/Main.java"
done
