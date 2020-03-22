" Remove any default mappings {{{

" }}}

" Set the key mappings for the various commands {{{
  au FileType fsharp let g:lmap.m = { "name": "major-mode-cmd",
    \}
" }}}

" Layer specific configurations {{{
  " Set the default indentation for the language
  SpSpaceIndent 'fsharp', 4

  if SpaceNeovimIsLayerEnabled('+completion/coc')
    " Configure coc.nvim
    if g:spCocHoverInfo
      augroup FsharpCocHoverBehaviour
        au!
        " Show documentation on hover.
        au CursorHold *.fs silent SpCocHover
      augroup end
    endif
    if g:sp_format_on_save
      augroup FsharpCocFormatBehaviour
        au!
        " Setup formatexpr specified filetype(s).
        au FileType fsharp setl formatexpr=CocAction('formatSelected')
      augroup end
    endif
  endif

  if SpaceNeovimIsLayerEnabled('+completion/deoplete')
    " Configure deoplete
  endif

  if SpaceNeovimIsLayerEnabled('+checkers/neomake')
    " Configure neomake
  endif

  if SpaceNeovimIsLayerEnabled('+checkers/syntastic')
    " Configure syntastic
  endif
" }}}
