1 no me funciona el enlace con la otra página
2 quiero editar el lugar donde me despliega la lista
3 quiero que la lista sea editable desde la propia página
4 quiero que los cambios se guarden en un servidor

el codigo que tengo de momento es este

<!DOCTYPE html>
<html lang="es">
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>da5nx.github.io</title>
    <style>
      body {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        text-align: center;
      }

      /* Estilo específico para el primer párrafo */
      .first-paragraph {
        color: blue;
        font-size: 20px;
      }

      /* Estilo específico para el segundo párrafo */
      .second-paragraph {
        color: green;
        font-size: 24px;
        font-weight: bold;
      }
       /* Estilo específico para el segundo párrafo */
      .three-paragraph {
        color: red;
        font-size: 24px;
        font-weight: bold;
        height: 50vh;
      }
    </style>
  </head>
  <body>
    <h1>MAGIC</h1>
    <ul id="user-list"></ul>
    <h2>Listas mazos</h2>
    <p class="first-paragraph">Ingresar mazo.</p>
    <p class="second-paragraph">prueba</p>
    <script class="three-paragraph">
        fetch("https://api.github.com/users")
            .then(response => response.json())
            .then(data => {
                let userList = document.getElementById("user-list");
                data.forEach(user => {
                    let li = document.createElement("li");
                    let link = document.createElement("a");
                    link.href = prueba.html?da5nx=${user.login}; // Enlace con el nombre del usuario
                    li.textContent = user.login;
                    li.appendChild(link);
                    userList.appendChild(li);
                });
            });
    </script>
  </body>
</html>
