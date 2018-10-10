package com.cufflink.project;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProjectController {
   Logger logger = Logger.getLogger(ProjectController.class);
      @Autowired
      ProjectLogic projectLogic;
      
      @RequestMapping("/Project/page")
      public String getProjectFind(Model mod, @RequestParam("pagenum") String pagenum, Map<String, Object> pMap) {
         logger.info("ProjectFind ȣ�⼺��");
         
         mod.addAttribute("ProjectFind1", projectLogic.getProjectFind1());
         mod.addAttribute("ProjectFind2", projectLogic.getProjectFind2()); 
         mod.addAttribute("ProjectCate_ALL", projectLogic.getProject_cateALL());
         mod.addAttribute("Projectseach", projectLogic.getProjectseach());
         mod.addAttribute("getAll", projectLogic.getProAll(Integer.parseInt(pagenum))); 
         
          
         mod.addAttribute("Project", projectLogic.Project(pMap));
         
         
         return "Project/ProjectFind";
      }
      

      
      //������Ʈ �˼���
      @RequestMapping("/project/projectSubmitted")
      public String projectSubmitted() {
         return "/clients/manage/project/projectSubmitted";
      }
      //������Ʈ �ӽ�����
      @RequestMapping("/project/projectSaved")
      public String projectSaved() {
         return "/clients/manage/project/projectSaved";
      }
      //������Ʈ ��Ͻ���
      @RequestMapping("/project/projectRejected")
      public String projectRejected() {
         return "/clients/manage/project/projectRejected";
      }
      
         
      //*********************************   Ŭ���̾�Ʈ �α��� �׺������ �޴�
      
      
      //������Ʈ ������ ������
      @RequestMapping("/project/projectRecruiting")
      public String projectRecruiting() {
         return "/clients/manage/projectRecruiting";
      }
      //������Ʈ �������� ������Ʈ
      @RequestMapping("/project/projectContractInProgress")
      public String projectContractInProgress() {
         return "/clients/manage/projectContractInProgress";
      }
      //������Ʈ �򰡴���� ������Ʈ
      @RequestMapping("/project/projectReviewContract")
      public String projectReviewContract() {
         return "/clients/manage/projectReviewContract";
      }
      
      //������Ʈ �Ϸ�� ������Ʈ
      @RequestMapping("/project/projectCompletedContract")
      public String projectCompletedContract() {
         return "/clients/manage/projectCompletedContract";
      }
      //������Ʈ ����� ������Ʈ
      @RequestMapping("/project/projectCancelledProject")
      public String projectCancelledProject() {
         return "/clients/manage/projectCancelledProject";
      }



}