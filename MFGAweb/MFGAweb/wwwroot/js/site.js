document.getElementById("formularioRegistro").addEventListener("submit", function(event) {
    event.preventDefault();
  
    var email = document.getElementById("email").value;
    var contrasena = document.getElementById("contrasena").value;
    var confirmarContrasena = document.getElementById("confirmarContrasena").value;
  
    if (email === "" || contrasena === "" || confirmarContrasena === "") {
      alert("Por favor, complete todos los campos.");
      return;
    }
  
    if (contrasena !== confirmarContrasena) {
      alert("Las contraseñas no coinciden. Por favor, inténtalo de nuevo.");
      return;
    }
  
    // Aquí puedes agregar la lógica para enviar los datos de registro al servidor o realizar otras acciones
  
    alert("Registro exitoso. ¡Bienvenido!");
  
    // Restablecer los campos del formulario
    document.getElementById("email").value = "";
    document.getElementById("contrasena").value = "";
    document.getElementById("confirmarContrasena").value = "";
  });
  
