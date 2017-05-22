let g:ycm_filetype_blacklist = {
			\ 'tagbar' : 1,
			\ 'qf' : 1,
			\ 'notes' : 1,
			\ 'markdown' : 1,
			\ 'unite' : 1,
			\ 'text' : 1,
			\ 'vimwiki' : 1,
			\ 'pandoc' : 1,
			\ 'infolog' : 1,
			\ 'mail' : 1,
			\ 'mundo': 1,
			\ 'fzf': 1,
			\ 'ctrlp' : 1
			\}
" ^ Ignore filetypes

"set error or warning signs

let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '⚠'
" 错误样式 使用 Syntastic 插件才有用
"highlight link SyntasticErrorLine error
"highlight link SyntasticWarningLine todo

"调试选项
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'

let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf_c.py'
"编写 C 语言文件时切换配置文件
let g:ycm_collect_identifiers_from_tags_files = 1
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
"inoremap <expr> <space>       pumvisible() ? \"\<C-y>" : \"\<space>"	
"按空格键即选中当前项 (反注释时去掉双引号前的转义斜杠)
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0

""在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
""注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0


"" 自己开启的部分选项
	"" rust 支持
	let g:ycm_rust_src_path = '/home/zwindl/.vim/srcs/rust/beta/src'
	let g:ycm_always_populate_location_list = 1

	""使用 python2/3 作为解释器
	""FIXME:使用 python3 作为解释器，tern 工作异常
	"let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
	
	"" 这个选项对于有重载的函数非常有用
	let g:ycm_add_preview_to_completeopt = 1
	"" Python3 的补全支持
	let g:ycm_python_binary_path='/usr/bin/python3'

"" End "

"" 关于 UltiSnip 的选项
"" 解决 YCM 和 UltiSnips 快捷键冲突
	"" YCM
	let g:ycm_use_ultisnips_completer = 1
	let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
	let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
	"let g:UltiSnipsJumpForwardTrigger="<c-b>"
	"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"inoremap <c-x><c-k> <c-x><c-k>

"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> 
"" 跳转到定义处
nnoremap <leader>jd :YcmCompleter GoTo<CR> 

"" 获取对象的类型
nnoremap <leader>gt :YcmCompleter GetType<CR>
