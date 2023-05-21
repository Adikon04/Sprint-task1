<form action="/add-task" method="post">
    <div class="row mt-3">
        <div class="col-10">
            <label>NAME : </label>
        </div>
    </div>
    <div class="row mt">
        <div class="col-12">
            <input type="text" class="form-control" name="task_name">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>DESCRIPTION : </label>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <textarea name="task_descripton" class="form-control" rows="5"></textarea>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>Deadlinedate : </label>
        </div>
    </div>
    <div class="row mt">
        <div class="col-12">
            <input type="date" class="form-control" name="task_Deadlinedate">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <button class="btn btn-success">ADD TASK</button>
        </div>
    </div>
</form>