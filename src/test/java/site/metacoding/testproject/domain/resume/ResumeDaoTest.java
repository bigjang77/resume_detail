package site.metacoding.testproject.domain.resume;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.context.annotation.Import;

import site.metacoding.testproject.config.MyBatisConfig;

@Import(MyBatisConfig.class) // MyBatisTest가 MyBatisConfig를 못읽음
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE) // 실DB사용
@MybatisTest
public class ResumeDaoTest {
    
    @Autowired
    private ResumeDao resumeDao;

    @Test
    public void findById_test(){
        //given 
        Integer resumeId = 1;

        //when
        Resume resume = resumeDao.findById(resumeId);

        //then
        assertEquals("영운고", resume.getHighschoolName());
    }
}
