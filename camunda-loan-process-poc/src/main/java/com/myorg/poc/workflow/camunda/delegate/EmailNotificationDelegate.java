package com.myorg.poc.workflow.camunda.delegate;

import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.JavaDelegate;
import org.springframework.stereotype.Component;

@Component
public class EmailNotificationDelegate implements JavaDelegate {

    @Override
    public void execute(DelegateExecution execution) throws Exception {
        // TODO: Implement logic to sent email notifications

        // Additional logic to print the appropriate validation outcome
        System.out.print("In EmailNotificationDelegate - ");
        String flagName = "panValidationResult";

        DelegateExecution delegateExecution = execution.getProcessInstance();
        Object obj = delegateExecution.getVariable(flagName);

        if(obj == null){
            flagName = "formValidationResult";
            obj = delegateExecution.getVariable(flagName);
        }

        System.out.print(flagName+" = "+obj);
        System.out.println();
    }
}
