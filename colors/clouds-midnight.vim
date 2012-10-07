" Vim color file
" Converted from Textmate theme Clouds Midnight using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Clouds Midnight"

hi Cursor ctermfg=234 ctermbg=110 cterm=NONE guifg=#191919 guibg=#7da5dc gui=NONE
hi Visual ctermfg=NONE ctermbg=0 cterm=NONE guifg=NONE guibg=#000000 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#252525 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#252525 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#252525 gui=NONE
hi LineNr ctermfg=240 ctermbg=235 cterm=NONE guifg=#565656 guibg=#252525 gui=NONE
hi VertSplit ctermfg=237 ctermbg=237 cterm=NONE guifg=#3c3c3c guibg=#3c3c3c gui=NONE
hi MatchParen ctermfg=101 ctermbg=NONE cterm=underline guifg=#927c5d guibg=NONE gui=underline
hi StatusLine ctermfg=246 ctermbg=237 cterm=bold guifg=#929292 guibg=#3c3c3c gui=bold
hi StatusLineNC ctermfg=246 ctermbg=237 cterm=NONE guifg=#929292 guibg=#3c3c3c gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=0 cterm=NONE guifg=NONE guibg=#000000 gui=NONE
hi IncSearch ctermfg=234 ctermbg=68 cterm=NONE guifg=#191919 guibg=#5d90cd gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Folded ctermfg=59 ctermbg=234 cterm=NONE guifg=#3c403b guibg=#191919 gui=NONE

hi Normal ctermfg=246 ctermbg=234 cterm=NONE guifg=#929292 guibg=#191919 gui=NONE
hi Boolean ctermfg=65 ctermbg=NONE cterm=NONE guifg=#39946a guibg=NONE gui=NONE
hi Character ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Comment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#3c403b guibg=NONE gui=NONE
hi Conditional ctermfg=101 ctermbg=NONE cterm=NONE guifg=#927c5d guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=101 ctermbg=NONE cterm=NONE guifg=#927c5d guibg=NONE gui=NONE
hi DiffAdd ctermfg=246 ctermbg=64 cterm=bold guifg=#929292 guibg=#43800a gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#880505 guibg=NONE gui=NONE
hi DiffChange ctermfg=246 ctermbg=23 cterm=NONE guifg=#929292 guibg=#1c3250 gui=NONE
hi DiffText ctermfg=246 ctermbg=24 cterm=bold guifg=#929292 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=15 ctermbg=160 cterm=NONE guifg=#ffffff guibg=#e92e2e gui=NONE
hi WarningMsg ctermfg=15 ctermbg=160 cterm=NONE guifg=#ffffff guibg=#e92e2e gui=NONE
hi Float ctermfg=70 ctermbg=NONE cterm=NONE guifg=#46a609 guibg=NONE gui=NONE
hi Function ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Identifier ctermfg=160 ctermbg=NONE cterm=NONE guifg=#e92e2e guibg=NONE gui=NONE
hi Keyword ctermfg=101 ctermbg=NONE cterm=NONE guifg=#927c5d guibg=NONE gui=NONE
hi Label ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5d90cd guibg=NONE gui=NONE
hi NonText ctermfg=250 ctermbg=234 cterm=NONE guifg=#bfbfbf guibg=#1f1f1f gui=NONE
hi Number ctermfg=70 ctermbg=NONE cterm=NONE guifg=#46a609 guibg=NONE gui=NONE
hi Operator ctermfg=239 ctermbg=NONE cterm=NONE guifg=#4b4b4b guibg=NONE gui=NONE
hi PreProc ctermfg=101 ctermbg=NONE cterm=NONE guifg=#927c5d guibg=NONE gui=NONE
hi Special ctermfg=246 ctermbg=NONE cterm=NONE guifg=#929292 guibg=NONE gui=NONE
hi SpecialKey ctermfg=250 ctermbg=235 cterm=NONE guifg=#bfbfbf guibg=#252525 gui=NONE
hi Statement ctermfg=101 ctermbg=NONE cterm=NONE guifg=#927c5d guibg=NONE gui=NONE
hi StorageClass ctermfg=160 ctermbg=NONE cterm=NONE guifg=#e92e2e guibg=NONE gui=NONE
hi String ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5d90cd guibg=NONE gui=NONE
hi Tag ctermfg=241 ctermbg=NONE cterm=NONE guifg=#606060 guibg=NONE gui=NONE
hi Title ctermfg=246 ctermbg=NONE cterm=bold guifg=#929292 guibg=NONE gui=bold
hi Todo ctermfg=59 ctermbg=NONE cterm=inverse,bold guifg=#3c403b guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=101 ctermbg=NONE cterm=NONE guifg=#927c5d guibg=NONE gui=NONE
hi rubyFunction ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyConstant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5d90cd guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=101 ctermbg=NONE cterm=NONE guifg=#927c5d guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5d90cd guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5d90cd guibg=NONE gui=NONE
hi rubyEscape ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyControl ctermfg=101 ctermbg=NONE cterm=NONE guifg=#927c5d guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=239 ctermbg=NONE cterm=NONE guifg=#4b4b4b guibg=NONE gui=NONE
hi rubyException ctermfg=101 ctermbg=NONE cterm=NONE guifg=#927c5d guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=160 ctermbg=NONE cterm=NONE guifg=#e92e2e guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=160 ctermbg=NONE cterm=NONE guifg=#e92e2e guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=160 ctermbg=NONE cterm=NONE guifg=#e92e2e guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=160 ctermbg=NONE cterm=NONE guifg=#e92e2e guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=160 ctermbg=NONE cterm=NONE guifg=#e92e2e guibg=NONE gui=NONE
hi erubyComment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#3c403b guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=160 ctermbg=NONE cterm=NONE guifg=#e92e2e guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=133 ctermbg=NONE cterm=NONE guifg=#a165ac guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=160 ctermbg=NONE cterm=NONE guifg=#e92e2e guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=160 ctermbg=NONE cterm=NONE guifg=#e92e2e guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=241 ctermbg=NONE cterm=NONE guifg=#606060 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5d90cd guibg=NONE gui=NONE
hi cssURL ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName ctermfg=160 ctermbg=NONE cterm=NONE guifg=#e92e2e guibg=NONE gui=NONE
hi cssColor ctermfg=133 ctermbg=NONE cterm=NONE guifg=#a165ac guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=241 ctermbg=NONE cterm=NONE guifg=#606060 guibg=NONE gui=NONE
hi cssClassName ctermfg=160 ctermbg=NONE cterm=NONE guifg=#e92e2e guibg=NONE gui=NONE
hi cssValueLength ctermfg=70 ctermbg=NONE cterm=NONE guifg=#46a609 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=133 ctermbg=NONE cterm=NONE guifg=#a165ac guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE