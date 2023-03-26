package mik.prog4.zh1.tag;

import mik.prog4.zh1.entity.Pet;
import mik.prog4.zh1.service.PetService;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class GlobalIndentifierTag extends SimpleTagSupport {
    private Pet pet;

    public Pet getPet() { return this.pet; }

    public void setPet(Pet pet) { this.pet = pet; }

    private final PetService petService = new PetService();

    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = this.getJspContext().getOut();

        out.println(petService.getGlobalIdentifier((this.pet)));
    }
}
