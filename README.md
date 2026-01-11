# Projekt Zaliczeniowy

Witaj w repozytorium projektu zaliczeniowego. Poniżej znajduje się opis struktury plików, cel projektu oraz instrukcja uruchomienia poszczególnych elementów.

**Adres repozytorium:** [https://github.com/svikop/projekt_zaliczeniowy](https://github.com/svikop/projekt_zaliczeniowy)

## 🎯 Cel repozytorium

Celem tego projektu jest demonstracja praktycznych umiejętności z zakresu:
1.  **Automatyzacji zadań systemowych** przy użyciu skryptów powłoki Bash (zarządzanie plikami, wykrywanie duplikatów).
2.  **Składu tekstu technicznego** przy użyciu systemu LaTeX (tworzenie instrukcji oraz skryptów z podziałem na rozdziały).

## 📂 Zawartość katalogów

Struktura projektu została podzielona tematycznie na dwie główne części:

### 1. `bash/` - Skrypty systemowe
Katalog zawiera narzędzia do automatyzacji operacji na plikach.

* **`classification/`**
    * `classify.sh` – Skrypt służący do automatycznej segregacji plików znajdujących się w katalogu `inbox`. Rozpoznaje typy plików i przenosi je do odpowiednich podkatalogów.
    * `inbox/` – Katalog wejściowy dla plików do posortowania.
* **`duplicates/`**
    * `find_duplicates.sh` – Skrypt wykrywający duplikaty plików w zadanym katalogu (np. na podstawie sum kontrolnych lub nazw).
    * `files/` – Katalog testowy zawierający pliki (w tym duplikaty) do sprawdzenia działania skryptu.

### 2. `latex/` - Dokumenty tekstowe
Katalog zawiera kody źródłowe dokumentów przygotowanych w systemie LaTeX.

* **`instruction/`**
    * `main.tex` – Główny plik źródłowy instrukcji.
    * `instruction.pdf` – Skompilowana wersja dokumentu.
    * `screenshots/` – Folder z grafikami użytymi w dokumencie.
* **`script/`**
    * `main.tex` – Główny plik źródłowy skryptu/opracowania.
    * `script_wdlk.pdf` – Skompilowana wersja skryptu.
    * `parts/` – Rozdziały i fragmenty tekstu dołączane do głównego pliku.

---
### Uruchamianie skryptów Bash

Aby skorzystać ze skryptów, upewnij się, że mają one nadane uprawnienia do wykonywania.

1. **Nadanie uprawnień:**
   Otwórz terminal i wpisz:
   ```bash
   chmod +x bash/classification/classify.sh
   chmod +x bash/duplicates/find_duplicates.sh

2. Uruchomienie:

* **Klasyfikacja plików: Przejdź do katalogu i uruchom skrypt:**
  ```bash
  cd bash/classification
  ./classify.sh
  ```
* **Wyszukiwanie duplikatów:**
  ```bash
  cd bash/duplicates
  ./find_duplicates.sh
  ```
### Kompilacja dokumentów LaTeX

Dokumenty można skompilować za pomocą dowolnego edytora LaTeX (np. Overleaf, TeXShop) lub z poziomu terminala, jeśli posiadasz zainstalowany pakiet `texlive`.

Aby skompilować plik z terminala:

1. Przejdź do katalogu z wybranym dokumentem (np. instrukcją):
   ```bash
   cd latex/instruction
* **Uruchom kompilator pdflatex (zaleca się dwukrotne uruchomienie, aby poprawnie wygenerować spisy treści i odnośniki):**
  ```bash
  pdflatex main.tex
  pdflatex main.tex
Wynikowy plik PDF (np. main.pdf) pojawi się w tym samym katalogu
