<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html lang="es">
            <head>
                <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
                <meta charset="utf-8"/>
                <meta name="description" content="Página principal" />
                <title>Atracciones</title>
            </head>
            <body>
                <header>
                    <img src="../img/logotipo.png" alt="Reservas" />
                    <a href="gastrobar.html">Gastrobar</a>
                    <a href="atracciones.html">Atracciones</a>
                    <a href="eventos.html">Eventos</a>
                </header>
                <main>
                    <h1>ATRACCIONES</h1>
                    <table>
                        <tr>
                            <th>ATRACCION</th>
                            <th>EDAD MINIMA</th>
                            <th>PESO MAXIMO</th>
                        </tr>
                        <xsl:for-each select="gestionParque/atracciones/atraccion">
                            <tr>
                                <td>
                                    <a>
                                        <xsl:attribute name="href">
                                            <xsl:text>https://es.wikipedia.org/wiki/</xsl:text>
                                            <xsl:value-of select="translate(nombre, ' ', '_')"/>
                                        </xsl:attribute>
                                        <xsl:value-of select="nombre"/>
                                    </a>
                                </td>
                                <td><xsl:value-of select="restricciones/edadMinima"/></td>
                                <td><xsl:value-of select="restricciones/pesoMaximo"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </main>
                <footer>
                    <address>&#169; Desarrollado por info@birt.eus</address>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>