from pydantic import BaseModel
from typing import List

class UserIn(BaseModel):
    u_id: str
    


class UserOut(BaseModel):    
    desc_id: List[str]