{"id":"3ea79be2-c341-4422-bbd1-797899adbbc1","name":"loan-process-poc.loan-approval-process-taskform.frm","model":{"processName":"loan-approval-process","processId":"loan-process-poc.loan-approval-process","properties":[{"name":"loanApplicationDetails","typeInfo":{"type":"OBJECT","className":"com.myorg.poc.bp.loan_process_poc.LoanApplicationDetails","multiple":false},"metaData":{"entries":[]}},{"name":"panValidationResult","typeInfo":{"type":"BASE","className":"java.lang.Boolean","multiple":false},"metaData":{"entries":[]}}],"formModelType":"org.kie.workbench.common.forms.jbpm.model.authoring.process.BusinessProcessFormModel"},"fields":[{"nestedForm":"a92b0e12-c01c-469d-88ff-35a126a42c3e","container":"FIELD_SET","id":"field_698567189352243E10","name":"loanApplicationDetails","label":"LoanApplicationDetails","required":false,"readOnly":false,"validateOnChange":true,"binding":"loanApplicationDetails","standaloneClassName":"com.myorg.poc.bp.loan_process_poc.LoanApplicationDetails","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"},{"id":"field_738475715445003E11","name":"panValidationResult","label":"PanValidationResult","required":false,"readOnly":false,"validateOnChange":true,"binding":"panValidationResult","standaloneClassName":"java.lang.Boolean","code":"CheckBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.checkBox.definition.CheckBoxFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_698567189352243E10","form_id":"3ea79be2-c341-4422-bbd1-797899adbbc1"}}]}]},{"properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_738475715445003E11","form_id":"3ea79be2-c341-4422-bbd1-797899adbbc1"}}]}]}]}}