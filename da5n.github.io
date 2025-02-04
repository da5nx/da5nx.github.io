<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>da5n.github.io</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            text-align: center;
            font-family: Arial, sans-serif;
        }

        /* Estilo para la lista */
        #user-list {
            list-style-type: none;
            padding: 0;
            margin: 20px 0;
        }

        #user-list li {
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 200px;
            text-align: left;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        #user-list a {
            text-decoration: none;
            color: #007BFF;
        }

        #user-list a:hover {
            text-decoration: underline;
        }

        .editable {
            cursor: pointer;
            color: #28a745;
        }

        .editable:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>MAGIC</h1>
    <h2>Listas mazos</h2>
    <p class="first-paragraph">Ingresar mazo.</p>
    <p class="second-paragraph">prueba</p>
    <ul id="user-list"></ul>

    <script>
        // Cargar la lista de usuarios desde la API
        fetch("https://api.github.com/users")
            .then(response => response.json())
            .then(data => {
                let userList = document.getElementById("user-list");
                data.forEach(user => {
                    let li = document.createElement("li");

                    // Crear enlace
                    let link = document.createElement("a");
                    link.href = `prueba.html?user=${user.login}`; // Enlace con el nombre del usuario
                    link.textContent = user.login;

                    // Crear botón para editar
                    let editButton = document.createElement("span");
                    editButton.textContent = " ✏️"; // Icono de lápiz
                    editButton.className = "editable";
                    editButton.onclick = () => editItem(li);

                    // Agregar elementos al li
                    li.appendChild(link);
                    li.appendChild(editButton);
                    userList.appendChild(li);
                });
            });

        // Función para editar un elemento de la lista
        function editItem(li) {
            let currentText = li.firstChild.textContent; // Obtener el texto actual
            let newText = prompt("Editar nombre:", currentText); // Pedir nuevo texto

            if (newText !== null && newText.trim() !== "") {
                li.firstChild.textContent = newText; // Actualizar el texto
            }
        }
    </script>
</body>
</html>
