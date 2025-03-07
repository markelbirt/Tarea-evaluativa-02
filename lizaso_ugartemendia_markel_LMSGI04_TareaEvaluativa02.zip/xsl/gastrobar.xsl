<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html lang="es">
            <head>
                <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
                <meta charset="utf-8"/>
                <meta name="description" content="Página principal" />
                <title>Gastrobar</title>
            </head>
            <body>
                <header>
                    <img src="../img/logotipo.png" alt="Reservas" />
                    <a href="gastrobar.html">Gastrobar</a>
                    <a href="atracciones.html">Atracciones</a>
                    <a href="eventos.html">Eventos</a>
                </header>
                <main id="gastrobar">
                    <h1>ENTRANTES</h1>
                    <xsl:for-each select="gestionParque/gastrobar/platos/plato">
                        <article class="articulo">
                            <img src="../img/{foto}" class="imagen"/>
                            <xsl:if test="starts-with(@codigo, 'A')">
                                <img src="../img/icono-novedad.png" class="novedad-icono"/>
                            </xsl:if>
                            <h2><xsl:value-of select="nom_plato"/></h2>
                            <h3><xsl:value-of select="precio"/>€</h3>
                        </article>
                    </xsl:for-each>
                </main>
                <footer>
                    <address>&#169; Desarrollado por info@birt.eus</address>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>