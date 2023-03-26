package mik.prog4.zh1.servlet;

import mik.prog4.zh1.entity.Pet;
import mik.prog4.zh1.service.PetService;
import mik.prog4.zh1.util.IdProvider;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.http.HttpServlet;
import java.io.IOException;

public class NewPetServlet extends HttpServlet {

    private final IdProvider idProvider = IdProvider.getInstance();
    private final PetService petService = new PetService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        req.getRequestDispatcher("/newPet.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        var name = req.getParameter("name");
        var chipCode = req.getParameter("chipCode");
        var address = req.getParameter("address");
        var species = req.getParameter("species");
        var pet = new Pet(name, chipCode, address, species);

        this.petService.save(pet);

        resp.sendRedirect("petList");
    }
}
