-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2017 a las 19:43:12
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `contenido` text,
  `fecha` timestamp NULL DEFAULT NULL,
  `tags` varchar(4000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id`, `usuario_id`, `titulo`, `contenido`, `fecha`, `tags`) VALUES
(3, 8, 'EL REY SABIO', 'El rey sabio\r\nCuento clásico El rey sabio\r\n\r\nAdaptación del cuento de Gibrán Jalil Gibrán\r\nHace muchos, muchos años en una ciudad de Irán llamada Wirani, hubo un rey que gobernaba con firmeza su territorio. Había acumulado tanto poder que nadie se atrevía a cuestionar ninguna de sus decisiones: si ordenaba alguna cosa, todo el mundo obedecía sin rechistar ¡Llevarle la contraria podía tener consecuencias muy desagradables!\r\n\r\n\r\n \r\nPodría decirse que todos le temían, pero como además era un hombre sabio, en el fondo  le   respetaban y valoraban su manera de hacer las cosas.\r\n\r\nEn Wirani solo había un pozo pero era muy grande y servía para abastecer a todos los habitantes de la ciudad. Cada día centenares de personas acudían a él y llenaban sus tinajas para poder beber y asearse. De la misma manera, los sirvientes del rey recogían allí el preciado líquido para llevar a palacio. Así pues, el pobre y el rico, el rey y el aldeano, disfrutaban de la misma agua.\r\n\r\nSucedió que una noche de verano, mientras todos dormían, una horripilante bruja se dirigió sigilosamente al pozo. Lo tocó y comenzó a reírse mostrando sus escasos dientes negros e impregnando el aire de un aliento que olía a pedo de mofeta ¡Estaba a punto de llevar a cabo una de sus maquiavélicas artimañas y eso le divertía mucho!\r\n\r\n– ¡Ja, ja, ja! ¡Estos pueblerinos se van a enterar de quién soy yo!\r\n\r\nDebajo de la falda llevaba una bolsita, y dentro de ella, había un pequeño frasco que contenía un líquido amarillento y pegajoso. Lo cogió, desenroscó el pequeño tapón, y dejó caer unas gotas en el interior del pozo mientras susurraba:\r\n\r\n– Soy una bruja y como bruja me comporto ¡Quien beba de esta agua se volverá completamente loco!\r\n\r\nDicho esto, desapareció en la oscuridad de la noche dejando una pequeña nebulosa de humo como único rastro.\r\n\r\nUnas horas después los primeros rayos del sol anunciaron la llegada del nuevo día. Como siempre, se escucharon los cantos del gallo y la ciudad se llenó del ajetreo diario.\r\n\r\n¡Esa mañana el calor era sofocante! Todos los habitantes de Wirani, sudando como pollos,  corrieron a buscar agua del pozo para aplacar la sed y darse un baño de agua fría. Curiosamente, nadie se dio cuenta de que el agua no era exactamente la misma y algunos hasta exclamaban:\r\n\r\n– ¡Qué delicia!… ¡El agua del pozo está hoy más rica que nunca!\r\n\r\nTodos la saborearon excepto el rey, que  casualmente se encontraba de viaje fuera de la ciudad.\r\n\r\nPasó el caluroso día, pasó la noche, y el nuevo amanecer llegó como siempre, pero lo cierto es que ya nada era igual en la ciudad ¡Todo el mundo  había cambiado! Por culpa del hechizo de la bruja, hombres, mujeres, niños y ancianos, se levantaron nerviosos y haciendo cosas disparatadas. Unos deliraban y decían cosas sin sentido; otros comenzaron a sufrir alucinaciones y a ver cosas raras por todas partes.\r\n\r\nNo había duda… ¡Todos sin excepción habían perdido el juicio!\r\n\r\nEl rey, ya de regreso, fue convenientemente informado de lo que estaba sucediendo y salió a dar un paseo para comprobarlo con sus propios ojos. Los ciudadanos se arremolinaron en torno a él, y al ver que no se comportaba como ellos, empezaron a pensar que se había vuelto loco de remate.\r\n\r\nCompletamente trastornados  salieron  corriendo en tropel hacia la plaza principal para decirse unos a otros:\r\n\r\n– ¿Os habéis dado cuenta de que nuestro rey  está rarísimo? ¡Yo creo que se ha vuelto majareta!\r\n\r\n– ¡Sí, sí, está como una cabra!\r\n\r\n– ¡Tenemos que expulsarlo y que gobierne otro!\r\n\r\nImagínate un montón de personas fuera de control, totalmente enloquecidas, que de repente se convencen de que las chifladas no son ellas, sino su rey. Tanto revuelo se formó que el monarca puso el grito en el cielo.\r\n\r\n– ¡¿Pero qué demonios está pasando?! ¡Todos mis súbditos han perdido el seso y piensan que el que está loco soy yo! ¡Maldita sea!\r\n\r\nA pesar de la difícil papeleta a la que tenía que enfrentarse, decidió mantener la calma y reflexionar. Rápidamente, ató cabos y sacó una conclusión que dio en el clavo:\r\n\r\n– Ha tenido que ser por el agua del pozo… ¡Es la única explicación posible! Sí, está claro que todos han bebido menos yo y por eso me he salvado…  ¡Apuesto el pescuezo a que esto es cosa de la malvada bruja!\r\n\r\nMientras cavilaba, vio de reojo a un alfarero que llevaba una jarra de barro en la mano.\r\n\r\n– ¡Caballero, présteme la jarra!\r\n\r\n– ¡Aquí tiene, majestad, toda suya!\r\n\r\nEl monarca la agarró por el asa, apartó a la gente a codazos y dando grandes zancadas se plantó frente al pozo de agua sin ningún tipo de temor. Los habitantes de Wirani se apelotonaron tras él conteniendo la respiración.\r\n\r\n– Así que pensáis que el loco soy yo ¿verdad? ¡Pues muy bien, ahora mismo voy a poner solución a esta desquiciante situación!\r\n\r\nEl rey metió la jarra en el pozo y bebió unos cuantos sorbos del agua embrujada. En cuestión de segundos,  tal como había sentenciado la bruja, enloqueció como los demás.\r\n\r\nY… ¿sabes qué pasó? Pues que los perturbados ciudadanos comenzaron a aplaudir porque pensaron que al fin el rey ya era como ellos, es decir… ¡que había recobrado la razón!', '2017-09-15 20:49:00', 'Cuento Infantil'),
(4, 22, 'El niño y la luz', 'En un pequeño y lejano pueblo de China vivía un niño llamado Kang. Sus padres eran unos campesinos muy pobres así que los tres trataban de salir adelante como podían y sin poder permitirse ningún tipo de lujo. Tenían algo de comida y un techo bajo el que dormir, nada más.\r\n\r\n\r\n \r\nEl matrimonio soñaba con que algún día su hijo Kang pudiera estudiar. Ambos tenían muy claro que no querían para él la vida que ellos llevaban y aspiraban a que tuviera un futuro más prometedor en la ciudad.\r\n\r\nKang, consciente de esto, era un chico bueno, aplicado, inteligente y estudioso, pero cada día se encontraba con un problema que le ponía las cosas todavía más difíciles. Durante el día ayudaba a sus padres en las labores del campo, y cuando quería ponerse a estudiar, ya era de noche. Esto resultaba un gran inconveniente para él porque en su cabaña de madera no había luz artificial.\r\n\r\nEstaba desesperado ¡Quería estudiar y sin luz no podía leer! Deseaba  aprobar los exámenes de la escuela y con los años poder ir a la universidad,  pero mejorar su educación a oscuras era totalmente imposible.\r\n\r\nUn año llegó el crudo invierno y una noche se asomó a la ventana para ver el fabuloso paisaje nevado. Estaba ensimismado cuando se dio cuenta de que la nieve emitía una luz blanca muy tenue, muy bella pero casi imperceptible.\r\n\r\nKang, que era un muchacho muy listo, decidió aprovechar esa pequeña oportunidad que le brindaba la naturaleza. Se puso un viejo abrigo, se calzó sus estropeadas botas de cuero, cogió el material del colegio, y salió de la habitación caminando muy despacito para no hacer ruido.\r\n\r\nLa capa de nieve era muy espesa pero, a pesar de todo, se tumbó sobre ella. Abrió uno de sus libros y gracias a la luz blanquecina que reflejaba la nieve pudo leer y aprovechar para aprender. El frío era infernal y sus manos estaban tan congeladas que casi no podía pasar las páginas, mas no le importaba porque sentía que merecía la pena el esfuerzo. Permaneció allí  toda la noche y como ésa, todas las noches del invierno.\r\n\r\nEl tiempo pasó rápidamente y un día los rayos de sol de la recién llegada primavera derritieron la nieve. El pobre Kang observó con lágrimas en los ojos cómo su única oportunidad de poder estudiar se disolvía ante sus ojos sin remedio.\r\n\r\nDespués de cenar se acostó pero debido a la preocupación no pudo dormir. Harto de dar vueltas y más vueltas en la cama decidió salir a dar un paseo por el bosque en el que había pasado tantas horas en vela.\r\n\r\n¡La visión que tuvo fue increíble! Contempló emocionado cómo la primavera se había llevado la nieve, sí,  pero a cambio había traído un montón de luciérnagas que iluminaban y embellecían las cálidas noches de marzo.\r\n\r\nSe quedó un rato pasmado ante el hermoso espectáculo y de repente, tuvo una nueva gran idea.  Entró corriendo a su cuarto, cogió los libros y regresó al bosque. Se sentó bajo un árbol de tronco enorme y dejó que las luciérnagas se acercasen a él.\r\n\r\n¡Bravo! ¡Su luz era suficiente para poder leer! ¡Se sintió tan feliz! …\r\n\r\nUna noche tras otra repitió la misma operación y estudió bajo la brillante luz de los amigables bichitos. Gracias a eso pudo aumentar sus conocimientos y avanzar muchísimo en sus estudios. El chico era pobre y no tenía recursos, pero gracias a su sacrificio, esfuerzo y voluntad, consiguió superar una barrera que parecía insalvable.\r\n\r\nDurante años estudió sobre la nieve en invierno y con ayuda de las luciérnagas en los meses de primavera y verano. El resultado fue que consiguió superar todas las pruebas y exámenes de la escuela con calificaciones brillantes.\r\n\r\nAl llegar a la mayoría de edad entró en la universidad y llegó a convertirse en un hombre sabio y adinerado que logró sacar a su familia de la pobreza. La vida le recompensó.\r\n\r\nEsta preciosa historia nos enseña que nunca hay que venirse abajo ante las dificultades. Con ilusión y esfuerzo casi todo se puede lograr. Vence los obstáculos y lucha por tus sueños. La vida te recompensará igual que al bueno de Kang.', '2017-09-15 22:26:00', 'Adaptación infantil'),
(5, 23, 'Caperucita roja', 'Érase una vez una preciosa niña que siempre llevaba una capa roja con capucha para protegerse del frío. Por eso, todo el mundo la llamaba Caperucita Roja.\r\n\r\nCaperucita vivía en una casita cerca del bosque. Un día, la mamá de  Caperucita le dijo:\r\n\r\n– Hija mía, tu abuelita está enferma. He preparado una cestita con tortas y un tarrito de miel para que se la lleves ¡Ya verás qué contenta se pone!\r\n\r\n– ¡Estupendo, mamá! Yo también tengo muchas ganas de ir a visitarla – dijo Caperucita saltando de alegría.\r\n\r\n\r\n \r\nCuando Caperucita se disponía  a salir de casa, su mamá, con gesto un poco serio, le hizo una advertencia:\r\n\r\n– Ten mucho cuidado, cariño. No te entretengas con nada y no hables con extraños. Sabes que en el bosque vive el lobo y es muy peligroso. Si ves que aparece, sigue tu camino sin detenerte.\r\n\r\n– No te preocupes, mamita – dijo la niña- Tendré en cuenta todo lo que me dices.\r\n\r\n– Está bien – contestó la mamá, confiada – Dame un besito y no tardes en regresar.\r\n\r\n– Así lo haré, mamá – afirmó de nuevo Caperucita diciendo adiós con su manita mientras se alejaba.\r\n\r\nCuando llegó al bosque, la pequeña comenzó a distraerse contemplando los pajaritos y recogiendo flores. No se dio cuenta de que alguien la observaba detrás de un viejo y frondoso árbol. De repente, oyó una voz dulce y zalamera.\r\n\r\n– ¿A dónde vas, Caperucita?\r\n\r\nLa niña, dando un respingo, se giró y vio que quien le hablaba era un enorme lobo.\r\n\r\n– Voy a casa de mi abuelita, al otro lado del bosque. Está enferma y le llevo una deliciosa merienda y unas flores para alegrarle el día.\r\n\r\n– ¡Oh, eso es estupendo! – dijo el astuto lobo – Yo también vivo por allí. Te echo una carrera a ver quién llega antes. Cada uno iremos por un camino diferente ¿te parece bien?\r\n\r\nLa inocente niña pensó que era una idea divertida y asintió con la cabeza. No sabía que el lobo había elegido el camino más corto para llegar primero a su destino. Cuando el animal  llegó a casa de la abuela, llamó a la puerta.\r\n\r\n– ¿Quién es? – gritó la mujer.\r\n\r\n– Soy yo, abuelita, tu querida nieta Caperucita. Ábreme la puerta – dijo el lobo imitando la voz de la niña.\r\n\r\n– Pasa, querida mía. La puerta está abierta – contestó la abuela.\r\n\r\nEl malvado lobo entró en la casa y sin pensárselo dos veces, saltó sobre la cama y se comió a la anciana. Después, se puso su camisón y su gorrito de dormir y se metió entre las sábanas esperando a que llegara la niña. Al rato, se oyeron unos golpes.\r\n\r\n– ¿Quién llama? – dijo el lobo forzando la voz como si fuera la abuelita.\r\n\r\n– Soy yo, Caperucita. Vengo a hacerte una visita y a traerte unos ricos dulces para merendar.\r\n\r\n– Pasa, querida, estoy deseando abrazarte – dijo el lobo malvado relamiéndose.\r\n\r\nLa habitación estaba en penumbra. Cuando se acercó a la cama, a Caperucita le pareció que su abuela estaba muy cambiada. Extrañada, le dijo:\r\n\r\n– Abuelita, abuelita ¡qué ojos tan grandes tienes!\r\n\r\n– Son para verte mejor, preciosa mía – contestó el lobo, suavizando la voz.\r\n\r\n– Abuelita, abuelita ¡qué orejas tan grandes tienes!\r\n\r\n– Son para oírte mejor, querida.\r\n\r\n– Pero… abuelita, abuelita ¡qué boca tan grande tienes!\r\n\r\n– ¡Es para comerte mejor! – gritó el lobo dando un enorme salto y comiéndose a la niña de un bocado.\r\n\r\nCon la barriga llena después de tanta comida, al lobo le entró sueño. Salió de la casa, se tumbó en el jardín y cayó profundamente dormido. El fuerte sonido de sus ronquidos llamó la atención de un cazador que pasaba por allí. El hombre se acercó y vio que el animal tenía la panza muy hinchada, demasiado para ser un lobo. Sospechando que pasaba algo extraño, cogió un cuchillo y le rajó la tripa ¡Se llevó una gran sorpresa cuando vio que de ella salieron sanas y salvas la abuela y la niña!\r\n\r\nDespués de liberarlas, el cazador cosió la barriga del lobo y esperaron un rato a que el animal se despertara. Cuando por fin abrió los ojos, vio como los tres le rodeaban y escuchó la profunda y amenazante voz del cazador que le gritaba enfurecido:\r\n\r\n– ¡Lárgate, lobo malvado! ¡No te queremos en este bosque! ¡Como vuelva a verte por aquí, no volverás a contarlo!\r\n\r\nEl lobo, aterrado, puso pies en polvorosa y salió despavorido.\r\n\r\nCaperucita y su abuelita, con lágrimas cayendo sobre sus mejillas, se abrazaron. El susto había pasado y la niña había aprendido una importante lección: nunca más desobedecería a su mamá ni se fiaría de extraños.', '2017-09-15 22:33:00', 'CUENTO INFANTIL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id` int(11) NOT NULL,
  `articulo_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `contenido` varchar(1024) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `imagen_nombre` varchar(244) CHARACTER SET utf8 DEFAULT NULL,
  `imagen_tipo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `imagen_tamanio` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `password`, `nombres`, `correo`, `imagen_nombre`, `imagen_tipo`, `imagen_tamanio`) VALUES
(8, 'vmeneses', 'tecsup', 'victor meneses', 'vmeneses@tecsup.pe', 'matureman1-512.png', 'image/png', 26747),
(23, 'trios', 'tecsup', 'tatiana rios', 'trios@tecsup.com.pe', 'girl_icon-icons.com_51109.png', 'image/png', 25402),
(22, 'aotero', 'tecsup', 'Aaron Otero', 'aotero@tecsup.com.pe', 'matureman1-512.png', 'image/png', 26747);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articulo_id` (`articulo_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
