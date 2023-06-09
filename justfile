build:
  wget -np -r --accept-regex 'https:\/\/dumps\.wikimedia\.org\/enwiki\/latest\/enwiki-latest-pages-articles[0-9]+\..*' https://dumps.wikimedia.org/enwiki/latest/
  python ./gather_wordfreq.py dumps.wikimedia.org/enwiki/latest/*.bz2 > wordfreq.txt

