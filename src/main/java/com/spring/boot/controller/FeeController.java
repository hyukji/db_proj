package com.spring.boot.controller;

import com.spring.boot.dto.FeeDTO;
import com.spring.boot.dto.MemberDTO;
import com.spring.boot.dto.PayDTO;
import com.spring.boot.service.EventService;
import com.spring.boot.service.FeeService;
import com.spring.boot.service.PayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class FeeController {

    @Autowired
    private FeeService feeService;

    @Autowired
    private PayService payService;


    @RequestMapping(value = "/moneyManager")
    public String moneyManager(HttpServletRequest request) throws Exception{
        List<FeeDTO> fees = feeService.findAll();
        request.setAttribute("fees", fees);

        return "moneyManager";
    }

    @PostMapping(value = "/feeRegisterAction")
    public String feeRegisterAction(FeeDTO fee, HttpServletRequest request) throws Exception{
        feeService.save(fee);

        return moneyManager(request);
    }

    @RequestMapping(value = "/feeDeleteAction")
    public String feeDeleteAction(@RequestParam("id") int id, HttpServletRequest request) throws Exception{
        System.out.println(id);
        feeService.delete(id);

        return moneyManager(request);
    }

    @RequestMapping(value = "/feeHistory")
    public String feeHistory(@RequestParam("id") int id, HttpServletRequest request) throws Exception{
        List<PayDTO> pays = payService.findByFeeId(id);
        FeeDTO fee = feeService.findById(id);

        request.setAttribute("pays", pays);
        request.setAttribute("fee", fee);

        return "moneyhistoryInquiry";
    }

    @PostMapping(value = "/payRegister/{feeId}")
    public String payRegister(@PathVariable int feeId, PayDTO pay, HttpServletRequest request) throws Exception{
        pay.setFee_id(feeId);
        try {
            payService.save(pay);
        } catch (Exception e) {
            return "error";
        }

        return "redirect:/feeHistory?id=" + feeId;
    }

}
