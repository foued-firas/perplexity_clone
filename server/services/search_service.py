from config import Settings
from tavily import TavilyClient


settings = Settings()
tavily_client = TavilyClient(api_key=settings.TAVILY_API_KEY)



class SearchService:
    def web_search(self,query:str):
        response = tavily_client.search(query)
        print(response.get("results" , []))