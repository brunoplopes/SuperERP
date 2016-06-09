(function () {
    angular.module('comprasApp', []);

    angular.module('comprasApp').controller('ProdutoListController', function ($scope) {
        $scope.produtos = [];
        $.ajax({
            method: "GET",
            url: "/Produto/GetProdutos",
        })
        .done(function (data) {
            $scope.produtos = data;
            $scope.$apply();
        })
        .fail(function (e) {
            console.log(e);
        });
    });

    angular.module('comprasApp').controller('CreateProdutoController', function ($scope) {
        $scope.produto = {};
        $scope.createProduto = function () {
            console.log($scope.produto);
        };
    });
})()