package com.lming.sdd.dubbo.customer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
@ImportResource(value = {"classpath:dubbo-customer.xml"})
public class DubboCustomerApplication {
	public static void main(String[] args) {
		SpringApplication.run(DubboCustomerApplication.class, args);
	}
}
