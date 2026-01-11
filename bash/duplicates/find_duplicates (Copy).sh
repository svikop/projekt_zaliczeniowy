#!/usr/bin/env bash

if [[ $# -ne 1  ]]; then
	echo "Zła ilość argumentów, musisz podać jeden katalog"
	exit 1
fi

path="$1"

if [[ ! -d "$path" ]]; then
	echo "W argumencie musisz podać nazwę katalogu"
	exit 1
fi

declare -A checksum_dict

for file in "$path"/*; do

	[[ -f "$file" ]] || continue

	checksum=$(sha256sum "$file" | cut -d ' ' -f1)
	
	odpowiedz=0

	if [[ -n "${checksum_dict[$checksum]}" ]]; then
		echo "Znaleziono duplikat: "
		echo "Oryginał: ${checksum_dict[$checksum]}"
		echo "Duplikat: $file"
		
		read -p "Czy usunac plik? [t/N] " odpowiedz
		
		if [[ $odpowiedz = "t" || $odpowiedz = "T" ]]; then
		    rm $file
		fi
	else
		checksum_dict[$checksum]="$file"
	fi
done
