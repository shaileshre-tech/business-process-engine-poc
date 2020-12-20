package com.myorg.poc.workflow.camunda.delegate;

import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.JavaDelegate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import static java.lang.Boolean.valueOf;

@Component
public class PanValidationDelegate implements JavaDelegate {

    private static final String PAN_VALIDATION_RESULT = "panValidationResult";

    private final String panValidationUrl;
    private final RestTemplate restTemplate;

    @Autowired
    public PanValidationDelegate(@Value("${camunda.dummyWebservice.panValidationUrl}") String panValidationUrl, RestTemplate restTemplate) {
        this.panValidationUrl = panValidationUrl;
        this.restTemplate = restTemplate;
    }

    @Override
    public void execute(DelegateExecution execution) {
        DelegateExecution delegateExecution = execution.getProcessInstance();
        final String panNumber = (String)delegateExecution.getVariable("panNumber");

        boolean flag = valueOf(restTemplate.postForEntity(panValidationUrl, panNumber, String.class).getBody());

        delegateExecution.setVariable(PAN_VALIDATION_RESULT, flag);

        System.out.println("In PanValidationDelegate - "+PAN_VALIDATION_RESULT+" = "+delegateExecution.getVariable(PAN_VALIDATION_RESULT));
    }
}
