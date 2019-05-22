# debian als base image

# Configuration ENV variables
# Die Hugo version ist 0.55.3
# Die Datei die wir runter laden müssen heißt: hugo_extended_0.55.3_Linux-64bit.deb
# Unsere Dateien müssen in das Verzeichnis: '/usr/share/blog'
# HUGO BASE URL muss auf http://localhost:1313 gesetzt werden


# Install pygments (for syntax highlighting) 
# apt-get -qq update \ && DEBIAN_FRONTEND=noninteractive apt-get -qq install -y --no-install-recommends libstdc++6 python-pygments git ca-certificates asciidoc curl \ && rm -rf /var/lib/apt/lists/*

# Download and install hugo
#    curl -sL -o /tmp/hugo.deb \
#    https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} && \
#    dpkg -i /tmp/hugo.deb && \
#   rm /tmp/hugo.deb && \
#    mkdir ${SITE_DIR}

# Workdir auf das verzeichnis '/usr/share/blog' setzen


# Expose default hugo port 1313


# Automatically build site

# Seite von host auf container kopieren in /usr/share/blog
# hugo seite bauen lassen output (-d) nach /usr/share/nginx/html/

# Hugo server starten baseURL (-b) setzen und bind auf 0.0.0.0

