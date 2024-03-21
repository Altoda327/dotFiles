-- Impostare a 1, nvim aprirà la finestra di anteprima dopo aver inserito il buffer Markdown
-- predefinito: 0
vim.g.mkdp_auto_start = 0

-- Impostare a 1, nvim chiuderà automaticamente la finestra di anteprima corrente quando si cambia
-- da un buffer Markdown a un altro buffer
-- predefinito: 1
vim.g.mkdp_auto_close = 1

-- Impostare a 1, Vim aggiornerà il Markdown quando si salva il buffer o
-- quando si esce dalla modalità di inserimento. Il valore predefinito 0 è per l'aggiornamento automatico del Markdown mentre si modifica o
-- si sposta il cursore
-- predefinito: 0
vim.g.mkdp_refresh_slow = 0

-- Impostare a 1, il comando MarkdownPreview può essere usato per tutti i file,
-- di default può essere usato solo nei file Markdown
-- predefinito: 0
vim.g.mkdp_command_for_global = 0

-- Impostare a 1, il server di anteprima è disponibile per gli altri nella tua rete.
-- Di default, il server ascolta su localhost (127.0.0.1)
-- predefinito: 0
vim.g.mkdp_open_to_the_world = 0

-- Utilizzare un IP personalizzato per aprire la pagina di anteprima.
-- Utile quando si lavora su Vim remoto e si visualizza l'anteprima sul browser locale.
-- Per ulteriori dettagli, vedere: https://github.com/iamcco/markdown-preview.nvim/pull/9
-- predefinito vuoto
vim.g.mkdp_open_ip = ''

-- Specificare il browser per aprire la pagina di anteprima
-- per il percorso con spazio
-- valido: `/percorso/con\ spazio/xxx`
-- non valido: `/percorso/con\\ spazio/xxx`
-- predefinito: ''
vim.g.mkdp_browser = ''

-- Impostare a 1, visualizzare l'URL della pagina di anteprima sulla riga di comando quando si apre la pagina di anteprima
-- predefinito è 0
vim.g.mkdp_echo_preview_url = 0

-- Un nome di funzione Vim personalizzato per aprire la pagina di anteprima
-- questa funzione riceverà l'URL come parametro
-- predefinito è vuoto
vim.g.mkdp_browserfunc = ''

-- Opzioni per il rendering di Markdown
-- mkit: opzioni markdown-it per il rendering
-- katex: opzioni KaTeX per la matematica
-- uml: opzioni markdown-it-plantuml
-- maid: opzioni mermaid
-- disable_sync_scroll: se disabilitare lo scorrimento sincronizzato, predefinito 0
-- sync_scroll_type: 'middle', 'top' o 'relative', valore predefinito è 'middle'
--   middle: significa che la posizione del cursore è sempre al centro della pagina di anteprima
--   top: significa che la parte superiore del viewport di Vim viene sempre visualizzata in alto sulla pagina di anteprima
--   relative: significa che la posizione del cursore è sempre in posizione relativa alla pagina di anteprima
-- hide_yaml_meta: se nascondere i metadati YAML, predefinito è 1
-- sequence_diagrams: opzioni js-sequence-diagrams
-- content_editable: se abilitare la modifica del contenuto per la pagina di anteprima, predefinito: v:false
-- disable_filename: se disabilitare l'intestazione del nome file per la pagina di anteprima, predefinito: 0
vim.g.mkdp_preview_options = {
    mkit = {},
    katex = {},
    uml = {},
    maid = {},
    disable_sync_scroll = 0,
    sync_scroll_type = 'middle',
    hide_yaml_meta = 1,
    sequence_diagrams = {},
    flowchart_diagrams = {},
    content_editable = false,
    disable_filename = 0,
    toc = {}
}

-- Usare uno stile Markdown personalizzato. Deve essere un percorso assoluto
-- come '/Users/nomeutente/markdown.css' o expand('~/markdown.css')
vim.g.mkdp_markdown_css = ''

-- Usare uno stile di evidenziazione personalizzato. Deve essere un percorso assoluto
-- come '/Users/nomeutente/highlight.css' o expand('~/highlight.css')
vim.g.mkdp_highlight_css = ''

-- Usare una porta personalizzata per avviare il server o vuoto per casuale
vim.g.mkdp_port = ''

-- Titolo della pagina di anteprima
-- ${name} sarà sostituito con il nome del file
vim.g.mkdp_page_title = '「${name}」'

-- Utilizzare una posizione personalizzata per le immagini
vim.g.mkdp_images_path = '/home/user/.markdown_images'

-- Tipi di file riconosciuti
-- questi tipi di file avranno comandi MarkdownPreview...
vim.g.mkdp_filetypes = {'markdown'}

-- Impostare il tema predefinito (scuro o chiaro)
-- Per impostazione predefinita il tema è definito in base alle preferenze del sistema
vim.g.mkdp_theme = 'dark'

-- Combina la finestra di anteprima
-- predefinito: 0
-- se abilitato, riutilizzerà la finestra di anteprima precedentemente aperta quando si visualizza il file markdown.
-- assicurarsi di impostare let g:mkdp_auto_close = 0 se si è abilitata questa opzione
vim.g.mkdp_combine_preview = 0

-- Aggiorna automaticamente i contenuti della finestra di anteprima combinata quando si modifica il buffer markdown
-- solo quando g:mkdp_combine_preview è 1
vim.g.mkdp_combine_preview_auto_refresh = 1
