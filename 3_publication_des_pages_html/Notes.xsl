<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
    <xsl:template match="/Filiere_Niveau">
       <html>
           <head>
            <title>Affichage GINF2</title>
           </head>
           <body>             
               <table align="center" border="1" text-align="center" width= "400px" >
                 <thead>
                   <tr bgcolor="#BCE6FF"><th colspan="5"><xsl:value-of select="/Filiere_Niveau/@nom_de_filiere"/></th></tr>
                   <tr bgcolor="#BCE6FF"><th colspan="5"><xsl:value-of select="/Filiere_Niveau/module/@CodeModule"/></th></tr>
                   <tr bgcolor="#BCE6FF">
                       <th style="text-align:center;padding: 0.3em;border-bottom: 1px solid #999;">Nom</th>
                       <th style="text-align:center;padding: 0.3em;border-bottom: 1px solid #999;">Prenom</th>
                       <xsl:for-each select="/Filiere_Niveau/module/student[1]/NoteSousModule">
                         <th style="text-align:center;padding: 0.3em;border-bottom: 1px solid #999;"><xsl:value-of select="@CodeSousModule"/></th>
                       </xsl:for-each>
                       <th style="text-align:center;padding: 0.3em;border-bottom: 1px solid #999;">note Finale</th>
                      </tr>
                 </thead>
                 <tbody>
                      <xsl:for-each select="/Filiere_Niveau/module[@CodeModule='GINF31']/student">
                      <tr>
                        <td><xsl:value-of select="nom"/></td>
                        <td><xsl:value-of select="prenom"/></td>
                        <td><xsl:value-of select="NoteSousModule[1]"/></td>
                        <td><xsl:value-of select="NoteSousModule[2]"/></td>
               <xsl:choose>   
                 <xsl:when test="note &gt; 12">
                  <td bgcolor='green' ><xsl:value-of select="note"/></td>
                 </xsl:when>
                 <xsl:when test="note &lt; 8">
                  <td bgcolor='red' ><xsl:value-of select="note"/></td>
                 </xsl:when>  
                 <xsl:otherwise>
                  <td bgcolor='orange' ><xsl:value-of select="note"/></td>
                 </xsl:otherwise>   
               </xsl:choose>        
                      </tr>
                      </xsl:for-each>  
                 </tbody>
               </table>
               <form action="NoteRatt2.xml" style="margin-left:44%; margin-top:20px;">
                <input align="center" type="submit" name="submit" value="Liste de rattrapages"/>
             </form>
           </body>        
       </html>    
    </xsl:template>
</xsl:stylesheet>