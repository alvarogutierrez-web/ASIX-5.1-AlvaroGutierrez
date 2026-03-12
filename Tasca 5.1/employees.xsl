<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
        <head>
            <title>Lista de Empleados</title>
            <style>
                body { font-family: sans-serif; }
                .titulo-empleado { color: blue; }
                .linea-nombre { font-size: 25px; }
                .linea-departamento { font-style: italic; }
                .info-rama { color: green; } 
            </style>
        </head>
        <body>
            <h1>Empleados de la lista</h1>
            
            <xsl:for-each select="employees/employee">
                <xsl:sort select="lastName" order="ascending"/>
                
                <h2 class="titulo-empleado">Empleado con id <xsl:value-of select="@employeeNumber"/></h2>
                
                <ul>
                    <li class="linea-nombre">
                        <b>Nombre: </b> <xsl:value-of select="firstName"/> <xsl:text> </xsl:text> <xsl:value-of select="lastName"/>
                    </li>
                    <li>
                        <b>Correo: </b> <xsl:value-of select="email"/>
                    </li>
                    <li>
                        <b>Identificación de su superior: </b> <xsl:value-of select="reportsTo"/>
                    </li>
                    <li class="linea-departamento">
                        <b>Posición: </b> <xsl:value-of select="jobTitle"/>
                    </li>
                    <li class="info-rama">
                        <b>Información de la oficina:</b>
                        <ul>
                            <li><b>Código de Oficina: </b> <xsl:value-of select="office/@ofCode"/></li>
                            <li><b>Ciudad: </b> <xsl:value-of select="office/City"/></li>
                            <li><b>Teléfono: </b> <xsl:value-of select="office/Phone"/></li>
                            <li><b>Dirección: </b> <xsl:value-of select="office/AddressLine1"/></li>
                            <li><b>País: </b> <xsl:value-of select="office/Country"/></li>
                        </ul>
                    </li>
                </ul>
            </xsl:for-each>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>