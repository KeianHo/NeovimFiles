function! Chomp(string)
    return substitute(a:string, '\n\+$', '', '')
endfunction

function! InsertPic() range
:d
python3 << EOF
from pathlib import Path
import vim
from PIL import ImageGrab

figuresPath = Path(vim.eval("getcwd()") + '/figures/')
if not figuresPath.exists():
    print('not found')
    figuresPath.mkdir()
img = ImageGrab.grabclipboard()
imagename = vim.eval('@"')[:-1]
img.save(f"{figuresPath}/{imagename}.png", 'png')
EOF
exe ":normal! O\\includegraphics[width=\\textwidth]{" . Chomp(@") . "}"
endfunction
