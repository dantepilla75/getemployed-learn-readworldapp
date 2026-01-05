from fastapi import FastAPI
from fastapi.testclient import TestClient
from main import app

client = TestClient(app)


@app.get("/")
def test_read_main():
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == {"message": "wikipedia API. call /search or /wiki"}


@app.get("/")
def test_read_phrase():
    response = client.get("/phrase/Barack Obama")
    assert response.status_code == 200
    assert response.json() == {
        "result": [
            "barack hussein obama ii",
            "august",
            "american politician",
            "44th president",
        ]
    }
