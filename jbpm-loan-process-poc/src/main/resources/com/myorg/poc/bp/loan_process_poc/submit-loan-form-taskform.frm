{"id":"19202e0c-cfa1-4071-841b-ebade51ec572","name":"submit-loan-form-taskform.frm","model":{"taskName":"submit-loan-form","processId":"loan-process-poc.loan-approval-process","properties":[{"name":"loanApplicationDetails","typeInfo":{"type":"OBJECT","className":"com.myorg.poc.bp.loan_process_poc.LoanApplicationDetails","multiple":false},"metaData":{"entries":[]}}],"formModelType":"org.kie.workbench.common.forms.jbpm.model.authoring.task.TaskFormModel"},"fields":[{"nestedForm":"a92b0e12-c01c-469d-88ff-35a126a42c3e","container":"FIELD_SET","id":"field_2908890244298337E11","name":"loanApplicationDetails","label":"LoanApplicationDetails","required":false,"readOnly":false,"validateOnChange":true,"binding":"loanApplicationDetails","standaloneClassName":"com.myorg.poc.bp.loan_process_poc.LoanApplicationDetails","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.uberfire.ext.plugin.client.perspective.editor.layout.editor.HTMLLayoutDragComponent","properties":{"HTML_CODE":"\u003ch3\u003eOutputs:\u003c/h3\u003e"}}]}]},{"properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_2908890244298337E11","form_id":"19202e0c-cfa1-4071-841b-ebade51ec572"}}]}]}]}}