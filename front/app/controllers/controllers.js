app.controller('HomeCtrl', function($rootScope, $location)
{
    $rootScope.activetab = $location.path();
    $rootScope.titulo = "Home";

});

// ============================================================================

app.controller('DhcpCtrl', function($rootScope, $location, $http )
{
    $rootScope.activetab = $location.path();
    $rootScope.titulo = "DHCP- Configuração";


    $rootScope.enviar  = function( ) {
	$rootScope.dominio = document.getElementById("dominio").value
        $rootScope.dns1 = document.getElementById("dns1").value;
        $rootScope.dns2 = document.getElementById("dns2").value;
        $rootScope.rede = document.getElementById("rede").value;
        $rootScope.mask = document.getElementById("mask").value;
        $rootScope.firstIP = document.getElementById("firstIP").value;
        $rootScope.lastIP = document.getElementById("lastIP").value;
        $rootScope.gw = document.getElementById("gw").value;
        $rootScope.int = document.getElementById("int").value;

        $rootScope.data = "dns1="+$rootScope.dns1+", dns2="+$rootScope.dns2+", rede="+$rootScope.rede+", mask="+$rootScope.mask+", firstIP="+$rootScope.fistIP+", lastIP="+$rootScope.lastIP+", gw="+$rootScope.gw+", int="+$rootScope.int;
        console.log($rootScope.data);

            $http({
                method : 'get',
                url : 'http://osimpress.com/shell/scripts/dhcp.sh' ,
                params: {
		    dominio: $rootScope.dominio,
                    dns1: $rootScope.dns1,
                    dns2:$rootScope.dns2,
                    rede:$rootScope.rede,
                    mask:$rootScope.mask,
                    firstIP:$rootScope.firstIP,
                    lastIP:$rootScope.lastIP,
                    gw:$rootScope.gw,
                    int:$rootScope.int
    },

            }).success(function(){
                // With the data succesfully returned, call our callback
                console.log("Envia DHCP OK!")
		alert("Configuracao bem sucedida!!")

            }).error(function(){
                alert("OPS! Ocorreu um problema :( \n\nPorfavor contate o administrador do sistema.");
            });
    };



});

// =====================================================

app.controller('FtpCtrl', function($rootScope, $location, $http)
{
    $rootScope.activetab = $location.path();
    $rootScope.titulo = "FTP- Configuração";


   $rootScope.enviar = function () {
       $rootScope.resultado = document.getElementById("resultado").value;



       $rootScope.resultado = document.getElementById("resultado").value;

       console.log($rootScope.resultado);


       $http({
           method : 'get',
           url : 'http://osimpress.com/shell/scripts/ftp.sh' ,
           params: {
               ftp: $rootScope.resultado
           }

       }).success(function(){
           // With the data succesfully returned
           console.log("Envia FTP OK!")
           alert("Configuração bem sucedida!")

       }).error(function(){
           alert("OPS! Ocorreu um problema :( \n\nPorfavor contate o administrador do sistema.");
       });

   };

});

// ================================================================

app.controller('SshCtrl', function($rootScope, $location, $http)
{
    $rootScope.activetab = $location.path();
    $rootScope.titulo = "SSH- Configuração";


    $rootScope.enviar = function () {
        $rootScope.resultado = document.getElementById("resultado").value;



        $rootScope.resultado = document.getElementById("resultado").value;

        console.log($rootScope.resultado);


        $http({
            method : 'get',
            url : 'http://osimpress.com/shell/scripts/ssh.sh' ,
            params: {
                ssh: $rootScope.resultado
            }

        }).success(function(){
            // With the data succesfully returned
            console.log("Envia SSH OK!")
            alert("Configuração bem sucedida!")

        }).error(function(){
            alert("OPS! Ocorreu um problema :( \n\nPorfavor contate o administrador do sistema.");
        });

    };

});

// ================================================================

app.controller('GwCtrl', function($rootScope, $location, $http)
{
    $rootScope.activetab = $location.path();
    $rootScope.titulo = "GW- Configuração";


    $rootScope.enviaGW = function () {

        $rootScope.resultado = document.getElementById("resultado").value;

        console.log($rootScope.resultado);


        $http({
            method : 'get',
            url : 'http://127.0.0.1/cgi' ,
            params: {
                gw: $rootScope.resultado
            }

        }).success(function(){
            // With the data succesfully returned
            console.log("Envia SSH OK!")
            alert("Configuração bem sucedida!")

        }).error(function(){
            alert("OPS! Ocorreu um problema :( \n\nPorfavor contate o administrador do sistema.");
        });

    };

});

// ================================================================

app.controller('SambaCtrl', function($rootScope, $location, $http)
{
    $rootScope.activetab = $location.path();
    $rootScope.titulo = "Samba- Configuração";


    $rootScope.enviaSamba = function () {

        $rootScope.resultado = document.getElementById("resultado").value;
        $rootScope.grupo = document.getElementById("grupo").value;
        $rootScope.permissao = document.getElementById("permissao").value;
        $rootScope.caminho = document.getElementById("caminho").value;
        $rootScope.caminhoresult = document.getElementById("caminhoresult").value;


        console.log($rootScope.resultado);
        console.log($rootScope.grupo);
        console.log($rootScope.permissao);
        console.log($rootScope.caminho);
        console.log($rootScope.caminhoresult);



        $http({
            method : 'get',
            url : 'http://osimpress.com/shell/scripts/samba.sh' ,
            params: {
                existe : $rootScope.resultado,
                grupo: $rootScope.grupo,
                perm: $rootScope.permissao,
                caminho: $rootScope.caminho,
                caminhoresult : $rootScope.caminhoresult
            }

        }).success(function(){
            // With the data succesfully returned
            console.log("Envia SAMBA OK!")
            alert("Configuração bem sucedida!")

        }).error(function(){
            alert("OPS! Ocorreu um problema :( \n\nPorfavor contate o administrador do sistema.");
        });

    };

});
