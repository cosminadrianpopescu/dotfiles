" ================================================================================
" Basic options
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
call plug#begin('~/.vim/bundle/active')
Plug 'Townk/vim-autoclose'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'cosminadrianpopescu/colors'
Plug 'svermeulen/vim-easyclip'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'cosminadrianpopescu/filesync'
Plug 'Valloric/MatchTagAlways'
Plug 'cosminadrianpopescu/airline-tabs'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'cosminadrianpopescu/vim-syntax'
Plug 'jszakmeister/vim-togglecursor'
Plug 'leafgarland/typescript-vim'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-obsession'
Plug 'cosminadrianpopescu/vim-tail'
call plug#end()
set encoding=utf-8

" ================================================================================
" Powerline setup
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

" ================================================================================
" Options settings
set undofile
set undodir=~/.vim/undos
set nobackup
set belloff=all
"set runtimepath+=~/.vim/bundle/eclim
set laststatus=2
set tabstop=4
set shiftwidth=4
set bufhidden=hide
set hidden
set sessionoptions+=globals
set mouse=
if ($TABSTOP != '')
    execute ":set tabstop=" . $TABSTOP
    execute ":set shiftwidth=" . $TABSTOP
endif
""set viewoptions=folds,cursor
set expandtab
set smarttab
set scrolloff=10
if ($JAVA == 'java')
    set tabstop=4
    set shiftwidth=4
    set noexpandtab
endif
set completeopt-=preview
set showtabline=2
set number
set dir=/tmp
set wildmode=longest,list
set clipboard=unnamed,unnamedplus
set guioptions-=m
set guioptions+=c
set complete-=t
set guioptions-=T
set guioptions-=e
set guioptions-=a
set viminfo+=n$HOME/.vim/viminfo
set foldmethod=syntax
set foldexpr=SqlFoldExpression(v:lnum)

" ================================================================================
" Global variable settings
let g:tsuquyomi_completion_detail = 1
let g:lsc_server_commands = {'java': 'lsp', 'php': 'php-lsp'}
let s:sessions_path = $HOME . '/.vim/sessions'
""let g:EclimHighlightTrace = 'Normal'
let g:EclimLogLevel = 'info'
""let g:EclimCompletionMethod='omnifunc'
let g:netrw_ftp_cmd="ftp -p"
let g:gundo_preview_bottom=1
let g:netrw_liststyle = 1
let g:netrw_use_errorwindow=0
let g:Omnisharp_start_server = 0
""let g:EclimJavaSearchSingleResult = 'edit'
""let g:EclimPhpSearchSingleResult = 'edit'
""let g:EclimCSearchSingleResult = 'edit'
""let g:airline#extensions#eclim#enabled=1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline_extensions = ['ctrlp', 'undotree', 'netrw', 'quickfix', 'sw', 'tabline', 'obsession']
let g:airline#extensions#obsession#enabled = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#buffer_idx_mode = 0
let g:airline#extensions#tabline#formatter = 'foo'
let g:airline_powerline_fonts = 1
""let g:EclimCompletionMethod = 'omnifunc'
let g:ctrlp_user_command='find %s'
""let g:ctrlp_user_command_async = 1
let g:ctrlp_lazy_update=1
let mapleader=" "
let php_folding=1
""let javaScript_fold=1
let xml_syntax_folding=1

let g:sessionman_save_on_exit = 0
let g:JavaComplete_JavaCompiler = 'c:/Pgm/my/java/jdk8/bin/javac'
let g:JavaComplete_JvmLauncher = 'c:/Pgm/my/java/jdk8/bin/java'
let g:acp_behaviorPythonOmniLength = -1
let g:togglecursor_default = 'block'
let g:togglecursor_insert = 'blinking_line'
let g:ctrlp_match_func = {'match': 'CtrlpMatch'}
let g:togglecursor_leave = 'block'
let g:sync_default_args = '--recursive'
let g:EasyMotion_skipfoldedline = 0
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['symbols', 'java_types', 'jumps', 'sw_profiles']
let g:ctrlp_regexp = 1
let g:sw_delete_tmp = 0
let g:sw_save_resultsets = 1
let g:ctrlp_match_window = 'results:50'
let g:vimsyn_folding = 'afp'
let g:prosession_dir='~/.dotfiles/vim/sessions'

let g:UltiSnipsExpandTrigger = '<c-j>'

let g:gundo_auto_preview = 0

let g:sw_exe = '/home/lixa/programs/sql-workbench-124/sqlwbconsole.sh'
let g:sw_config_dir = '/home/lixa/.sqlworkbench/'
let g:sw_log_to_file = 1
let g:sw_prefer_sql_over_macro = 1

let @o = ':SWDbExplorer '
let @c = ':SWDbExplorerClose'
let @s = ':SWSqlOpen '
let @r = ':SWSqlBufferRestore'
let @d = ':SWDbExplorerRestore'
let g:sw_plugin_path = '/home/lixa/.vim/bundle/vim-sql-workbench'

let g:lsp_log_verbose = 1
let g:lsp_log_file = '/tmp/vim-lsp'

" for asyncomplete.vim log
let g:asyncomplete_log_file = '/tmp/vim-lsp-compl'

if $OS =~ '\c\vwindows'
	let g:ctrlp_user_command='/mnt/e/bin/ctrlp-find %s'
	let g:sw_plugin_path = 'e:/.vim/bundle/vim-sql-workbench/'
	let g:sw_cache = 'e:/.cache/sw'
	let g:sw_exe = 'c:/Pgm/my/sql-workbench-121.4/sqlwbconsole.sh'
	let g:sw_tmp = 'e:/tmp'
	let g:sw_config_dir = 'e:/.config/sqlworkbench'
	let g:sw_vim_exe = 'DISPLAY=:0 vim'
    let g:Lucene_port = 5002
    so ~/.vim/work.vim
else
    if  $TTY =~ '\v\c^[0-9]+$'
        let g:loaded_togglecursor = 1
    endif
endif

let g:ctrlp_open_func = {'files': 'CtrlPSingleInstanceEdit', 'buffers': 'CtrlPSingleInstanceEdit', 'mru files': 'CtrlPSingleInstanceEdit'}

""if $CHANGE_CURSOR == "1"
""  let &t_SI .= "\<Esc>[5 q"
""  let &t_EI .= "\<Esc>[1 q"
""endif

" ================================================================================
" Autocommands

au User lsp_setup call lsp#register_server({
        \ 'name': 'lsp',
        \ 'cmd': {server_info->['lsp']},
        \ 'whitelist': ['java'],
        \ })

au User lsp_setup call lsp#register_server({
        \ 'name': 'php-lsp',
        \ 'cmd': {server_info->['php-lsp']},
        \ 'whitelist': ['php'],
        \ })

autocmd TabNew * call RefreshCtrlP(getcwd())
autocmd VimLeave * silent !echo -ne "\033]112\007"
""autocmd BufRead,BufNewFile *.ts let g:ycm_filetype_blacklist['typescript'] = 1
autocmd BufRead,BufNewFile *.ts setlocal filetype=typescript
autocmd BufRead,BufNewFile *.md setlocal filetype=markdown
autocmd BufRead,BufNewFile *.twig setlocal filetype=htmldjango
""autocmd BufEnter *.java autocmd! eclim_java
autocmd BufEnter *.java setlocal foldnestmax=2
autocmd BufEnter *.js setlocal foldnestmax=4
autocmd BufEnter *.js execute 'let b:ternProjectDir = "' . getcwd() . '"'
""autocmd BufEnter *.xml autocmd! eclim_xml
""autocmd BufEnter *.css autocmd! eclim_css_validate
""autocmd BufRead,BufNewFile *.js autocmd! eclim_javascript
""autocmd BufRead,BufNewFile *.jsp autocmd! eclim_html_validate
""autocmd BufRead,BufNewFile *.html autocmd! eclim_html_validate
""autocmd BufRead,BufNewFile *.module,*.php,*.inc autocmd! eclim_php
""autocmd BufRead,BufNewFile * autocmd! eclim_refresh_files
autocmd BufEnter * execute "if bufname('%') != '' | call timer_start(0, 'FoldOpen') | endif"
autocmd BufEnter *.html set filetype=xml
""autocmd BufWinLeave *.* call MakeView()
autocmd BufWinEnter *.* silent noautocmd call LoadView()
""autocmd FileType php set omnifunc=phpcomplete#CompletePHP
""autocmd FileType module set omnifunc=phpcomplete#CompletePHP
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType js set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
autocmd FileType jsp set filetype=xml
autocmd FileType mason set filetype=xml
autocmd BufEnter *.jspf set filetype=xml
autocmd BufEnter *.vm set filetype=sql
autocmd InsertEnter * setlocal foldmethod=manual
autocmd BufEnter,BufRead,BufWrite *.sql setlocal foldmethod=expr
autocmd FileType qf setlocal foldmethod=expr
autocmd FileType qf setlocal foldexpr=SearchFoldExpr(v:lnum)
autocmd BufEnter,BufRead,BufWrite *.py setlocal foldmethod=indent
autocmd BufWritePost * setl fdm=syntax
autocmd BufWritePost *.sql setl fdm=expr
autocmd BufWritePost *.py setl fdm=indent

autocmd FileType java nnoremap <leader>i :JavaSearch -p <c-r>=substitute(fnamemodify(@%, ':t'), '\v\.java$', '', 'g')<cr>.<c-r>=expand('<cword>')<cr> -t method -x implementors<cr> 
autocmd FileType java nnoremap <leader>g :JavaSearchContext<cr>
autocmd FileType java nnoremap <leader>fc :cscope find c <c-r>=expand('<cword>')<cr><cr>
autocmd FileType java nnoremap <leader>t :JUnit<cr>
autocmd FileType c nnoremap <leader>g :CSearchContext<cr>
autocmd FileType php nnoremap <leader>g :PhpSearchContext<cr>
autocmd VimEnter * nnoremap <c-p> :CtrlP <c-r>=getcwd()<cr><cr>
autocmd BufRead *.sql nmap <buffer> <leader>sd :call sw#sqlwindow#execute_sql("select * from <c-r>=expand('<cword>')<cr>;")<cr>
autocmd CompleteDone * set completeopt-=preview
""autocmd BufEnter * setlocal bufhidden=hide
""autocmd FileType jsp,jspf nmap <leader>g execute 'yi" | :<C-r>=fnamemodify(bufname('%'), '':p:h'')<cr>/<C-r>"'
autocmd BufWritePost *.java call UpdateTagsJava()

" ================================================================================
" Mappings
nmap <Leader>f :echo @%<cr>
nmap q: :
nmap <Leader>* :SWSqlInsertMatch<cr>n
nmap <Leader># :SWSqlInsertMatch<cr>N
""nnoremap <Leader>p byw:PhpSearch -p <C-R>"<cr>
imap <c-d> <c-o>:set completeopt+=preview<cr><c-x><c-o>
imap kk <C-R>"
imap kj <Esc>
imap <C-l> -<Esc>vy39po
nmap <Leader>d :pwd<cr>
nmap <Leader>J :JavaSearch -p 
nmap <Leader>w <C-W><C-w>z60<cr>
cmap <C-k> <up>
cmap <C-j> <down>
nmap <Leader>x ggVGx
nmap <leader>o :call DoJavaImportOrganize()<cr>
nmap <leader>\ :MtaJumpToOtherTag<cr>
imap <c-f> <C-R>=substitute(expand('%:r'), '\v\c^.*\/([^\/]+)$', '\1', 'g')<cr>
nmap <Leader>r :e<cr>
nmap <Leader>h :AirlineBuffersPrevious<cr>
nmap <leader>k :call BufferAlternate()<cr>
nmap <leader>j :CtrlPJumps<cr>
nmap <c-t> :call ctrlp#init(ctrlp#java_types#id())<cr>
nmap <leader>u :CtrlPMRUFiles<cr>
nnoremap <c-w>o :call Maximize()<cr>
nmap <Leader>l :AirlineBuffersNext<cr>
nmap <leader>v :call VifmCd()<cr>
imap jj <del>
nmap <Leader>b ^
vmap <Leader>b ^
nmap <leader>zv zMzazA
nmap <Leader>e $
nmap <c-k> :CtrlPObsession<cr>
vmap <Leader>e $
vmap <leader>r :!sqlformat -r -kupper -<cr>
nmap <Leader>G ggVGy<C-o><C-o>
nmap <Leader>n :AirlineBuffersGoTo 
nmap <Leader>N :tabn 
nmap <Leader>: :call InsertJavaClassVariable()<cr>
nmap M m$
map <C-d> <Plug>(easymotion-prefix)
nnoremap / /\v\c
nnoremap g/ /
cnoremap %s %s/\v
inoremap <C-@> <C-x><C-u><C-p>_
"Mappings of cursors
imap <left> <nop>
imap <right> <nop>
imap <up> <nop>
imap <down> <nop>
vmap <left> <nop>
vmap <right> <nop>
vmap <up> <nop>
vmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>
nmap <up> <nop>
nmap <down> <nop>
"End mapping of cursors
""inoremap <tab> <C-R>=TriggerSnippet()<CR>
nmap <leader>By :SessionSave<cr>:qa<cr>
nmap <Leader>s :w<cr>
nmap <C-z> :shell<cr>
nmap <Leader>q :AirlineBuffersClose<cr>
nmap <Leader>fh :noautocmd VimgrepSearchFromHere 
""nmap <Leader>fr :noautocmd LuceneSearch 
nmap <Leader>fr :Ags 
""nmap <Leader>fw :noautocmd LuceneSearch <C-r>=expand('<cword>')<cr><cr>
""nmap <Leader>fw :let @/='<C-r>=expand('<cword>')<cr>'<cr>:Ags<CR>nggr
nmap <Leader>fw :let @/='<C-r>=expand('<cword>')<cr>'<cr>:Ack!<CR>nggr
""vmap <Leader>fs y:noautocmd VimgrepSearch <C-r>"<cr>
vmap <Leader>fs y:Ags <C-r>"<cr>
""nmap <Leader>c :call eclim#lang#UpdateSrcFile('<C-R>=&filetype<cr>')<cr>
nmap <Leader><C-p> :CtrlPBuffersList<cr>
nmap <Leader>Q :q!<cr>:tabp<cr>
""nmap <C-]> <C-w><C-]><C-w>T
nmap <C-\>> <C-w>}
vmap <leader>c <esc>:call feedkeys("\e`<i/*\e`>a*/\e")<cr>
nmap <leader>tw :%s/\v\s+$//ge \| :%s/\t/\=TabSpaces($TABSTOP)/ge \| :w<cr>
nmap <leader>fo c<C-w><C-w>:e <C-r>"<CR>
nmap <leader>fq :AgsQuit<cr>
imap <Esc>oC <Esc>li
nmap <Leader><F3> :let @/ = "\\<" . expand("<cword>") . "\\>"<cr>
nnoremap <Leader>p :echo b:profile<cr>
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

nmap <leader>sr :SWSqlExecuteNow 5000 wbdisplay record;<cr>
nmap <leader>st :SWSqlExecuteNow 5000 wbdisplay tab;<cr>
nmap <leader>sq <C-w>j:q<cr>
nmap <F1> :tabn 1<cr>
nmap <F2> :tabn 2<cr>
nmap <F3> :tabn 3<cr>
nmap <F4> :tabn 4<cr>
nmap <F5> :tabn 5<cr>
nmap <F6> :tabn 6<cr>
nmap <F7> :tabn 7<cr>
nmap <F8> :tabn 8<cr>
nmap <F9> :tabn 9<cr>
" Incsearch mappings
noremap <silent><expr> <Plug>(incsearch-forward) incsearch#go({'command': '/', 'pattern': '\v\c', 'prompt': '>>>'})
map z/ <Plug>(incsearch-forward)
map z? <Plug>(incsearch-backward)

cnoremap <C-d> <BS>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <C-Left>
cnoremap <C-f> <C-Right>
cnoremap <C-l> <Right>

""snoremap <c-j> <esc>i<right><c-r>=TriggerSnippet()<cr>
""inoremap <c-j> <c-r>=TriggerSnippet()<cr>
" ================================================================================
" Custom functions
function! TabSpaces(n)
  let result = ""
  for i in range(a:n)
    let result = result . " "
   endfor
  return result
endfunction

function! Cp(source, dest)
    let dest_folder = substitute(a:dest, '\v[\/]?[^\/]+$', '', 'g')
    execute "!mkdir -p " . dest_folder
    execute '!cp "' . a:source . '" "' . a:dest . '"'
endfunction

function! Stylus(source, dest)
    call Cp(a:source, a:dest)
    let source_css = fnamemodify(a:source, ':p:r') . ".css"
    let dest_css = fnamemodify(a:dest, ':p:r') . '.css'
    let cmd = "!stylus " . a:source . " -o " . source_css
    execute cmd
    call Cp(source_css, dest_css)
endfunction

function! Prepare_run_all()
	tabnew
	call s:prepare_run_all('run-all.sql')
endfunction

function! s:prepare_run_all(file)
	let b = bufnr('%')
	execute "e " . a:file
	normal gg
	silent! execute '%s/\v;//g'
	silent! execute '%s/\vprompt(.{-});[ \s\t]*$/wbecho \1/g'
	silent! execute '%s/\vprompt(.*)$/wbecho \1;/g'
	normal gg

	let pattern = '\v^\@([^;]+)(;)?[ \s\t]*$'
	let r = search(pattern)
	while r != 0
		normal x
		normal y$
		let _file  = @"
		normal ddk
		let e = 'WbInclude -file=' . _file . ' -continueOnError=true -searchFor="(prompt|show errors).*" =useRegex=true -replaceWith="" -ignoreCase=true -printStatements=true -displayResult=true;'
		put =e
		write
		let cmd = "edit " . _file
		execute cmd
		call Prepare_run_all_file()
		write
		execute "buffer " . b
		let r = search(pattern)
	endwhile
endfunction

function! s:prepare_run(pattern, n)
	silent! execute '%s/\v^[ \s\t]*prompt.*$//g'
	let pattern1 = a:pattern
	let pattern2 = '\v^[ \s\t]*\/[ \s\t]*$'
	let @/ = ''
	let n = a:n
	let r = search(pattern1)
	while r != 0
		normal V
		let i = search(pattern2)
		if (i == 0)
			break
		endif
		normal y 
		normal 0V
		let i = search(pattern2)
		normal xk
		let e = 'WbInclude -file="' . bufname('%') . '-' . n . '" -continueOnError=true -searchFor="(prompt|show errors).*" -useRegex=true -replaceWith="" -ignoreCase=true -printStatements=true -displayResult=true -delimiter=/;'
		put =''
		put =e
		put =''
		let lines = split(@", '\n')
		call writefile(lines, bufname('%') . '-' . n)
		let n = n + 1
		let r = search(pattern1)
	endwhile
endfunction

function! Prepare_run_all_file()
	normal gg
	call s:prepare_run('\v\c^[\s\t ]*create[\s\t ]+(or[\s\t ]+replace[\s\t ]+)?(function|library|package|procedure|trigger|type)', 1)
	normal gg
	call s:prepare_run('\v\c^[ \s\t]*begin[ \s\t]*$', 1000)
endfunction

function! InsertJavaClassVariable()
	let name = input("Name: ")
	let desc = input("Description: ")
	let type = input("Type: ")

	let c = toupper(name[0])
	let cname = c . name[1:]

	put= '/**'
	put= ' * ' . desc
	put= ' */'
	put= 'private ' . type . ' ' . name . ';'
	put= ''
	" "put= '/**'
	" "put= ' * Created by popesad'
	" "put= ' *'
	" "put= ' * <p>Gets the ' . name . ' variable</p>'
	" "put= ' *'
	" "put= ' * @return	' . type
	" "put= ' */'
	put= 'public ' . type . ' get' . cname . '(){'
	put= '	return this.' . name . ';'
	put= '}'
	put= ''
	" "put= '/**'
	" "put= ' * Created by popesad'
	" "put= ' *'
	" "put= ' * <p>Sets the ' . name . ' variable</p>'
	" "put= ' *'
	" "put= ' * @param	newValue ' . type . ' The new value'
	" "put= ' *'
	" "put= ' * @return	void'
	" "put= ' */'
	put= 'public void set' . cname . '(' . type . ' newValue){'
	put= '	this.' . name . ' = newValue;'
	put= '}'
	normal 13k=13j13ji
endfunction

function! MakeView()
    if !(bufname('%') =~ '\v\c^r[0-9]+_https:\/\/') && strlen(expand('%:p')) <= 224
        mkview
    endif
endfunction

function! LoadView()
    ""loadview
    normal! zMzv
endfunction

function! UpdateTagsJava()
    let f = expand("%:p")
    let cwd = getcwd()
    let tagfilename = cwd . "/tags"
    let cmd = 'ctags -a -f ' . tagfilename . ' -a --language-force=java ' . '"' . f . '"'
    let resp = system(cmd)
endfunction

function! VifmCd()
    let command = 'silent !vifm --remote -c "cd ' . expand('%:p:h') . '"'
    execute command
    redraw!
endfunction

function! GotoJump()
    execute "jumps"
    let j = input("Please select your jump: ")
    if (j != '')
        let pattern = '\v\c^\+'
        if (j =~ pattern)
            let j = substitute(j, pattern, '', 'g')
            execute "normal " . j . "\<c-i>"
        else
            execute "normal " . j . "\<c-o>"
        endif
    endif
endfunction

function! DoJavaImportOrganize()
    ""execute "w! /tmp/file.tmp"
    ""execute "call system('cp " . undofile(bufname('%')) . " " . undofile('/mnt/e/tmp/file.tmp') . "')"
    ""if &modified == 0
    ""    call append(line('.') - 1, '')
    ""    call cursor(line('.') - 1, 1)
    ""    delete
    ""endif
    ""execute "call system('cp " . undofile(bufname('%')) . " /tmp/undo-file')"
    execute "JavaImportOrganize"
    execute "w"
    ""execute "rundo! /tmp/undo-file"
endfunction

function! SingleInstanceEdit(file)
    try
        call ctrlp#exit()
    catch
    endtry
    let g:alt_buf = bufname('%')
    let b_all = range(1, bufnr('$'))
    let b_unl = filter(b_all, 'buflisted(v:val)')

    let file = fnamemodify(a:file, ':p')

    for info in getbufinfo()
        if fnamemodify(info.name, ':p') == file && has_key(info.variables, 'tabpages')
            for tab_info in gettabinfo()
                if has_key(tab_info.variables, 'tab_id') && index(info.variables.tabpages, tab_info.variables.tab_id) != -1
                    let tabnr = tab_info.tabnr
                    execute "tabn " . tab_info.tabnr
                    break
                endif
            endfor
        endif
    endfor

    execute 'e ' . substitute(a:file, '\v ', "\\\\ ", 'g') 
endfunction

function! BufferAlternate()
    let file = bufname('#')
    if file == ''
        echohl WarningMsg
        echomsg 'There is no alternate buffer'
        echohl None
        return
    endif

    call SingleInstanceEdit(file)
endfunction

function! CtrlPSingleInstanceEdit(mode, line)
    call SingleInstanceEdit(a:line)
endfunction

function! MoveBufferToTab(new_tab)
    if a:new_tab =~ '\v^[0-9]+$'
        let reg_z = @z
        let @z=@%
        execute "AirlineBuffersClose"
        execute "tabn " . a:new_tab
        execute "e " . @z
        let @z = reg_z
    endif
endfunction

function! Maximize()
    ""call MakeView()
    if exists('b:maximized_from')
        let tab = b:maximized_from
        unlet b:maximized_from
        execute "tabclose"
        execute "tabn " . tab
    else
        let wrap = &wrap
        let b:maximized_from = tabpagenr()
        let buf = bufnr('%')
        tabnew
        execute "buffer " . buf
        if !wrap
            setlocal nowrap
        else
            setlocal wrap
        endif
    endif
    call LoadView()
endfunction

function! ReloadUndo()
    execute "call system('cp " . undofile(bufname('%')) . " /tmp/undo-file')"
    execute "rundo! /tmp/undo-file"
endfunction

function! SearchFoldExpr(lnum)
    if a:lnum == 1
        return '>1'
    endif
    if a:lnum == line('$')
        return '<1'
    endif
    let prev = substitute(getline(a:lnum - 1), '\v^([^\|]+)\|.*$', '\1', 'g')
    let crt = substitute(getline(a:lnum), '\v^([^\|]+)\|.*$', '\1', 'g')
    let _next = substitute(getline(a:lnum + 1), '\v^([^\|]+)\|.*$', '\1', 'g')
    if crt != _next
        return '<1'
    endif
    if crt != prev
        return '>1'
    endif

    return -1
endfunction

function! SqlFoldExpression(lnum)
    if (a:lnum == 1)
        let b:fold_level = 0
    endif
    if getline(a:lnum) =~ '\v^-- begin'
        let b:fold_level += 1
        return '>' . b:fold_level
    endif
    if getline(a:lnum) =~ '\v^-- end[^;]+;$'
        let result = '<' . b:fold_level
        let b:fold_level -= 1
        return result
    endif

    return -1
endfunction

function! MavenFinished()
    call sw#interrupt("MavenDisplayResult()")
    return ''
endfunction

function! MavenDisplayResult()
    let s_below = &splitbelow
    set splitbelow
    execute "split MAVEN-OUTPUT"
	setlocal buftype=nofile
	setlocal bufhidden=wipe
	setlocal noswapfile
	setlocal nobuflisted
    execute "read /tmp/maven-output"
    setlocal fileformat=dos
    if !s_below
        set nosplitbelow
    endif
    setlocal nomodifiable
    normal G
    wincmd t
    redraw!
endfunction

function! MavenBuild()
    if !exists('g:Maven_build_dir')
        let g:Maven_build_dir = input('Please input the weblogic profile folder: ', '', 'dir')
    endif

    let cmd = '/mnt/e/bin/build-partial ''' . fnamemodify(bufname('%'), ':p:h') . ''' ''' . g:Maven_build_dir . '''; read '
    call system('tmux new-window -n MVN "' . cmd . '"')
endfunction

function! AddJavaPackage()
    let path = fnamemodify(bufname('%'), ':h')
    let parts = split(path, '/')
    let i = len(parts) - 1

    let package = ''
    while i > 0 && parts[i] != 'java'
        let package = parts[i] . (package == '' ? '' : '.') . package
        let i = i - 1
    endwhile

    if package == ''
        throw 'Package could not be determined'
        return
    endif

    let reg_z = @z
    let @z = 'package ' . package . ";\n"

    normal gg"zP
    let @z = reg_z
endfunction

function! SessionOpenComplete(A, L, P)
	let sessions = substitute(glob(s:sessions_path . '/*'), '\\', '/', 'g')
	return substitute(sessions, '\(^\|\n\)' . s:sessions_path . '/', '\1', 'g')
endfunction

function! SessionOpen(session)
    let path = s:sessions_path . "/" . a:session
    execute "so " . path
    execute "Obsession " . path
endfunction

function! OracleObjects(rows)
    let result = []
    for row in a:rows
        if !(row =~ '\v^(DR[\$#]|A\$)')
            call add(result, row)
        endif
    endfor

    return result
endfunction

function! WintabsSessionImport()
    let wintabs = eval(g:Str_Wintabs_session)
    if exists('g:Airline_buffers')
        unlet g:Airline_buffers
    endif

    if exists('g:Airline_tabs')
        unlet g:Airline_tabs
    endif

    if exists('g:Airline_buffers_order')
        unlet g:Airline_buffers_order
    endif

    for info in getbufinfo()
        let info.variables['tabpages'] = []
    endfor

    let tabs = []

    for tab in keys(wintabs)
        let tab = tab * 1
        if tab <= tabpagenr('$')
            let tab_id = localtime() + tab
            call add(tabs, tab_id)
            call settabvar(tab, 'tab_id', tab_id)

            for buffer in wintabs[tab]['1']
                let n = bufnr(buffer)
                if n == -1
                    continue
                endif

                let tabpages = getbufvar(n, 'tabpages')
                call add(tabpages, tab_id)
            endfor
        endif
    endfor

    let g:Airline_tabs = string(tabs)
endfunction

function! FoldOpen(...)
    normal! zv
endfunction

function! CtrlpMatch(items, str, limit, mmode, ispath, crfile, regex)
    call clearmatches()
    let result = []
    if a:str != ''
        let pattern = '\v^([A-Z]{2,})(.*)$'
        if a:str =~# pattern
            let letters = substitute(a:str, pattern, '\1', '')
            let rest = substitute(a:str, pattern, '\2', '')
            let pattern = '\v'

            for i in range(0, len(letters) - 1)
                let pattern .= letters[i] . '[a-z]*'
            endfor
            let pattern .= rest
        else
            let pattern = '\c' . a:str
        endif
        for item in a:items
            if item =~# pattern
                call add(result, item)
                if len(result) > a:limit
                    break
                endif
            endif
        endfor
    else
        let result = a:items[0:a:limit]
    endif
    if !exists('g:ctrlp_match_current_file') && a:ispath && !empty(a:crfile) && index(result, a:crfile) != -1
        call remove(result, index(result, a:crfile))
    endif
    return result
endfunction

function! TernModule()
    let pos = getcurpos()
    let name = expand('<cword>')
    let l = pos[1]
    let c = pos[2]
    let ch = getline(l)[c]
    while ch != '{'
        let c += 1
        if (c >= strlen(getline(l)))
            let c = 0
            let l += 1
            if (l > line('$'))
                echomsg "Could not find the beginning of the function"
                return
            endif
        endif
        let ch = getline(l)[c]
    endwhile

    call cursor(l, c + 1)
    let reg_z = @z
    normal "zy%
    let content = "var " . name . "Obj = function()" . @z . "\n" . name . " = " . name . "Obj();"
    let @z = reg_z

    call writefile(split(content, '\v\c[\n\r]'), '/tmp/file.js')

    let cmd = "/mnt/e/.dotfiles/vim/bundle/YouCompleteMe/third_party/ycmd/third_party/tern_runtime/node_modules/tern/bin/condense --name " . name . " /tmp/file.js >/mnt/e/.dotfiles/vim/bundle/YouCompleteMe/third_party/ycmd/third_party/tern_runtime/node_modules/tern/defs/" . name . ".json"

    call system(cmd)

    call cursor(pos[1], pos[2])
endfunction

function! EnablePreview()
    let opts = &completeopt
    if opts =~ 'preview'
        set completeopt-=preview
    else
        set completeopt+=preview
    endif
endfunction

function! RefreshCtrlP(dir)
    let base = "/mnt/e/.cache/ctrlp/"
    let file1 = base . substitute(a:dir, '\c\v\/', '%', 'g') . '.txt'
    let file2 = base. substitute(a:dir, '\c\v\/', '', 'g')
    if !file_readable(file1)
        let cmd = "/mnt/e/bin/ctrlp-find > " . file1
        call job_start(["/bin/sh", '-c', cmd])
    endif
    if !file_readable(file2)
        let cmd = "/mnt/e/.dotfiles/vim/bundle/ctrlp-java-types/resources/ctrlp-java-types " . file2 . " >/tmp/output"
        call job_start(["/bin/sh", '-c', cmd])
    endif
endfunction

" ================================================================================
" Colors
""set guifont=Liberation_Mono
if ($VIM_COLORS != "")
  colorscheme $VIM_COLORS
else
  ""colorscheme atom-dark-256
  ""colorscheme monokai
  colorscheme asu1dark
endif

silent! call airline#extensions#whitespace#toggle()
"call sw#dbexplorer#add_panel(':oracle', 'O', 'Show Info', 'H', 'wbvardef session=@"select sys_context(''userenv'', ''current_schema'') from dual";\nwbdisplay record;\nselect * from all_objects where owner = ''$[session]'' and object_name = ''%object%'';\nwbdisplay tab;')
"call sw#dbexplorer#add_panel(':oracle', 'O', 'Usages', 'U', 'wbvardef session=@"select sys_context(''userenv'', ''current_schema'') from dual"; \n-- @wbresult Used By\nselect owner, name, type  from all_dependencies where referenced_owner = ''$[session]'' and referenced_name = ''%object%'' and owner not in (''SYS'', ''SYSTEM'', ''PUBLIC'');\n-- @wbresult Uses\nselect referenced_owner, referenced_name, referenced_type from all_dependencies where owner = ''$[session]'' and name = ''%object%'' and referenced_owner not in (''SYS'', ''SYSTEM'', ''PUBLIC'');')
"call sw#dbexplorer#add_tab_event('O', 'after', 'OracleObjects')
sign define important text=>> texthl=Search
command! -nargs=0 Important execute ":sign place 1 line=" . line('.') . " name=important file=" . expand("%:p")
command! -nargs=1 -complete=file Edit call SingleInstanceEdit(<f-args>)
command! -nargs=1 MoveBufferToTab call MoveBufferToTab(<f-args>)
command! -nargs=1 -complete=custom,SessionOpenComplete SessionOpen call SessionOpen(<f-args>)
command! -nargs=0 SessionClose execute "unlet! g:this_obsession | %bdelete"

so ~/.vim/colors.vim
