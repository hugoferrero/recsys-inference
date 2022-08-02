from resources.validation import UserIn, UserOut
from fastapi import FastAPI
import tensorflow as tf

path = 'app/resources/serving_model'

loaded = tf.saved_model.load(path) 

app = FastAPI()


@app.post("/")
def create_item(user: UserIn):
                
    scores, titles = loaded([user.u_id])

    recommendations = titles.numpy()

    g = recommendations.astype(str)
   
    descuentos = {
    "desc_id" : [
    g[0][0],

    g[0][1],

    g[0][2], 

    g[0][3],

    g[0][4],

    g[0][5],

    g[0][6],

    g[0][7],

    g[0][8],

    g[0][9] ] 
           
    }  

    return UserOut(**descuentos)


