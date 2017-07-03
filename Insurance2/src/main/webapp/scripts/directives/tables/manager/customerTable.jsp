<div class="row">
     <div class="col-lg-12">
        <div class="panel panel-default">
           <div class="panel-heading">
               List of Customers
           </div>
           <!-- /.panel-heading -->
           <div class="panel-body">
             <table width="100%" class="table table-striped table-bordered table-hover" id="example">
               <thead>
                 <tr>
                   <th>Customer email</th>
                   <th>Customer name</th>
                   <th>Customer Contact</th>
                   <th>Actions</th>
                 </tr>
               </thead>
               <tbody>
                 <tr class="odd gradeX">
                   <td>C123</td>
                   <td>Lucy Adam</td>
                   <td class="center">4087891234</td>
                   <td class="center">
	                   <a ng-click=""><i class="fa fa-phone"></i> Contact</a>
                   </td>
                 </tr>
                 <tr class="even gradeC">
                   <td>C123</td>
                   <td>Kim Johnson</td>
                   <td class="center">4087891548</td>
                   <td class="center">
	                   <a ng-click=""><i class="fa fa-phone"></i> Contact</a>
                   </td>
                 </tr>
                 <tr class="gradeA" ng-repeat="customer in customers">
							<td>{{customer.email}}</td>
							<td>{{customer.name}}</td>
							<td>{{customer.mobile}}</td>
							<td><a ng-click=""><i class="fa fa-phone"></i> Contact</a></td>
						</tr>
               </tbody>
             </table> <!-- /.table-responsive -->
           </div>  <!-- /.panel-body -->
        </div> <!-- /.panel -->
     </div> <!-- /.col-lg-12 -->
  </div>