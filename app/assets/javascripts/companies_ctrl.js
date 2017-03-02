(function() {
  "use strict";

  angular.module("app").controller("companiesCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/companies.json").then(function(response) {
        $scope.companies = response.data;

      });
    }


    $scope.addcompany = function(name, profession, logo) {

      var company = {
        name: name,
        profession: profession,
        logo: logo 
      };
      
      $http.post("/api/v1/companies.json", company).then(function(response) {
        $scope.company.push(response.data);

      });


    }

      window.$scope = $scope
 
  });

})();