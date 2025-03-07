<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:variable name="ano" select="2024"/>
    <xsl:template match="/">
        <html lang="es">
            <head>
                <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
                <meta charset="utf-8"/>
                <meta name="description" content="Página principal" />
                <title>Eventos</title>
            </head>
            <body>
                <header>
                    <img src="../img/logotipo.png" alt="Reservas" />
                    <a href="gastrobar.html">Gastrobar</a>
                    <a href="atracciones.html">Atracciones</a>
                    <a href="eventos.html">Eventos</a>
                </header>
                <main>
                    <h1>Eventos del <xsl:value-of select="$ano"/></h1>
                    <xsl:apply-templates select="gestionParque/eventos/evento[substring(fechaHora, 1, 4) = $ano]">
                        <xsl:sort select="fechaHora" order="descending"/>
                    </xsl:apply-templates>
                </main>
                <footer>
                    <address>&#169; Desarrollado por info@birt.eus</address>
                </footer>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="evento">
        <article class="eventos">
            <h4><xsl:value-of select="descripcion"/> - <xsl:value-of select="count(comentarios/comentario)"/> Comentarios</h4>
            <ul>
                <xsl:apply-templates select="comentarios/comentario"/>
            </ul>
        </article>
    </xsl:template>
    <xsl:template match="comentario">
        <li><xsl:value-of select="."/></li>
    </xsl:template>
</xsl:stylesheet>