# App para el consumo (inferencia) del modelo

## La app contiene la siguiente estructura


```
.
├── app
│   ├── __init__.py
│   ├── main.py # Define la app.
│   └── resources
│       ├── __init__.py
│       ├── serving_model # Acá se encuentran los binarios del modelo.
│       │   ├── assets
│       │   ├── saved_model.pb
│       │   └── variables
│       │       ├── variables.data-00000-of-00001
│       │       └── variables.index
│       └── validation.py # Valida los datos de entrada (requests) y de salida (response) de la app
├── Dockerfile # Instrucciones para la creación de la imagen
└── requirements.txt # Librerías para el funcionamiento de la app


```

## Funcionamiento

Esta app recibe como request el user id y devuelve 10 recomendaciones (IDs) par ese
usuario.

### Observación:  
Si bien no se deben subir binarios a un repo, hago una excepción
debido al poco volmen que estos ocupan y teniendo en cuenta que esta app no está 
productiva, fue armada a modo de ejemplo, para dar cuenta de cómo consumir el modelo. 


