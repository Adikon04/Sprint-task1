<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.techorda.db.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    `<head>
      <title>Title</title>
      <%@include file="head.jsp"%>
    </head>
    <body>
    <%@include file="Navbar.jsp"%>
      <div class="container mt-5">
        <div>
            <div class="row mt-3">
                <div class="col-12">
                  <button type="button" class="btn  btn-sm btn-dark" data-bs-toggle="modal" data-bs-target="#addTask" style="background-color: #020E5D">
                    + Add Task
                  </button>
                  <div class="modal fade" id="addTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h1 class="modal-title fs-5" id="staticBackdropLabel">Add Task</h1>
                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <%@include file="addform.jsp"%>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
        </div>
          <div class="row mt-5">
             <div class="col-12">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Done</th>
                            <th>Description</th>
                            <th  style="width: 10%">Details</th>
                        </tr>
                   </thead>
                  <tbody>
                      <%
                        ArrayList<Task> tasktar = (ArrayList<Task>) request.getAttribute("taski");
                        if(tasktar != null){
                          for(Task t : tasktar){
                      %>
                          <tr>
                                <td><%= t.getId() %></td>
                                <td><%= t.getName() %></td>
                                <td><%= t.getDescription() %></td>
                                <td><%= t.getDeadlineDate() %></td>
                                <td>
                                    <a class="btn btn-sm btn-dark" href="/details?task_id=<%=t.getId()%>" style="background-color: #020E5D">DETAILS</a>
                                </td>
                          </tr>
                      <%
                          }
                        }
                      %>

                  </tbody>
                </table>
             </div>
           </div>
      </div>
   </body>`
</html>
