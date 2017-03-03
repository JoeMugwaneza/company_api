(function() {
  "use strict";

  angular.module("app").controller("companiesCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/companies.json").then(function(response) {
        $scope.companies = response.data;

      });
    }


    $scope.addCompany = function(name, profession, logo) {

      var company = {
        name: name,
        profession: profession,
        logo: logo 
      };
      
      $http.post("/api/v1/companies.json", company).then(function(response) {
        $scope.companies.push(response.data);

        $scope.companyName = null;
        $scope.companyProfession = null;
        $scope.companyLogo = null; 
      });


      $scope.updateCompany = function(company) {
        $http.patch("/api/v1/companies/"+ company.id +".json", company).then(function(response) {
          var index = $scope.companies.indexOf(company);
          $scope.companies[index] = response.data;
        });
      }

      $scope.deleteCompany = function(company, index) {
        $http.delete("/api/v1/companies/"+ company.id +".json").then(function(response) {
          $scope.companies.splice(index, 1);

        });
      }


    }

      // $scope.toggleOrder = function(attribute) {
      //   $scope.orderAttribute = attribute;
      // }

      $scope.orderAttribute = 'name';
      $scope.reverse = false;

      $scope.sortBy = function(orderAttribute) {
        $scope.reverse = ($scope.orderAttribute === orderAttribute) ? !$scope.reverse : true;
        $scope.orderAttribute = orderAttribute;
      }



      window.$scope = $scope
 
  });

})();