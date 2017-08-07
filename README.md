# Login

[![Build Status](https://travis-ci.org/uqbar-project/eg-login-arena-xtend.svg?branch=master)](https://travis-ci.org/uqbar-project/eg-login-arena-xtend)

En este ejemplo se muestra el uso de un *PasswordField* en una ventana de login.
El *PasswordField* oculta los caracteres ingresados por pantalla.

![image](https://cloud.githubusercontent.com/assets/4549002/17298776/c3264b90-57e1-11e6-96af-cdaeb26bb8bf.png)

Si la password está ok debe mostrar el label en verde, en caso contrario se muestra en naranja. Aquí se ve que el que sabe si la password es correcta es el modelo, pero el que debe asociar 

* password correcta => verde
* password incorrecta => naranja

es un controller de Arena, que maneja colores.

## El modelo

Es un objeto Login con las siguientes propiedades

* usuario
* password
* la password válida (que se ingresa en el constructor)
* si la password está ok, que se bindea contra un label en la vista

