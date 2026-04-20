# Install Ruby on Rails Environment

This folder contains two bash scripts:

- `ruby_rails_install.sh`: installs system packages, installs `curl`, installs the `mise` version manager, installs Ruby 3 globally, then installs Rails.
- `rails_create_clean_app.sh`: generates a fresh Rails app and starts it.

## Files

- `ruby_rails_install.sh`
- `rails_create_clean_app.sh`

## Prerequisites

- Linux machine (written for Ubuntu/Debian with `apt`)
- `sudo` access
- Internet access for package and gem downloads

## Install Ruby 3 and RoR 8 : `ruby_rails_install.sh`

```bash
chmod +x ruby_rails_install.sh
./ruby_rails_install.sh
```

## Create your Rails app : `rails_create_clean_app.sh`

Reads an optional app name argument.
  - Default app name is `my-app` if no argument is provided.

```bash
chmod +x rails_create_clean_app.sh
./rails_create_clean_app.sh
```

You can choose the name of the app before creating it
```bash
chmod +x rails_create_clean_app.sh
./rails_create_clean_app.sh my-new-rail-app
```

## Recommended Usage Flow

1. Run `ruby_rails_install.sh` once on a new machine.
2. If needed, open a new terminal for fixing sourcing problems.
3. Run `rails_create_clean_app.sh` to create your starter app.
4. Open `http://localhost:3000` in your browser.

After installation, verify:

```bash
ruby -v
gem -v
rails -v
mise --version
```

If all commands return versions, your Rails environment is ready.