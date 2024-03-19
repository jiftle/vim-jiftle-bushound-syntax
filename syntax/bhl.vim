" Vim syntax file
" filetype: bhl
" Language: BusHoundLog
" Maintainer: lixu <lixugood@126.com>
" Last change: 2017 Jun 01
"
" Language Information
"
" BusHound 抓包日志
" ic卡抓包指令分析，可以高亮显示指令
"


if version < 600
syntax clear
elseif exists("b:current_syntax")
finish
endif

syn keyword BHout OUT
syn keyword BHin IN
"syn match BHout "^ \d\+.\?\d\?\s\+OUT\s\+.*"
"syn match BHin "^ \d\+.\?\d\?\s\+IN\s\+.*"
syn match BHok "90\s\+00"
syn match BHfind "\(ff\s\+04\s\+01\)\|\(ff\s\+ca\)"
"syn match BHslct "00\s\+a4\s\+0[04]"
syn match BHread "\(ff\|00\)\s\+b[02]"
syn match BHupdt "\(ff\|0[04]\)\s\+d[6c]"
syn match BHauth "ff\s\+88"

" ----------- 读头 ------------
syn match B_Slot_CPU "^ \d\+.\?\d\?\s\+OUT\s\+.*\(6f 00\)"
syn match B_Slot_SAM "6f\s\+00\s\+00\s\+02"

"--------------修改----------------- lixu
"--------------用户卡指令
syn match B_Crd_CPU "00\s\+20"
syn match B_Crd_CPU "00\s\+82"
syn match B_Crd_CPU "00\s\+84"
syn match B_Crd_CPU "00\s\+88"
syn match B_Crd_CPU "00\s\+a4"

syn match B_Crd_CPU "00\s\+20"
syn match B_Crd_CPU "00\s\+82"
syn match B_Crd_CPU "00\s\+84"
syn match B_Crd_CPU "00\s\+88"
syn match B_Crd_CPU "00\s\+a4"

syn match B_Crd_CPU "00\s\+b0"
syn match B_Crd_CPU "00\s\+b2"
syn match B_Crd_CPU "00\s\+c0"
syn match B_Crd_CPU "00\s\+d6"
syn match B_Crd_CPU "04\s\+d6"

syn match B_Crd_CPU "00\s\+d0"
syn match B_Crd_CPU "04\s\+d0"
syn match B_Crd_CPU "00\s\+dc"
syn match B_Crd_CPU "04\s\+dc"
syn match B_Crd_CPU "00\s\+d2"

syn match B_Crd_CPU "04\s\+d2"
syn match B_Crd_CPU "04\s\+d0"
syn match B_Crd_CPU "84\s\+16"
syn match B_Crd_CPU "84\s\+18"
syn match B_Crd_CPU "84\s\+1e"

syn match B_Crd_CPU "80\s\+24"
syn match B_Crd_CPU "84\s\+24"
syn match B_Crd_CPU "80\s\+2c"
syn match B_Crd_CPU "80\s\+50"
syn match B_Crd_CPU "80\s\+52"

syn match B_Crd_CPU "80\s\+54"
syn match B_Crd_CPU "80\s\+58"
syn match B_Crd_CPU "80\s\+5a"
syn match B_Crd_CPU "80\s\+5c"
syn match B_Crd_CPU "80\s\+5e"

syn match B_Crd_CPU "80\s\+0e"
syn match B_Crd_CPU "80\s\+30"
syn match B_Crd_CPU "80\s\+32"
syn match B_Crd_CPU "80\s\+d4"
syn match B_Crd_CPU "84\s\+d4"

syn match B_Crd_CPU "80\s\+e0"

"--------------SAM卡指令
syn match B_Crd_SAM "80\s\+70"
syn match B_Crd_SAM "80\s\+72"
syn match B_Crd_SAM "80\s\+fa"
syn match B_Crd_SAM "80\s\+1c"
syn match B_Crd_SAM "80\s\+1a"

"-------------错误信息
syn match B_Error "65\s\+00"
syn match B_Error "67\s\+00"
syn match B_Error "68\s\+82"
syn match B_Error "69\s\+01"
syn match B_Error "69\s\+81"

syn match B_Error "69\s\+82"
syn match B_Error "69\s\+83"
syn match B_Error "69\s\+84"
syn match B_Error "69\s\+85"
syn match B_Error "69\s\+86"

syn match B_Error "69\s\+87"
syn match B_Error "69\s\+88"
syn match B_Error "6a\s\+80"
syn match B_Error "6a\s\+81"
syn match B_Error "6a\s\+82"

syn match B_Error "6a\s\+83"
syn match B_Error "6a\s\+84"
syn match B_Error "6a\s\+85"
syn match B_Error "6a\s\+86"
syn match B_Error "6a\s\+88"

"syn match B_Error "6b\s\+00"
syn match B_Error "6e\s\+00"
syn match B_Error "6f\s\+00"
syn match B_Error "6a\s\+86"
syn match B_Error "93\s\+02"

syn match B_Error "93\s\+03"
syn match B_Error "94\s\+01"
syn match B_Error "94\s\+02"
syn match B_Error "94\s\+03"
syn match B_Error "94\s\+06"

syn match B_Error "63\s\+c\d"


"--------------读卡控制指令
syn match BCrd "00\s\+62"
syn match BCrd "00\s\+63"
syn match BCrd "00\s\+6f"
syn match BCrd "00\s\+6f"
syn match B_Drd "00\s\+50"

syn match B_Drd "ff\s\+01"
syn match B_Drd "ff\s\+02"
syn match B_Drd "ff\s\+03"
syn match B_Drd "ff\s\+04"
syn match B_Drd "ff\s\+05"
syn match B_Drd "ff\s\+06"

syn match B_Drd "ff\s\+8a"
syn match B_Drd "ff\s\+8b"
syn match B_Drd "ff\s\+8c"

"----------------Mifare卡
syn match B_Drd "ff\s\+82"
syn match B_Drd "ff\s\+88"
syn match B_Drd "ff\s\+b0"
syn match B_Drd "ff\s\+d6"
syn match B_Drd "ff\s\+ca"
syn match B_Drd "ff\s\+cb"
syn match B_Drd "ff\s\+cc"
syn match B_Drd "ff\s\+cd"

"--------------配色
hi B_Slot_CPU ctermfg=60 ctermbg=155
hi B_Slot_SAM ctermfg=30 ctermbg=155

hi BCrd ctermfg=196 guifg=gray
hi BHout ctermfg=166 guifg=yellow
hi BHin ctermfg=146 guifg=blue
hi BHfind ctermfg=60 ctermbg=198 guifg=DarkOliveGreen1 guibg=grey15
hi BHok ctermfg=10 ctermbg=255 guifg=grey15 guibg=green
hi link BHfind BHok
hi BHslct guifg=green guibg=blue
hi BHread guifg=purple guibg=grey
hi BHupdt guifg=brown guibg=grey
hi BHauth guifg=magenta guibg=grey

"-------------------配色
hi B_Crd_SAM ctermfg=130 ctermbg=252 guifg=grey15 guibg=yellow
hi B_Crd_CPU ctermfg=128 ctermbg=252 guifg=grey15 guibg=blue
hi B_Error guifg=grey15 guibg=red
hi B_Drd guifg=lightmagenta

let b:current_syntax = "BusHoundLog"
