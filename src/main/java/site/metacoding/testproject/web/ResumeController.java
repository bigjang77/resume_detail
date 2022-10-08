package site.metacoding.testproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import lombok.RequiredArgsConstructor;
import site.metacoding.testproject.service.ResumeService;

@RequiredArgsConstructor
@Controller
public class ResumeController {
    
    private final ResumeService resumeService;

    @GetMapping("/resume/{id}")
    public String getResumeDetail(@PathVariable Integer id,Model model){
        model.addAttribute("resume",resumeService.이력서상세보기(id));
        return "resume/detail";
    }

    
}
