from fastapi import FastAPI
from pydantic_models.chat_body import ChatBody
from services.sort_source_service import SortSourceService
from services.search_service import SearchService


app = FastAPI()

search_service = SearchService()
sort_source_service = SortSourceService()

# chat 
@app.post("/chat")
def chat_endpoint(body :ChatBody):
    search_results = search_service.web_search(body.query)
    
    # sort the sources
    sort_source_service.sort_sources(body.query , search_results)
    # generate the response using LLM
    
    return body.query




 