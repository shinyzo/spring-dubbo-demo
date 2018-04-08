package com.lming.sdd.dubbo.provider.rpc.service.impl;

import com.lming.chc.entity.ChcDoctorInfo;
import com.lming.chc.entity.ChcDoctorInfoExample;
import com.lming.chc.mapper.ChcDoctorInfoMapper;
import com.lming.chc.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

/**
 * Auth : shinyzo
 * Date : 2018/4/8
 * description : xxxx
 */
@Service("doctorService")
public class DoctorServiceImpl implements DoctorService {

    @Autowired
    private ChcDoctorInfoMapper chcDoctorInfoMapper;

    @Override
    public List<ChcDoctorInfo> findAll() {
        ChcDoctorInfoExample example = new ChcDoctorInfoExample();
        return chcDoctorInfoMapper.selectByExample(example);
    }
}
