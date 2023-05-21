package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBManager;
import kz.bitlab.techorda.db.Task;

import java.io.IOException;

@WebServlet(value = "/save-task")
public class SaveBookServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("task_id"));
        String name = request.getParameter("task_name");
        String description = request.getParameter("task_descripton");
        String Deadlinedate = request.getParameter("task_Deadlinedate");

        Task task = DBManager.getTask(id);
        if (task != null) {
            task.setName(name);
            task.setDescription(description);
            task.setDeadlineDate(Deadlinedate);

            DBManager.updateTask(task);
            response.sendRedirect("/details?task_id=" + id);
        }
        else  response.sendRedirect("/home.html");
    }
}
