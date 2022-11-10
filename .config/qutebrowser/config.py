config.load_autoconfig(True)

# autoplay function
c.content.autoplay = False

# config-edit opening programs
c.editor.command = ['st', '-e', 'nvim', '{}']

# adblock
c.content.blocking.method = 'both'
c.content.default_encoding = 'utf-8'
c.content.geolocation = False

## display pdfs within qutebrowser
# c.content.pdfjs = True

config.bind('yf', 'hint links spawn --detach mpv --force-window yes {hint-url} --ytdl-format="best[width<=720p]" --pause')
config.bind('yl', 'hint links yank')
config.bind('yg', 'spawn --detach mpv --force-window yes {url} --ytdl-format="best[width<=720p]" --pause')

# set darkmode
config.set("colors.webpage.darkmode.enabled", True)
config.set("colors.webpage.bg", "black")
