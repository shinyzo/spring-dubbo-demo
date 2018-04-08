package com.lming.sdd.dubbo.customer.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.lming.chc.entity.ChcDoctorInfo;
import com.lming.chc.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Auth : shinyzo
 * Date : 2018/4/8
 * description : xxxx
 */
@RestController
@RequestMapping("/chc")
public class DoctorController {

    @Autowired
    private DoctorService doctorService;

    @GetMapping("/doctor/list")
    public List<ChcDoctorInfo> getDoctorInfo(){
        List<ChcDoctorInfo> doctorInfoList = doctorService.findAll();
        System.out.println("doctor:" + doctorInfoList.size());
        return doctorInfoList;
    }

}
