package mik.prog4.zh1.servlet;

import mik.prog4.zh1.entity.Pet;
import mik.prog4.zh1.service.PetService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class PetListServlet extends HttpServlet {

    private final PetService petService = new PetService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pet> pets = new ArrayList<>();
        pets.addAll(this.petService.findAll());

        request.setAttribute("pets", pets);
        request.getRequestDispatcher("/petList.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        var id = req.getParameter("id");

        this.petService.deletePet(Long.parseLong(id));

        resp.sendRedirect("petList");
    }
}
