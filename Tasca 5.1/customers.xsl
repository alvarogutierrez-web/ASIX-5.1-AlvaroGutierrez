<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
        <head>
            <title>Detalles de Clientes</title>
            <style>
                table { border-collapse: collapse; width: 100%; font-family: sans-serif; }
                th, td { border: 1px solid black; padding: 8px; text-align: left; }
                th { background-color: #f2f2f2; }
            </style>
        </head>
        <body>
            <h2>Detalles de los clientes</h2>
            <table>
                <tr>
                    <th>Número de Cliente</th>
                    <th>Nombre del Cliente</th>
                    <th>Nombre del Contacto</th>
                    <th>Teléfono</th>
                    <th>Dirección</th>
                    <th>Límite de Crédito</th>
                </tr>
                <xsl:for-each select="customers/customer">
                    <tr>
                        <td><xsl:value-of select="@customerNumber"/></td> 
                        <td><xsl:value-of select="customerName"/></td>
                        <td><xsl:value-of select="contact/contactFirstName"/> <xsl:text> </xsl:text> <xsl:value-of select="contact/contactLastName"/></td>
                        <td><xsl:value-of select="phone"/></td>
                        <td>
                            <xsl:value-of select="adress/addressLine1"/>
                            <xsl:if test="adress/addressLine2 != 'NULL'">, <xsl:value-of select="adress/addressLine2"/></xsl:if>
                            <xsl:text> - </xsl:text> <xsl:value-of select="adress/city"/>
                        </td>
                        <td><xsl:value-of select="creditLimit"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>