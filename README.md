# PrivyOS 🛡️🤖

> **Your Private, AI-Powered Terminal Operating System.**

PrivyOS to niestandardowa dystrybucja Linuksa oparta na **Debian 12 (Bookworm)**, zaprojektowana w jednym celu: dostarczenie potężnego, lokalnego asystenta AI bezpośrednio w terminalu, z pełnym poszanowaniem prywatności.

## ✨ Główne Funkcje

*   **🧠 Wbudowane AI:** Działa na silniku **Ollama** z modelem `qwen2.5-coder:1.5b` (zoptymalizowany pod kątem kodu i lekkości).
*   **🐚 Privy Shell:** Domyślna powłoka zastępująca Basha. Przetwarza język naturalny (Polski/Angielski) na komendy systemowe.
    *   *Przykład:* Wpisz "zaktualizuj system", a on wykona `sudo apt update && sudo apt upgrade`.
*   **🔒 100% Offline & Private:** Wszystkie obliczenia AI odbywają się lokalnie na Twoim CPU. Żadne dane nie wychodzą do chmury.
*   **⚡ Live System:** Działa bezpośrednio z USB (Live ISO).
*   **🧠 Pamięć Kontekstowa (v1.1):** Asystent pamięta historię Twoich ostatnich komend, więc możesz dopytywać o szczegóły.

## 🚀 Jak używać?

1.  **Pobierz/Zbuduj** obraz ISO.
2.  Nagraj go na pendrive (używając BalenaEtcher, Rufus lub `dd`).
3.  Uruchom komputer z USB.
4.  Po załadowaniu systemu zobaczysz prompt `PrivyOS`. Po prostu wpisz, co chcesz zrobić!

### Przykładowe komendy:
```text
PrivyOS /home/user > pokaż mi adres IP
Sugestia: ip a
Wykonać? [Y/n]: y

PrivyOS /home/user > znajdź wszystkie pliki pdf w tym katalogu
Sugestia: find . -name "*.pdf"
```

## 🛠️ Budowanie ze źródeł

Wymagany jest **Docker**. Proces budowania tworzy środowisko Debiana i generuje plik ISO.

1.  Sklonuj repozytorium:
    ```bash
    git clone https://github.com/twoj-user/privyos-build.git
    cd privyos-build
    ```

2.  Uruchom skrypt budujący:
    ```bash
    ./build.sh
    ```
    *Proces może potrwać 15-45 minut w zależności od łącza i procesora.*

3.  Wynikowy plik `live-image-amd64.hybrid.iso` pojawi się w głównym katalogu.

## 🏗️ Struktura Projektu

*   `config/` - Główna konfiguracja `live-build`.
    *   `hooks/` - Skrypty uruchamiane podczas budowania (instalacja Ollama, konfiguracja shella).
    *   `includes.chroot/` - Pliki kopiowane bezpośrednio do systemu (kod źródłowy `privy`).
    *   `package-lists/` - Lista pakietów instalowanych w systemie.
*   `build.sh` - Automat do budowania w Dockerze.

## 📝 Changelog

Zobacz plik [CHANGELOG.md](CHANGELOG.md) dla historii zmian.

## 📄 Licencja

MIT License.
