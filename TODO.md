# PrivyOS TODO

## Roadmap
- [ ] **Custom AI Model:** Utworzenie własnego modelu AI bazującego na `qwen2.5-coder:1.5b`, dostosowanego specyficznie do potrzeb PrivyOS. Model ten ma być **domyślnie wbudowany w obraz ISO**, zapewniając pełną funkcjonalność offline od razu po uruchomieniu.

## Bug Fixes
- [ ] **Fix Offline Model Persistence:** Poprawka z automatycznym pobieraniem modelu na `.iso` nie działa poprawnie. Po zainstalowaniu systemu i zalogowaniu, Ollama nadal próbuje pobrać model z sieci zamiast korzystać z tego wbudowanego. Należy to naprawić w przyszłych wydaniach.
