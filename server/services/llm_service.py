import google.generativeai as genai
from config import Settings

settings = Settings()
class LLMService:
    def __init__(self):
        genai.configure(api_key=settings.GEMINI_API_KEY)
        generation_config = {
            "temperature": 1,
            "top_p": 0.95,
            "top_k": 40,
            "max_output_tokens": 8192,
            "response_mime_type": "text/plain",
        }
        self.model = genai.GenerativeModel("gemini-2.0-flash-exp")
        

        
    def generate_response(self,query: str ,search_results : list[dict]):
        context_text = "\n\n".join(
            [
                f"Source {i+1} ({result['url']}):\n{result['content']}"
                for i, result in enumerate(search_results)
            ]
        )

        full_prompt =f"""
        Context from web search :
        {context_text}

        Query : {query}

        Please provide a comprehensive , detailed, well-cited accurate response using the above context. Think and reason deeply Ensure it answers the query the user is asking.
        Do not use your knowledge  untill it is absolutely necessary .
        """

        response = self.model.generate_content(full_prompt)

        return response.text