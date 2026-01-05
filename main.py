from fastapi import FastAPI
import uvicorn
from mylib.logic import search_wiki
from mylib.logic import wiki as wikilogic
from mylib.logic import phrases as wikiphrases

app = FastAPI()


@app.get("/")
async def read_root():
    return {"message": "wikipedia API. call /search or /wiki"}


@app.get("/search/{value}")
async def search(value: str):
    """Page to search in wikipedia"""

    result = search_wiki(value)
    return {"result": result}


@app.get("/wiki/{value}")
async def wiki(value: str):
    """retrieve wikipedia page"""

    result = wikilogic(value)
    return {"result": result}


@app.get("/phrase/{text}")
async def phrase(text: str):
    """retrieve wikipedia and return phrases"""

    result = wikiphrases(text)
    return {"result": result}


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8080)
