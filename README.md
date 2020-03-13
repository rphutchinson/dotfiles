# mac OS environment setup utility using https://github.com/anishathalye/dotbot
## Prerequisites
1. Git - run `$git --version` if git is not installed follow the prompts to install X Code command line tools
2. :coffee:

## Usage
1. Clone this repo, can be anywhere but typically to `~/dotfiles`
2. run installer script `~/dotfiles/install`
3. wait patiently for computer to become awesome

## Notes
* This uses https://github.com/hujianxin/dotbot-vscode for vscode configuration
* It's very possible that VSCode theme settings aren't going to work right out of the box see: https://github.com/webrender/synthwave-x-fluoromachine for instructions. Ideally, just run the command `reload custom css` to get the theme rendering correctly the first time
* You'll get an error `cannot find color scheme 'solarized'` when first opening vim - just run :PlugInstall to install the color theme and other vim plugins
