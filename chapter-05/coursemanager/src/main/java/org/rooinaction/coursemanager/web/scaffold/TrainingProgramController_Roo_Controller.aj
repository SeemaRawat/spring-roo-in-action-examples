// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.rooinaction.coursemanager.web.scaffold;

import java.io.UnsupportedEncodingException;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import org.rooinaction.coursemanager.model.Course;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect TrainingProgramController_Roo_Controller {
    
    @ModelAttribute("courses")
    public Collection<Course> TrainingProgramController.populateCourses() {
        return Course.findAllCourses();
    }
    
    String TrainingProgramController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}