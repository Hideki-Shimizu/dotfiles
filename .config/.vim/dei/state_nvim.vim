if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/Shimizu/.vim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/Shimizu/.vim/dei'
let g:dein#_runtime_path = '/Users/Shimizu/.vim/dei/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/Shimizu/.vim/dei/.cache/init.vim'
let &runtimepath = '/Users/Shimizu/.config/nvim,/etc/xdg/nvim,/Users/Shimizu/.local/share/nvim/site,/usr/local/share/nvim/site,/Users/Shimizu/.vim/dei/repos/github.com/Shougo/dein.vim,/Users/Shimizu/.vim/dei/.cache/init.vim/.dein,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.2.0/share/nvim/runtime,/Users/Shimizu/.vim/dei/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/Shimizu/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/Shimizu/.config/nvim/after,/Users/Shimizu/.vim/chalice'
filetype off
