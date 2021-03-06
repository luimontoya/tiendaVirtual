-----------------------------------------------------------
-- Base de datos: `tiendavirtualdb`
-----------------------------------------------------------

-- --------------------------------------------------------

-----------------------------------------------------------
-- Estructura de tabla para la tabla `categoria`
-----------------------------------------------------------

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

---------------------------------------------------------------
-- Volcado de datos para la tabla `categoria`
---------------------------------------------------------------

INSERT INTO `categoria` (`id`, `nombre`, `estado`, `descripcion`) VALUES
(1, 'camisa', 1, 'ngociable con desceunto'),
(2, 'pantalon', 1, 'negociable');

-- --------------------------------------------------------

--------------------------------------------------------------
-- Estructura de tabla para la tabla `producto`
--------------------------------------------------------------

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `foto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--------------------------------------------------------------
-- Volcado de datos para la tabla `producto`
--------------------------------------------------------------

INSERT INTO `producto` (`id`, `nombre`, `descripcion`, `estado`, `precio`, `cantidad`, `foto`, `id_categoria`) VALUES
(1, 'Ropa para hombre', 'Baico para hombre', 1, 35000, 32, 'otro', 1),
(2, 'Ropa para hombre', 'basico par hombre', 1, 32000, 43, 'otro', 2);

---------------------------------------------------------------
-- Índices para tablas volcadas
---------------------------------------------------------------

---------------------------------------------------------------
-- Indices de la tabla `categoria`
----------------------------------------------------------------
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

----------------------------------------------------------------
-- Indices de la tabla `producto`
----------------------------------------------------------------
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_catetoria` (`id_catetoria`);

------------------------------------------------------------
-- AUTO_INCREMENT de las tablas volcadas
--------------------------------------------------------------

-----------------------------------------------------------
-- AUTO_INCREMENT de la tabla `categoria`
-----------------------------------------------------------
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

  
alter table producto
add CONSTRAINT FOREIGN KEY
    fk_producto_categoria (id_categoria)
    REFERENCES categoria (id);
