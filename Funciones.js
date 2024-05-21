function registro() {
    var ru = $("#txtRegistro").val();
    var nombre = $("#txtNombre").val();
    var apellido = $("#txtApellido").val();
    var contra = $("#txtContra").val();

    $.ajax({
        url: "Registro.aspx",
        data: { ru: ru, name: nombre, ape: apellido, pass: contra },
        type: "post",
        success: function (data) {
            if (data.substring(0, 10) === "Registrado") {
                alert("Registrado correctamente");
                location.href = "Login.aspx";
            }
            else
                alert("Error al registrar en registro");
        },
        error: function (data) {
            alert("Error: " + data);
        }
    });
}

