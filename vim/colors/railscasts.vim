if has("gui_running")
  " Vim color scheme based on http://github.com/jpo/vim-railscasts-theme
  "
  " Name:        railscasts.vim
  " Maintainer:  Ryan Bates
  " License:     MIT

  set background=dark
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
  let g:colors_name = "railscasts"

  " Colors
  " Brown        #BC9357
  " Dark Blue    #6D9CBD
  " Dark Green   #509E50
  " Dark Orange  #CC7733
  " Light Blue   #CFCFFF
  " Light Green  #A5C160
  " Tan          #FFC66D
  " Red          #DA4938

  hi Normal     guifg=#E6E1DC guibg=#232323
  hi Cursor     guibg=#FFFFFF
  hi CursorLine guibg=#333435
  hi LineNr     guifg=#666666
  hi Visual     guibg=#5A647E
  hi Search     guifg=NONE    guibg=#131313  gui=NONE
  hi Folded     guifg=#F6F3E8 guibg=#444444  gui=NONE
  hi Directory  guifg=#A5C160 gui=NONE
  hi Error      guifg=#FFFFFF guibg=#990000
  hi MatchParen guifg=NONE    guibg=#131313
  hi Title      guifg=#E6E1DC

  hi Comment    guifg=#BC9357 guibg=NONE     gui=italic
  hi! link Todo Comment

  hi String     guifg=#A5C160
  hi! link Number String
  hi! link rubyStringDelimiter String

  " nil, self, symbols
  hi Constant guifg=#6D9CBD

  " def, end, include, load, require, alias, super, yield, lambda, proc
  hi Define guifg=#CC7733 gui=NONE
  hi! link Include Define
  hi! link Keyword Define
  hi! link Macro Define

  " #{foo}, <%= bar %>
  hi Delimiter guifg=#509E50
  " hi erubyDelimiter guifg=NONE

  " function name (after def)
  hi Function guifg=#FFC66D gui=NONE

  "@var, @@var, $var
  hi Identifier guifg=#CFCFFF gui=NONE

  " #if, #else, #endif

  " case, begin, do, for, if, unless, while, until, else
  hi Statement guifg=#CC7733 gui=NONE
  hi! link PreProc Statement
  hi! link PreCondit Statement

  " SomeClassName
  hi Type guifg=NONE gui=NONE

  " has_many, respond_to, params
  hi railsMethod guifg=#DA4938 gui=NONE

  hi DiffAdd guifg=#E6E1DC guibg=#144212
  hi DiffDelete guifg=#E6E1DC guibg=#660000

  hi xmlTag guifg=#E8BF6A
  hi! link xmlTagName  xmlTag
  hi! link xmlEndTag   xmlTag
  hi! link xmlArg      xmlTag
  hi! link htmlTag     xmlTag
  hi! link htmlTagName xmlTagName
  hi! link htmlEndTag  xmlEndTag
  hi! link htmlArg     xmlArg

  " Popup Menu
  " ----------
  " normal item in popup
  hi Pmenu guifg=#F6F3E8 guibg=#444444 gui=NONE
  " selected item in popup
  hi PmenuSel guifg=#000000 guibg=#A5C160 gui=NONE
  " scrollbar in popup
  hi PMenuSbar guibg=#5A647E gui=NONE
  " thumb of the scrollbar in the popup
  hi PMenuThumb guibg=#AAAAAA gui=NONE

else

  " Vim color scheme
  "
  " Name:         railscasts.vim
  " Maintainer:   Nick Moffitt <nick@zork.net>
  " Last Change:  01 Mar 2008
  " License:      WTFPL <http://sam.zoy.org/wtfpl/>
  " Version:      2.1
  "
  " This theme is based on Josh O'Rourke's Vim clone of the railscast
  " textmate theme.  The key thing I have done here is supply 256-color
  " terminal equivalents for as many of the colors as possible, and fixed
  " up some of the funny behaviors for editing e-mails and such.
  "
  " To use for gvim:
  " 1: install this file as ~/.vim/colors/railscasts.vim
  " 2: put "colorscheme railscasts" in your .gvimrc
  "
  " If you are using Ubuntu, you can get the benefit of this in your
  " terminals using ordinary vim by taking the following steps:
  "
  " 1: sudo apt-get install ncurses-term
  " 2: put the following in your .vimrc
  "     if $COLORTERM == 'gnome-terminal'
  "         set term=gnome-256color
  "         colorscheme railscasts
  "     else
  "         colorscheme default
  "     endif
  " 3: if you wish to use this with screen, add the following to your .screenrc:
  "     attrcolor b ".I"
  "     termcapinfo xterm 'Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm'
  "     defbce "on"
  "     term screen-256color-bce

  set background=dark
  hi clear
  if exists("syntax_on")
    syntax reset
  endif

  let g:colors_name = "railscasts"

  hi link htmlTag                     xmlTag
  hi link htmlTagName                 xmlTagName
  hi link htmlEndTag                  xmlEndTag

  highlight Normal                    guifg=#E6E1DC guibg=#111111
  highlight Cursor                    guifg=#000000 ctermfg=0 guibg=#FFFFFF ctermbg=15
  highlight CursorLine                guibg=#000000 ctermbg=233 cterm=NONE

  highlight Directory  guifg=#E6E1DC gui=NONE ctermbg=233 ctermfg=107
  highlight LineNr     ctermbg=234 ctermfg=250

  highlight Comment                   guifg=#BC9458 ctermfg=180 gui=italic
  highlight Constant                  guifg=#6D9CBE ctermfg=73
  highlight Define                    guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
  hi! link Include Define
  hi! link Keyword Define
  hi! link Macro Define
  highlight Error                     guifg=#FFC66D ctermfg=221 guibg=#990000 ctermbg=88
  highlight Function                  guifg=#FFC66D ctermfg=221 gui=NONE cterm=NONE
  highlight Identifier                guifg=#6D9CBE ctermfg=73 gui=NONE cterm=NONE
  highlight PreCondit                 guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
  highlight Number                    guifg=#A5C261 ctermfg=107
  highlight PreProc                   guifg=#E6E1DC ctermfg=103
  highlight Search                    guifg=NONE ctermfg=NONE guibg=#2b2b2b ctermbg=235 gui=italic cterm=underline
  highlight Statement                 guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
  highlight String                    guifg=#A5C261 ctermfg=107
  highlight Title                     guifg=#FFFFFF ctermfg=15
  highlight Type                      guifg=#DA4939 ctermfg=167 gui=NONE cterm=NONE
  highlight Visual                    guibg=#5A647E ctermbg=60

  highlight DiffAdd                   guifg=#E6E1DC ctermfg=7 guibg=#519F50 ctermbg=71
  highlight DiffDelete                guifg=#E6E1DC ctermfg=7 guibg=#660000 ctermbg=52
  highlight Special                   guifg=#DA4939 ctermfg=167

  highlight pythonBuiltin             guifg=#6D9CBE ctermfg=73 gui=NONE cterm=NONE
  highlight rubyBlockParameter        guifg=#FFFFFF ctermfg=15
  hi! link rubyClass Define
  hi! link rubyKeyword Define
  hi! link rubyModule Define
  highlight rubyConstant              guifg=#DA4939 ctermfg=167
  highlight rubyInstanceVariable      guifg=#D0D0FF ctermfg=189
  highlight rubyInterpolation         guifg=#519F50 ctermfg=107
  highlight rubyLocalVariableOrMethod guifg=#D0D0FF ctermfg=189
  highlight rubyPredefinedConstant    guifg=#DA4939 ctermfg=167
  highlight rubyPseudoVariable        guifg=#FFC66D ctermfg=221
  highlight rubyStringDelimiter       guifg=#A5C261 ctermfg=143

  highlight xmlTag                    guifg=#E8BF6A ctermfg=179
  highlight xmlTagName                guifg=#E8BF6A ctermfg=179
  highlight xmlEndTag                 guifg=#E8BF6A ctermfg=179

  highlight mailSubject               guifg=#A5C261 ctermfg=107
  highlight mailHeaderKey             guifg=#FFC66D ctermfg=221
  highlight mailEmail                 guifg=#A5C261 ctermfg=107 gui=italic cterm=underline

  highlight SpellBad                  guifg=#D70000 ctermfg=160 ctermbg=NONE cterm=underline
  highlight SpellRare                 guifg=#D75F87 ctermfg=168 guibg=NONE ctermbg=NONE gui=underline cterm=underline
  highlight SpellCap                  guifg=#D0D0FF ctermfg=189 guibg=NONE ctermbg=NONE gui=underline cterm=underline
  highlight MatchParen                guifg=#FFFFFF ctermfg=15 guibg=#005f5f ctermbg=23

  " Popup Menu
  " ----------
  " normal item in popup
  hi Pmenu ctermfg=7  ctermbg=8
  " selected item in popup
  hi PmenuSel ctermbg=16
  " scrollbar in popup
  hi PMenuSbar ctermbg=59
  " thumb of the scrollbar in the popup
  hi PMenuThumb ctermfg=7


  if &term =~ "xterm\\|rxvt"
    " Changes the cursor between a Block and Line when in Insert mode or not.
    " These escape codes only work in iTerm2
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    autocmd VimLeave * :!echo -ne "\<Esc>]50;CursorShape=0\x7"
  endif
end

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
