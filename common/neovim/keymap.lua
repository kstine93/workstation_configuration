-- cnoremap <expr> <c-n> wildmenumode() ? "\<c-n>" : "\<down>"
-- cnoremap <expr> <c-p> wildmenumode() ? "\<c-p>" : "\<up>"
map('c', '<c-n>', [[wildmenumode() ? "\<c-n>" : "\<down>"]], { expr = true })
map('c', '<c-p>', [[wildmenumode() ? "\<c-p>" : "\<up>"]], { expr = true })

