# Documentación de la API TrailerFlix

## Introducción
Esta documentación describe la API TrailerFlix, que proporciona acceso a información almacenada en una bbdd SQL sobre películas y series.

## Endpoints

| Endpoint                 | Método | Descripción                                      |
|--------------------------|--------|--------------------------------------------------|
| `/categorias`            | GET    | Devuelve información de todas las categorías existentes.                       |
| `/catalogo`              | GET    | Devuelve el catálogo completo con información detallada.                        |
| `/catalogo/:id`          | GET    | Filtra el catálogo por código de película/serie.                                |
| `/catalogo/titulo/:nombre`      | GET    | Filtra el catálogo por nombre o parte del nombre de la película/serie.          |
| `/catalogo/:genero`      | GET    | Filtra el catálogo por género del contenido.                                     |
| `/catalogo/:categoria`   | GET    | Filtra el catálogo por categoría (serie, película).           |               |

## Cómo utilizar EndPoints

- **Endpoint:** `/categorias`
- **Descripción:** Devuelve información de todas las categorías existentes.
- **Solicitud:**
http://localhost:3001/categorias

- **Respuesta Exitosa:**
```json
[
    {
        "id": 1,
        "nombre": "Serie"
    },
    {
        "id": 2,
        "nombre": "Película"
    }
]
```
##
- **Endpoint:** `/catalogo`
- **Método:** `GET`
- **Descripción:** Devuelve información del catálogo completo, una vista SQL en formato JSON.

**Ejemplo de Solicitud:**

- **Solicitud:**
http://localhost:3001/catalogo

- **Respuesta Exitosa (resumida, la totalidad es extremadamente extensa):**
```json
        {
            "id": 1,
            "poster": "/posters/1.jpg",
            "titulo": "The Crown",
            "categoria": "Serie",
            "genero": "Drama, Hechos verídicos",
            "resumen": "Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.",
            "temporadas": 4,
            "reparto": "Claire Fox, Helena Bonham Carter, Matt Smith, Olivia Colman, Tobias Menzies, Vanesa Kirby",
            "trailer": null
        },
        {
            "id": 2,
            "poster": "/posters/2.jpg",
            "titulo": "Riverdale",
            "categoria": "Serie",
            "genero": "Drama, Ficción, Misterio",
            "resumen": "El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.",
            "temporadas": 5,
            "reparto": "Camila Mendes, Casey Cott, Lili Reinhart, Mädchen Amick, Madelaine Petsch, Marisol Nichols",
            "trailer": null
        },
```
##
- **Endpoint:**  `/catalogo/:id`  
- **Descripción:** Filtra el catálogo por código de película/serie.
- **Solicitud:**
http://localhost:3001/catalogo/15

- **Respuesta Exitosa:**
```json
{
    "id": 15,
    "poster": "/posters/15.jpg",
    "titulo": "Chernobyl",
    "idCategoria": 1,
    "resumen": "Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.",
    "temporadas": 1,
    "trailer": "https://www.youtube.com/embed/s9APLXM9Ei8"
}
```
##
- **Endpoint:** `/catalogo/:nombre`
- **Descripción:** Filtra el catálogo por nombre o parte del nombre de la película/serie.
- **Solicitud:**
http://localhost:3001/catalogo/mand

- **Respuesta Exitosa:**
```json
[
    {
        "id": 3,
        "poster": "/posters/3.jpg",
        "titulo": "The Mandalorian",
        "idCategoria": 1,
        "resumen": "Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.",
        "temporadas": 2,
        "trailer": "https://www.youtube.com/embed/aOC8E8z_ifw"
    }
]
```
##
- **Endpoint:** `/catalogo/:genero`
- **Descripción:** Filtra el catálogo por género del contenido.
- **Solicitud:**
http://localhost:3001/catalogo/terror

- **Respuesta Exitosa:**
```json
[
    {
        "id": 23,
        "poster": "/posters/23.jpg",
        "titulo": "IT - Capítulo 2",
        "idCategoria": 2,
        "resumen": "En este segundo capitulo Han pasado 27 años desde que el \"Club de los Perdedores\", formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.",
        "temporadas": null,
        "trailer": "https://www.youtube.com/embed/hZeFeYSmBcg",
        "genero": "Terror"
    },
    {
        "id": 27,
        "poster": "/posters/27.jpg",
        "titulo": "DOOM: Aniquilación",
        "idCategoria": 2,
        "resumen": "Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.",
        "temporadas": null,
        "trailer": "https://www.youtube.com/embed/nat3u3gAVLE",
        "genero": "Terror"
    },
    {
        "id": 33,
        "poster": "/posters/33.jpg",
        "titulo": "Soy leyenda",
        "idCategoria": 2,
        "resumen": "Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.",
        "temporadas": null,
        "trailer": "https://www.youtube.com/embed/dtKMEAXyPkg",
        "genero": "Terror"
    }
]
```
##
- **Endpoint:** `/catalogo/:categoria`
- **Descripción:** Filtra el catálogo por categoría (serie, película).
- **Solicitud:**
http://localhost:3001/catalogo/:categoria

- **Respuesta Exitosa: (resumida, la totalidad es extremadamente extensa)**
```json
[
    {
        "id": 1,
        "poster": "/posters/1.jpg",
        "titulo": "The Crown",
        "idCategoria": 1,
        "resumen": "Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.",
        "temporadas": 4,
        "trailer": null
    },
    {
        "id": 2,
        "poster": "/posters/2.jpg",
        "titulo": "Riverdale",
        "idCategoria": 1,
        "resumen": "El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.",
        "temporadas": 5,
        "trailer": null
    },
```
