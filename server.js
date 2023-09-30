const dotenv= require('dotenv');
dotenv.config();
const express = require('express');
const app = express();

const sequelize = require('./src/conect/conect');
const Catalogo = require('./src/modelos/catalogo');
const Categorias = require('./src/modelos/categoria');
const { Op, QueryTypes } = require('sequelize');
const CatalogoGenero = require('./src/modelos/catalogoGenero');
const Genero = require('./src/modelos/genero');
const ActorActriz = require("./src/modelos/actricesyactores");
const CatalogoReparto = require("./src/modelos/catalogoReparto")


 const port = process.env.PORT || 3001;

 app.use(express.json());

//// Autenticar conexión a la bbdd ////

 app.use(async (req, res, next) => {
      try {
            await sequelize.authenticate();
            await Catalogo.sync();
            await Categorias.sync();
            await CatalogoGenero.sync();
            await Genero.sync();
            await ActorActriz.sync();
            await CatalogoReparto.sync();
            next();
      } catch (error) {
            res.status(500).json({ error: 'Error en el servidor', description: error.message });
      }
});

                        //// Endpoints ////

//// Sirve la información de todas las categorías existentes ////

app.get('/categorias', async (req, res) => {
  try {
        const todasLasCategorias = await Categorias.findAll();

        todasLasCategorias.length !== 0 ? res.status(200).json(todasLasCategorias)
              : res.status(404).json({ error: "No se encontraron productos para listar." });

  } catch (error) {
        res.status(500).json({ error: 'Error en el servidor', description: error.message });
  }
});

//// Otra manera de generar la misma consulta ////

//  app.get("/categorias", async (req, res) => {
//       try {
//         const categorias = await sequelize.query("SELECT * FROM categorias");
//         res.status(200).send(categorias);
//       } catch (error) {
//         console.error("Error en la consulta SQL:", error);
//         res.status(500).send("Error en el servidor");
//       }
//     });
    
//// Sirve el catálogo completo ‘la vista SQL’ ////

    app.get("/catalogo", async (req, res) => {
      try {
        const catalogo = await sequelize.query("SELECT * FROM vistacatalogo");
        res.status(200).send(catalogo);
      } catch (error) {
        console.error("Error en la consulta SQL:", error);
        res.status(500).json("Error en el servidor");
      }
    });

//// Filtra por id de la película/serie ////

app.get('/catalogo/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const producto = await Catalogo.findByPk(id);

    if (!producto) {
      res.status(404).json({ error: "ID no encontrado." });
    } else {
      res.status(200).json(producto);
    }
  } catch (error) {
    res.status(500).json({ error: 'Error en el servidor', description: error.message });
  }
});

//// Filtrar por nombre o parte del nombre ////

app.get('/catalogo/titulo/:titulo', async (req, res) => {
  try {
    const { titulo } = req.params;
    const products = await Catalogo.findAll({
      where: {
        titulo: {
          [Op.like]: `%${titulo}%`
        }
      }
    });

    if (products.length === 0) {
      return res.status(404).json({ error: 'Titulo no encontrado' });
    }

    res.status(200).json(products);
  } catch (error) {
    res.status(500).json({ error: 'Error en el servidor', description: error.message });
  }
});

//// Filtrar por genero ////

app.get('/genero/:nombre', async (req, res) => {
  try {
    const { nombre } = req.params;
    const products = await sequelize.query(
      `SELECT c.*, g.nombre AS genero
       FROM Catalogo c
       JOIN CatalogoGenero cg ON c.id = cg.idCatalogo
       JOIN Genero g ON cg.idGenero = g.id
       WHERE g.nombre LIKE :nombre`,
      {
        replacements: { nombre: `%${nombre}%` },
        type: QueryTypes.SELECT,
      }
    );

    if (products.length === 0) {
      return res.status(404).json({ error: 'Género no encontrado' });
    }

    res.status(200).json(products);
  } catch (error) {
    res.status(500).json({ error: 'Error en el servidor', description: error.message });
  }
});

//// Filtrar por serie, película o cualquier otra categoría que pueda existir ////

app.get('/categoria/:categoria', async (req, res) => {
  try {
    const { categoria } = req.params;
    const categoriaEncontrada = await Categorias.findOne({
      where: {
        nombre: categoria,
      },
    });

    if (!categoriaEncontrada) {
      return res.status(404).json({ error: 'Categoría no encontrada' });
    }
    const productos = await Catalogo.findAll({
      where: {
        idCategoria: categoriaEncontrada.id,
      },
    });

    if (productos.length === 0) {
      return res.status(404).json({ error: 'No se encontraron productos en esta categoría' });
    }

    res.status(200).json(productos);
  } catch (error) {
    res.status(500).json({ error: 'Error en el servidor', description: error.message });
  }
});


 app.listen(port, () => console.log(`Servidor escuchando en el puerto ${port}`) );