<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>Dado App</title>

    <!--CSS-->
    <link rel="stylesheet" href="css/styles.css">

</head>

<body onload="init();">


	<label for="fecha" >Fecha:</label>
	<input type="text" tabindex="1" id="fecha" name="fecha" placeholder="dd/mm/aaaa" />
	<script>
		var input_fecha = document.getElementById("fecha");
		var teclas_validas = ["0","1","2","3","4","5","6","7","8","9"];
		var barra = "/";
		//var fecha_value = input_fecha.value; 
		
		input_fecha.onkeyup = function(event){
			var tecla = event.key;
			var valor = input_fecha.value;
			console.log('tecla pulsada: ' + tecla );
			console.log('Valor fecha: ' + valor );
			
			//comprobar si es numero
			if ( -1 === teclas_validas.indexOf(tecla) ){
				console.log('No esta permitido');
			}else{
				console.log('tecla correcta');
				//Comprobacion del Dia
				if ( valor.length === 2 ){
					if ( valor > 0 && valor <= 31 ){
						valor = valor + barra;
					}else{
						valor = "";
					}	
				}
				
			}
			
			//actualizar input value
			input_fecha.value = valor;
			
			console.log('terminamos');
		};
	
	</script>

    <nav>
        <ul>
            <li>
                <h3>Posicionamiento y visualizacion</h3>
                <ul>
                    <li><a href="posicionamiento/linea_bloque.html">Linea y Bloque</a></li>
                    <li><a href="posicionamiento/normal.html">Normal</a></li>
                    <li>Relativo</li>
                    <li>...</li>
                </ul>
            </li>


            <li>
                <h3>CSS</h3>
                <ul>
                    <li>Selectores básicos</li>
                    <li>Selectores Avanzados</li>
                </ul>
            </li>
        </ul>
    </nav>


    <div class="contenedor">
        <h2>Tabla de lectores</h2>
        <p>aaa</p>

        <input type="text" value="" name="saludo" id="saludo" placeholder="Dime tu nombre" />
        <button id="btn_saludo">Saludo</button>

        <script>
            var boton_saludo = document.getElementById("btn_saludo");
            boton_saludo.onclick = function() {

                var saludo = document.getElementById("saludo");
                alert("Kaixo " + saludo.value);
            };

        </script>


        <hr>


        <table id="tabla_clase">
            <thead></thead>
            <tfoot></tfoot>
            <tbody>
                <!-- 1 Row -->
                <tr>
                    <td></td>
                    <td></td>
                    <td id="a1">Andoni</td>
                    <td id="a2">Borja</td>
                </tr>
                <!-- 2 Row -->
                <tr>
                    <td></td>
                    <td id="a3">Jon Fraile</td>
                    <td id="a4">Jon Ander</td>
                    <td></td>
                </tr>
                <!-- 3 Row -->
                <tr>
                    <td id="a5">Josu</td>
                    <td></td>
                    <td></td>
                    <td id="a6">Joseba</td>
                </tr>
                <!-- 4 Row -->
                <tr>
                    <td></td>
                    <td></td>
                    <td id="a7">Ekaitz</td>
                    <td id="a8">Aitor</td>
                </tr>
            </tbody>
        </table>

        <!--centrarlo-->
        <button id="boton">Lanzar dado</button>
        <br>
        <!--Poner quien lee-->
        <p>El lector es: <span id="lector"></span></p>

        <h2>Tabla de ranking de lectores</h2>
        <table>
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Numero de veces</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td colspan="2">8 Afortunados</td>
                </tr>
            </tfoot>
            <tbody>
                <tr>
                    <td id="n1">Andoni</td>
                    <td id="r1">0</td>
                </tr>
                <tr>
                    <td id="n2">Borja</td>
                    <td id="r2">0</td>
                </tr>
                <tr>
                    <td id="n3">Jon Fraile</td>
                    <td id="r3">0</td>
                </tr>
                <tr>
                    <td id="n4">Jon Ander</td>
                    <td id="r4">0</td>
                </tr>
                <tr>
                    <td id="n5">Josu</td>
                    <td id="r5">0</td>
                </tr>
                <tr>
                    <td id="n6">Joseba</td>
                    <td id="r6">0</td>
                </tr>
                <tr>
                    <td id="n7">Ekaitz</td>
                    <td id="r7">0</td>
                </tr>
                <tr>
                    <td id="n8">Aitor</td>
                    <td id="r8">0</td>
                </tr>
            </tbody>
        </table>
    </div>
    <!--div class="contenedor"-->

    <!--JS-->
    <script>
        function init() {

            //darle la funcion al pulsar el boton con id boton
            var boton = document.getElementById("boton");
            boton.onclick = function() {

                //remover estilos de todas las celdas
                var celdas = document.getElementsByTagName("td");
                for (i = 1; i < celdas.length; i++) {
                    celdas[i].classList.remove("active");
                }

                //Generar numero aleatorio
                var aleatorio = Math.floor((Math.random() * 8) + 1);

                //agregar class active al td aleatorio
                var td = document.getElementById("a" + aleatorio);
                td.classList.add("active");

                //ranking
                /*
                var td_ranking =
                    document.getElementById("r" + aleatorio);
                var valor = td_ranking.innerHTML;
                valor = parseInt(valor) + 1;
                td_ranking.innerHTML = valor;
                */
                var cuenta = document.getElementById("r" + aleatorio).innerHTML;
                document.getElementById("r" + aleatorio).innerHTML = cuenta++;



                //visualizar lector en id lector
                var td_nombre = document.getElementById("n" + aleatorio);
                var lector = document.getElementById("lector");
                var nombre = td_nombre.textContent;
                lector.innerHTML = nombre;
            };
        }

    </script>
</body>

</html>