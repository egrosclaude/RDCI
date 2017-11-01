
##Servicios de la capa de enlace
###Framing

Una entidad de la capa de Enlace en un emisor recibe una PDU de la capa de Red, o paquete, y crea una PDU de la capa de Enlace (**frame, marco o trama**) que la contiene.
El frame puede incluir direcciones de enlace en la cabecera o **header** y un campo de cola o **trailer** de redundancia para control de integridad del frame.

En el lado del receptor, la capa de Enlace reconoce el frame, determinando dónde comienza y termina, separando los campos de header y trailer y entregando su contenido a la capa de Red.

----
###Control de acceso al medio
----
###Entrega confiable
----
###Control de flujo
----
###Detección y corrección de errores
----

**Preguntas**

+ ¿Cuáles son las diferencias en las funciones de control de flujo de la capa de Enlace y de Transporte?

+ ¿Cuáles son las diferencias en las funciones de detección y corrección de errores de la capa de Enlace y de Transporte?


##Detección y corrección de errores

En las PDU de las capas de Transporte y de Red encontramos el campo de Internet Checksum o suma de control para verificación de la integridad de las PDU. En la capa de Enlace, las funciones de control de errores son más sofisticadas y pueden detectar (y aun corregir) errores de uno o varios bits.

----
###Esquemas de detección de errores
- Bits de paridad
- Métodos de sumas de control (Checksums)
- Control de redundancia cíclico (Cyclic Redundancy Check, CRC)




##Enlaces

- Punto a punto (point-to-point)

    Enlaces de fibra óptica, enlaces inalámbricos direccionales (microondas, satelitales)

- De acceso múltiple o de difusión (broadcast)

    Todos los nodos del enlace están conectados al mismo canal de difusión compartido.
    Cableado de cobre en LANs, WiFi.

##Protocolos de acceso múltiple

Cuando los medios son compartidos, es posible que dos o más nodos comiencen una transmisión al mismo tiempo, haciendo que los frames emitidos colisionen. El efecto de una colisión es corromper los frames que colisionan (hacerlos irreconocibles para la entidad de Enlace que debe recibirlas). Por este motivo es necesaria alguna forma de coordinación para reducir o eliminar la probabilidad de colisiones. Esta función de la capa de Enlace se llama control de acceso al medio (Medium Access Control, abreviado MAC).

----
###Características deseables de un protocolo de acceso múltiple
- Equitativo

     Cuando haya M nodos que tienen datos para enviar compartiendo un canal de capacidad R, cada nodo deberá poder lograr en promedio una tasa de transferencia de R/M.
- Descentralizado

     Si existiera un único coordinador del acceso al medio, éste podría convertirse en un **cuello de botella** y en un **punto único de falla**. Un protocolo de acceso al medio descentralizado es aquel donde la decisión de cuál nodo será el siguiente en acceder es tomada en forma colaborativa por todos los nodos del enlace.
- Simple

----
###Categorías de protocolos de acceso múltiple

#### Protocolos de particionamiento de canal

- TDM (Time Division Multiplexing)
- FDM (Frequency Division Multiplexing)

#### De toma de turnos

- Token Passing (Token Bus, Token Ring)

#### De acceso aleatorio

- ALOHA
- CSMA
- Ethernet
   



##Direccionamiento de Enlace

Así como las direcciones IP corresponden a la capa de Red, existe un espacio de direcciones propio de la capa de Enlace. 

- Las direcciones IP públicas son alcanzables desde cualquier punto de Internet. En cambio, las direcciones de la capa de Enlace sólo son visibles en el ámbito de un enlace.
- Las direcciones de enlace están fijas a los dispositivos de comunicaciones o interfaces y viajan con ellos. Cuando un dispositivo cambia de red, cambia de dirección IP pero conserva su dirección de Enlace. Una analogía válida relacionaría la dirección MAC con el DNI de una persona, y la dirección IP con el domicilio postal.
- Las direcciones IP tienen una estructura jerárquica, porque expresan un número de red o subred, y un número de host contenido en esa red. El espacio de direcciones de Enlace es plano.

En una LAN, los dispositivos de hardware, o interfaces, están configurados por el fabricante con direcciones de hardware o **direcciones MAC**. Las direcciones MAC están compuestas por seis octetos y suelen escribirse en notación hexadecimal (como, por ejemplo, **1A:23:F9:CD:06:9B**). Este formato aplica a las direcciones MAC en redes Ethernet, Token Ring, y WiFi. Otras tecnologías de capa de Enlace pueden tener direcciones conformadas de otra manera.

Una dirección MAC se separa en dos componentes: los tres primeros octetos (Organizational Unique Identifier, OUI) son asignados por IEEE a los fabricantes de dispositivos en forma única. Cada fabricante recibe su OUI y administra los tres restantes octetos a conveniencia, de modo de no liberar al mercado dos dispositivos con la misma dirección.

Las direcciones MAC destino y origen (en ese orden) aparecen en la cabecera de todos los frames emitidos. En un medio compartido, cuando una estación gana el canal, comienza a transmitir su frame, el cual se difunde por el medio y alcanza a todas las estaciones. Sólo la estación cuya dirección física coincide con la dirección destino del frame lo procesa, extrayendo la PDU de capa de Red contenida y elevándola a la entidad de Red de ese nodo. Todas las demás estaciones simplemente descartan el frame.

Sin embargo, existe una dirección de capa de Enlace especial, la **dirección de broadcast**, que es reconocida como propia por todos los nodos de la red. Cuando un frame contiene como dirección destino la dirección de broadcast (**FF:FF:FF:FF:FF:FF**), todos los nodos que reciben el frame lo procesan como si fuera dirigido a ellos. Los frames de broadcast son importantes en muchos protocolos que necesitan distribuir información o hacer consultas en toda la LAN. 



##Interfaz entre capas de Red y de Enlace


Cada vez que un host necesita hacer llegar paquetes a otro nodo destino, debe conocer la dirección IP de ese destino para poder iniciar la solicitud a la entidad de capa de Red emisora. Esta dirección IP destino puede ser conocida de antemano por la aplicación, o puede haber sido el resultado de una traducción de nombres pedida a un servidor DNS.

Esta dirección IP es toda la información que tiene la entidad de Red emisora para hacer llegar su paquete a destino. Cuando la entidad de Red recibe la orden de emitir el paquete, debe determinar **si el destino se encuentra en la misma red, o en una red diferente**. La respuesta a esta pregunta es fundamental para que la capa de Enlace pueda construir correctamente el frame que transportará ese paquete.

Para responder esta pregunta, la capa de Red utiliza la **tabla de ruteo** o tabla de reenvío del host origen para encontrar una ruta al destino. 

Se distinguen dos casos:

1. Si la ruta elegida dice que la red del destino está directamente conectada al host, se debe construir un frame con la dirección destino igual a la dirección MAC del nodo destino.
2. Si la ruta elegida dice que la red del destino **no es la misma que la del host**, entonces esa red está más allá de un cierto router; y se debe construir un frame con la dirección destino igual **a la dirección MAC del router**.

En el caso 1, la entrega del paquete es local al ámbito de enlace, porque origen y destino están en la misma red. En cambio, en el caso 2, se necesita el servicio de un router que se encargue de transportar el paquete más allá de la red de origen.

###Ejemplo

Sea host A con la dirección IP 170.210.80.14/26, y cuyo router por defecto es R, con dirección 170.210.80.1.  Supongamos que este host A hace ping, o cualquier otro tipo de tráfico basado en IP, hacia otro host B.

1. Si la dirección del host B fuera, por ejemplo, 170.210.80.8, entonces la entidad de Red del host A, aplicando la máscara de 26 bits de su configuración a la dirección destino de B, encontraría que la red destino es la misma que la red origen, ya que **dirección(A) AND máscara = dirección(B) AND máscara**. La entrega será local. Se encapsulará el paquete en un frame con la dirección MAC del host B y será enviado por la red.
2. Si la dirección del host B fuera, en cambio, 200.15.1.7, entonces la entidad de Red del host A determinará que la red destino **es otra**; y necesariamente la entrega deberá hacerse a través del router R. Se encapsulará el paquete en un frame con la dirección MAC **del router R** y este frame será enviado por la red. La interfaz del router R será la que procese el frame, extraiga el paquete, y lo someta al proceso de reenvío habitual que realizan los routers.



##Protocolo ARP 

El protocolo de resolución de direcciones (Address Resolution Protocol, ARP) es el que relaciona la capa de Red con la capa de Enlace. Es el mecanismo que permite averiguar la dirección MAC de un nodo a quien se dirige un paquete.

Para generar el frame que transporte un paquete se necesita la dirección MAC de un segundo nodo, ya sea la del destinatario final (si se encuentra en la red local), o la del router intermedio (si el destinatario se encuentra en una red remota). ¿Cómo se obtiene esta dirección MAC? Aquí es donde interviene el protocolo ARP.

Cuando la capa de Red del host A decida de quién es la dirección MAC que necesita (la de B o la de R), el protocolo ARP emitirá un frame de broadcast conteniendo una **consulta ARP**, la cual, básicamente, dice "¿De quién es la dirección IP X.X.X.X?". Como el frame es emitido con destino a la dirección de broadcast, todos los nodos de la red lo procesarán. Aquel que esté configurado con la dirección IP presentada en la consulta emitirá una **respuesta ARP** dirigida al nodo A, y esta respuesta ARP contendrá la dirección MAC buscada. A partir de aquí el nodo A puede terminar de construir el frame y enviarlo a la red.

Este tráfico ARP, aunque necesario, introduce una cierta demora y una cierta carga en la red. Para minimizar estos inconvenientes, y como es sumamente probable que se vuelva a necesitar esta dirección MAC para el tráfico siguiente, esta relación **dirección IP-dirección MAC** recientemente averiguada se guarda en una cache, la **tabla ARP** del host. Eventualmente el tiempo de vida de esta entrada expirará, y la entrada será borrada de la tabla. 

La tabla arp puede consultarse con el comando arp -a.



##Ethernet

El formato de los frames Ethernet incluye:

+ Un **preámbulo** o campo de sincronización, de 8 bytes, que sirve para que el receptor ajuste el reloj de su interfaz de manera de reconocer correctamente el resto de los bits.
+ Las **direcciones MAC destino y origen** del frame, cada una de 6 bytes.
+ Un campo **tipo** de 2 bytes, que especifica qué contenido transporta el frame, y por lo tanto qué entidad de capa superior debe recibir ese contenido en el receptor.
+ Un campo de **datos** o carga útil, de entre 46 y 1500 bytes, que contiene la PDU de la capa usuaria (habitualmente un paquete IP).
+ Y un trailer llamado **Frame Check Sequence (FCS)** conteniendo el CRC aplicado al frame por el emisor.


##CSMA/CD

La sigla **CSMA/CD (Carrier Sense Multiple Access with Collision Detection)** identifica al protocolo de acceso al medio de la tecnología Ethernet. Se trata de un protocolo de acceso aleatorio inspirado en **ALOHA**, una red de radio creada para la Universidad de Hawaii en los años 70. 

En Ethernet, los nodos comparten un medio, como un bus o un repetidor multivía (un **hub**), y su tráfico puede sufrir colisiones. La filosofía de Ethernet es tratar de evitar que estas colisiones se produzcan, y cuando ocurren, recuperarse de ellas. Para esto, los nodos aplican las reglas de CSMA/CD. Esta técnica replica aproximadamente la conducta de dos personas que tratan de no interrumpirse durante una conversación, en cuyo caso esperan un tiempo antes de volver a hablar:

- Antes de transmitir, un nodo sensa el canal. Si está ocupado, espera a que se desocupe.
- Cuando un nodo que desea transmitir encuentra el canal desocupado, comienza a transmitir, sensando simultáneamente el canal, para controlar que el estado eléctrico del medio coincida con lo que está transmitiendo. 
- Si, dentro del tiempo que tarda en emitir los primeros **512 bits** (conocido como **ventana de colisión**) no se encuentran problemas, considera ganado el canal según el protocolo de acceso al medio, y continúa la emisión del frame hasta el final.
- Si en algún momento la lectura del medio no corresponde a lo que se está transmitiendo, se ha detectado una colisión. En ese caso, el nodo emite una señal llamada de **jam** para indicar al resto de los nodos que ha ocurrido una colisión, y entra en un procedimiento de recuperación de la colisión llamado **backoff exponencial**.
- Para esto toma un número aleatorio entero K, que puede valer 0 o 1, espera una cantidad de tiempo igual a **K * ventana de colisión**, y vuelve a transmitir. 
- Si vuelve a producirse colisión, elige un nuevo entero aleatorio K esta vez entre 0 y 3, y nuevamente espera un nuevo intervalo de tiempo igual a K * ventana de colisión. 
- Cada vez que vuelva a ocurrir una colisión, el nuevo valor aleatorio de K estará en [0, 2^c-1] donde c es el número de ciclo.
- El ciclo se repite hasta 16 veces. Si al cabo de 16 ciclos de backoff se ha sufrido colisión en todos los intentos, se declara que la transmisión ha fallado.

Al momento de elegir cuánto tiempo esperar para retransmitir, la estrategia del backoff exponencial apunta a encontrar un equilibrio entre dos extremos. Si el tiempo de espera fuera muy corto, la probabilidad de una segunda colisión aumentaría. Si fuera demasiado largo, se desperdiciaría mucho tiempo de uso del canal en la resolución de la colisión, y así se reduciría el throughput de la red. Al ir aumentando el intervalo de donde se extraen los números aleatorios, la probabilidad de que coincidan los tiempos esperados por ambos nodos va decreciendo exponencialmente. 



