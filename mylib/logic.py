import wikipedia
from textblob import TextBlob


def wiki(name="War Goddess", length=1):
    """This is a wikipedia fetcher"""

    my_wiki = wikipedia.summary(name, length)
    return my_wiki


def search_wiki(name):
    """Search Wikipedia for Names"""

    search_results = wikipedia.search(name)
    return search_results


def phrases(text):
    """Extract noun phrases from text"""

    page = wiki(text)
    blob = TextBlob(page)
    return blob.noun_phrases
