<?xml version = "1.0" encoding = "UTF-8"?>  
<xsl:stylesheet version = "1.0"   
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">     
<xsl:template match = "/">   
       
      <html>   
         <body>  
            <h2>Movie</h2>   
            <table border = "1">   
               <tr bgcolor = "red">   
                  <th>Title</th>
                  <th>Review</th>  
                  <th>RunTime</th>   
                  <th>Genre</th>   
                  <th>Director First Name</th>   
                  <th>Director First Name</th> 
                  <th>Studio</th> 
                  <th>Year</th>  
                    
               </tr>   
              <xsl:for-each select="Movies/Movie">   
                  <tr>   
                     <td>
                        <xsl:value-of select = "Title"/>   
                     </td>   
                     <td><xsl:value-of select = "@rating"/></td>   
                     <td><xsl:value-of select = "Title/@runtime"/></td>   
                     <td><xsl:value-of select = "Genre"/></td>  
                     <td><xsl:value-of select = "Director/Name/First"/></td>
                     <td><xsl:value-of select = "Director/Name/Last"/></td>  
                     <td><xsl:value-of select = "Studio"/></td>  
                     <td><xsl:value-of select = "Year"/></td>   
                  </tr>   
               </xsl:for-each>   
            </table>   
         </body>   
      </html>   
   </xsl:template>    
</xsl:stylesheet>