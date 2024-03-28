# Delete local dumps.wikimedia.org directory and any/all existing wordfreq.txt files (but NOT results/)
reset: 
  rm -rf dumps.wikimedia.org
  rm wordfreq.txt
  rm wordfreq_fr.txt
  rm wordfreq_es.txt
  rm wordfreq_de.txt
  rm wordfreq_pt.txt

# Build English word list
build:
  wget -np -r --accept-regex 'https:\/\/dumps\.wikimedia\.org\/enwiki\/latest\/enwiki-latest-pages-articles[0-9]+\..*' https://dumps.wikimedia.org/enwiki/latest/
  python ./gather_wordfreq.py dumps.wikimedia.org/enwiki/latest/*.bz2 > wordfreq.txt

# Build French word list
buildfr:
  wget -np -r --accept-regex 'https:\/\/dumps\.wikimedia\.org\/frwiki\/latest\/frwiki-latest-pages-articles[0-9]+\..*' https://dumps.wikimedia.org/frwiki/latest/
  python ./gather_wordfreq.py dumps.wikimedia.org/frwiki/latest/*.bz2 > wordfreq_fr.txt

# Build Spanish word list
buildes:
  wget -np -r --accept-regex 'https:\/\/dumps\.wikimedia\.org\/eswiki\/latest\/eswiki-latest-pages-articles[0-9]+\..*' https://dumps.wikimedia.org/eswiki/latest/
  python ./gather_wordfreq.py dumps.wikimedia.org/eswiki/latest/*.bz2 > wordfreq_es.txt

# Build German word list
buildde:
  wget -np -r --accept-regex 'https:\/\/dumps\.wikimedia\.org\/dewiki\/latest\/dewiki-latest-pages-articles[0-9]+\..*' https://dumps.wikimedia.org/dewiki/latest/
  python ./gather_wordfreq.py dumps.wikimedia.org/dewiki/latest/*.bz2 > wordfreq_de.txt

# Build Portuguese word list
buildpt:
  wget -np -r --accept-regex 'https:\/\/dumps\.wikimedia\.org\/ptwiki\/latest\/ptwiki-latest-pages-articles[0-9]+\..*' https://dumps.wikimedia.org/ptwiki/latest/
  python ./gather_wordfreq.py dumps.wikimedia.org/ptwiki/latest/*.bz2 > wordfreq_pt.txt
