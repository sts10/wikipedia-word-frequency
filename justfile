clear:
  rm -rf dumps.wikimedia.org
  rm wordfreq.txt

build:
  wget -np -r --accept-regex 'https:\/\/dumps\.wikimedia\.org\/enwiki\/latest\/enwiki-latest-pages-articles[0-9]+\..*' https://dumps.wikimedia.org/enwiki/latest/
  python ./gather_wordfreq.py dumps.wikimedia.org/enwiki/latest/*.bz2 > wordfreq.txt

buildfr:
  wget -np -r --accept-regex 'https:\/\/dumps\.wikimedia\.org\/frwiki\/latest\/frwiki-latest-pages-articles[0-9]+\..*' https://dumps.wikimedia.org/frwiki/latest/
  python ./gather_wordfreq.py dumps.wikimedia.org/frwiki/latest/*.bz2 > wordfreq_fr.txt

buildes:
  wget -np -r --accept-regex 'https:\/\/dumps\.wikimedia\.org\/eswiki\/latest\/eswiki-latest-pages-articles[0-9]+\..*' https://dumps.wikimedia.org/eswiki/latest/
  python ./gather_wordfreq.py dumps.wikimedia.org/eswiki/latest/*.bz2 > wordfreq_es.txt

