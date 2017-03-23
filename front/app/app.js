 var app = angular.module('app',['ngRoute']);

 app.config(function($routeProvider, $locationProvider)
 {
     // remove o # da url

     $locationProvider.html5Mode({
         enabled: true,
         requireBase: false
     });

     $routeProvider

     // para a rota '/', carregaremos o template home.html e o controller 'HomeCtrl'
         .when('/',{
             templateUrl : 'app/views/home.html',
             controller : 'HomeCtrl',
         })
         .when('/servico',{
             templateUrl : 'app/views/servicos.html',

         })
         .when('/sobre',{
             templateUrl : 'app/views/sobre.html',
         })

         // SERVICOS

         .when('/samba',{
             templateUrl :'app/views/samba.html',
         })

         .when('/ftp',{
             templateUrl :'app/views/ftp.html',
         })

         .when('/ssh',{
             templateUrl :'app/views/ssh.html',
         })

         .when('/dhcp',{
             templateUrl :'app/views/dhcp.html',
         })

         .when('/tool',{
             templateUrl :'app/views/tool.html',
         })

         .when('/gw',{
             templateUrl :'app/views/gw.html',
         })

         // CONFIGURACOES

         .when('/samba/conf',{
             templateUrl :'../app/views/samba_conf.html',
             controller : 'SambaCtrl',
         })

         .when('/ftp/conf',{
             templateUrl :'../app/views/ftp_conf.html',
             controller : 'FtpCtrl',

         })

         .when('/ssh/conf',{
             templateUrl :'../app/views/ssh_conf.html',
             controller : 'SshCtrl',

         })

         .when('/dhcp/conf',{
             templateUrl :'../app/views/dhcp_conf.html',
             controller : 'DhcpCtrl',
         })

         .when('/tool/conf',{
             templateUrl :'../app/views/tool_conf.html',
         })

         .when('/gw/conf',{
             templateUrl :'../app/views/gw_conf.html',
             controller : 'GwCtrl',
         })


         // caso não seja nenhum desses, redirecione para a rota '/'
         .otherwise ({ redirectTo: '#/' });

 });