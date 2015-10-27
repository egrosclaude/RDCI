<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Capa de Enlace" ID="ID_1935894198" CREATED="1338334377105" MODIFIED="1338827422777">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<hook NAME="MapStyle" max_node_width="600"/>
<node TEXT="Principios" POSITION="right" ID="ID_1645644292" CREATED="1338334511817" MODIFIED="1338827439847">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Objetivos" ID="ID_911152206" CREATED="1338335943190" MODIFIED="1338827439958">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Transportar datagramas entre nodos adyacentes" ID="ID_1380026245" CREATED="1338335948609" MODIFIED="1338341644133" STYLE="bubble"/>
<node TEXT="Con control de integridad" ID="ID_66972534" CREATED="1338341048880" MODIFIED="1338341644133" STYLE="bubble"/>
<node TEXT="Con confiabilidad" ID="ID_1062661287" CREATED="1338340884885" MODIFIED="1338341644131" STYLE="bubble">
<node TEXT="Cuando sea preferible&#xa;En casos de enlaces &#xa;con alta tasa de error&#xa;(ej. inal&#xe1;mbricos)" ID="ID_802968637" CREATED="1338340899891" MODIFIED="1338341644101" STYLE="bubble"/>
</node>
</node>
<node TEXT="Contexto" ID="ID_1762690201" CREATED="1338340519901" MODIFIED="1338827439955">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Capa de Red" ID="ID_98454657" CREATED="1338340528419" MODIFIED="1338341644140" STYLE="bubble">
<node TEXT="PDUs datagramas" ID="ID_1163045873" CREATED="1338340535826" MODIFIED="1338341644140" STYLE="bubble"/>
<node TEXT="IP universal, &#xfa;nico formato de paquete" ID="ID_457572170" CREATED="1338345113049" MODIFIED="1338345128671"/>
<node TEXT="Proveer un camino de extremo a extremo" ID="ID_910048127" CREATED="1338340549208" MODIFIED="1338341644139" STYLE="bubble"/>
<node TEXT="Atravesar enlaces entre cada par de nodos" ID="ID_1301709466" CREATED="1338340864693" MODIFIED="1338341644138" STYLE="bubble"/>
<node TEXT="Diferentes tecnolog&#xed;as y formatos de mensajes" ID="ID_1142534296" CREATED="1338345090727" MODIFIED="1338345109422"/>
</node>
</node>
<node TEXT="PDUs" ID="ID_1377990525" CREATED="1338335994479" MODIFIED="1338827439950">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Frames, marcos o tramas" ID="ID_1364306893" CREATED="1338336000544" MODIFIED="1338341644097" STYLE="bubble"/>
<node TEXT="Transportan datagramas &#xa;(Normalmente, paquetes &#xa;de nivel de red)" ID="ID_1157249816" CREATED="1338336007788" MODIFIED="1338341644064" STYLE="bubble"/>
</node>
<node TEXT="Framing" ID="ID_640811904" CREATED="1338335205660" MODIFIED="1338827439948">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Acci&#xf3;n de codificar las tramas &#xa;de manera que el receptor pueda &#xa;identificarlas y extraerlas del tren de bits &#xa;que recibe de la capa f&#xed;sica" ID="ID_378198360" CREATED="1338336042985" MODIFIED="1338341644037" STYLE="bubble"/>
</node>
<node TEXT="Tratamiento de errores" ID="ID_222369333" CREATED="1338334495081" MODIFIED="1338827439945">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Capa f&#xed;sica afectada por problemas&#xa;Bits creados, perdidos o cambian su valor" ID="ID_1261935519" CREATED="1338336359581" MODIFIED="1338827439929">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
<node TEXT="Or&#xed;genes de los errores" ID="ID_288109291" CREATED="1338336381156" MODIFIED="1338827439902">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Interferencia electromagn&#xe9;tica" ID="ID_1753576201" CREATED="1338336390413" MODIFIED="1338341644012" STYLE="bubble"/>
<node TEXT="Ruido t&#xe9;rmico" ID="ID_1863212519" CREATED="1338336402639" MODIFIED="1338341644011" STYLE="bubble"/>
<node TEXT="Distorsi&#xf3;n de atenuaci&#xf3;n" ID="ID_1306233552" CREATED="1338336407384" MODIFIED="1338341644010" STYLE="bubble"/>
</node>
<node TEXT="C&#xf3;digos de detecci&#xf3;n de errores &#xa;Usan redundancia" ID="ID_761712391" CREATED="1338336436809" MODIFIED="1338827439892">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Paridad" ID="ID_1020208644" CREATED="1338336763615" MODIFIED="1338341643958" STYLE="bubble">
<node TEXT="Apto para velocidades bajas" ID="ID_547928340" CREATED="1338336843001" MODIFIED="1338341643956" STYLE="bubble"/>
<node TEXT="Bit de paridad: errores simples" ID="ID_1993802989" CREATED="1338336674606" MODIFIED="1338341643955" HGAP="21" VSHIFT="3" STYLE="bubble"/>
<node TEXT="Doble bit de paridad: c&#xf3;digo correctivo" ID="ID_577638630" CREATED="1338336689489" MODIFIED="1338341643950" HGAP="18" VSHIFT="-6" STYLE="bubble"/>
</node>
<node TEXT="CRC" ID="ID_688689477" CREATED="1338336708544" MODIFIED="1338341643935" STYLE="bubble">
<node TEXT="Protege contra r&#xe1;fagas &#xa;Hasta n-1 bits err&#xf3;neos" ID="ID_1477392757" CREATED="1338336739574" MODIFIED="1338341643831" STYLE="bubble"/>
</node>
</node>
</node>
<node TEXT="Clases de enlaces" ID="ID_462448793" CREATED="1338343239980" MODIFIED="1338827439867">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Punto a punto" ID="ID_663992481" CREATED="1338343248082" MODIFIED="1338343252255"/>
<node TEXT="Acceso m&#xfa;ltiple" ID="ID_1454314051" CREATED="1338343253459" MODIFIED="1338343259073"/>
</node>
<node TEXT="Normalizaci&#xf3;n" ID="ID_362741449" CREATED="1338350285249" MODIFIED="1338827439863">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="IEEE 802.X" ID="ID_25207666" CREATED="1338350290114" MODIFIED="1338350298836"/>
</node>
</node>
<node TEXT="Control de Acceso al Medio (MAC)" POSITION="right" ID="ID_1773359404" CREATED="1338334581669" MODIFIED="1338827452571">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="M&#xe9;todos de asignaci&#xf3;n est&#xe1;tica" ID="ID_1010538645" CREATED="1338341825572" MODIFIED="1338827452896">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="TDM" ID="ID_1760928879" CREATED="1338341837708" MODIFIED="1338827452891">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
<node TEXT="FDM" ID="ID_1241149298" CREATED="1338341842931" MODIFIED="1338827452889">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
<node TEXT="Canal particionado&#xa;Ineficientes" ID="ID_210822034" CREATED="1338345190411" MODIFIED="1338827452882">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
</node>
<node TEXT="M&#xe9;todos estoc&#xe1;sticos" ID="ID_1157632125" CREATED="1338343157752" MODIFIED="1338827452858">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Acceso concurrente con &#xa;probabilidad de colisiones" ID="ID_464069853" CREATED="1338345240022" MODIFIED="1338827452834">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="M&#xe9;todos optimistas" ID="ID_1013470400" CREATED="1338343076249" MODIFIED="1338827452799">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Resuelven las colisiones &#xa;una vez producidas" ID="ID_951759606" CREATED="1338343109975" MODIFIED="1338827452782">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
</node>
<node TEXT="M&#xe9;todos pesimistas" ID="ID_1744946365" CREATED="1338343092938" MODIFIED="1338827452702">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Evitan colisiones" ID="ID_656773474" CREATED="1338343100549" MODIFIED="1338827452700" HGAP="22" VSHIFT="3">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
</node>
</node>
<node TEXT="ALOHA" ID="ID_756891423" CREATED="1338341705207" MODIFIED="1338827452697">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="ALOHA Puro" ID="ID_62943650" CREATED="1338341712259" MODIFIED="1338827452692">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
<node TEXT="ALOHA Ranurado&#xa;M&#xe1;s eficiente" ID="ID_1443045758" CREATED="1338341887413" MODIFIED="1338827452684">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
</node>
<node TEXT="Carrier Sense Multiple Access (CSMA)" ID="ID_289175797" CREATED="1338341939178" MODIFIED="1338827452649">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="CSMA/CD&#xa;Ethernet &quot;compartida&quot;" ID="ID_916461700" CREATED="1338334601000" MODIFIED="1338827452632" HGAP="24" VSHIFT="-5">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
<node TEXT="CSMA/CA" ID="ID_1986972670" CREATED="1338342040108" MODIFIED="1338827452626">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
</node>
</node>
<node TEXT="Algoritmos MAC determin&#xed;sticos" ID="ID_775517696" CREATED="1338341864830" MODIFIED="1338827452625">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Polling&#xa;Con coordinador" ID="ID_1515341898" CREATED="1338350161102" MODIFIED="1338827452608">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
<node TEXT="Con paso de token" ID="ID_285204440" CREATED="1338350180953" MODIFIED="1338827452582">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Token bus 802.4" ID="ID_828026903" CREATED="1338343191681" MODIFIED="1338827452580">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
<node TEXT="Token Ring 802.5" ID="ID_870159365" CREATED="1338343199087" MODIFIED="1338827452577">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
</node>
</node>
</node>
<node TEXT="Direccionamiento" POSITION="right" ID="ID_1354484841" CREATED="1338350520799" MODIFIED="1338812946234" STYLE="bubble">
<node TEXT="Direcciones MAC" ID="ID_845960151" CREATED="1338350528422" MODIFIED="1338350565014">
<node TEXT="Direccionamiento plano&#xa;48 bits&#xa;Prefijo 24 bits OUI &#xa;AA:BB:CC:DD:EE:FF" ID="ID_10919337" CREATED="1338350565050" MODIFIED="1338350769672"/>
</node>
<node TEXT="Protocolo ARP" ID="ID_359518951" CREATED="1338350779503" MODIFIED="1338350785156">
<node TEXT="Traducir direcciones IP a MAC&#xa;Cache ARP&#xa;Interviene en la entrega dentro de la red" ID="ID_980506131" CREATED="1338350785167" MODIFIED="1338350831730"/>
</node>
</node>
<node TEXT="Tecnolog&#xed;as de enlace" POSITION="right" ID="ID_986335221" CREATED="1338334612281" MODIFIED="1338827371864">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Ethernet&#xa;Medio de broadcast&#xa;No confiable&#xa;IEEE 802.3" ID="ID_55705001" CREATED="1338350869942" MODIFIED="1338351349655">
<node TEXT="Ethernet &quot;compartida&quot;" ID="ID_541427597" CREATED="1338350961618" MODIFIED="1338827398572" STYLE="bubble">
<node TEXT="Topolog&#xed;a f&#xed;sica de bus y luego de estrella&#xa;Coaxil, hubs&#xa;CSMA/CD&#xa;Ancho de banda compartido&#xa;Velocidades t&#xed;picamente 10Mbps" ID="ID_838019784" CREATED="1338350874305" MODIFIED="1338351919827"/>
</node>
<node TEXT="Bridges" ID="ID_426218019" CREATED="1338351222551" MODIFIED="1338827394587" STYLE="bubble">
<node TEXT="Particionan dominios de colisi&#xf3;n&#xa;Llenan sus tablas de direcciones por cada interfaz&#xa;mediante aprendizaje&#xa;Relacionan diferentes &#xe1;mbitos de enlace&#xa;con diferentes formatos de frame y reglas MAC" ID="ID_625224657" CREATED="1338351394820" MODIFIED="1338352345977"/>
</node>
<node TEXT="Switches" ID="ID_487430402" CREATED="1338351471842" MODIFIED="1338827391430" STYLE="bubble">
<node TEXT="Esencialmente bridges multiv&#xed;a&#xa;Configuran un &#xfa;nico dominio de broadcast&#xa;Enlaces host-switch full-duplex&#xa;Conservan el ancho de banda" ID="ID_345696684" CREATED="1338351476713" MODIFIED="1338352367615"/>
</node>
<node TEXT="Ethernet &quot;conmutada&quot;" ID="ID_663347365" CREATED="1338334652694" MODIFIED="1338827406609">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Evoluci&#xf3;n de Ethernet compartida&#xa;Topolog&#xed;a de estrella con switch&#xa;Segmentaci&#xf3;n completa&#xa;No aplica CSMA/CD&#xa;Ancho de banda conservado&#xa;Velocidades 100Mbps a 10Gbps o m&#xe1;s" ID="ID_730452206" CREATED="1338351923408" MODIFIED="1338812958782" STYLE="fork"/>
</node>
<node TEXT="STP, Spanning Tree Protocol (802.1d)" ID="ID_191634743" CREATED="1338334670981" MODIFIED="1338827409972">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Tolerancia a fallos usando redundancia&#xa;Elimina ciclos del grafo de conectividad desactivando enlaces&#xa;Algoritmo de &#xe1;rbol de cubrimiento&#xa;Reconstruye autom&#xe1;ticamente la conectividad ante ca&#xed;das de enlaces" ID="ID_1210427313" CREATED="1338352051939" MODIFIED="1338812968298" STYLE="fork"/>
</node>
<node TEXT="Redes virtuales (VLANs)" ID="ID_327459003" CREATED="1338351786564" MODIFIED="1338827415051">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Una VLAN = un dominio de broadcast&#xa;Una VLAN = un espacio de subred IP&#xa;Selecci&#xf3;n de nodos por MAC, por port, por IP&#xa;Necesitan routers para comunicarse&#xa;Muchas VLANs pueden compartir un cableado&#xa;Independiza la red IP del tendido f&#xed;sico" ID="ID_560255214" CREATED="1338351796208" MODIFIED="1338812974220" STYLE="fork"/>
</node>
</node>
<node TEXT="Redes inal&#xe1;mbricas 802.11" ID="ID_1747272061" CREATED="1338334690073" MODIFIED="1338827363979">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
<node TEXT="Arquitectura" ID="ID_998841065" CREATED="1338985107973" MODIFIED="1338985111759">
<node TEXT="BSS" ID="ID_1693779184" CREATED="1338985111766" MODIFIED="1338985120197">
<node TEXT="Basic Service Set, conjunto de estaciones y AP" ID="ID_286927978" CREATED="1338986122054" MODIFIED="1338986131372"/>
</node>
<node TEXT="AP" ID="ID_975244632" CREATED="1338985132768" MODIFIED="1338985134991">
<node TEXT="Access Point" ID="ID_720211229" CREATED="1338986145919" MODIFIED="1338986151319"/>
</node>
<node TEXT="DS" ID="ID_847231539" CREATED="1338985135825" MODIFIED="1338985137012">
<node TEXT="Sistema de Distribuci&#xf3;n&#xa;Conecta APs y permite roaming (movilidad)" ID="ID_1577916970" CREATED="1338986094199" MODIFIED="1338986800122"/>
</node>
<node TEXT="STA" ID="ID_1172525176" CREATED="1338985137460" MODIFIED="1338985138677">
<node TEXT="Estaciones" ID="ID_444954484" CREATED="1338986105133" MODIFIED="1338986107753"/>
</node>
<node TEXT="IBSS" ID="ID_1095900529" CREATED="1338985121000" MODIFIED="1338985131684">
<node TEXT="Conjunto independiente" ID="ID_849265386" CREATED="1338986109313" MODIFIED="1338986119800"/>
</node>
</node>
<node TEXT="Modos" ID="ID_37085868" CREATED="1338985143674" MODIFIED="1338985147969">
<node TEXT="Infrastructure" ID="ID_1903945958" CREATED="1338985148682" MODIFIED="1338985187181"/>
<node TEXT="Ad Hoc" ID="ID_570380030" CREATED="1338985188189" MODIFIED="1338985191729"/>
</node>
<node TEXT="Asociaci&#xf3;n" ID="ID_1447817991" CREATED="1338986601166" MODIFIED="1338986622641">
<node TEXT="AP publica SSID" ID="ID_1407477615" CREATED="1338986622645" MODIFIED="1338986629449"/>
<node TEXT="STA y AP intercambian Probe Request/Response" ID="ID_810686844" CREATED="1338986629850" MODIFIED="1338986678558"/>
<node TEXT="Se repite con cada AP durante el roaming" ID="ID_506114040" CREATED="1338986737867" MODIFIED="1338986779712"/>
</node>
<node TEXT="802.1X" ID="ID_1272936411" CREATED="1338987149373" MODIFIED="1338987154486">
<node TEXT="Supplicant env&#xed;a Authentication Request&#xa;Authenticator responde" ID="ID_1412534674" CREATED="1338986686277" MODIFIED="1338986732090"/>
</node>
<node TEXT="Tramas" ID="ID_1411870143" CREATED="1338985268747" MODIFIED="1338985276304">
<node TEXT="Hasta 2324 bytes&#xa;T&#xed;picamente 1500 para inyectar en DS Ethernet cableado" ID="ID_1640746990" CREATED="1338985356997" MODIFIED="1338985383335"/>
<node TEXT="Tipo de tramas" ID="ID_1437756793" CREATED="1338985309511" MODIFIED="1338985314242">
<node TEXT="Management" ID="ID_1678568000" CREATED="1338985315256" MODIFIED="1338985598401">
<node TEXT="Beacon o baliza" ID="ID_656261139" CREATED="1338985317798" MODIFIED="1338985325742"/>
<node TEXT="Association Request/Response" ID="ID_172121" CREATED="1338985574319" MODIFIED="1338985582727"/>
<node TEXT="RTS/CTS (CSMA/CA)" ID="ID_768111305" CREATED="1338985524489" MODIFIED="1338985702798"/>
</node>
<node TEXT="Datos" ID="ID_1953956360" CREATED="1338985197966" MODIFIED="1338985619542">
<node TEXT="Frame Control&#xa;Duration&#xa;Tres direcciones&#xa;Payload (carga &#xfa;til)" ID="ID_781405588" CREATED="1338985231176" MODIFIED="1338985659861"/>
</node>
</node>
</node>
<node TEXT="Normas" ID="ID_1975540485" CREATED="1338985744728" MODIFIED="1338985750214">
<node TEXT="Frecuencia - Throughput - BW - Alcance&#xa;802.11 - 2.4GHz - 0.9 Mbps - 2 Mbps - 100m&#xa;802.11a - 5 GHz - 23 Mbps - 54 Mbps - 120m&#xa;802.11b - 2.4 GHz - 4.3 Mbps - 11 Mbps - 140m&#xa;802.11g - 2.4 GHz - 19 Mbps - 54 Mbps - 140m&#xa;802.11n - 2.4/5 GHz - 74 Mbps - 150 Mbps - 250m" ID="ID_1329151807" CREATED="1338985750760" MODIFIED="1338986051927">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
</node>
</node>
<node TEXT="PPP (Point-to-Point Protocol)" ID="ID_1458418463" CREATED="1338334640631" MODIFIED="1338827354576">
<font NAME="DejaVu Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</node>
</node>
</node>
</map>
