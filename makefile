FILES = metadata.yaml \
	parts/*.md \
	slides.md
FLAGS_REVEAL = -V revealjs-url=./reveal \
	-V theme=black

all: slides

slides:
	pandoc -s \
		--filter=./node_modules/.bin/mermaid-filter \
	  -t revealjs \
		-o slides.html \
		$(FILES) $(FLAGS_REVEAL)

clean:
	rm -f slides.html \
	&& rm -rf reveal \
	&& rm -rf node_modules

get_reveal:
	wget https://github.com/hakimel/reveal.js/archive/master.tar.gz \
	&& tar -xzvf master.tar.gz \
	&& mv reveal.js-master reveal \
	&& rm -rf *.tar.gz*
  
get_mermaid:
	npm install mermaid mermaid.cli mermaid-filter