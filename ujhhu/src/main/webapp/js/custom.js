  $(document).ready(function () {
      $('#customMessage').click(function (e) {
        e.preventDefault()
        $('#message').html(`
        <div class="alert alert-success fade in">
        Landlord added successfully.
           <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
        </div>`);
      })
    });
 var mymodal = angular.module('mymodal', []);
 mymodal.controller('MainCtrl', function ($scope) {
     $scope.showModal = false;
     $scope.buttonClicked = "";
     $scope.index = 0;
     $scope.toggleModal = function(btnClicked){
         $scope.buttonClicked = btnClicked;
         $scope.showModal = !$scope.showModal;
     };
   });
 mymodal.directive('modal', function () {
     return {
       template: '<div class="modal fade">' +
           '<div class="modal-dialog">' +
             '<div class="modal-content">' +
               '<div class="modal-header">' +
               '<h5 class="modal-title" id="exampleModalLabel">Delete</h5>' +
                 '<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>' +
               '</div>' +
               '<div class="modal-body"> Are you sure you want to perform this action?</div>' +
               '<div class="modal-footer">' +
               '<button type="button" class="btn btn-light" data-bs-dismiss="modal">No</button>' +
               '<button type="button" class="btn btn-danger"><a href="DeleteServlet?id={{buttonClicked}}" style="text-decoration:none; color:white">Yes</a></button>' +
               '</div>' +
             '</div>' +
           '</div>' +
         '</div>',
       restrict: 'E',
       transclude: true,
       replace:true,
       scope:true,
       link: function postLink(scope, element, attrs) {
           scope.$watch(attrs.visible, function(value){
           if(value == true)
             $(element).modal('show');
           else
             $(element).modal('hide');
         });

         $(element).on('shown.bs.modal', function(){
           scope.$apply(function(){
             scope.$parent[attrs.visible] = true;
           });
         });

         $(element).on('hidden.bs.modal', function(){
           scope.$apply(function(){
             scope.$parent[attrs.visible] = false;
           });
         });
       }
     };
   });
   mymodal.directive('material', function () {
        return {
          template: '<div class="modal fade">' +
              '<div class="modal-dialog">' +
                '<div class="modal-content">' +
                  '<div class="modal-header">' +
                  '<h5 class="modal-title" id="exampleModalLabel">Delete</h5>' +
                    '<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>' +
                  '</div>' +
                  '<div class="modal-body"> Are you sure you want to perform this action?</div>' +
                  '<div class="modal-footer">' +
                  '<button type="button" class="btn btn-light" data-bs-dismiss="modal">No</button>' +
                  '<button type="button" class="btn btn-danger"><a href="MaterialsDeleteServlet?id={{buttonClicked}}" style="text-decoration:none; color:white">Yes</a></button>' +
                  '</div>' +
                '</div>' +
              '</div>' +
            '</div>',
          restrict: 'E',
          transclude: true,
          replace:true,
          scope:true,
          link: function postLink(scope, element, attrs) {
              scope.$watch(attrs.visible, function(value){
              if(value == true)
                $(element).modal('show');
              else
                $(element).modal('hide');
            });

            $(element).on('shown.bs.modal', function(){
              scope.$apply(function(){
                scope.$parent[attrs.visible] = true;
              });
            });

            $(element).on('hidden.bs.modal', function(){
              scope.$apply(function(){
                scope.$parent[attrs.visible] = false;
              });
            });
          }
        };
      });