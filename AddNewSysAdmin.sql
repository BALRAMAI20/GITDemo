/* -------------------------------------------------- 
|
|   Datos del autor:
|   Felipe Romero
| 
|   Descripción:
|   Rutinas útiles para dar acceso administrativo a
|   una instancia a la que no se tiene acceso
|   por autenticación de Windows.
|   Poner al servidor en modo "single-user" primero.    
|   Solo funciona si el usuario de Windows es Administrador.
| 
|   2015-12-03
 --------------------------------------------------- */

/*  
*   2015-12-03
*   
*   add a new Windows Authentication login that is 
*   a member of the sysadmin fixed server role.  
*/

CREATE LOGIN [DOMAIN\felipe.romero] FROM WINDOWS;
ALTER SERVER ROLE sysadmin ADD MEMBER [DOMAIN\felipe.romero];
GO

/*  
*   2015-12-03
*   
*   create a new SQL Server Authentication login 
*   that is a member of the sysadmin fixed server role.
*   
*/

CREATE LOGIN TempSa WITH PASSWORD = 'SegEthec2S4ewUcU';
ALTER SERVER ROLE sysadmin ADD MEMBER TempSa
GO
