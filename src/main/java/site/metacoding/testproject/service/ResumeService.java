package site.metacoding.testproject.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.testproject.domain.resume.Resume;
import site.metacoding.testproject.domain.resume.ResumeDao;

@Service
@RequiredArgsConstructor
public class ResumeService {
    
    private final ResumeDao resumeDao;

    public Resume 이력서상세보기(Integer id){
        return resumeDao.findById(id);
    }
}
