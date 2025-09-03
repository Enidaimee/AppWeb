package com.upiiz.Holamundo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiController {

    @GetMapping("/")
    public String home() {
        return """
               <h1>Hola Mundo de las API's</h1>
               <h2>¿Qué es una API?</h2>
               <p><b>Api significa «interfaz de programación de aplicaciones» o «Application Programming Interface».</b> 
               Básicamente, son un conjunto de funciones y procedimientos que permiten la creación de aplicaciones. 
               Acceden a los datos y funciones de otras aplicaciones, servicios o sistemas operativos.</p>
               
               <p>Se trata de un intermediario de software que permite que dos aplicaciones se comuniquen entre sí. 
               Cada vez que usamos una aplicación como Facebook, enviamos un mensaje, o miramos el tiempo en el móvil, 
               estamos usando una API.</p>
               """;
    }
}
