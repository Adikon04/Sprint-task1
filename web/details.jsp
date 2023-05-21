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
    <div class="container mt-5 pb-5">
        <%
            Task task = (Task) request.getAttribute("taski");
            if(task != null) {
        %>
        <div class="row">
            <div class="col-6 mx-auto">
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>NAME : </label>
                        </div>
                    </div>
                    <div class="row mt">
                        <div class="col-12">
                            <input type="text" class="form-control" name="task_name" readonly value="<%=task.getName()%>">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>DESCRIPTION : </label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <textarea class="form-control" readonly rows="10"><%=task.getDescription()%></textarea>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>Deadlinedate : </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text" class="form-control" readonly value="<%=task.getDeadlineDate()%>">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <button type="button" class="btn  btn-sm btn-dark" data-bs-toggle="modal" data-bs-target="#editTask" style="background-color: #020E5D">
                                Edit Task
                            </button>
                            <button type="button" class="btn btn-danger btn-sm ms-3" data-bs-toggle="modal" data-bs-target="#deleteTask">
                                Delete Task
                            </button>
                        </div>
                    </div>
                <div class="modal fade" id="deleteTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="/delete-task" method="post">
                                <input type="hidden" name="id" value="<%=task.getId()%>">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5">Confirm Delete</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <h5 class="text-center">Are you sure?</h5>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                                    <button  class="btn btn-danger">YES</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="editTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel">Add Task</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="/save-task" method="post">
                                    <input type="hidden" name="task_id" value="<%=task.getId()%>">
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>NAME : </label>
                                        </div>
                                    </div>
                                    <div class="row mt">
                                        <div class="col-12">
                                            <input type="text" class="form-control" name="task_name" value="<%=task.getName()%>">
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>DESCRIPTION : </label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <textarea name="task_descripton"  class="form-control" rows="5"><%=task.getDescription()%></textarea>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>Deadlinedate : </label>
                                        </div>
                                    </div>
                                    <div class="row mt">
                                        <div class="col-12">
                                            <input type="text" class="form-control" name="task_Deadlinedate" value="<%=task.getDeadlineDate()%>">
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <button class="btn btn-primary">SAVE TASK</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            }
            else{
        %>
            <h3 class="text-center">
                TASK NOT FOUND
            </h3>
        <%
            }
        %>
    </div>
</body>
</html>
