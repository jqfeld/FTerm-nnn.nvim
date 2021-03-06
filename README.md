# FTerm-nnn.nvim
FTerm plugin for using nnn as file explorer

![FTerm-nnn](https://user-images.githubusercontent.com/12704074/122648299-f38e0500-d128-11eb-8abc-bbdab483fb88.gif)

## Install
This plugin depends on my fork of FTerm.nvim. 
With Packer
```lua 
    use {
        "jqfeld/FTerm-nnn.nvim",
        requires = { "jqfeld/FTerm.nvim" }
    }
```
## Usage
The plugin provides only three functions and does not define any keybindings. 
You can map the functions to keybinding of your choice like this:

```vim
nnoremap <LEADER>nn <CMD>lua require("FTerm-nnn").nnn_toggle()<CR>
nnoremap <LEADER>nv <CMD>lua require("FTerm-nnn").nnn_vs_toggle()<CR>
nnoremap <LEADER>nh <CMD>lua require("FTerm-nnn").nnn_hs_toggle()<CR>
```
