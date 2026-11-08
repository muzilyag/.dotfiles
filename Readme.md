## Состав окружения

* **Оконный менеджер:** `bspwm` + `sxhkd` + `picom`
* **Панель и меню:** `polybar` + `rofi` + `dunst`
* **Терминал и оболочка:** `kitty` + `zsh` + `yazi`
* **Редактор:** `neovim` (Lazy.nvim, LSP, Treesitter, тема `embark_pro`)
* **Браузер:** `firefox` (кастомный минималистичный `userChrome.css`)
* **Файловый менеджер:** `thunar` + `file-roller`

## Установка

1. Клонировать репозиторий:
```bash
git clone [https://github.com/muzilyag/.dotfiles](https://github.com/muzilyag/.dotfiles) ~/.dotfiles
cd ~/.dotfiles
```
2. Скопировать сгенерированный конфиг оборудования в нужный профиль (vm, qemu, vbox, desktop или laptop):
```bash
cp /etc/nixos/hardware-configuration.nix ./hosts/<профиль>/hardware-configuration.nix
```
3. При необходимости указать своё имя пользователя в переменной `username` внутри `flake.nix`.

4. Собрать и активировать систему:
```bash
git add .
sudo nixos-rebuild switch --flake .#<профиль>
```
Для последующих пересборок достаточно ввести в терминале алиас `rbnix`.

## Горячие клавиши системы (`sxhkd`)

| Комбинация | Действие |
| :--- | :--- |
| `Super + Enter` / `Ctrl + Alt + T` | Открыть терминал (`kitty`) |
| `Super + D` | Меню запуска приложений (`rofi`) |
| `Super + B` | Браузер (`firefox`) |
| `Super + Shift + T` | Файловый менеджер (`thunar`) |
| `Super + T` | Telegram |
| `Super + Shift + S` / `Print` | Скриншот области (`flameshot`) |
| `Super + Q` | Закрыть активное окно |
| `Super + Shift + Q` | Принудительно убить окно |
| `Super + F` | Полноэкранный режим |
| `Super + S` | Плавающий режим окна |
| `Super + V` | Повернуть дерево окон на 90° |
| `Super + 1..5` | Перейти на рабочий стол 1–5 |
| `Super + Shift + 1..5` | Переместить окно на рабочий стол 1–5 |
| `Super + Alt + Стрелки` | Изменить размер активного окна |
| `Super + X` | Меню выключения / перезагрузки |
| `Super + Alt + Q` | Выйти из сессии `bspwm` |

## Горячие клавиши Neovim (`Leader` = `Пробел`)

| Комбинация | Действие |
| :--- | :--- |
| `Ctrl + N` | Открыть / скрыть дерево файлов (`nvim-tree`) |
| `Space + ff` | Поиск файлов по проекту (`telescope`) |
| `Space + fg` | Поиск текста по проекту (`live_grep`) |
| `Space + fb` | Список открытых буферов |
| `Tab` / `Shift + Tab` | Следующий / предыдущий буфер |
| `Space + x` | Закрыть текущий буфер |
| `Ctrl + h/j/k/l` | Перемещение между сплитами |
| `ld` / `lk` / `gr` | Перейти к определению / документация / ссылки (LSP) |
| `Space + f` | Автоформатирование файла (LSP) |
