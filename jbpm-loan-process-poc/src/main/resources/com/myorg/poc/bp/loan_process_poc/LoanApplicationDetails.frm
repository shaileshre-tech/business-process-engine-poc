{"id":"a92b0e12-c01c-469d-88ff-35a126a42c3e","name":"LoanApplicationDetails","model":{"source":"INTERNAL","className":"com.myorg.poc.bp.loan_process_poc.LoanApplicationDetails","name":"loanApplicationDetails","properties":[{"name":"name","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"name"},{"name":"field-placeHolder","value":"name"}]}},{"name":"address","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"address"},{"name":"field-placeHolder","value":"address"}]}},{"name":"panNumber","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"panNumber"},{"name":"field-placeHolder","value":"panNumber"}]}},{"name":"passportNumber","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"passportNumber"},{"name":"field-placeHolder","value":"passportNumber"}]}},{"name":"loanAmount","typeInfo":{"type":"BASE","className":"java.lang.Float","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"loanAmount"},{"name":"field-placeHolder","value":"loanAmount"}]}},{"name":"loanInterestRate","typeInfo":{"type":"BASE","className":"java.lang.Float","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"loanInterestRate"},{"name":"field-placeHolder","value":"loanInterestRate"}]}},{"name":"loanTenure","typeInfo":{"type":"BASE","className":"java.lang.Float","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"loanTenure"},{"name":"field-placeHolder","value":"loanTenure"}]}},{"name":"formValidationResult","typeInfo":{"type":"BASE","className":"java.lang.Boolean","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"formValidationResult"},{"name":"field-placeHolder","value":"formValidationResult"}]}}],"formModelType":"org.kie.workbench.common.forms.data.modeller.model.DataObjectFormModel"},"fields":[{"maxLength":100,"placeHolder":"name","id":"field_4947667556078997E12","name":"name","label":"name","required":false,"readOnly":false,"validateOnChange":true,"binding":"name","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"maxLength":100,"placeHolder":"address","id":"field_5213162533112788E12","name":"address","label":"address","required":false,"readOnly":false,"validateOnChange":true,"binding":"address","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"maxLength":100,"placeHolder":"panNumber","id":"field_9321453724410645E11","name":"panNumber","label":"panNumber","required":false,"readOnly":false,"validateOnChange":true,"binding":"panNumber","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"maxLength":100,"placeHolder":"passportNumber","id":"field_3240765824002756E12","name":"passportNumber","label":"passportNumber","required":false,"readOnly":false,"validateOnChange":true,"binding":"passportNumber","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"placeHolder":"loanAmount","maxLength":100,"id":"field_280840483076124E11","name":"loanAmount","label":"loanAmount","required":false,"readOnly":false,"validateOnChange":true,"binding":"loanAmount","standaloneClassName":"java.lang.Float","code":"DecimalBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.decimalBox.definition.DecimalBoxFieldDefinition"},{"placeHolder":"loanInterestRate","maxLength":100,"id":"field_1305536887015967E11","name":"loanInterestRate","label":"loanInterestRate","required":false,"readOnly":false,"validateOnChange":true,"binding":"loanInterestRate","standaloneClassName":"java.lang.Float","code":"DecimalBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.decimalBox.definition.DecimalBoxFieldDefinition"},{"placeHolder":"loanTenure","maxLength":100,"id":"field_4321579685552993E12","name":"loanTenure","label":"loanTenure","required":false,"readOnly":false,"validateOnChange":true,"binding":"loanTenure","standaloneClassName":"java.lang.Float","code":"DecimalBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.decimalBox.definition.DecimalBoxFieldDefinition"},{"id":"field_2595808492693571E11","name":"formValidationResult","label":"formValidationResult","required":false,"readOnly":false,"validateOnChange":true,"binding":"formValidationResult","standaloneClassName":"java.lang.Boolean","code":"CheckBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.checkBox.definition.CheckBoxFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_4947667556078997E12","form_id":"a92b0e12-c01c-469d-88ff-35a126a42c3e"}}]}]},{"properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_5213162533112788E12","form_id":"a92b0e12-c01c-469d-88ff-35a126a42c3e"}}]}]},{"properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_9321453724410645E11","form_id":"a92b0e12-c01c-469d-88ff-35a126a42c3e"}}]}]},{"properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_3240765824002756E12","form_id":"a92b0e12-c01c-469d-88ff-35a126a42c3e"}}]}]},{"properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_280840483076124E11","form_id":"a92b0e12-c01c-469d-88ff-35a126a42c3e"}}]}]},{"properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_1305536887015967E11","form_id":"a92b0e12-c01c-469d-88ff-35a126a42c3e"}}]}]},{"properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_4321579685552993E12","form_id":"a92b0e12-c01c-469d-88ff-35a126a42c3e"}}]}]},{"properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_2595808492693571E11","form_id":"a92b0e12-c01c-469d-88ff-35a126a42c3e"}}]}]}]}}