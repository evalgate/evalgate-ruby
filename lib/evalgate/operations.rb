# Code generated from docs/openapi.json; DO NOT EDIT.
module EvalGate
  VERSION = "3.17.0"
  SPEC_VERSION = "18.4.0"
  OPERATIONS = JSON.parse(<<~'OPERATIONS').to_h { |operation| [operation.fetch("operationId"), operation.freeze] }.freeze
[{"operationId":"acceptOrganizationInvitation","requiresAuth":true,"method":"POST","path":"/api/organizations/invitations/accept","summary":"Accept an organization invitation","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["token"],"pagination":null,"scopes":[]},{"operationId":"activateRepository","requiresAuth":true,"method":"POST","path":"/api/onboarding/activation","summary":"Activate a connected repository","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","intakeManifestHash","repositoryId","requestedRef","targetSha"],"pagination":null,"scopes":["eval:write"]},{"operationId":"askEvalGateDocumentation","requiresAuth":false,"method":"POST","path":"/ask","summary":"Ask for published EvalGate documentation","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["query"],"pagination":null,"scopes":["docs:read"]},{"operationId":"backfillConnectionMetadata","requiresAuth":true,"method":"POST","path":"/api/connections/graph/backfill","summary":"Backfill bounded canonical connection references","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["references"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"checkInfisicalVaultCredential","requiresAuth":true,"method":"POST","path":"/api/org/credential-vaults/infisical/bindings/{bindingId}/check","summary":"Check a vault-backed provider credential","pathParameters":["bindingId"],"requiredPathParameters":["bindingId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"compareTrajectoryAnalyses","requiresAuth":true,"method":"GET","path":"/api/trajectory-analysis/compare","summary":"Compare hosted and remote trajectories","pathParameters":[],"requiredPathParameters":[],"queryParameters":["baselineId","candidateId"],"requiredQueryParameters":["baselineId","candidateId"],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"connectInfisicalVault","requiresAuth":true,"method":"POST","path":"/api/org/credential-vaults/infisical","summary":"Connect an Infisical vault","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["clientId","clientSecret","defaultEnvironment","projectId","region"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"createConnectorRoot","requiresAuth":true,"method":"POST","path":"/api/connections/graph","summary":"Create an independent configured account root with canonical references","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["accountScope","driverId","endpoints","fields","idempotencyKey","name","placement","schemaVersion"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"createTrajectoryAnalysisReport","requiresAuth":true,"method":"POST","path":"/api/trajectory-analysis/{trajectoryId}/reports","summary":"Create a trajectory evidence report","pathParameters":["trajectoryId"],"requiredPathParameters":["trajectoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["scoreResultId","title"],"pagination":null,"scopes":["reports:write"]},{"operationId":"decideAgentCredentialHandoff","requiresAuth":true,"method":"POST","path":"/api/agent-setup/authorize","summary":"Approve or deny an agent credential handoff","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["decision","organization_id","user_code"],"pagination":null,"scopes":["admin:keys"]},{"operationId":"delete_annotations_tasks","requiresAuth":true,"method":"DELETE","path":"/api/annotations/tasks","summary":"Delete annotations tasks","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_annotations_tasks_id_items_itemId_tags","requiresAuth":true,"method":"DELETE","path":"/api/annotations/tasks/{id}/items/{itemId}/tags","summary":"Delete annotations tags","pathParameters":["id","itemId"],"requiredPathParameters":["id","itemId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["tag"],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_benchmarks_id","requiresAuth":true,"method":"DELETE","path":"/api/benchmarks/{id}","summary":"Delete benchmarks id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_dashboard_alert_rules_id","requiresAuth":true,"method":"DELETE","path":"/api/dashboard-alert-rules/{id}","summary":"Delete dashboard alert rules id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["reports:write"]},{"operationId":"delete_dashboards_id","requiresAuth":true,"method":"DELETE","path":"/api/dashboards/{id}","summary":"Delete dashboards id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["reports:write"]},{"operationId":"delete_dashboards_id_shares_linkId","requiresAuth":true,"method":"DELETE","path":"/api/dashboards/{id}/shares/{linkId}","summary":"Delete dashboards linkId","pathParameters":["id","linkId"],"requiredPathParameters":["id","linkId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["reports:write"]},{"operationId":"delete_dashboards_id_widgets_widgetKey","requiresAuth":true,"method":"DELETE","path":"/api/dashboards/{id}/widgets/{widgetKey}","summary":"Delete dashboards widgetKey","pathParameters":["id","widgetKey"],"requiredPathParameters":["id","widgetKey"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["reports:write"]},{"operationId":"delete_datasets_id","requiresAuth":true,"method":"DELETE","path":"/api/datasets/{id}","summary":"Delete datasets id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_datasets_id_rows_rowId","requiresAuth":true,"method":"DELETE","path":"/api/datasets/{id}/rows/{rowId}","summary":"Delete datasets rowId","pathParameters":["id","rowId"],"requiredPathParameters":["id","rowId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_developer_api_keys_id","requiresAuth":true,"method":"DELETE","path":"/api/developer/api-keys/{id}","summary":"Delete developer id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:keys"]},{"operationId":"delete_developer_webhooks_id","requiresAuth":true,"method":"DELETE","path":"/api/developer/webhooks/{id}","summary":"Delete developer id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"delete_eval_loop_workflows_workflowId","requiresAuth":true,"method":"DELETE","path":"/api/eval-loop/workflows/{workflowId}","summary":"Delete eval loop workflowId","pathParameters":["workflowId"],"requiredPathParameters":["workflowId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_evaluations","requiresAuth":true,"method":"DELETE","path":"/api/evaluations","summary":"Delete evaluations evaluations","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id"],"requiredQueryParameters":["id"],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_evaluations_id","requiresAuth":true,"method":"DELETE","path":"/api/evaluations/{id}","summary":"Delete evaluations id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_evaluations_id_artifacts_artifactId","requiresAuth":true,"method":"DELETE","path":"/api/evaluations/{id}/artifacts/{artifactId}","summary":"Delete evaluations artifactId","pathParameters":["artifactId","id"],"requiredPathParameters":["artifactId","id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_evaluations_id_knowledge","requiresAuth":true,"method":"DELETE","path":"/api/evaluations/{id}/knowledge","summary":"Delete evaluations knowledge","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_evaluations_id_labeled_cases","requiresAuth":true,"method":"DELETE","path":"/api/evaluations/{id}/labeled-cases","summary":"Delete evaluations labeled cases","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["caseId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_evaluations_id_playground_variants_variantId","requiresAuth":true,"method":"DELETE","path":"/api/evaluations/{id}/playground/variants/{variantId}","summary":"Delete evaluations variantId","pathParameters":["id","variantId"],"requiredPathParameters":["id","variantId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_evaluations_id_publish","requiresAuth":true,"method":"DELETE","path":"/api/evaluations/{id}/publish","summary":"Delete evaluations publish","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["revokedReason","shareId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_evaluations_id_schedule","requiresAuth":true,"method":"DELETE","path":"/api/evaluations/{id}/schedule","summary":"Delete evaluations schedule","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_evaluations_id_test_cases","requiresAuth":true,"method":"DELETE","path":"/api/evaluations/{id}/test-cases","summary":"Delete evaluations test cases","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["testCaseId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_evaluations_id_test_cases_testCaseId","requiresAuth":true,"method":"DELETE","path":"/api/evaluations/{id}/test-cases/{testCaseId}","summary":"Delete evaluations testCaseId","pathParameters":["id","testCaseId"],"requiredPathParameters":["id","testCaseId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_executions_executionId","requiresAuth":true,"method":"DELETE","path":"/api/executions/{executionId}","summary":"Delete executions executionId","pathParameters":["executionId"],"requiredPathParameters":["executionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"delete_improvement_runs_runId","requiresAuth":true,"method":"DELETE","path":"/api/improvement/runs/{runId}","summary":"Delete improvement runId","pathParameters":["runId"],"requiredPathParameters":["runId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"delete_knowledge_documents_id","requiresAuth":true,"method":"DELETE","path":"/api/knowledge/documents/{id}","summary":"Delete knowledge id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_llm_judge_configs","requiresAuth":true,"method":"DELETE","path":"/api/llm-judge/configs","summary":"Delete llm judge configs","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_logs_cohorts_cohortId","requiresAuth":true,"method":"DELETE","path":"/api/logs/cohorts/{cohortId}","summary":"Delete logs cohortId","pathParameters":["cohortId"],"requiredPathParameters":["cohortId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:write"]},{"operationId":"delete_logs_views_viewId","requiresAuth":true,"method":"DELETE","path":"/api/logs/views/{viewId}","summary":"Delete logs viewId","pathParameters":["viewId"],"requiredPathParameters":["viewId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:write"]},{"operationId":"delete_mcp","requiresAuth":true,"method":"DELETE","path":"/api/mcp","summary":"Delete mcp mcp","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"delete_metric_definitions_id","requiresAuth":true,"method":"DELETE","path":"/api/metric-definitions/{id}","summary":"Delete metric definitions id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["reports:write"]},{"operationId":"delete_model_gateway_configs_id","requiresAuth":true,"method":"DELETE","path":"/api/model-gateway/configs/{id}","summary":"Delete model gateway id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"delete_model_gateway_routing_profiles_id","requiresAuth":true,"method":"DELETE","path":"/api/model-gateway/routing-profiles/{id}","summary":"Delete model gateway id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"delete_org_keys_keyId","requiresAuth":true,"method":"DELETE","path":"/api/org/keys/{keyId}","summary":"Delete org keyId","pathParameters":["keyId"],"requiredPathParameters":["keyId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"delete_organizations","requiresAuth":true,"method":"DELETE","path":"/api/organizations","summary":"Delete organizations organizations","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:org"]},{"operationId":"delete_organizations_identity_domains_domainId","requiresAuth":true,"method":"DELETE","path":"/api/organizations/identity/domains/{domainId}","summary":"Delete organizations domainId","pathParameters":["domainId"],"requiredPathParameters":["domainId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:org"]},{"operationId":"delete_organizations_identity_sso_providers_providerId","requiresAuth":true,"method":"DELETE","path":"/api/organizations/identity/sso-providers/{providerId}","summary":"Delete organizations providerId","pathParameters":["providerId"],"requiredPathParameters":["providerId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:org"]},{"operationId":"delete_organizations_members_memberId","requiresAuth":true,"method":"DELETE","path":"/api/organizations/members/{memberId}","summary":"Delete organizations memberId","pathParameters":["memberId"],"requiredPathParameters":["memberId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:org"]},{"operationId":"delete_portable_quality_checks_executionId","requiresAuth":true,"method":"DELETE","path":"/api/portable-quality/checks/{executionId}","summary":"Delete portable quality executionId","pathParameters":["executionId"],"requiredPathParameters":["executionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["checks:run"]},{"operationId":"delete_portable_quality_grants_grantId","requiresAuth":true,"method":"DELETE","path":"/api/portable-quality/grants/{grantId}","summary":"Delete portable quality grantId","pathParameters":["grantId"],"requiredPathParameters":["grantId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["grants:write"]},{"operationId":"delete_portable_quality_resources_resourceId","requiresAuth":true,"method":"DELETE","path":"/api/portable-quality/resources/{resourceId}","summary":"Delete portable quality resourceId","pathParameters":["resourceId"],"requiredPathParameters":["resourceId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["resources:write"]},{"operationId":"delete_portable_quality_standards_standardId","requiresAuth":true,"method":"DELETE","path":"/api/portable-quality/standards/{standardId}","summary":"Delete portable quality standardId","pathParameters":["standardId"],"requiredPathParameters":["standardId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["standards:approve"]},{"operationId":"delete_prompts_promptId","requiresAuth":true,"method":"DELETE","path":"/api/prompts/{promptId}","summary":"Delete prompts promptId","pathParameters":["promptId"],"requiredPathParameters":["promptId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"delete_traces","requiresAuth":true,"method":"DELETE","path":"/api/traces","summary":"Delete traces traces","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:write"]},{"operationId":"delete_traces_id","requiresAuth":true,"method":"DELETE","path":"/api/traces/{id}","summary":"Delete traces id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:write"]},{"operationId":"delete_workflows_id","requiresAuth":true,"method":"DELETE","path":"/api/workflows/{id}","summary":"Delete workflows id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"disconnectInfisicalVault","requiresAuth":true,"method":"DELETE","path":"/api/org/credential-vaults/infisical","summary":"Disconnect the Infisical vault","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"discoverConnectorResources","requiresAuth":true,"method":"POST","path":"/api/connections/graph/{id}/discover","summary":"Discover one bounded native resource page with a reviewed snapshot","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedAuthorityEpoch","expectedRevision","expectedSelectionEpoch","idempotencyKey"],"pagination":null,"scopes":["admin:workspace","resources:read"]},{"operationId":"executeConnectorOperation","requiresAuth":true,"method":"POST","path":"/api/connections/graph/{id}/execute","summary":"Read, search or invoke one currently granted native resource","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedAuthorityEpoch","expectedRevision","expectedSelectionEpoch","grantId","idempotencyKey","operation"],"pagination":null,"scopes":["admin:workspace","resources:read"]},{"operationId":"get_adjudication_items","requiresAuth":true,"method":"GET","path":"/api/adjudication/items","summary":"List adjudication items","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_adjudication_items_id","requiresAuth":true,"method":"GET","path":"/api/adjudication/items/{id}","summary":"Get adjudication id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_adjudication_items_id_amendments","requiresAuth":true,"method":"GET","path":"/api/adjudication/items/{id}/amendments","summary":"Get adjudication amendments","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_adjudication_items_id_comments","requiresAuth":true,"method":"GET","path":"/api/adjudication/items/{id}/comments","summary":"Get adjudication comments","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["afterId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_adjudication_queue_summary","requiresAuth":true,"method":"GET","path":"/api/adjudication/queue-summary","summary":"List adjudication queue summary","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_agent_evidence","requiresAuth":true,"method":"GET","path":"/api/agent-evidence","summary":"Get the agent evidence overview","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:read"]},{"operationId":"get_agent_evidence_resource","requiresAuth":true,"method":"GET","path":"/api/agent-evidence/{resource}","summary":"List normalized agent evidence records","pathParameters":["resource"],"requiredPathParameters":["resource"],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["traces:read"]},{"operationId":"get_agent_evidence_templates","requiresAuth":true,"method":"GET","path":"/api/agent-evidence/templates","summary":"List agent evidence work pattern templates","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:read"]},{"operationId":"get_annotations","requiresAuth":true,"method":"GET","path":"/api/annotations","summary":"List annotations annotations","pathParameters":[],"requiredPathParameters":[],"queryParameters":["evaluationRunId","limit","offset","testCaseId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_annotations_routing","requiresAuth":true,"method":"GET","path":"/api/annotations/routing","summary":"List annotations routing","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_annotations_tasks","requiresAuth":true,"method":"GET","path":"/api/annotations/tasks","summary":"List annotations tasks","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id","limit","offset","search","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_annotations_tasks_id","requiresAuth":true,"method":"GET","path":"/api/annotations/tasks/{id}","summary":"Get annotations id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_annotations_tasks_id_items","requiresAuth":true,"method":"GET","path":"/api/annotations/tasks/{id}/items","summary":"Get annotations items","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["annotated","limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_annotations_tasks_id_items_itemId_revisions","requiresAuth":true,"method":"GET","path":"/api/annotations/tasks/{id}/items/{itemId}/revisions","summary":"Get annotations revisions","pathParameters":["id","itemId"],"requiredPathParameters":["id","itemId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_annotations_tasks_id_items_itemId_tags","requiresAuth":true,"method":"GET","path":"/api/annotations/tasks/{id}/items/{itemId}/tags","summary":"Get annotations tags","pathParameters":["id","itemId"],"requiredPathParameters":["id","itemId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_arena_leaderboard","requiresAuth":true,"method":"GET","path":"/api/arena/leaderboard","summary":"List arena leaderboard","pathParameters":[],"requiredPathParameters":[],"queryParameters":["days","limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_arena_matches","requiresAuth":true,"method":"GET","path":"/api/arena-matches","summary":"List arena matches arena matches","pathParameters":[],"requiredPathParameters":[],"queryParameters":["end","limit","offset","start","winnerId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_arena_matches_id","requiresAuth":true,"method":"GET","path":"/api/arena-matches/{id}","summary":"Get arena matches id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_arena_matches_leaderboard","requiresAuth":true,"method":"GET","path":"/api/arena-matches/leaderboard","summary":"List arena matches leaderboard","pathParameters":[],"requiredPathParameters":[],"queryParameters":["days","limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_arena_reviews_id","requiresAuth":true,"method":"GET","path":"/api/arena/reviews/{id}","summary":"Get arena id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_assessments_id","requiresAuth":true,"method":"GET","path":"/api/assessments/{id}","summary":"Get assessments id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_assessments_id_runtime_evidence","requiresAuth":true,"method":"GET","path":"/api/assessments/{id}/runtime-evidence","summary":"Get assessments runtime evidence","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["beforeId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_audit_engagements","requiresAuth":true,"method":"GET","path":"/api/audit/engagements","summary":"List audit engagements","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_audit_engagements_id","requiresAuth":true,"method":"GET","path":"/api/audit/engagements/{id}","summary":"Get audit id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_audit_logs","requiresAuth":true,"method":"GET","path":"/api/audit-logs","summary":"List audit logs audit logs","pathParameters":[],"requiredPathParameters":[],"queryParameters":["action","limit","offset","resourceType","since","until"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["admin:workspace"]},{"operationId":"get_audit_logs_export","requiresAuth":true,"method":"GET","path":"/api/audit-logs/export","summary":"List audit logs export","pathParameters":[],"requiredPathParameters":[],"queryParameters":["action","format","limit","offset","resourceType"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["admin:workspace"]},{"operationId":"get_audit_populations_candidates","requiresAuth":true,"method":"GET","path":"/api/audit/populations/candidates","summary":"List audit candidates","pathParameters":[],"requiredPathParameters":[],"queryParameters":["engagementId","environment"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"get_audit_populations_id_items","requiresAuth":true,"method":"GET","path":"/api/audit/populations/{id}/items","summary":"Get audit items","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_audit_samples","requiresAuth":true,"method":"GET","path":"/api/audit/samples","summary":"List audit samples","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_benchmarks","requiresAuth":true,"method":"GET","path":"/api/benchmarks","summary":"List benchmarks benchmarks","pathParameters":[],"requiredPathParameters":[],"queryParameters":["includePublic","limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_benchmarks_id","requiresAuth":true,"method":"GET","path":"/api/benchmarks/{id}","summary":"Get benchmarks id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_benchmarks_id_leaderboard","requiresAuth":true,"method":"GET","path":"/api/benchmarks/{id}/leaderboard","summary":"Get benchmarks leaderboard","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["limit","offset","sortBy"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_benchmarks_id_results","requiresAuth":true,"method":"GET","path":"/api/benchmarks/{id}/results","summary":"Get benchmarks results","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["expand"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_calibration_mappings_mappingVersionId","requiresAuth":true,"method":"GET","path":"/api/calibration/mappings/{mappingVersionId}","summary":"Get calibration mappingVersionId","pathParameters":["mappingVersionId"],"requiredPathParameters":["mappingVersionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_calibration_mappings_mappingVersionId_diff","requiresAuth":true,"method":"GET","path":"/api/calibration/mappings/{mappingVersionId}/diff","summary":"Get calibration diff","pathParameters":["mappingVersionId"],"requiredPathParameters":["mappingVersionId"],"queryParameters":["against"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_calibration_release_gates","requiresAuth":true,"method":"GET","path":"/api/calibration/release-gates","summary":"List calibration release gates","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_calibration_workspace","requiresAuth":true,"method":"GET","path":"/api/calibration/workspace","summary":"List calibration workspace","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_campaigns","requiresAuth":true,"method":"GET","path":"/api/campaigns","summary":"List campaigns campaigns","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_campaigns_id","requiresAuth":true,"method":"GET","path":"/api/campaigns/{id}","summary":"Get campaigns id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_candidates","requiresAuth":true,"method":"GET","path":"/api/candidates","summary":"List candidates candidates","pathParameters":[],"requiredPathParameters":[],"queryParameters":["auto_promote_eligible","limit","offset","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_candidates_id","requiresAuth":true,"method":"GET","path":"/api/candidates/{id}","summary":"Get candidates id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_change_assessments","requiresAuth":true,"method":"GET","path":"/api/change-assessments","summary":"List change assessments change assessments","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_change_assessments_id","requiresAuth":true,"method":"GET","path":"/api/change-assessments/{id}","summary":"Get change assessments id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_change_assessments_id_qualification","requiresAuth":true,"method":"GET","path":"/api/change-assessments/{id}/qualification","summary":"Get change assessments qualification","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_command_search","requiresAuth":true,"method":"GET","path":"/api/command/search","summary":"List command search","pathParameters":[],"requiredPathParameters":[],"queryParameters":["q"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_copilot_proposals","requiresAuth":true,"method":"GET","path":"/api/copilot/proposals","summary":"List copilot proposals","pathParameters":[],"requiredPathParameters":[],"queryParameters":["domain","limit","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_copilot_proposals_id","requiresAuth":true,"method":"GET","path":"/api/copilot/proposals/{id}","summary":"Get copilot id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_copilot_threads","requiresAuth":true,"method":"GET","path":"/api/copilot/threads","summary":"List copilot threads","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_copilot_threads_id","requiresAuth":true,"method":"GET","path":"/api/copilot/threads/{id}","summary":"Get copilot id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_copilot_threads_id_messages","requiresAuth":true,"method":"GET","path":"/api/copilot/threads/{id}/messages","summary":"Get copilot messages","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_costs","requiresAuth":true,"method":"GET","path":"/api/costs","summary":"List costs costs","pathParameters":[],"requiredPathParameters":[],"queryParameters":["agentTree","breakdown","environment","excludeTest","limit","offset","traceId","workflowRunId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["traces:read"]},{"operationId":"get_costs_alerts","requiresAuth":true,"method":"GET","path":"/api/costs/alerts","summary":"List costs alerts","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["traces:read"]},{"operationId":"get_costs_pricing","requiresAuth":false,"method":"GET","path":"/api/costs/pricing","summary":"List costs pricing","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":[]},{"operationId":"get_costs_result_budget","requiresAuth":true,"method":"GET","path":"/api/costs/result-budget","summary":"List costs result budget","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:read"]},{"operationId":"get_costs_trends","requiresAuth":true,"method":"GET","path":"/api/costs/trends","summary":"List costs trends","pathParameters":[],"requiredPathParameters":[],"queryParameters":["endDate","environment","excludeTest","limit","offset","startDate"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["traces:read"]},{"operationId":"get_dashboard_alert_rules","requiresAuth":true,"method":"GET","path":"/api/dashboard-alert-rules","summary":"List dashboard alert rules dashboard alert rules","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_dashboard_alert_rules_id","requiresAuth":true,"method":"GET","path":"/api/dashboard-alert-rules/{id}","summary":"Get dashboard alert rules id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_dashboard_alert_rules_id_events","requiresAuth":true,"method":"GET","path":"/api/dashboard-alert-rules/{id}/events","summary":"Get dashboard alert rules events","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_dashboard_shares_token","requiresAuth":true,"method":"GET","path":"/api/dashboard-shares/{token}","summary":"Get dashboard shares token","pathParameters":["token"],"requiredPathParameters":["token"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_dashboards","requiresAuth":true,"method":"GET","path":"/api/dashboards","summary":"List dashboards dashboards","pathParameters":[],"requiredPathParameters":[],"queryParameters":["includeArchived","limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_dashboards_id","requiresAuth":true,"method":"GET","path":"/api/dashboards/{id}","summary":"Get dashboards id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_datasets","requiresAuth":true,"method":"GET","path":"/api/datasets","summary":"List datasets datasets","pathParameters":[],"requiredPathParameters":[],"queryParameters":["cursor","limit","search","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"cursor","scopes":["eval:read"]},{"operationId":"get_datasets_id","requiresAuth":true,"method":"GET","path":"/api/datasets/{id}","summary":"Get datasets id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_datasets_id_health","requiresAuth":true,"method":"GET","path":"/api/datasets/{id}/health","summary":"Get datasets health","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_datasets_id_rows","requiresAuth":true,"method":"GET","path":"/api/datasets/{id}/rows","summary":"Get datasets rows","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_datasets_id_rows_rowId","requiresAuth":true,"method":"GET","path":"/api/datasets/{id}/rows/{rowId}","summary":"Get datasets rowId","pathParameters":["id","rowId"],"requiredPathParameters":["id","rowId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_datasets_id_versions","requiresAuth":true,"method":"GET","path":"/api/datasets/{id}/versions","summary":"Get datasets versions","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_datasets_id_versions_versionId_diff","requiresAuth":true,"method":"GET","path":"/api/datasets/{id}/versions/{versionId}/diff","summary":"Get datasets diff","pathParameters":["id","versionId"],"requiredPathParameters":["id","versionId"],"queryParameters":["compare"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_decisions","requiresAuth":true,"method":"GET","path":"/api/decisions","summary":"List decisions decisions","pathParameters":[],"requiredPathParameters":[],"queryParameters":["agentName","decisionType","id","includeComparison","limit","minConfidence","offset","spanId","workflowRunId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["traces:read"]},{"operationId":"get_decisions_stats","requiresAuth":true,"method":"GET","path":"/api/decisions/stats","summary":"List decisions stats","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset","traceId","workflowId","workflowRunId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["traces:read"]},{"operationId":"get_deployable_assets","requiresAuth":true,"method":"GET","path":"/api/deployable-assets","summary":"List deployable assets deployable assets","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_developer_api_keys","requiresAuth":true,"method":"GET","path":"/api/developer/api-keys","summary":"List developer api keys","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["admin:keys"]},{"operationId":"get_developer_api_keys_id_usage","requiresAuth":true,"method":"GET","path":"/api/developer/api-keys/{id}/usage","summary":"Get developer usage","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["limit","offset","period"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["admin:keys"]},{"operationId":"get_developer_api_keys_validate","requiresAuth":true,"method":"GET","path":"/api/developer/api-keys/validate","summary":"List developer validate","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"get_developer_usage","requiresAuth":true,"method":"GET","path":"/api/developer/usage","summary":"List developer usage","pathParameters":[],"requiredPathParameters":[],"queryParameters":["groupBy","limit","offset","period"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["admin:keys"]},{"operationId":"get_developer_usage_summary","requiresAuth":true,"method":"GET","path":"/api/developer/usage/summary","summary":"List developer summary","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset","period"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["admin:keys"]},{"operationId":"get_developer_webhooks","requiresAuth":true,"method":"GET","path":"/api/developer/webhooks","summary":"List developer webhooks","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset","organizationId","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["admin:workspace"]},{"operationId":"get_developer_webhooks_id","requiresAuth":true,"method":"GET","path":"/api/developer/webhooks/{id}","summary":"Get developer id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"get_developer_webhooks_id_deliveries","requiresAuth":true,"method":"GET","path":"/api/developer/webhooks/{id}/deliveries","summary":"Get developer deliveries","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"get_drift_alerts","requiresAuth":true,"method":"GET","path":"/api/drift/alerts","summary":"List drift alerts","pathParameters":[],"requiredPathParameters":[],"queryParameters":["evaluationId","limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_eval_loop_summary","requiresAuth":true,"method":"GET","path":"/api/eval-loop/summary","summary":"List eval loop summary","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_eval_loop_workflows_workflowId","requiresAuth":true,"method":"GET","path":"/api/eval-loop/workflows/{workflowId}","summary":"Get eval loop workflowId","pathParameters":["workflowId"],"requiredPathParameters":["workflowId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_eval_loop_workflows_workflowId_suggestions","requiresAuth":true,"method":"GET","path":"/api/eval-loop/workflows/{workflowId}/suggestions","summary":"Get eval loop suggestions","pathParameters":["workflowId"],"requiredPathParameters":["workflowId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_eval_packs","requiresAuth":false,"method":"GET","path":"/api/eval-packs","summary":"List eval packs eval packs","pathParameters":[],"requiredPathParameters":[],"queryParameters":["domain"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"get_eval_packs_installations","requiresAuth":true,"method":"GET","path":"/api/eval-packs/installations","summary":"List eval packs installations","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_eval_packs_installations_installationId","requiresAuth":true,"method":"GET","path":"/api/eval-packs/installations/{installationId}","summary":"Get eval packs installationId","pathParameters":["installationId"],"requiredPathParameters":["installationId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_eval_packs_packId","requiresAuth":false,"method":"GET","path":"/api/eval-packs/{packId}","summary":"Get eval packs packId","pathParameters":["packId"],"requiredPathParameters":["packId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"get_evalgate_synthesize","requiresAuth":true,"method":"GET","path":"/api/evalgate/synthesize","summary":"List evalgate synthesize","pathParameters":[],"requiredPathParameters":[],"queryParameters":["evaluationId","includeItems","itemCursor","itemLimit","itemStatus","runId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["reports:write"]},{"operationId":"get_evals_as_code_applies","requiresAuth":true,"method":"GET","path":"/api/evals-as-code/applies","summary":"List evals as code applies","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_evals_as_code_applies_id","requiresAuth":true,"method":"GET","path":"/api/evals-as-code/applies/{id}","summary":"Get evals as code id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evals_as_code_drift_events","requiresAuth":true,"method":"GET","path":"/api/evals-as-code/drift-events","summary":"List evals as code drift events","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_evals_as_code_manifests","requiresAuth":true,"method":"GET","path":"/api/evals-as-code/manifests","summary":"List evals as code manifests","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_evals_as_code_manifests_id","requiresAuth":true,"method":"GET","path":"/api/evals-as-code/manifests/{id}","summary":"Get evals as code id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evals_as_code_manifests_id_versions","requiresAuth":true,"method":"GET","path":"/api/evals-as-code/manifests/{id}/versions","summary":"Get evals as code versions","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluation_templates","requiresAuth":false,"method":"GET","path":"/api/evaluation-templates","summary":"List evaluation templates evaluation templates","pathParameters":[],"requiredPathParameters":[],"queryParameters":["category","limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":[]},{"operationId":"get_evaluations","requiresAuth":true,"method":"GET","path":"/api/evaluations","summary":"List evaluations evaluations","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id","limit","offset","search","status","type"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_evaluations_id","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}","summary":"Get evaluations id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["lifecycle"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_agent_workflows","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/agent-workflows","summary":"Get evaluations agent workflows","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_alerts","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/alerts","summary":"Get evaluations alerts","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_artifacts","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/artifacts","summary":"Get evaluations artifacts","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["artifactType","limit","offset","runId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_evaluations_id_auto_readiness","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/auto-readiness","summary":"Get evaluations auto readiness","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_auto_sessions","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/auto-sessions","summary":"Get evaluations auto sessions","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_auto_sessions_sessionId_anti_gaming","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/auto-sessions/{sessionId}/anti-gaming","summary":"Get evaluations anti gaming","pathParameters":["id","sessionId"],"requiredPathParameters":["id","sessionId"],"queryParameters":["limit"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_auto_sessions_sessionId_experiments","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/auto-sessions/{sessionId}/experiments","summary":"Get evaluations experiments","pathParameters":["id","sessionId"],"requiredPathParameters":["id","sessionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_auto_sessions_sessionId_experiments_compare","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/auto-sessions/{sessionId}/experiments/compare","summary":"Get evaluations compare","pathParameters":["id","sessionId"],"requiredPathParameters":["id","sessionId"],"queryParameters":["exp1","exp2"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_auto_sessions_sessionId_ikb","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/auto-sessions/{sessionId}/ikb","summary":"Get evaluations ikb","pathParameters":["id","sessionId"],"requiredPathParameters":["id","sessionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_auto_sessions_sessionId_ledger","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/auto-sessions/{sessionId}/ledger","summary":"Get evaluations ledger","pathParameters":["id","sessionId"],"requiredPathParameters":["id","sessionId"],"queryParameters":["format"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_auto_sessions_sessionId_rounds","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/auto-sessions/{sessionId}/rounds","summary":"Get evaluations rounds","pathParameters":["id","sessionId"],"requiredPathParameters":["id","sessionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_auto_sessions_sessionId_status","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/auto-sessions/{sessionId}/status","summary":"Get evaluations status","pathParameters":["id","sessionId"],"requiredPathParameters":["id","sessionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_calibration","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/calibration","summary":"Get evaluations calibration","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_dataset_bindings","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/dataset-bindings","summary":"Get evaluations dataset bindings","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_failure_memory_audit","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/failure-memory/audit","summary":"Get evaluations audit","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["includeMatches","sessionId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_failure_memory_search","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/failure-memory/search","summary":"Get evaluations search","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["failureMode","includeExpired","limit","q","trustState"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_human_review","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/human-review","summary":"Get evaluations human review","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["batchId","runId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_evaluations_id_integrity","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/integrity","summary":"Get evaluations integrity","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["runId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_evaluations_id_knowledge","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/knowledge","summary":"Get evaluations knowledge","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["failureMode","workflowClass"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_knowledge_health","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/knowledge/health","summary":"Get evaluations health","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_knowledge_hintId","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/knowledge/{hintId}","summary":"Get evaluations hintId","pathParameters":["hintId","id"],"requiredPathParameters":["hintId","id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_labeled_cases","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/labeled-cases","summary":"List labeled cases for an evaluation","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["failureMode","label","limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_evaluations_id_metrics","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/metrics","summary":"Get evaluations metrics","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_playground","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/playground","summary":"Get evaluations playground","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_playground_export","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/playground/export","summary":"Get evaluations export","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_playground_proposals","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/playground/proposals","summary":"Get evaluations proposals","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_playground_runs","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/playground/runs","summary":"Get evaluations runs","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["compareRunId","runId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_playground_variants","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/playground/variants","summary":"Get evaluations variants","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_playground_variants_variantId","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/playground/variants/{variantId}","summary":"Get evaluations variantId","pathParameters":["id","variantId"],"requiredPathParameters":["id","variantId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_playground_winner","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/playground/winner","summary":"Get evaluations winner","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_program","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/program","summary":"Get evaluations program","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_prompts","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/prompts","summary":"Get evaluations prompts","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_prompts_promptId_active","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/prompts/{promptId}/active","summary":"Get evaluations active","pathParameters":["id","promptId"],"requiredPathParameters":["id","promptId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_prompts_promptId_versions","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/prompts/{promptId}/versions","summary":"Get evaluations versions","pathParameters":["id","promptId"],"requiredPathParameters":["id","promptId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_proposed_changes","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/proposed-changes","summary":"Get evaluations proposed changes","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_report","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/report","summary":"Get evaluations report","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_runs","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/runs","summary":"Get evaluations runs","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["limit","offset","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["runs:read"]},{"operationId":"get_evaluations_id_runs_runId","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/runs/{runId}","summary":"Get evaluations runId","pathParameters":["id","runId"],"requiredPathParameters":["id","runId"],"queryParameters":["compareRunId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_evaluations_id_runs_runId_dataset_snapshots","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/runs/{runId}/dataset-snapshots","summary":"Get evaluations dataset snapshots","pathParameters":["id","runId"],"requiredPathParameters":["id","runId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_evaluations_id_runs_runId_diff_compareRunId","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/runs/{runId}/diff/{compareRunId}","summary":"Get evaluations compareRunId","pathParameters":["compareRunId","id","runId"],"requiredPathParameters":["compareRunId","id","runId"],"queryParameters":["changedOnly","direction"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_runs_runId_export","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/runs/{runId}/export","summary":"Get evaluations export","pathParameters":["id","runId"],"requiredPathParameters":["id","runId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_evaluations_id_runs_runId_progress","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/runs/{runId}/progress","summary":"Get evaluations progress","pathParameters":["id","runId"],"requiredPathParameters":["id","runId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_evaluations_id_schedule","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/schedule","summary":"Get evaluations schedule","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_synthetic_candidates","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/synthetic-candidates","summary":"Get evaluations synthetic candidates","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluations_id_test_cases","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/test-cases","summary":"Get evaluations test cases","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["lifecycle","lifecycle_state","limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_evaluations_id_versions","requiresAuth":true,"method":"GET","path":"/api/evaluations/{id}/versions","summary":"Get evaluations versions","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_evaluator_validation_releases","requiresAuth":true,"method":"GET","path":"/api/evaluator-validation/releases","summary":"List evaluator validation releases","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluator_validation_releases_id","requiresAuth":true,"method":"GET","path":"/api/evaluator-validation/releases/{id}","summary":"Get evaluator validation id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluator_validation_runs","requiresAuth":true,"method":"GET","path":"/api/evaluator-validation/runs","summary":"List evaluator validation runs","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluator_validation_runs_id","requiresAuth":true,"method":"GET","path":"/api/evaluator-validation/runs/{id}","summary":"Get evaluator validation id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluator_validation_runs_id_metrics","requiresAuth":true,"method":"GET","path":"/api/evaluator-validation/runs/{id}/metrics","summary":"Get evaluator validation metrics","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["limit"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_evaluator_validation_runs_id_observations","requiresAuth":true,"method":"GET","path":"/api/evaluator-validation/runs/{id}/observations","summary":"Get evaluator validation observations","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["limit"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_execution_state_sessions","requiresAuth":true,"method":"GET","path":"/api/execution-state/sessions","summary":"List execution state sessions","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["runs:read"]},{"operationId":"get_execution_state_sessions_sessionId","requiresAuth":true,"method":"GET","path":"/api/execution-state/sessions/{sessionId}","summary":"Get execution state sessionId","pathParameters":["sessionId"],"requiredPathParameters":["sessionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_execution_state_sessions_sessionId_events","requiresAuth":true,"method":"GET","path":"/api/execution-state/sessions/{sessionId}/events","summary":"Get execution state events","pathParameters":["sessionId"],"requiredPathParameters":["sessionId"],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["runs:read"]},{"operationId":"get_execution_state_sessions_sessionId_snapshot","requiresAuth":true,"method":"GET","path":"/api/execution-state/sessions/{sessionId}/snapshot","summary":"Get execution state snapshot","pathParameters":["sessionId"],"requiredPathParameters":["sessionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_execution_state_sessions_sessionId_snapshots","requiresAuth":true,"method":"GET","path":"/api/execution-state/sessions/{sessionId}/snapshots","summary":"Get execution state snapshots","pathParameters":["sessionId"],"requiredPathParameters":["sessionId"],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["runs:read"]},{"operationId":"get_execution_state_snapshots_snapshotId","requiresAuth":true,"method":"GET","path":"/api/execution-state/snapshots/{snapshotId}","summary":"Get execution state snapshotId","pathParameters":["snapshotId"],"requiredPathParameters":["snapshotId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_executions","requiresAuth":true,"method":"GET","path":"/api/executions","summary":"List executions executions","pathParameters":[],"requiredPathParameters":[],"queryParameters":["kind","limit","offset","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["runs:read"]},{"operationId":"get_executions_executionId","requiresAuth":true,"method":"GET","path":"/api/executions/{executionId}","summary":"Get executions executionId","pathParameters":["executionId"],"requiredPathParameters":["executionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_executions_executionId_lineage","requiresAuth":true,"method":"GET","path":"/api/executions/{executionId}/lineage","summary":"Get executions lineage","pathParameters":["executionId"],"requiredPathParameters":["executionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_experiments","requiresAuth":true,"method":"GET","path":"/api/experiments","summary":"List experiments experiments","pathParameters":[],"requiredPathParameters":[],"queryParameters":["evaluationId","limit","offset","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_experiments_id","requiresAuth":true,"method":"GET","path":"/api/experiments/{id}","summary":"Get experiments id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_experiments_id_compare","requiresAuth":true,"method":"GET","path":"/api/experiments/{id}/compare","summary":"Get experiments compare","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_experiments_id_progress","requiresAuth":true,"method":"GET","path":"/api/experiments/{id}/progress","summary":"Get experiments progress","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_experiments_id_results","requiresAuth":true,"method":"GET","path":"/api/experiments/{id}/results","summary":"Get experiments results","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_exports_shareId","requiresAuth":false,"method":"GET","path":"/api/exports/{shareId}","summary":"Get exports shareId","pathParameters":["shareId"],"requiredPathParameters":["shareId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"get_golden_release_config","requiresAuth":false,"method":"GET","path":"/api/golden-release/config","summary":"List golden release config","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"get_golden_release_summary","requiresAuth":true,"method":"GET","path":"/api/golden-release/summary","summary":"List golden release summary","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_harness_baselines","requiresAuth":true,"method":"GET","path":"/api/harness/baselines","summary":"List harness baselines","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_harness_schedules","requiresAuth":true,"method":"GET","path":"/api/harness/schedules","summary":"List harness schedules","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_identity_me","requiresAuth":true,"method":"GET","path":"/api/identity/me","summary":"List identity me","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"get_improvement_candidates_candidateId_attempts","requiresAuth":true,"method":"GET","path":"/api/improvement/candidates/{candidateId}/attempts","summary":"Get improvement attempts","pathParameters":["candidateId"],"requiredPathParameters":["candidateId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_improvement_candidates_candidateId_diff","requiresAuth":true,"method":"GET","path":"/api/improvement/candidates/{candidateId}/diff","summary":"Get improvement diff","pathParameters":["candidateId"],"requiredPathParameters":["candidateId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"get_improvement_confirmation_runs_runId","requiresAuth":true,"method":"GET","path":"/api/improvement/confirmation-runs/{runId}","summary":"Get improvement runId","pathParameters":["runId"],"requiredPathParameters":["runId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_improvement_cycles","requiresAuth":true,"method":"GET","path":"/api/improvement/cycles","summary":"List improvement cycles","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","state"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_improvement_cycles_cycleId","requiresAuth":true,"method":"GET","path":"/api/improvement/cycles/{cycleId}","summary":"Get improvement cycleId","pathParameters":["cycleId"],"requiredPathParameters":["cycleId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_improvement_cycles_cycleId_candidates","requiresAuth":true,"method":"GET","path":"/api/improvement/cycles/{cycleId}/candidates","summary":"Get improvement candidates","pathParameters":["cycleId"],"requiredPathParameters":["cycleId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_improvement_cycles_cycleId_confirmation","requiresAuth":true,"method":"GET","path":"/api/improvement/cycles/{cycleId}/confirmation","summary":"Get improvement confirmation","pathParameters":["cycleId"],"requiredPathParameters":["cycleId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_improvement_cycles_cycleId_contracts","requiresAuth":true,"method":"GET","path":"/api/improvement/cycles/{cycleId}/contracts","summary":"Get improvement contracts","pathParameters":["cycleId"],"requiredPathParameters":["cycleId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_improvement_cycles_cycleId_events","requiresAuth":true,"method":"GET","path":"/api/improvement/cycles/{cycleId}/events","summary":"Get improvement events","pathParameters":["cycleId"],"requiredPathParameters":["cycleId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_improvement_cycles_cycleId_hypotheses","requiresAuth":true,"method":"GET","path":"/api/improvement/cycles/{cycleId}/hypotheses","summary":"Get improvement hypotheses","pathParameters":["cycleId"],"requiredPathParameters":["cycleId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_improvement_cycles_cycleId_partitions","requiresAuth":true,"method":"GET","path":"/api/improvement/cycles/{cycleId}/partitions","summary":"Get improvement partitions","pathParameters":["cycleId"],"requiredPathParameters":["cycleId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_improvement_cycles_cycleId_runs","requiresAuth":true,"method":"GET","path":"/api/improvement/cycles/{cycleId}/runs","summary":"Get improvement runs","pathParameters":["cycleId"],"requiredPathParameters":["cycleId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_improvement_partitions_partitionId_members","requiresAuth":true,"method":"GET","path":"/api/improvement/partitions/{partitionId}/members","summary":"Get improvement members","pathParameters":["partitionId"],"requiredPathParameters":["partitionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_improvement_runs_runId","requiresAuth":true,"method":"GET","path":"/api/improvement/runs/{runId}","summary":"Get improvement runId","pathParameters":["runId"],"requiredPathParameters":["runId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_improvement_scenarios","requiresAuth":true,"method":"GET","path":"/api/improvement/scenarios","summary":"List improvement scenarios","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_integrations_github","requiresAuth":true,"method":"GET","path":"/api/integrations/github","summary":"List integrations github","pathParameters":[],"requiredPathParameters":[],"queryParameters":["attemptId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_integrations_slack_status","requiresAuth":true,"method":"GET","path":"/api/integrations/slack/status","summary":"List integrations status","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_jobs_dead","requiresAuth":true,"method":"GET","path":"/api/jobs/dead","summary":"List jobs dead","pathParameters":[],"requiredPathParameters":[],"queryParameters":["cursor","errorCode","limit","minAttempt","offset","since","type","until"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"cursor","scopes":["admin:workspace"]},{"operationId":"get_journey_owned","requiresAuth":true,"method":"GET","path":"/api/journey-owned","summary":"List journey owned journey owned","pathParameters":[],"requiredPathParameters":[],"queryParameters":["resource"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_judge_presets","requiresAuth":true,"method":"GET","path":"/api/judge-presets","summary":"List judge presets judge presets","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_judges","requiresAuth":true,"method":"GET","path":"/api/judges","summary":"List judges judges","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_knowledge_documents","requiresAuth":true,"method":"GET","path":"/api/knowledge/documents","summary":"List knowledge documents","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_knowledge_documents_id_chunks","requiresAuth":true,"method":"GET","path":"/api/knowledge/documents/{id}/chunks","summary":"Get knowledge chunks","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_knowledge_draft_requirements","requiresAuth":true,"method":"GET","path":"/api/knowledge/draft-requirements","summary":"List knowledge draft requirements","pathParameters":[],"requiredPathParameters":[],"queryParameters":["documentId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_knowledge_network_installations","requiresAuth":true,"method":"GET","path":"/api/knowledge-network/installations","summary":"List knowledge network installations","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_knowledge_network_installations_installationId","requiresAuth":true,"method":"GET","path":"/api/knowledge-network/installations/{installationId}","summary":"Get knowledge network installationId","pathParameters":["installationId"],"requiredPathParameters":["installationId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_knowledge_network_packages","requiresAuth":true,"method":"GET","path":"/api/knowledge-network/packages","summary":"List knowledge network packages","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_knowledge_network_packages_packageId","requiresAuth":true,"method":"GET","path":"/api/knowledge-network/packages/{packageId}","summary":"Get knowledge network packageId","pathParameters":["packageId"],"requiredPathParameters":["packageId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_knowledge_search","requiresAuth":true,"method":"GET","path":"/api/knowledge/search","summary":"List knowledge search","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","minSimilarity","offset","q"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_lineage","requiresAuth":true,"method":"GET","path":"/api/lineage","summary":"List lineage lineage","pathParameters":[],"requiredPathParameters":[],"queryParameters":["evaluationId","evaluationRunId","graphKey","limit","offset","relation","sourceType","targetType"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["traces:read"]},{"operationId":"get_lineage_run_runId","requiresAuth":true,"method":"GET","path":"/api/lineage/run/{runId}","summary":"Get lineage runId","pathParameters":["runId"],"requiredPathParameters":["runId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_lineage_score_provenance_resultId","requiresAuth":true,"method":"GET","path":"/api/lineage/score-provenance/{resultId}","summary":"Get lineage resultId","pathParameters":["resultId"],"requiredPathParameters":["resultId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_lineage_test_case_testCaseId","requiresAuth":true,"method":"GET","path":"/api/lineage/test-case/{testCaseId}","summary":"Get lineage testCaseId","pathParameters":["testCaseId"],"requiredPathParameters":["testCaseId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_lineage_trace_traceId","requiresAuth":true,"method":"GET","path":"/api/lineage/trace/{traceId}","summary":"Get lineage traceId","pathParameters":["traceId"],"requiredPathParameters":["traceId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_llm_judge_alignment","requiresAuth":true,"method":"GET","path":"/api/llm-judge/alignment","summary":"List llm judge alignment","pathParameters":[],"requiredPathParameters":[],"queryParameters":["evaluationRunId","limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_llm_judge_calibration_proposals","requiresAuth":true,"method":"GET","path":"/api/llm-judge/calibration-proposals","summary":"List llm judge calibration proposals","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_llm_judge_configs","requiresAuth":true,"method":"GET","path":"/api/llm-judge/configs","summary":"List llm judge configs","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id","limit","model","offset","search"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_llm_judge_results","requiresAuth":true,"method":"GET","path":"/api/llm-judge/results","summary":"List llm judge results","pathParameters":[],"requiredPathParameters":[],"queryParameters":["configId","limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_logs_cohorts","requiresAuth":true,"method":"GET","path":"/api/logs/cohorts","summary":"List logs cohorts","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:read"]},{"operationId":"get_logs_cohorts_cohortId","requiresAuth":true,"method":"GET","path":"/api/logs/cohorts/{cohortId}","summary":"Get logs cohortId","pathParameters":["cohortId"],"requiredPathParameters":["cohortId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:read"]},{"operationId":"get_logs_traces","requiresAuth":true,"method":"GET","path":"/api/logs/traces","summary":"List logs traces","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:read"]},{"operationId":"get_logs_traces_traceId","requiresAuth":true,"method":"GET","path":"/api/logs/traces/{traceId}","summary":"Get logs traceId","pathParameters":["traceId"],"requiredPathParameters":["traceId"],"queryParameters":["collection","cursor","limit","raw","section"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"cursor","scopes":["traces:read"]},{"operationId":"get_logs_views","requiresAuth":true,"method":"GET","path":"/api/logs/views","summary":"List logs views","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:read"]},{"operationId":"get_logs_views_viewId","requiresAuth":true,"method":"GET","path":"/api/logs/views/{viewId}","summary":"Get logs viewId","pathParameters":["viewId"],"requiredPathParameters":["viewId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:read"]},{"operationId":"get_mcp","requiresAuth":true,"method":"GET","path":"/api/mcp","summary":"List mcp mcp","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"get_mcp_tools","requiresAuth":true,"method":"GET","path":"/api/mcp/tools","summary":"List mcp tools","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_me","requiresAuth":true,"method":"GET","path":"/api/me","summary":"List me me","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":[]},{"operationId":"get_metric_definitions","requiresAuth":true,"method":"GET","path":"/api/metric-definitions","summary":"List metric definitions metric definitions","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset","source","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_metric_definitions_id","requiresAuth":true,"method":"GET","path":"/api/metric-definitions/{id}","summary":"Get metric definitions id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_metrics_slo","requiresAuth":true,"method":"GET","path":"/api/metrics/slo","summary":"List metrics slo","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["admin:workspace"]},{"operationId":"get_missions","requiresAuth":true,"method":"GET","path":"/api/missions","summary":"List missions missions","pathParameters":[],"requiredPathParameters":[],"queryParameters":["evaluationId","kind","limit","offset","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_missions_missionId","requiresAuth":true,"method":"GET","path":"/api/missions/{missionId}","summary":"Get missions missionId","pathParameters":["missionId"],"requiredPathParameters":["missionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_missions_missionId_proposals","requiresAuth":true,"method":"GET","path":"/api/missions/{missionId}/proposals","summary":"Get missions proposals","pathParameters":["missionId"],"requiredPathParameters":["missionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_missions_missionId_stream","requiresAuth":true,"method":"GET","path":"/api/missions/{missionId}/stream","summary":"Get missions stream","pathParameters":["missionId"],"requiredPathParameters":["missionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_model_gateway_calls","requiresAuth":true,"method":"GET","path":"/api/model-gateway/calls","summary":"List model gateway calls","pathParameters":[],"requiredPathParameters":[],"queryParameters":["gatewayConfigId","limit","offset","useCase"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_model_gateway_calls_id","requiresAuth":true,"method":"GET","path":"/api/model-gateway/calls/{id}","summary":"Get model gateway id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_model_gateway_configs","requiresAuth":true,"method":"GET","path":"/api/model-gateway/configs","summary":"List model gateway configs","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_model_gateway_configs_id","requiresAuth":true,"method":"GET","path":"/api/model-gateway/configs/{id}","summary":"Get model gateway id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_model_gateway_models","requiresAuth":true,"method":"GET","path":"/api/model-gateway/models","summary":"List model gateway models","pathParameters":[],"requiredPathParameters":[],"queryParameters":["gatewayConfigId","limit","offset","q"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_model_gateway_provenance_health","requiresAuth":true,"method":"GET","path":"/api/model-gateway/provenance/health","summary":"List model gateway health","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_model_gateway_routing_profiles","requiresAuth":true,"method":"GET","path":"/api/model-gateway/routing-profiles","summary":"List model gateway routing profiles","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset","useCase"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_model_gateway_routing_profiles_id","requiresAuth":true,"method":"GET","path":"/api/model-gateway/routing-profiles/{id}","summary":"Get model gateway id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_model_gateway_routing_profiles_id_explain","requiresAuth":true,"method":"GET","path":"/api/model-gateway/routing-profiles/{id}/explain","summary":"Get model gateway explain","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_notifications","requiresAuth":true,"method":"GET","path":"/api/notifications","summary":"List notifications notifications","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_onboarding_activation","requiresAuth":true,"method":"GET","path":"/api/onboarding/activation","summary":"List onboarding activation","pathParameters":[],"requiredPathParameters":[],"queryParameters":["harnessPresetKey","repositoryId","requestedRef","rootPath","targetSha"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_online_evals_alerts","requiresAuth":true,"method":"GET","path":"/api/online-evals/alerts","summary":"List online evals alerts","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","monitorId","offset","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_online_evals_alerts_id","requiresAuth":true,"method":"GET","path":"/api/online-evals/alerts/{id}","summary":"Get online evals id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_online_evals_alerts_id_deliveries","requiresAuth":true,"method":"GET","path":"/api/online-evals/alerts/{id}/deliveries","summary":"Get online evals deliveries","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_online_evals_monitors","requiresAuth":true,"method":"GET","path":"/api/online-evals/monitors","summary":"List online evals monitors","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_online_evals_monitors_id","requiresAuth":true,"method":"GET","path":"/api/online-evals/monitors/{id}","summary":"Get online evals id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_online_evals_monitors_id_backfills","requiresAuth":true,"method":"GET","path":"/api/online-evals/monitors/{id}/backfills","summary":"Get online evals backfills","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_online_evals_monitors_id_candidates","requiresAuth":true,"method":"GET","path":"/api/online-evals/monitors/{id}/candidates","summary":"Get online evals candidates","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_online_evals_monitors_id_health","requiresAuth":true,"method":"GET","path":"/api/online-evals/monitors/{id}/health","summary":"Get online evals health","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_online_evals_monitors_id_runs","requiresAuth":true,"method":"GET","path":"/api/online-evals/monitors/{id}/runs","summary":"Get online evals runs","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_online_evals_monitors_id_topics","requiresAuth":true,"method":"GET","path":"/api/online-evals/monitors/{id}/topics","summary":"Get online evals topics","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_online_evals_monitors_id_versions","requiresAuth":true,"method":"GET","path":"/api/online-evals/monitors/{id}/versions","summary":"Get online evals versions","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_online_evals_samples","requiresAuth":true,"method":"GET","path":"/api/online-evals/samples","summary":"List online evals samples","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","monitorId","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read","traces:read"]},{"operationId":"get_ops_health","requiresAuth":true,"method":"GET","path":"/api/ops/health","summary":"List ops health","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"get_ops_reconciliation","requiresAuth":true,"method":"GET","path":"/api/ops/reconciliation","summary":"List ops reconciliation","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"get_ops_slo","requiresAuth":true,"method":"GET","path":"/api/ops/slo","summary":"List ops slo","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["admin:workspace"]},{"operationId":"get_orchestration_evals_runs_id","requiresAuth":true,"method":"GET","path":"/api/orchestration-evals/runs/{id}","summary":"Get orchestration evals id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["afterSequence","limit"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_org_keys","requiresAuth":true,"method":"GET","path":"/api/org/keys","summary":"List org keys","pathParameters":[],"requiredPathParameters":[],"queryParameters":["includeInactive","limit","offset","provider"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["admin:workspace"]},{"operationId":"get_org_keys_availability","requiresAuth":true,"method":"GET","path":"/api/org/keys/availability","summary":"List org availability","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"get_org_keys_keyId","requiresAuth":true,"method":"GET","path":"/api/org/keys/{keyId}","summary":"Get org keyId","pathParameters":["keyId"],"requiredPathParameters":["keyId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"get_organizations","requiresAuth":true,"method":"GET","path":"/api/organizations","summary":"List organizations organizations","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id","limit","offset","search"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_organizations_current","requiresAuth":true,"method":"GET","path":"/api/organizations/current","summary":"List organizations current","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":[]},{"operationId":"get_organizations_identity","requiresAuth":true,"method":"GET","path":"/api/organizations/identity","summary":"List organizations identity","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:org"]},{"operationId":"get_playgrounds","requiresAuth":true,"method":"GET","path":"/api/playgrounds","summary":"List playgrounds playgrounds","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_policies","requiresAuth":true,"method":"GET","path":"/api/policies","summary":"List policies policies","pathParameters":[],"requiredPathParameters":[],"queryParameters":["environment","key","target"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_portability","requiresAuth":true,"method":"GET","path":"/api/portability","summary":"List portability portability","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["exports:download"]},{"operationId":"get_portability_bundles_id","requiresAuth":true,"method":"GET","path":"/api/portability/bundles/{id}","summary":"Get portability id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["exports:download"]},{"operationId":"get_portability_imports_id","requiresAuth":true,"method":"GET","path":"/api/portability/imports/{id}","summary":"Get portability id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["exports:download"]},{"operationId":"get_portable_quality_checks","requiresAuth":true,"method":"GET","path":"/api/portable-quality/checks","summary":"List portable quality checks","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["checks:read"]},{"operationId":"get_portable_quality_checks_executionId","requiresAuth":true,"method":"GET","path":"/api/portable-quality/checks/{executionId}","summary":"Get portable quality executionId","pathParameters":["executionId"],"requiredPathParameters":["executionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["checks:read"]},{"operationId":"get_portable_quality_contexts","requiresAuth":true,"method":"GET","path":"/api/portable-quality/contexts","summary":"List portable quality contexts","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["contexts:read"]},{"operationId":"get_portable_quality_contexts_contextId_resources","requiresAuth":true,"method":"GET","path":"/api/portable-quality/contexts/{contextId}/resources","summary":"Get portable quality resources","pathParameters":["contextId"],"requiredPathParameters":["contextId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["resources:read"]},{"operationId":"get_portable_quality_contexts_contextId_uploads_uploadId","requiresAuth":true,"method":"GET","path":"/api/portable-quality/contexts/{contextId}/uploads/{uploadId}","summary":"Get portable quality uploadId","pathParameters":["contextId","uploadId"],"requiredPathParameters":["contextId","uploadId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["resources:read"]},{"operationId":"get_portable_quality_deliveries_deliveryId","requiresAuth":true,"method":"GET","path":"/api/portable-quality/deliveries/{deliveryId}","summary":"Get portable quality deliveryId","pathParameters":["deliveryId"],"requiredPathParameters":["deliveryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["standards:read","eval:read"]},{"operationId":"get_portable_quality_grants","requiresAuth":true,"method":"GET","path":"/api/portable-quality/grants","summary":"List portable quality grants","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["grants:read"]},{"operationId":"get_portable_quality_plans","requiresAuth":true,"method":"GET","path":"/api/portable-quality/plans","summary":"List portable quality plans","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["checks:read"]},{"operationId":"get_portable_quality_resources_resourceId_revisions","requiresAuth":true,"method":"GET","path":"/api/portable-quality/resources/{resourceId}/revisions","summary":"Get portable quality revisions","pathParameters":["resourceId"],"requiredPathParameters":["resourceId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["resources:read"]},{"operationId":"get_portable_quality_resources_resourceId_revisions_revisionId_query_executions_executionId","requiresAuth":true,"method":"GET","path":"/api/portable-quality/resources/{resourceId}/revisions/{revisionId}/query/executions/{executionId}","summary":"Get portable quality executionId","pathParameters":["executionId","resourceId","revisionId"],"requiredPathParameters":["executionId","resourceId","revisionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["resources:read"]},{"operationId":"get_production_insights_summary","requiresAuth":true,"method":"GET","path":"/api/production-insights/summary","summary":"List production insights summary","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:read"]},{"operationId":"get_production_insights_topics","requiresAuth":true,"method":"GET","path":"/api/production-insights/topics","summary":"List production insights topics","pathParameters":[],"requiredPathParameters":[],"queryParameters":["cohort","cursor","discoveryExecutionId","limit","query","ranking","severity","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"cursor","scopes":["traces:read"]},{"operationId":"get_production_insights_topics_topicId","requiresAuth":true,"method":"GET","path":"/api/production-insights/topics/{topicId}","summary":"Get production insights topicId","pathParameters":["topicId"],"requiredPathParameters":["topicId"],"queryParameters":["coverageAfterCaseId","coverageAfterTraceId","coverageMapHash","historyCursor","historyLimit","historySection"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:read"]},{"operationId":"get_projects_projectKey","requiresAuth":true,"method":"GET","path":"/api/projects/{projectKey}","summary":"Get projects projectKey","pathParameters":["projectKey"],"requiredPathParameters":["projectKey"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_prompts","requiresAuth":true,"method":"GET","path":"/api/prompts","summary":"List prompts prompts","pathParameters":[],"requiredPathParameters":[],"queryParameters":["cursor","limit","offset","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"cursor","scopes":["eval:read"]},{"operationId":"get_prompts_promptId","requiresAuth":true,"method":"GET","path":"/api/prompts/{promptId}","summary":"Get prompts promptId","pathParameters":["promptId"],"requiredPathParameters":["promptId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_prompts_promptId_performance","requiresAuth":true,"method":"GET","path":"/api/prompts/{promptId}/performance","summary":"Get prompts performance","pathParameters":["promptId"],"requiredPathParameters":["promptId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_prompts_promptId_resolve","requiresAuth":true,"method":"GET","path":"/api/prompts/{promptId}/resolve","summary":"Get prompts resolve","pathParameters":["promptId"],"requiredPathParameters":["promptId"],"queryParameters":["environment"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_prompts_promptId_usage","requiresAuth":true,"method":"GET","path":"/api/prompts/{promptId}/usage","summary":"Get prompts usage","pathParameters":["promptId"],"requiredPathParameters":["promptId"],"queryParameters":["limit"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_prompts_promptId_versions","requiresAuth":true,"method":"GET","path":"/api/prompts/{promptId}/versions","summary":"Get prompts versions","pathParameters":["promptId"],"requiredPathParameters":["promptId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_prompts_promptId_versions_versionId","requiresAuth":true,"method":"GET","path":"/api/prompts/{promptId}/versions/{versionId}","summary":"Get prompts versionId","pathParameters":["promptId","versionId"],"requiredPathParameters":["promptId","versionId"],"queryParameters":["compareTo"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_prompts_promptId_versions_versionId_export","requiresAuth":true,"method":"GET","path":"/api/prompts/{promptId}/versions/{versionId}/export","summary":"Get prompts export","pathParameters":["promptId","versionId"],"requiredPathParameters":["promptId","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_proof_controls","requiresAuth":true,"method":"GET","path":"/api/proof/controls","summary":"List proof controls","pathParameters":[],"requiredPathParameters":[],"queryParameters":["includeMembers","limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_proof_controls_controlId","requiresAuth":true,"method":"GET","path":"/api/proof/controls/{controlId}","summary":"Get proof controlId","pathParameters":["controlId"],"requiredPathParameters":["controlId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_proof_guest_evidence_token","requiresAuth":true,"method":"GET","path":"/api/proof/guest/evidence/{token}","summary":"Get proof token","pathParameters":["token"],"requiredPathParameters":["token"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"get_proof_risks_and_controls","requiresAuth":true,"method":"GET","path":"/api/proof/risks-and-controls","summary":"List proof risks and controls","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset","q"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_proof_risks_and_controls_controls","requiresAuth":true,"method":"GET","path":"/api/proof/risks-and-controls/controls","summary":"List proof controls","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset","q"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_proof_risks_and_controls_controls_controlId","requiresAuth":true,"method":"GET","path":"/api/proof/risks-and-controls/controls/{controlId}","summary":"Get proof controlId","pathParameters":["controlId"],"requiredPathParameters":["controlId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_proof_risks_and_controls_controls_controlId_evidence_requests","requiresAuth":true,"method":"GET","path":"/api/proof/risks-and-controls/controls/{controlId}/evidence-requests","summary":"Get proof evidence requests","pathParameters":["controlId"],"requiredPathParameters":["controlId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_proof_risks_and_controls_discovery","requiresAuth":true,"method":"GET","path":"/api/proof/risks-and-controls/discovery","summary":"List proof discovery","pathParameters":[],"requiredPathParameters":[],"queryParameters":["controlId","offset","proposalId","repositoryId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_proof_risks_and_controls_evidence_requests_requestId","requiresAuth":true,"method":"GET","path":"/api/proof/risks-and-controls/evidence-requests/{requestId}","summary":"Get proof requestId","pathParameters":["requestId"],"requiredPathParameters":["requestId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_proof_risks_and_controls_profiles","requiresAuth":true,"method":"GET","path":"/api/proof/risks-and-controls/profiles","summary":"List proof profiles","pathParameters":[],"requiredPathParameters":[],"queryParameters":["controlId","limit","offset","q"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_proof_risks_and_controls_submissions_submissionId","requiresAuth":true,"method":"GET","path":"/api/proof/risks-and-controls/submissions/{submissionId}","summary":"Get proof submissionId","pathParameters":["submissionId"],"requiredPathParameters":["submissionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_proof_risks_and_controls_walkthroughs_walkthroughId","requiresAuth":true,"method":"GET","path":"/api/proof/risks-and-controls/walkthroughs/{walkthroughId}","summary":"Get proof walkthroughId","pathParameters":["walkthroughId"],"requiredPathParameters":["walkthroughId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_proposed_changes_id","requiresAuth":true,"method":"GET","path":"/api/proposed-changes/{id}","summary":"Get proposed changes id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_quality","requiresAuth":true,"method":"GET","path":"/api/quality","summary":"List quality quality","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["runs:read"]},{"operationId":"get_quality_spec","requiresAuth":false,"method":"GET","path":"/api/quality/spec","summary":"List quality spec","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":[]},{"operationId":"get_r_shareToken","requiresAuth":false,"method":"GET","path":"/api/r/{shareToken}","summary":"Get r shareToken","pathParameters":["shareToken"],"requiredPathParameters":["shareToken"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"get_red_team_findings_id","requiresAuth":true,"method":"GET","path":"/api/red-team/findings/{id}","summary":"Get red team id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["red_team:read"]},{"operationId":"get_red_team_risk_packs","requiresAuth":true,"method":"GET","path":"/api/red-team/risk-packs","summary":"List red team risk packs","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["red_team:read"]},{"operationId":"get_red_team_runs_id","requiresAuth":true,"method":"GET","path":"/api/red-team/runs/{id}","summary":"Get red team id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["red_team:read"]},{"operationId":"get_red_team_runs_id_release_evidence","requiresAuth":true,"method":"GET","path":"/api/red-team/runs/{id}/release-evidence","summary":"Get red team release evidence","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["red_team:read"]},{"operationId":"get_red_team_workspace","requiresAuth":true,"method":"GET","path":"/api/red-team/workspace","summary":"List red team workspace","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["red_team:read"]},{"operationId":"get_releases","requiresAuth":true,"method":"GET","path":"/api/releases","summary":"List releases releases","pathParameters":[],"requiredPathParameters":[],"queryParameters":["environment","key","kind","target"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_remote_runners","requiresAuth":true,"method":"GET","path":"/api/remote-runners","summary":"List remote runners remote runners","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_remote_runners_id","requiresAuth":true,"method":"GET","path":"/api/remote-runners/{id}","summary":"Get remote runners id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_remote_runners_jobs","requiresAuth":true,"method":"GET","path":"/api/remote-runners/jobs","summary":"List remote runners jobs","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_remote_runners_jobs_jobId","requiresAuth":true,"method":"GET","path":"/api/remote-runners/jobs/{jobId}","summary":"Get remote runners jobId","pathParameters":["jobId"],"requiredPathParameters":["jobId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_remote_runners_targets","requiresAuth":true,"method":"GET","path":"/api/remote-runners/targets","summary":"List remote runners targets","pathParameters":[],"requiredPathParameters":[],"queryParameters":["evaluationId","limit"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_report_cards","requiresAuth":true,"method":"GET","path":"/api/report-cards","summary":"List report cards report cards","pathParameters":[],"requiredPathParameters":[],"queryParameters":["evaluationType","limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_report_cards_evaluationId","requiresAuth":true,"method":"GET","path":"/api/report-cards/{evaluationId}","summary":"Get report cards evaluationId","pathParameters":["evaluationId"],"requiredPathParameters":["evaluationId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_reports","requiresAuth":true,"method":"GET","path":"/api/reports","summary":"List reports reports","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["runs:read"]},{"operationId":"get_reports_shareToken_verify","requiresAuth":true,"method":"GET","path":"/api/reports/{shareToken}/verify","summary":"Get reports verify","pathParameters":["shareToken"],"requiredPathParameters":["shareToken"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_repository_intelligence_repositories","requiresAuth":true,"method":"GET","path":"/api/repository-intelligence/repositories","summary":"List repository intelligence repositories","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset","q"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_repository_intelligence_repositories_repositoryId_baselines","requiresAuth":true,"method":"GET","path":"/api/repository-intelligence/repositories/{repositoryId}/baselines","summary":"Get repository intelligence baselines","pathParameters":["repositoryId"],"requiredPathParameters":["repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_repository_intelligence_repositories_repositoryId_baselines_baselineId","requiresAuth":true,"method":"GET","path":"/api/repository-intelligence/repositories/{repositoryId}/baselines/{baselineId}","summary":"Get repository intelligence baselineId","pathParameters":["baselineId","repositoryId"],"requiredPathParameters":["baselineId","repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_repository_intelligence_repositories_repositoryId_graph_evidence","requiresAuth":true,"method":"GET","path":"/api/repository-intelligence/repositories/{repositoryId}/graph/evidence","summary":"Get repository intelligence evidence","pathParameters":["repositoryId"],"requiredPathParameters":["repositoryId"],"queryParameters":["cursor","graphVersionId","headSha","pageSize","scenario"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"cursor","scopes":["eval:read"]},{"operationId":"get_repository_intelligence_repositories_repositoryId_graph_scenario_cases","requiresAuth":true,"method":"GET","path":"/api/repository-intelligence/repositories/{repositoryId}/graph/scenario-cases","summary":"Get repository intelligence scenario cases","pathParameters":["repositoryId"],"requiredPathParameters":["repositoryId"],"queryParameters":["cursor","graphVersionId","headSha","maxCases","pageSize","scenario"],"requiredQueryParameters":["scenario"],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"cursor","scopes":["eval:read"]},{"operationId":"get_repository_intelligence_repositories_repositoryId_scans","requiresAuth":true,"method":"GET","path":"/api/repository-intelligence/repositories/{repositoryId}/scans","summary":"Get repository intelligence scans","pathParameters":["repositoryId"],"requiredPathParameters":["repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_repository_intelligence_repositories_repositoryId_scans_scanRunId","requiresAuth":true,"method":"GET","path":"/api/repository-intelligence/repositories/{repositoryId}/scans/{scanRunId}","summary":"Get repository intelligence scanRunId","pathParameters":["repositoryId","scanRunId"],"requiredPathParameters":["repositoryId","scanRunId"],"queryParameters":["includeEvidence"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_runs_id_cases_caseId_judges","requiresAuth":true,"method":"GET","path":"/api/runs/{id}/cases/{caseId}/judges","summary":"Get runs judges","pathParameters":["caseId","id"],"requiredPathParameters":["caseId","id"],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_runs_id_judges","requiresAuth":true,"method":"GET","path":"/api/runs/{id}/judges","summary":"Get runs judges","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_scorers","requiresAuth":true,"method":"GET","path":"/api/scorers","summary":"List scorers scorers","pathParameters":[],"requiredPathParameters":[],"queryParameters":["cursor","limit"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"cursor","scopes":["eval:read"]},{"operationId":"get_scorers_scorerId","requiresAuth":true,"method":"GET","path":"/api/scorers/{scorerId}","summary":"Get scorers scorerId","pathParameters":["scorerId"],"requiredPathParameters":["scorerId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_scorers_scorerId_alignment_runs_runId","requiresAuth":true,"method":"GET","path":"/api/scorers/{scorerId}/alignment-runs/{runId}","summary":"Get scorers runId","pathParameters":["runId","scorerId"],"requiredPathParameters":["runId","scorerId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_scorers_scorerId_usage","requiresAuth":true,"method":"GET","path":"/api/scorers/{scorerId}/usage","summary":"Get scorers usage","pathParameters":["scorerId"],"requiredPathParameters":["scorerId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_scorers_scorerId_versions","requiresAuth":true,"method":"GET","path":"/api/scorers/{scorerId}/versions","summary":"Get scorers versions","pathParameters":["scorerId"],"requiredPathParameters":["scorerId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_scorers_scorerId_versions_versionId","requiresAuth":true,"method":"GET","path":"/api/scorers/{scorerId}/versions/{versionId}","summary":"Get scorers versionId","pathParameters":["scorerId","versionId"],"requiredPathParameters":["scorerId","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_settings_scoring","requiresAuth":true,"method":"GET","path":"/api/settings/scoring","summary":"List settings scoring","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_shadow_evals_id","requiresAuth":true,"method":"GET","path":"/api/shadow-evals/{id}","summary":"Get shadow evals id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_shadow_evals_stats","requiresAuth":true,"method":"GET","path":"/api/shadow-evals/stats","summary":"List shadow evals stats","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["runs:read"]},{"operationId":"get_stream","requiresAuth":true,"method":"GET","path":"/api/stream","summary":"List stream stream","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_stream_evalId","requiresAuth":true,"method":"GET","path":"/api/stream/{evalId}","summary":"Get stream evalId","pathParameters":["evalId"],"requiredPathParameters":["evalId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_sync_status_evaluationId","requiresAuth":true,"method":"GET","path":"/api/sync/status/{evaluationId}","summary":"Get sync evaluationId","pathParameters":["evaluationId"],"requiredPathParameters":["evaluationId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_system_controls","requiresAuth":true,"method":"GET","path":"/api/system/controls","summary":"List system controls","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_telemetry_setup","requiresAuth":true,"method":"GET","path":"/api/telemetry/setup","summary":"List telemetry setup","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:read"]},{"operationId":"get_traces","requiresAuth":true,"method":"GET","path":"/api/traces","summary":"List traces traces","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset","search","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["traces:read"]},{"operationId":"get_traces_id","requiresAuth":true,"method":"GET","path":"/api/traces/{id}","summary":"Get traces id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["toolCallAfter","toolRevisionId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:read"]},{"operationId":"get_traces_id_spans","requiresAuth":true,"method":"GET","path":"/api/traces/{id}/spans","summary":"Get traces spans","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["traces:read"]},{"operationId":"get_workflows","requiresAuth":true,"method":"GET","path":"/api/workflows","summary":"List workflows workflows","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset","search","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"get_workflows_id","requiresAuth":true,"method":"GET","path":"/api/workflows/{id}","summary":"Get workflows id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["includeStats"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"get_workflows_id_handoffs","requiresAuth":true,"method":"GET","path":"/api/workflows/{id}/handoffs","summary":"Get workflows handoffs","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["runId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"get_workflows_id_runs","requiresAuth":true,"method":"GET","path":"/api/workflows/{id}/runs","summary":"Get workflows runs","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["limit","offset","status"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["runs:read"]},{"operationId":"get_workflows_id_runs_runId","requiresAuth":true,"method":"GET","path":"/api/workflows/{id}/runs/{runId}","summary":"Get workflows runId","pathParameters":["id","runId"],"requiredPathParameters":["id","runId"],"queryParameters":["includeDetails"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"getAssertionTestMode","requiresAuth":false,"method":"GET","path":"/api/demo/custom-eval","summary":"Discover the stateless API test mode","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"getConnectionCatalog","requiresAuth":true,"method":"GET","path":"/api/connections/catalog","summary":"Inspect connector setup availability and unbound blueprints","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"getConnectionGraph","requiresAuth":true,"method":"GET","path":"/api/connections/graph/{id}","summary":"Read a tenant-scoped connection metadata graph","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"getConnectorOperationReceipt","requiresAuth":true,"method":"GET","path":"/api/connections/graph/{id}/operations/{operationId}","summary":"Recover native operation metadata by the initiating client idempotency key","pathParameters":["id","operationId"],"requiredPathParameters":["id","operationId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace","resources:read"]},{"operationId":"getConnectorRuntimeStatus","requiresAuth":true,"method":"GET","path":"/api/connections/graph/{id}/runtime","summary":"Review native connector authority, grants and supported operations","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace","resources:read"]},{"operationId":"getInfisicalVault","requiresAuth":true,"method":"GET","path":"/api/org/credential-vaults/infisical","summary":"Get the Infisical vault connection","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"getRepositoryActivationRun","requiresAuth":true,"method":"GET","path":"/api/onboarding/activation/runs/{activationRunId}","summary":"Get a repository activation run","pathParameters":["activationRunId"],"requiredPathParameters":["activationRunId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"getTrajectoryAnalysis","requiresAuth":true,"method":"GET","path":"/api/trajectory-analysis/{trajectoryId}","summary":"Get a normalized multi-agent trajectory","pathParameters":["trajectoryId"],"requiredPathParameters":["trajectoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"grantConnectorResources","requiresAuth":true,"method":"POST","path":"/api/connections/graph/{id}/grants","summary":"Review native resource grants from an exact discovery snapshot","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedAuthorityEpoch","expectedRevision","expectedSelectionEpoch","idempotencyKey"],"pagination":null,"scopes":["admin:workspace","resources:read","resources:write"]},{"operationId":"ingestTrajectoryAnalysis","requiresAuth":true,"method":"POST","path":"/api/trajectory-analysis","summary":"Ingest a normalized multi-agent trajectory batch","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["events","idempotencyKey","name","schemaVersion","sourceRunId","sourceVariant","trajectoryKey"],"pagination":null,"scopes":["runs:write"]},{"operationId":"inviteOrganizationMember","requiresAuth":true,"method":"POST","path":"/api/organizations/members","summary":"Invite an organization member","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["email"],"pagination":null,"scopes":["admin:org"]},{"operationId":"linkInfisicalVaultCredential","requiresAuth":true,"method":"POST","path":"/api/org/credential-vaults/infisical/bindings","summary":"Link a model provider to an Infisical secret","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["environment","provider","secretName"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"listConnections","requiresAuth":true,"method":"GET","path":"/api/connections","summary":"List authorized connection metadata across canonical stores","pathParameters":[],"requiredPathParameters":[],"queryParameters":["cursor","limit","q","source"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"cursor","scopes":["eval:read"]},{"operationId":"listConnectorEnvironments","requiresAuth":true,"method":"GET","path":"/api/connections/runtime/environments","summary":"List nonsecret installed connector environment references for this workspace","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace","resources:read"]},{"operationId":"listConnectorRoots","requiresAuth":true,"method":"GET","path":"/api/connections/graph","summary":"Page independent account configuration metadata","pathParameters":[],"requiredPathParameters":[],"queryParameters":["cursor","limit","q"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"cursor","scopes":["admin:workspace"]},{"operationId":"listInfisicalVaultSecrets","requiresAuth":true,"method":"GET","path":"/api/org/credential-vaults/infisical/secrets","summary":"List secret names in an Infisical folder","pathParameters":[],"requiredPathParameters":[],"queryParameters":["environment","secretPath"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"listOrganizationMembers","requiresAuth":true,"method":"GET","path":"/api/organizations/members","summary":"List organization members and invitations","pathParameters":[],"requiredPathParameters":[],"queryParameters":["limit","offset"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":"offset","scopes":["eval:read"]},{"operationId":"listTrajectoryAnalyses","requiresAuth":true,"method":"GET","path":"/api/trajectory-analysis","summary":"List normalized multi-agent trajectories","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"options_a2a","requiresAuth":true,"method":"OPTIONS","path":"/api/a2a","summary":"OPTIONS a2a a2a","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["agent:read"]},{"operationId":"patch_adjudication_items_id","requiresAuth":true,"method":"PATCH","path":"/api/adjudication/items/{id}","summary":"Update adjudication id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"patch_agent_evidence_approvals_id","requiresAuth":true,"method":"PATCH","path":"/api/agent-evidence/approvals/{id}","summary":"Approve or reject a human approval request","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["state"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"patch_audit_corrective_actions","requiresAuth":true,"method":"PATCH","path":"/api/audit/corrective-actions","summary":"Update audit corrective actions","pathParameters":[],"requiredPathParameters":[],"queryParameters":["action","id"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_audit_evidence_requests","requiresAuth":true,"method":"PATCH","path":"/api/audit/evidence-requests","summary":"Update audit evidence requests","pathParameters":[],"requiredPathParameters":[],"queryParameters":["action","id"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_candidates_id","requiresAuth":true,"method":"PATCH","path":"/api/candidates/{id}","summary":"Update candidates id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["status"],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_dashboard_alert_rules_id","requiresAuth":true,"method":"PATCH","path":"/api/dashboard-alert-rules/{id}","summary":"Update dashboard alert rules id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["evaluationWindow","metricDefinitionId","name","operator","ruleKey","threshold"],"pagination":null,"scopes":["reports:write"]},{"operationId":"patch_dashboards_id","requiresAuth":true,"method":"PATCH","path":"/api/dashboards/{id}","summary":"Update dashboards id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["reports:write"]},{"operationId":"patch_dashboards_id_widgets_widgetKey","requiresAuth":true,"method":"PATCH","path":"/api/dashboards/{id}/widgets/{widgetKey}","summary":"Update dashboards widgetKey","pathParameters":["id","widgetKey"],"requiredPathParameters":["id","widgetKey"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["reports:write"]},{"operationId":"patch_datasets_id","requiresAuth":true,"method":"PATCH","path":"/api/datasets/{id}","summary":"Update datasets id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_datasets_id_rows_rowId","requiresAuth":true,"method":"PATCH","path":"/api/datasets/{id}/rows/{rowId}","summary":"Update datasets rowId","pathParameters":["id","rowId"],"requiredPathParameters":["id","rowId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["input"],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_deployable_assets_id","requiresAuth":true,"method":"PATCH","path":"/api/deployable-assets/{id}","summary":"Update deployable assets id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["action","expectedRevision","rationale"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"patch_developer_api_keys_id","requiresAuth":true,"method":"PATCH","path":"/api/developer/api-keys/{id}","summary":"Update developer id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:keys"]},{"operationId":"patch_developer_webhooks_id","requiresAuth":true,"method":"PATCH","path":"/api/developer/webhooks/{id}","summary":"Update developer id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"patch_drift_alerts_id","requiresAuth":true,"method":"PATCH","path":"/api/drift/alerts/{id}","summary":"Update drift id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_evaluations_id","requiresAuth":true,"method":"PATCH","path":"/api/evaluations/{id}","summary":"Update evaluations id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_evaluations_id_knowledge_hintId","requiresAuth":true,"method":"PATCH","path":"/api/evaluations/{id}/knowledge/{hintId}","summary":"Update evaluations hintId","pathParameters":["hintId","id"],"requiredPathParameters":["hintId","id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_evaluations_id_playground","requiresAuth":true,"method":"PATCH","path":"/api/evaluations/{id}/playground","summary":"Update evaluations playground","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_evaluations_id_playground_variants_variantId","requiresAuth":true,"method":"PATCH","path":"/api/evaluations/{id}/playground/variants/{variantId}","summary":"Update evaluations variantId","pathParameters":["id","variantId"],"requiredPathParameters":["id","variantId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_evaluations_id_schedule","requiresAuth":true,"method":"PATCH","path":"/api/evaluations/{id}/schedule","summary":"Update evaluations schedule","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["cronExpression","frequency"],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_evaluator_validation_releases_id","requiresAuth":true,"method":"PATCH","path":"/api/evaluator-validation/releases/{id}","summary":"Update evaluator validation id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["status"],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_knowledge_draft_requirements","requiresAuth":true,"method":"PATCH","path":"/api/knowledge/draft-requirements","summary":"Update knowledge draft requirements","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["decision","decisionRationale"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"patch_knowledge_network_installations_installationId","requiresAuth":true,"method":"PATCH","path":"/api/knowledge-network/installations/{installationId}","summary":"Update knowledge network installationId","pathParameters":["installationId"],"requiredPathParameters":["installationId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["status"],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_logs_cohorts_cohortId","requiresAuth":true,"method":"PATCH","path":"/api/logs/cohorts/{cohortId}","summary":"Update logs cohortId","pathParameters":["cohortId"],"requiredPathParameters":["cohortId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:write"]},{"operationId":"patch_logs_views_viewId","requiresAuth":true,"method":"PATCH","path":"/api/logs/views/{viewId}","summary":"Update logs viewId","pathParameters":["viewId"],"requiredPathParameters":["viewId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:write"]},{"operationId":"patch_metric_definitions_id","requiresAuth":true,"method":"PATCH","path":"/api/metric-definitions/{id}","summary":"Update metric definitions id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["aggregation","calibrationBoundary","measure","metricKey","source","unknownPolicy","window"],"pagination":null,"scopes":["reports:write"]},{"operationId":"patch_missions_missionId_proposals","requiresAuth":true,"method":"PATCH","path":"/api/missions/{missionId}/proposals","summary":"Update missions proposals","pathParameters":["missionId"],"requiredPathParameters":["missionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["proposals"],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_model_gateway_configs_id","requiresAuth":true,"method":"PATCH","path":"/api/model-gateway/configs/{id}","summary":"Update model gateway id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"patch_model_gateway_routing_profiles_id","requiresAuth":true,"method":"PATCH","path":"/api/model-gateway/routing-profiles/{id}","summary":"Update model gateway id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"patch_online_evals_monitors_id","requiresAuth":true,"method":"PATCH","path":"/api/online-evals/monitors/{id}","summary":"Update online evals id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"patch_org_keys_keyId","requiresAuth":true,"method":"PATCH","path":"/api/org/keys/{keyId}","summary":"Update org keyId","pathParameters":["keyId"],"requiredPathParameters":["keyId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"patch_organizations_identity_policy","requiresAuth":true,"method":"PATCH","path":"/api/organizations/identity/policy","summary":"Update organizations policy","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:org"]},{"operationId":"patch_organizations_identity_sso_providers_providerId","requiresAuth":true,"method":"PATCH","path":"/api/organizations/identity/sso-providers/{providerId}","summary":"Update organizations providerId","pathParameters":["providerId"],"requiredPathParameters":["providerId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:org"]},{"operationId":"patch_organizations_members_memberId","requiresAuth":true,"method":"PATCH","path":"/api/organizations/members/{memberId}","summary":"Update organizations memberId","pathParameters":["memberId"],"requiredPathParameters":["memberId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["role"],"pagination":null,"scopes":["admin:org"]},{"operationId":"patch_portable_quality_grants_grantId","requiresAuth":true,"method":"PATCH","path":"/api/portable-quality/grants/{grantId}","summary":"Update portable quality grantId","pathParameters":["grantId"],"requiredPathParameters":["grantId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["paused"],"pagination":null,"scopes":["grants:write"]},{"operationId":"patch_portable_quality_resources_resourceId","requiresAuth":true,"method":"PATCH","path":"/api/portable-quality/resources/{resourceId}","summary":"Update portable quality resourceId","pathParameters":["resourceId"],"requiredPathParameters":["resourceId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["action"],"pagination":null,"scopes":["resources:write"]},{"operationId":"patch_production_insights_topics_topicId","requiresAuth":true,"method":"PATCH","path":"/api/production-insights/topics/{topicId}","summary":"Update production insights topicId","pathParameters":["topicId"],"requiredPathParameters":["topicId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["expectedVersion","rationale"],"pagination":null,"scopes":["traces:write"]},{"operationId":"patch_prompts_promptId","requiresAuth":true,"method":"PATCH","path":"/api/prompts/{promptId}","summary":"Update prompts promptId","pathParameters":["promptId"],"requiredPathParameters":["promptId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_proof_risks_and_controls_findings_findingId","requiresAuth":true,"method":"PATCH","path":"/api/proof/risks-and-controls/findings/{findingId}","summary":"Update proof findingId","pathParameters":["findingId"],"requiredPathParameters":["findingId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["expectedWriteRevision","status"],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_proof_risks_and_controls_guest_invites","requiresAuth":true,"method":"PATCH","path":"/api/proof/risks-and-controls/guest-invites","summary":"Update proof guest invites","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["inviteId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_proof_risks_and_controls_tasks_taskId","requiresAuth":true,"method":"PATCH","path":"/api/proof/risks-and-controls/tasks/{taskId}","summary":"Update proof taskId","pathParameters":["taskId"],"requiredPathParameters":["taskId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["expectedWriteRevision","status"],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_remote_runners_id","requiresAuth":true,"method":"PATCH","path":"/api/remote-runners/{id}","summary":"Update remote runners id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["reason","status"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"patch_repository_intelligence_repositories_repositoryId_objectives_candidateId_confirm","requiresAuth":true,"method":"PATCH","path":"/api/repository-intelligence/repositories/{repositoryId}/objectives/{candidateId}/confirm","summary":"Update repository intelligence confirm","pathParameters":["candidateId","repositoryId"],"requiredPathParameters":["candidateId","repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["objectives:write"]},{"operationId":"patch_repository_intelligence_repositories_repositoryId_objectives_candidateId_reject","requiresAuth":true,"method":"PATCH","path":"/api/repository-intelligence/repositories/{repositoryId}/objectives/{candidateId}/reject","summary":"Update repository intelligence reject","pathParameters":["candidateId","repositoryId"],"requiredPathParameters":["candidateId","repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["objectives:write"]},{"operationId":"patch_repository_intelligence_repositories_repositoryId_settings","requiresAuth":true,"method":"PATCH","path":"/api/repository-intelligence/repositories/{repositoryId}/settings","summary":"Update repository intelligence settings","pathParameters":["repositoryId"],"requiredPathParameters":["repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["scanCadence"],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_scorers_scorerId","requiresAuth":true,"method":"PATCH","path":"/api/scorers/{scorerId}","summary":"Update scorers scorerId","pathParameters":["scorerId"],"requiredPathParameters":["scorerId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"patch_settings_scoring","requiresAuth":true,"method":"PATCH","path":"/api/settings/scoring","summary":"Update settings scoring","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["flagThresholds","latencyBands","weights"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"patch_traces_id","requiresAuth":true,"method":"PATCH","path":"/api/traces/{id}","summary":"Update traces id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:write"]},{"operationId":"pollAgentCredentialHandoff","requiresAuth":false,"method":"POST","path":"/api/agent-setup/poll","summary":"Poll a human-approved agent credential handoff","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["device_code"],"pagination":null,"scopes":[]},{"operationId":"post_a2a","requiresAuth":true,"method":"POST","path":"/api/a2a","summary":"Create a2a a2a","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["id","jsonrpc","method"],"pagination":null,"scopes":["agent:read"]},{"operationId":"post_adjudication_items","requiresAuth":true,"method":"POST","path":"/api/adjudication/items","summary":"Create adjudication items","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["reasonCode","sourceId","sourceType","title"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_adjudication_items_id_activity","requiresAuth":true,"method":"POST","path":"/api/adjudication/items/{id}/activity","summary":"Create adjudication activity","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["action"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_adjudication_items_id_add_to_calibration","requiresAuth":true,"method":"POST","path":"/api/adjudication/items/{id}/add-to-calibration","summary":"Create adjudication add to calibration","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_adjudication_items_id_amendments","requiresAuth":true,"method":"POST","path":"/api/adjudication/items/{id}/amendments","summary":"Create adjudication amendments","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["fieldName","newValue","reason"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_adjudication_items_id_assign","requiresAuth":true,"method":"POST","path":"/api/adjudication/items/{id}/assign","summary":"Create adjudication assign","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["assigneeId"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_adjudication_items_id_comments","requiresAuth":true,"method":"POST","path":"/api/adjudication/items/{id}/comments","summary":"Create adjudication comments","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["action","materialRevision"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_adjudication_items_id_decision","requiresAuth":true,"method":"POST","path":"/api/adjudication/items/{id}/decision","summary":"Create adjudication decision","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["decision"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_adjudication_items_id_ground_truth","requiresAuth":true,"method":"POST","path":"/api/adjudication/items/{id}/ground-truth","summary":"Create adjudication ground truth","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_adjudication_items_id_prepare","requiresAuth":true,"method":"POST","path":"/api/adjudication/items/{id}/prepare","summary":"Create adjudication prepare","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","seenMaterialRevision"],"pagination":null,"scopes":["eval:write","runs:write"]},{"operationId":"post_adjudication_items_id_promote_to_golden","requiresAuth":true,"method":"POST","path":"/api/adjudication/items/{id}/promote-to-golden","summary":"Create adjudication promote to golden","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_agent_evidence_audit_pack_export","requiresAuth":true,"method":"POST","path":"/api/agent-evidence/audit-pack/export","summary":"Create an agent evidence audit export","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["exportKey"],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_agent_evidence_connector_audit","requiresAuth":true,"method":"POST","path":"/api/agent-evidence/connector/audit","summary":"Audit an OpenAPI or tool connector manifest","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["connectorKey","spec"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_agent_evidence_ingest","requiresAuth":true,"method":"POST","path":"/api/agent-evidence/ingest","summary":"Ingest a canonical agent evidence envelope","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["source"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_agent_evidence_policy_evaluate","requiresAuth":true,"method":"POST","path":"/api/agent-evidence/policy/evaluate","summary":"Evaluate an agent evidence policy gate","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["action","profileKey","sideEffectClass"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_agent_evidence_quality_case_generate","requiresAuth":true,"method":"POST","path":"/api/agent-evidence/quality-case/generate","summary":"Generate an agent evidence quality case","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["caseKey","scope","title"],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_agent_evidence_replay","requiresAuth":true,"method":"POST","path":"/api/agent-evidence/replay","summary":"Create an agent evidence replay run","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["replayKey","targetId","targetType"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_agent_evidence_resource","requiresAuth":true,"method":"POST","path":"/api/agent-evidence/{resource}","summary":"Create a normalized agent evidence record","pathParameters":["resource"],"requiredPathParameters":["resource"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_agent_evidence_simulate","requiresAuth":true,"method":"POST","path":"/api/agent-evidence/simulate","summary":"Create a side-effect simulation run","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["simulationKey","targetAction"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_ai_releases_releaseId_rollout","requiresAuth":true,"method":"POST","path":"/api/ai-releases/{releaseId}/rollout","summary":"Create ai releases rollout","pathParameters":["releaseId"],"requiredPathParameters":["releaseId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["action","expectedRolloutRevision","expectedStateVersion","idempotencyKey"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_annotations","requiresAuth":true,"method":"POST","path":"/api/annotations","summary":"Create annotations annotations","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationRunId","testCaseId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_annotations_routing","requiresAuth":true,"method":"POST","path":"/api/annotations/routing","summary":"Create annotations routing","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name","sourceKind"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_annotations_routing_preview","requiresAuth":true,"method":"POST","path":"/api/annotations/routing/preview","summary":"Create annotations preview","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["sourceKind"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_annotations_suggestions","requiresAuth":true,"method":"POST","path":"/api/annotations/suggestions","summary":"Create annotations suggestions","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["itemId","taskId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_annotations_tasks","requiresAuth":true,"method":"POST","path":"/api/annotations/tasks","summary":"Create annotations tasks","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name","type"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_annotations_tasks_id_items","requiresAuth":true,"method":"POST","path":"/api/annotations/tasks/{id}/items","summary":"Create annotations items","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["content"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_annotations_tasks_id_items_itemId_control_link","requiresAuth":true,"method":"POST","path":"/api/annotations/tasks/{id}/items/{itemId}/control-link","summary":"Create annotations control link","pathParameters":["id","itemId"],"requiredPathParameters":["id","itemId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["addressesCriterion","controlId","limitations","relation"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_annotations_tasks_id_items_itemId_reuse","requiresAuth":true,"method":"POST","path":"/api/annotations/tasks/{id}/items/{itemId}/reuse","summary":"Create annotations reuse","pathParameters":["id","itemId"],"requiredPathParameters":["id","itemId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_annotations_tasks_id_items_itemId_tags","requiresAuth":true,"method":"POST","path":"/api/annotations/tasks/{id}/items/{itemId}/tags","summary":"Create annotations tags","pathParameters":["id","itemId"],"requiredPathParameters":["id","itemId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["tag"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_arena_compare","requiresAuth":true,"method":"POST","path":"/api/arena/compare","summary":"Create arena compare","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["models","prompt"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_arena_matches","requiresAuth":true,"method":"POST","path":"/api/arena-matches","summary":"Create arena matches arena matches","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["models","prompt"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_arena_reviews_id","requiresAuth":true,"method":"POST","path":"/api/arena/reviews/{id}","summary":"Create arena id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["choice"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_assessments_id_runtime_evidence","requiresAuth":true,"method":"POST","path":"/api/assessments/{id}/runtime-evidence","summary":"Create assessments runtime evidence","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedAssessmentHash","expectedReceiptHash","idempotencyKey","rationale","reference"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_audit_corrective_actions","requiresAuth":true,"method":"POST","path":"/api/audit/corrective-actions","summary":"Create audit corrective actions","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["deadline","originalFinding","ownerUserId"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_audit_engagements","requiresAuth":true,"method":"POST","path":"/api/audit/engagements","summary":"Create audit engagements","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["controlObjective","criteriaSource","evidenceCutoff","periodEnd","periodStart","preparerUserId","reviewerUserId","timezone","title","unitOfTesting"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_audit_engagements_id","requiresAuth":true,"method":"POST","path":"/api/audit/engagements/{id}","summary":"Create audit id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["export","format"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_audit_evidence_requests","requiresAuth":true,"method":"POST","path":"/api/audit/evidence-requests","summary":"Create audit evidence requests","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["dueAt","objectLabel","ownerUserId","periodLabel","requestedArtifact"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_audit_populations","requiresAuth":true,"method":"POST","path":"/api/audit/populations","summary":"Create audit populations","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["engagementId"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_audit_samples","requiresAuth":true,"method":"POST","path":"/api/audit/samples","summary":"Create audit samples","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["method","populationId","sampleSize","seed"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_audit_tests","requiresAuth":true,"method":"POST","path":"/api/audit/tests","summary":"Create audit tests","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["conclusion","populationItemId","sampleId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_benchmarks","requiresAuth":true,"method":"POST","path":"/api/benchmarks","summary":"Create benchmarks benchmarks","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["metrics","name","taskType"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_benchmarks_id_results","requiresAuth":true,"method":"POST","path":"/api/benchmarks/{id}/results","summary":"Create benchmarks results","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["agentConfigId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_benchmarks_id_run","requiresAuth":true,"method":"POST","path":"/api/benchmarks/{id}/run","summary":"Create benchmarks run","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["agentConfigId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_billing_agent_payments_top_ups","requiresAuth":true,"method":"POST","path":"/api/billing/agent-payments/top-ups","summary":"Request an agent top-up","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["amountUsd"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_billing_agent_payments_top_ups_topUpId_pay","requiresAuth":false,"method":"POST","path":"/api/billing/agent-payments/top-ups/{topUpId}/pay","summary":"Pay an agent top-up","pathParameters":["topUpId"],"requiredPathParameters":["topUpId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"post_billing_portal","requiresAuth":true,"method":"POST","path":"/api/billing-portal","summary":"Create billing portal billing portal","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_calibration_mappings","requiresAuth":true,"method":"POST","path":"/api/calibration/mappings","summary":"Create calibration mappings","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["calibrationSetVersionId","judgeConfigId","mappingKey","method","observations"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_calibration_mappings_mappingVersionId_drift","requiresAuth":true,"method":"POST","path":"/api/calibration/mappings/{mappingVersionId}/drift","summary":"Create calibration drift","pathParameters":["mappingVersionId"],"requiredPathParameters":["mappingVersionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["observations"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_calibration_mappings_mappingVersionId_review","requiresAuth":true,"method":"POST","path":"/api/calibration/mappings/{mappingVersionId}/review","summary":"Create calibration review","pathParameters":["mappingVersionId"],"requiredPathParameters":["mappingVersionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["decision","rationale"],"pagination":null,"scopes":["scorer:publish"]},{"operationId":"post_calibration_release_gates","requiresAuth":true,"method":"POST","path":"/api/calibration/release-gates","summary":"Create calibration release gates","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_calibration_set_versions_versionId_review","requiresAuth":true,"method":"POST","path":"/api/calibration/set-versions/{versionId}/review","summary":"Create calibration review","pathParameters":["versionId"],"requiredPathParameters":["versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["decision","rationale"],"pagination":null,"scopes":["scorer:publish"]},{"operationId":"post_calibration_sets","requiresAuth":true,"method":"POST","path":"/api/calibration/sets","summary":"Create calibration sets","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["anchors","name"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_calibration_sets_setId_versions","requiresAuth":true,"method":"POST","path":"/api/calibration/sets/{setId}/versions","summary":"Create calibration versions","pathParameters":["setId"],"requiredPathParameters":["setId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["anchors","name"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_campaigns","requiresAuth":true,"method":"POST","path":"/api/campaigns","summary":"Create campaigns campaigns","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["intendedUse","ownerUserId","title"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_campaigns_id","requiresAuth":true,"method":"POST","path":"/api/campaigns/{id}","summary":"Create campaigns id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["action"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_candidates_id_promote","requiresAuth":true,"method":"POST","path":"/api/candidates/{id}/promote","summary":"Create candidates promote","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_candidates_id_replay","requiresAuth":true,"method":"POST","path":"/api/candidates/{id}/replay","summary":"Create candidates replay","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_change_assessments","requiresAuth":true,"method":"POST","path":"/api/change-assessments","summary":"Create change assessments change assessments","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["changeKind","changeRef","changeSummary","spendLimitUsd","title"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_change_assessments_id","requiresAuth":true,"method":"POST","path":"/api/change-assessments/{id}","summary":"Create change assessments id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["action"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_change_assessments_id_qualification","requiresAuth":true,"method":"POST","path":"/api/change-assessments/{id}/qualification","summary":"Create change assessments qualification","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["action"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_change_assessments_import","requiresAuth":true,"method":"POST","path":"/api/change-assessments/import","summary":"Create change assessments import","pathParameters":[],"requiredPathParameters":[],"queryParameters":["mode"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["document"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_collector","requiresAuth":true,"method":"POST","path":"/api/collector","summary":"Create collector collector","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name","spans","trace_id"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_collector_batch","requiresAuth":true,"method":"POST","path":"/api/collector/batch","summary":"Create collector batch","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["traces"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_copilot_proposals_id_accept","requiresAuth":true,"method":"POST","path":"/api/copilot/proposals/{id}/accept","summary":"Create copilot accept","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","rationale"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_copilot_proposals_id_apply","requiresAuth":true,"method":"POST","path":"/api/copilot/proposals/{id}/apply","summary":"Create copilot apply","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","rationale"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_copilot_proposals_id_reject","requiresAuth":true,"method":"POST","path":"/api/copilot/proposals/{id}/reject","summary":"Create copilot reject","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","rationale"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_copilot_threads","requiresAuth":true,"method":"POST","path":"/api/copilot/threads","summary":"Create copilot threads","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["surface"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_copilot_threads_id_actions","requiresAuth":true,"method":"POST","path":"/api/copilot/threads/{id}/actions","summary":"Create copilot actions","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["message"],"pagination":null,"scopes":["eval:read","eval:write"]},{"operationId":"post_copilot_threads_id_messages","requiresAuth":true,"method":"POST","path":"/api/copilot/threads/{id}/messages","summary":"Create copilot messages","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["content"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_costs","requiresAuth":true,"method":"POST","path":"/api/costs","summary":"Create costs costs","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["inputTokens","model","outputTokens","provider","spanId"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_costs_budget_check","requiresAuth":true,"method":"POST","path":"/api/costs/budget-check","summary":"Create costs budget check","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["maxCostUsd"],"pagination":null,"scopes":["traces:read"]},{"operationId":"post_costs_loop_detect","requiresAuth":true,"method":"POST","path":"/api/costs/loop-detect","summary":"Create costs loop detect","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:read"]},{"operationId":"post_costs_pricing","requiresAuth":true,"method":"POST","path":"/api/costs/pricing","summary":"Create costs pricing","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["inputPricePerMillion","model","outputPricePerMillion","provider"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_dashboard_alert_rules","requiresAuth":true,"method":"POST","path":"/api/dashboard-alert-rules","summary":"Create dashboard alert rules dashboard alert rules","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationWindow","metricDefinitionId","name","operator","ruleKey","threshold"],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_dashboard_alert_rules_id_evaluate","requiresAuth":true,"method":"POST","path":"/api/dashboard-alert-rules/{id}/evaluate","summary":"Create dashboard alert rules evaluate","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_dashboards","requiresAuth":true,"method":"POST","path":"/api/dashboards","summary":"Create dashboards dashboards","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name","snapshot"],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_dashboards_id_render","requiresAuth":true,"method":"POST","path":"/api/dashboards/{id}/render","summary":"Create dashboards render","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_dashboards_id_shares","requiresAuth":true,"method":"POST","path":"/api/dashboards/{id}/shares","summary":"Create dashboards shares","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_dashboards_id_versions","requiresAuth":true,"method":"POST","path":"/api/dashboards/{id}/versions","summary":"Create dashboards versions","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["snapshot"],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_dashboards_id_versions_versionId_publish","requiresAuth":true,"method":"POST","path":"/api/dashboards/{id}/versions/{versionId}/publish","summary":"Create dashboards publish","pathParameters":["id","versionId"],"requiredPathParameters":["id","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_dashboards_id_widgets","requiresAuth":true,"method":"POST","path":"/api/dashboards/{id}/widgets","summary":"Create dashboards widgets","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["drilldown","metricDefinitionId","name","position","refreshPolicy","type","widgetKey"],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_datasets","requiresAuth":true,"method":"POST","path":"/api/datasets","summary":"Create datasets datasets","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_datasets_id_from_traces","requiresAuth":true,"method":"POST","path":"/api/datasets/{id}/from-traces","summary":"Create datasets from traces","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["traceIds"],"pagination":null,"scopes":["traces:read","eval:write"]},{"operationId":"post_datasets_id_import","requiresAuth":true,"method":"POST","path":"/api/datasets/{id}/import","summary":"Create datasets import","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["content","format"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_datasets_id_rows","requiresAuth":true,"method":"POST","path":"/api/datasets/{id}/rows","summary":"Create datasets rows","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["rows"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_datasets_id_rows_rowId_review","requiresAuth":true,"method":"POST","path":"/api/datasets/{id}/rows/{rowId}/review","summary":"Create datasets review","pathParameters":["id","rowId"],"requiredPathParameters":["id","rowId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_datasets_id_versions","requiresAuth":true,"method":"POST","path":"/api/datasets/{id}/versions","summary":"Create datasets versions","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_datasets_id_versions_versionId_approve","requiresAuth":true,"method":"POST","path":"/api/datasets/{id}/versions/{versionId}/approve","summary":"Create datasets approve","pathParameters":["id","versionId"],"requiredPathParameters":["id","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"post_datasets_id_versions_versionId_deprecate","requiresAuth":true,"method":"POST","path":"/api/datasets/{id}/versions/{versionId}/deprecate","summary":"Create datasets deprecate","pathParameters":["id","versionId"],"requiredPathParameters":["id","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"post_datasets_id_versions_versionId_publish","requiresAuth":true,"method":"POST","path":"/api/datasets/{id}/versions/{versionId}/publish","summary":"Create datasets publish","pathParameters":["id","versionId"],"requiredPathParameters":["id","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"post_datasets_id_versions_versionId_review","requiresAuth":true,"method":"POST","path":"/api/datasets/{id}/versions/{versionId}/review","summary":"Create datasets review","pathParameters":["id","versionId"],"requiredPathParameters":["id","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"post_decisions","requiresAuth":true,"method":"POST","path":"/api/decisions","summary":"Create decisions decisions","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["agentName","alternatives","chosen","decisionType","spanId"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_deployable_assets","requiresAuth":true,"method":"POST","path":"/api/deployable-assets","summary":"Create deployable assets deployable assets","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["artifactId","artifactVersionId","environment","policy","rationale"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_deployable_assets_approvals","requiresAuth":true,"method":"POST","path":"/api/deployable-assets/approvals","summary":"Create deployable assets approvals","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["artifactVersionId","environment","rationale"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_deployable_assets_id_health","requiresAuth":false,"method":"POST","path":"/api/deployable-assets/{id}/health","summary":"Create deployable assets health","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":["x-evalgate-provider-health-key-id","x-evalgate-provider-health-signature","x-evalgate-provider-health-timestamp"],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["cohort","costUsd","invocationCount","p95LatencyMs","policyViolationCount","qualityScore","successRate","versionId","windowEndedAt","windowStartedAt"],"pagination":null,"scopes":[]},{"operationId":"post_deployable_assets_id_invoke","requiresAuth":true,"method":"POST","path":"/api/deployable-assets/{id}/invoke","summary":"Create deployable assets invoke","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","input","inputClassification"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_deployable_assets_id_rollout","requiresAuth":true,"method":"POST","path":"/api/deployable-assets/{id}/rollout","summary":"Create deployable assets rollout","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedRevision","mode","rationale","trafficPercent","versionId"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_developer_api_keys","requiresAuth":true,"method":"POST","path":"/api/developer/api-keys","summary":"Create developer api keys","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name","scopes"],"pagination":null,"scopes":["admin:keys"]},{"operationId":"post_developer_mcp_connection_test","requiresAuth":true,"method":"POST","path":"/api/developer/mcp/connection-test","summary":"Create developer connection test","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["apiKey"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_developer_webhooks","requiresAuth":true,"method":"POST","path":"/api/developer/webhooks","summary":"Create developer webhooks","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["events","organizationId","url"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_drift_alerts","requiresAuth":true,"method":"POST","path":"/api/drift/alerts","summary":"Create drift alerts","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_eval_loop_workflows","requiresAuth":true,"method":"POST","path":"/api/eval-loop/workflows","summary":"Create eval loop workflows","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","name","sourceTraceId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_eval_loop_workflows_workflowId_transitions","requiresAuth":true,"method":"POST","path":"/api/eval-loop/workflows/{workflowId}/transitions","summary":"Create eval loop transitions","pathParameters":["workflowId"],"requiredPathParameters":["workflowId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evidence","expectedVersion","idempotencyKey","stage"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_eval_packs_packId_install","requiresAuth":true,"method":"POST","path":"/api/eval-packs/{packId}/install","summary":"Create eval packs install","pathParameters":["packId"],"requiredPathParameters":["packId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evalgate_analyze","requiresAuth":true,"method":"POST","path":"/api/evalgate/analyze","summary":"Create evalgate analyze","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["datasetContent"],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_evalgate_auto_plan","requiresAuth":true,"method":"POST","path":"/api/evalgate/auto-plan","summary":"Create evalgate auto plan","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["objective","strategyTracks","targetContent","targetPath"],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_evalgate_discover_diversity","requiresAuth":true,"method":"POST","path":"/api/evalgate/discover-diversity","summary":"Create evalgate discover diversity","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["specs"],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_evalgate_export","requiresAuth":true,"method":"POST","path":"/api/evalgate/export","summary":"Create evalgate export","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationId"],"pagination":null,"scopes":["exports:download"]},{"operationId":"post_evalgate_synthesize","requiresAuth":true,"method":"POST","path":"/api/evalgate/synthesize","summary":"Create evalgate synthesize","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":["Idempotency-Key"],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_evals_as_code_applies_id_retry","requiresAuth":true,"method":"POST","path":"/api/evals-as-code/applies/{id}/retry","summary":"Create evals as code retry","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_evals_as_code_applies_id_rollback","requiresAuth":true,"method":"POST","path":"/api/evals-as-code/applies/{id}/rollback","summary":"Create evals as code rollback","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_evals_as_code_apply","requiresAuth":true,"method":"POST","path":"/api/evals-as-code/apply","summary":"Create evals as code apply","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_evals_as_code_diff","requiresAuth":true,"method":"POST","path":"/api/evals-as-code/diff","summary":"Create evals as code diff","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_evals_as_code_drift_events_id_accept","requiresAuth":true,"method":"POST","path":"/api/evals-as-code/drift-events/{id}/accept","summary":"Create evals as code accept","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_evals_as_code_drift_events_id_remediate","requiresAuth":true,"method":"POST","path":"/api/evals-as-code/drift-events/{id}/remediate","summary":"Create evals as code remediate","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_evals_as_code_gate","requiresAuth":true,"method":"POST","path":"/api/evals-as-code/gate","summary":"Create evals as code gate","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationId","runId"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_evals_as_code_plan","requiresAuth":true,"method":"POST","path":"/api/evals-as-code/plan","summary":"Create evals as code plan","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_evals_as_code_validate","requiresAuth":true,"method":"POST","path":"/api/evals-as-code/validate","summary":"Create evals as code validate","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_evaluations","requiresAuth":true,"method":"POST","path":"/api/evaluations","summary":"Create evaluations evaluations","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_agent_workflows","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/agent-workflows","summary":"Create evaluations agent workflows","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_artifacts","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/artifacts","summary":"Create evaluations artifacts","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["artifactType"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_artifacts_artifactId_accept","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/artifacts/{artifactId}/accept","summary":"Create evaluations accept","pathParameters":["artifactId","id"],"requiredPathParameters":["artifactId","id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_auto_sessions","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/auto-sessions","summary":"Create evaluations auto sessions","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["maxIterations","name","objective","strategyTracks","targetPath"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_auto_sessions_sessionId_run","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/auto-sessions/{sessionId}/run","summary":"Create evaluations run","pathParameters":["id","sessionId"],"requiredPathParameters":["id","sessionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write","runs:write"]},{"operationId":"post_evaluations_id_auto_sessions_sessionId_stop","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/auto-sessions/{sessionId}/stop","summary":"Create evaluations stop","pathParameters":["id","sessionId"],"requiredPathParameters":["id","sessionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_calibration","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/calibration","summary":"Create evaluations calibration","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_dataset_bindings","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/dataset-bindings","summary":"Create evaluations dataset bindings","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["datasetId","datasetVersionId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_failure_memory_entryId_quarantine","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/failure-memory/{entryId}/quarantine","summary":"Create evaluations quarantine","pathParameters":["entryId","id"],"requiredPathParameters":["entryId","id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_failure_memory_entryId_trust","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/failure-memory/{entryId}/trust","summary":"Create evaluations trust","pathParameters":["entryId","id"],"requiredPathParameters":["entryId","id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["trustState"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_human_review","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/human-review","summary":"Create evaluations human review","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_human_review_reviews","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/human-review/reviews","summary":"Create evaluations reviews","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["batchId","reviewVerdict","sampleId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_integrity","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/integrity","summary":"Create evaluations integrity","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_knowledge_merge","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/knowledge/merge","summary":"Create evaluations merge","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["mergedMechanism","mergedPatchSummary","sourceHintId","targetHintId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_labeled_cases","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/labeled-cases","summary":"Create a manual labeled case for an evaluation","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["input"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_playground","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground","summary":"Create evaluations playground","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_playground_assistant","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/assistant","summary":"Create evaluations assistant","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["command"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_playground_cases","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/cases","summary":"Create evaluations cases","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["rows"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_playground_cases_from_trace","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/cases/from-trace","summary":"Create evaluations from trace","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["traceId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_playground_cases_generate","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/cases/generate","summary":"Create evaluations generate","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["scenario"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_playground_cases_import","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/cases/import","summary":"Create evaluations import","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["content","format"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_playground_promote_to_experiment","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/promote-to-experiment","summary":"Create evaluations promote to experiment","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","name"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_playground_proposals_proposalId","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/proposals/{proposalId}","summary":"Create evaluations proposalId","pathParameters":["id","proposalId"],"requiredPathParameters":["id","proposalId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["action"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_playground_run_all","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/run-all","summary":"Create evaluations run all","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_evaluations_id_playground_run_row","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/run-row","summary":"Create evaluations run row","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_evaluations_id_playground_run_selection","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/run-selection","summary":"Create evaluations run selection","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_evaluations_id_playground_runs_runId_cancel","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/runs/{runId}/cancel","summary":"Create evaluations cancel","pathParameters":["id","runId"],"requiredPathParameters":["id","runId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_playground_scorers_test","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/scorers/test","summary":"Create evaluations test","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["configId","input","output"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_playground_variants","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/variants","summary":"Create evaluations variants","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_playground_variants_variantId_set_baseline","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/variants/{variantId}/set-baseline","summary":"Create evaluations set baseline","pathParameters":["id","variantId"],"requiredPathParameters":["id","variantId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_playground_winner","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/playground/winner","summary":"Create evaluations winner","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","runId","variantId"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_evaluations_id_prompts","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/prompts","summary":"Create evaluations prompts","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["content","logicalPath"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_prompts_promptId_active","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/prompts/{promptId}/active","summary":"Create evaluations active","pathParameters":["id","promptId"],"requiredPathParameters":["id","promptId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["versionId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_prompts_promptId_rollback","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/prompts/{promptId}/rollback","summary":"Create evaluations rollback","pathParameters":["id","promptId"],"requiredPathParameters":["id","promptId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_publish","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/publish","summary":"Create evaluations publish","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_publish_run","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/publish-run","summary":"Create evaluations publish run","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["runId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_regression","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/regression","summary":"Create evaluations regression","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_evaluations_id_report","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/report","summary":"Create evaluations report","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationRunId"],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_evaluations_id_runs","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/runs","summary":"Create evaluations runs","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_evaluations_id_runs_import","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/runs/import","summary":"Create evaluations import","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":["Idempotency-Key"],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_evaluations_id_runs_runId_analyze","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/runs/{runId}/analyze","summary":"Create evaluations analyze","pathParameters":["id","runId"],"requiredPathParameters":["id","runId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"post_evaluations_id_runs_runId_candidates","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/runs/{runId}/candidates","summary":"Prepare a regression candidate from verified executed failure evidence","pathParameters":["id","runId"],"requiredPathParameters":["id","runId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","resultId","sourceFingerprint"],"pagination":null,"scopes":["eval:write","runs:read"]},{"operationId":"post_evaluations_id_runs_runId_cluster","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/runs/{runId}/cluster","summary":"Create evaluations cluster","pathParameters":["id","runId"],"requiredPathParameters":["id","runId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"post_evaluations_id_runs_runId_dataset","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/runs/{runId}/dataset","summary":"Create evaluations dataset","pathParameters":["id","runId"],"requiredPathParameters":["id","runId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"post_evaluations_id_runs_runId_debug","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/runs/{runId}/debug","summary":"Create evaluations debug","pathParameters":["id","runId"],"requiredPathParameters":["id","runId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:read"]},{"operationId":"post_evaluations_id_schedule","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/schedule","summary":"Create evaluations schedule","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["cronExpression","frequency"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_synthetic_candidates_candidateId_promote","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/synthetic-candidates/{candidateId}/promote","summary":"Create evaluations promote","pathParameters":["candidateId","id"],"requiredPathParameters":["candidateId","id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_synthetic_candidates_candidateId_review","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/synthetic-candidates/{candidateId}/review","summary":"Create evaluations review","pathParameters":["candidateId","id"],"requiredPathParameters":["candidateId","id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["decision","rationale"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_test_cases","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/test-cases","summary":"Create evaluations test cases","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["input","name"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_test_cases_testCaseId_activate","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/test-cases/{testCaseId}/activate","summary":"Activate a reviewed test case","pathParameters":["id","testCaseId"],"requiredPathParameters":["id","testCaseId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_test_cases_testCaseId_archive","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/test-cases/{testCaseId}/archive","summary":"Create evaluations archive","pathParameters":["id","testCaseId"],"requiredPathParameters":["id","testCaseId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_test_cases_testCaseId_deprecate","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/test-cases/{testCaseId}/deprecate","summary":"Create evaluations deprecate","pathParameters":["id","testCaseId"],"requiredPathParameters":["id","testCaseId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_test_cases_testCaseId_restore","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/test-cases/{testCaseId}/restore","summary":"Create evaluations restore","pathParameters":["id","testCaseId"],"requiredPathParameters":["id","testCaseId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_test_cases_testCaseId_supersede","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/test-cases/{testCaseId}/supersede","summary":"Create evaluations supersede","pathParameters":["id","testCaseId"],"requiredPathParameters":["id","testCaseId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["supersededByTestCaseId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluations_id_versions","requiresAuth":true,"method":"POST","path":"/api/evaluations/{id}/versions","summary":"Create evaluations versions","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluator_validation_outcomes","requiresAuth":true,"method":"POST","path":"/api/evaluator-validation/outcomes","summary":"Create evaluator validation outcomes","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["observedAt","outcomeKey","outcomeValue"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluator_validation_plan","requiresAuth":true,"method":"POST","path":"/api/evaluator-validation/plan","summary":"Create evaluator validation plan","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluatorReleaseId","requestedMetrics","samplingManifest","validationType"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_evaluator_validation_releases","requiresAuth":true,"method":"POST","path":"/api/evaluator-validation/releases","summary":"Create evaluator validation releases","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name","protocol","scoreSemantics"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluator_validation_runs","requiresAuth":true,"method":"POST","path":"/api/evaluator-validation/runs","summary":"Create evaluator validation runs","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluatorReleaseId","requestedMetrics","samplingManifest","validationType"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluator_validation_runs_id_execute","requiresAuth":true,"method":"POST","path":"/api/evaluator-validation/runs/{id}/execute","summary":"Create evaluator validation execute","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluator_validation_runs_id_observations","requiresAuth":true,"method":"POST","path":"/api/evaluator-validation/runs/{id}/observations","summary":"Create evaluator validation observations","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["observations"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_evaluator_validation_runs_id_resume","requiresAuth":true,"method":"POST","path":"/api/evaluator-validation/runs/{id}/resume","summary":"Create evaluator validation resume","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_execution_state_handoffs_bundleId_resume","requiresAuth":true,"method":"POST","path":"/api/execution-state/handoffs/{bundleId}/resume","summary":"Create execution state resume","pathParameters":["bundleId"],"requiredPathParameters":["bundleId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["acknowledgements"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_execution_state_sessions","requiresAuth":true,"method":"POST","path":"/api/execution-state/sessions","summary":"Create execution state sessions","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["privacyPolicyId","retentionPolicyId","workItemId","workItemType"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_execution_state_sessions_sessionId_events","requiresAuth":true,"method":"POST","path":"/api/execution-state/sessions/{sessionId}/events","summary":"Create execution state events","pathParameters":["sessionId"],"requiredPathParameters":["sessionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["actor","idempotencyKey","payload","payloadHash","type"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_execution_state_sessions_sessionId_handoffs","requiresAuth":true,"method":"POST","path":"/api/execution-state/sessions/{sessionId}/handoffs","summary":"Create execution state handoffs","pathParameters":["sessionId"],"requiredPathParameters":["sessionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["contextViewId","destination","destinationHarnessProfileRef","idempotencyKey","privacyViewId","sourceHarnessProfileRef"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_execution_state_sessions_sessionId_snapshot","requiresAuth":true,"method":"POST","path":"/api/execution-state/sessions/{sessionId}/snapshot","summary":"Create execution state snapshot","pathParameters":["sessionId"],"requiredPathParameters":["sessionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedRevision"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_executions","requiresAuth":true,"method":"POST","path":"/api/executions","summary":"Create executions executions","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","kind"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_executions_executionId_claim","requiresAuth":true,"method":"POST","path":"/api/executions/{executionId}/claim","summary":"Create executions claim","pathParameters":["executionId"],"requiredPathParameters":["executionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["workerId"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_executions_executionId_complete","requiresAuth":true,"method":"POST","path":"/api/executions/{executionId}/complete","summary":"Create executions complete","pathParameters":["executionId"],"requiredPathParameters":["executionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["leaseGeneration","status","workerId"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_executions_executionId_heartbeat","requiresAuth":true,"method":"POST","path":"/api/executions/{executionId}/heartbeat","summary":"Create executions heartbeat","pathParameters":["executionId"],"requiredPathParameters":["executionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["leaseGeneration","workerId"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_executions_executionId_resume","requiresAuth":true,"method":"POST","path":"/api/executions/{executionId}/resume","summary":"Create executions resume","pathParameters":["executionId"],"requiredPathParameters":["executionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_experiments","requiresAuth":true,"method":"POST","path":"/api/experiments","summary":"Create experiments experiments","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["baselineVariantKey","evaluationId","idempotencyKey","name","variants"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_experiments_id_cancel","requiresAuth":true,"method":"POST","path":"/api/experiments/{id}/cancel","summary":"Create experiments cancel","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_experiments_id_decision","requiresAuth":true,"method":"POST","path":"/api/experiments/{id}/decision","summary":"Create experiments decision","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["decision","idempotencyKey","rationale"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_experiments_id_publish_winner","requiresAuth":true,"method":"POST","path":"/api/experiments/{id}/publish-winner","summary":"Create experiments publish winner","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["decisionId","environment","idempotencyKey","target"],"pagination":null,"scopes":["prompt:publish"]},{"operationId":"post_experiments_id_run","requiresAuth":true,"method":"POST","path":"/api/experiments/{id}/run","summary":"Create experiments run","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_github_intelligence_repositories_repositoryId_questions","requiresAuth":true,"method":"POST","path":"/api/github/intelligence/repositories/{repositoryId}/questions","summary":"Create github questions","pathParameters":["repositoryId"],"requiredPathParameters":["repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["questionText"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_github_publications","requiresAuth":true,"method":"POST","path":"/api/github/publications","summary":"Create github publications","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["baseSha","candidateIds","repositoryId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_governance_evaluate","requiresAuth":true,"method":"POST","path":"/api/governance/evaluate","summary":"Create governance evaluate","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["decision"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_harness_experiments_compare","requiresAuth":true,"method":"POST","path":"/api/harness/experiments/compare","summary":"Create harness compare","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["baseline","candidate","policy"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_harness_outcomes","requiresAuth":true,"method":"POST","path":"/api/harness/outcomes","summary":"Create harness outcomes","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["occurredAt","outcome","source"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_harness_schedules","requiresAuth":true,"method":"POST","path":"/api/harness/schedules","summary":"Create harness schedules","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["baselineKey","cadence","destinations"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_identity_mfa_backup_code","requiresAuth":true,"method":"POST","path":"/api/identity/mfa/backup-code","summary":"Create identity backup code","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["code"],"pagination":null,"scopes":[]},{"operationId":"post_improvement_candidates_candidateId_authorize","requiresAuth":true,"method":"POST","path":"/api/improvement/candidates/{candidateId}/authorize","summary":"Create improvement authorize","pathParameters":["candidateId"],"requiredPathParameters":["candidateId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["action","evidenceComplete","expectedStateVersion","hasAutomaticRollbackPolicy","idempotencyKey","introducesNewWriteCapability"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_improvement_cycles_cycleId_adopt","requiresAuth":true,"method":"POST","path":"/api/improvement/cycles/{cycleId}/adopt","summary":"Create improvement adopt","pathParameters":["cycleId"],"requiredPathParameters":["cycleId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["candidateId","expectedStateVersion","idempotencyKey","learning","reason","rollout"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_improvement_cycles_cycleId_confirmation","requiresAuth":true,"method":"POST","path":"/api/improvement/cycles/{cycleId}/confirmation","summary":"Create improvement confirmation","pathParameters":["cycleId"],"requiredPathParameters":["cycleId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["action"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_improvement_cycles_cycleId_contracts","requiresAuth":true,"method":"POST","path":"/api/improvement/cycles/{cycleId}/contracts","summary":"Create improvement contracts","pathParameters":["cycleId"],"requiredPathParameters":["cycleId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["scenarioKey"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_improvement_cycles_cycleId_contracts_contractId_approve","requiresAuth":true,"method":"POST","path":"/api/improvement/cycles/{cycleId}/contracts/{contractId}/approve","summary":"Create improvement approve","pathParameters":["contractId","cycleId"],"requiredPathParameters":["contractId","cycleId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_improvement_cycles_cycleId_runs","requiresAuth":true,"method":"POST","path":"/api/improvement/cycles/{cycleId}/runs","summary":"Create improvement runs","pathParameters":["cycleId"],"requiredPathParameters":["cycleId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["scenarioKey"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_integrations_events","requiresAuth":true,"method":"POST","path":"/api/integrations/events","summary":"Validate or ingest a batch of evalgate.integration.v1 adapter events","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["events"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_integrations_github","requiresAuth":true,"method":"POST","path":"/api/integrations/github","summary":"Create integrations github","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_integrations_slack_disconnect","requiresAuth":true,"method":"POST","path":"/api/integrations/slack/disconnect","summary":"Create integrations disconnect","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_jobs_dead_bulk_retry","requiresAuth":true,"method":"POST","path":"/api/jobs/dead/bulk-retry","summary":"Create jobs bulk retry","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_jobs_id_retry","requiresAuth":true,"method":"POST","path":"/api/jobs/{id}/retry","summary":"Create jobs retry","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_journey_owned","requiresAuth":true,"method":"POST","path":"/api/journey-owned","summary":"Create journey owned journey owned","pathParameters":[],"requiredPathParameters":[],"queryParameters":["action"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_knowledge_documents","requiresAuth":true,"method":"POST","path":"/api/knowledge/documents","summary":"Create knowledge documents","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["content","title"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_knowledge_draft_requirements","requiresAuth":true,"method":"POST","path":"/api/knowledge/draft-requirements","summary":"Create knowledge draft requirements","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["documentId","documentRevisionLabel","proposals"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_knowledge_grounding","requiresAuth":true,"method":"POST","path":"/api/knowledge/grounding","summary":"Create knowledge grounding","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["output"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_knowledge_network_installations","requiresAuth":true,"method":"POST","path":"/api/knowledge-network/installations","summary":"Create knowledge network installations","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","packageVersionId","planHash"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_knowledge_network_packages_packageId_versions_versionId_install_plan","requiresAuth":true,"method":"POST","path":"/api/knowledge-network/packages/{packageId}/versions/{versionId}/install-plan","summary":"Create knowledge network install plan","pathParameters":["packageId","versionId"],"requiredPathParameters":["packageId","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_knowledge_reindex_embeddings","requiresAuth":true,"method":"POST","path":"/api/knowledge/reindex-embeddings","summary":"Create knowledge reindex embeddings","pathParameters":[],"requiredPathParameters":[],"queryParameters":["async"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_lineage_gate_decision","requiresAuth":true,"method":"POST","path":"/api/lineage/gate-decision","summary":"Create lineage gate decision","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationRunId","exitCode","passed","reasonCode"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_llm_judge_calibration_proposals","requiresAuth":true,"method":"POST","path":"/api/llm-judge/calibration-proposals","summary":"Create llm judge calibration proposals","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["action","evaluationId","proposalId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_llm_judge_compare","requiresAuth":true,"method":"POST","path":"/api/llm-judge/compare","summary":"Create llm judge compare","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["configId","input","outputA","outputB"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_llm_judge_configs","requiresAuth":true,"method":"POST","path":"/api/llm-judge/configs","summary":"Create llm judge configs","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name","promptTemplate"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_llm_judge_estimate","requiresAuth":true,"method":"POST","path":"/api/llm-judge/estimate","summary":"Create llm judge estimate","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["caseCount","configId"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_llm_judge_evaluate","requiresAuth":true,"method":"POST","path":"/api/llm-judge/evaluate","summary":"Create llm judge evaluate","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["configId","input","output"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_llm_judge_test","requiresAuth":true,"method":"POST","path":"/api/llm-judge/test","summary":"Create llm judge test","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["input","output","promptTemplate"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_logs_actions_add_to_dataset","requiresAuth":true,"method":"POST","path":"/api/logs/actions/add-to-dataset","summary":"Create logs add to dataset","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["datasetId","idempotencyKey","traceIds"],"pagination":null,"scopes":["traces:read","eval:write"]},{"operationId":"post_logs_actions_compare","requiresAuth":true,"method":"POST","path":"/api/logs/actions/compare","summary":"Create logs compare","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","traceIds"],"pagination":null,"scopes":["traces:read"]},{"operationId":"post_logs_actions_create_candidate","requiresAuth":true,"method":"POST","path":"/api/logs/actions/create-candidate","summary":"Create logs create candidate","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationId","idempotencyKey","traceIds"],"pagination":null,"scopes":["traces:read","eval:write"]},{"operationId":"post_logs_actions_create_monitor","requiresAuth":true,"method":"POST","path":"/api/logs/actions/create-monitor","summary":"Create logs create monitor","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","name","query"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_logs_actions_create_review","requiresAuth":true,"method":"POST","path":"/api/logs/actions/create-review","summary":"Create logs create review","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","traceIds"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_logs_actions_open_in_playground","requiresAuth":true,"method":"POST","path":"/api/logs/actions/open-in-playground","summary":"Create logs open in playground","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationId","idempotencyKey","traceIds"],"pagination":null,"scopes":["traces:read","eval:write"]},{"operationId":"post_logs_actions_tag","requiresAuth":true,"method":"POST","path":"/api/logs/actions/tag","summary":"Create logs tag","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","tags","traceIds"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_logs_aggregate","requiresAuth":true,"method":"POST","path":"/api/logs/aggregate","summary":"Create logs aggregate","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["metrics"],"pagination":null,"scopes":["traces:read"]},{"operationId":"post_logs_cohorts","requiresAuth":true,"method":"POST","path":"/api/logs/cohorts","summary":"Create logs cohorts","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name","query"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_logs_export","requiresAuth":true,"method":"POST","path":"/api/logs/export","summary":"Create logs export","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["format","query"],"pagination":null,"scopes":["traces:read","exports:download"]},{"operationId":"post_logs_query","requiresAuth":true,"method":"POST","path":"/api/logs/query","summary":"Create logs query","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:read"]},{"operationId":"post_logs_views","requiresAuth":true,"method":"POST","path":"/api/logs/views","summary":"Create logs views","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name","query"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_mcp","requiresAuth":true,"method":"POST","path":"/api/mcp","summary":"Create mcp mcp","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"post_mcp_call","requiresAuth":true,"method":"POST","path":"/api/mcp/call","summary":"Create mcp call","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["tool"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_metric_definitions","requiresAuth":true,"method":"POST","path":"/api/metric-definitions","summary":"Create metric definitions metric definitions","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["aggregation","calibrationBoundary","measure","metricKey","source","unknownPolicy","window"],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_metric_definitions_id_approve","requiresAuth":true,"method":"POST","path":"/api/metric-definitions/{id}/approve","summary":"Create metric definitions approve","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_metrics_preview","requiresAuth":true,"method":"POST","path":"/api/metrics/preview","summary":"Create metrics preview","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["definition"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_metrics_query","requiresAuth":true,"method":"POST","path":"/api/metrics/query","summary":"Create metrics query","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["metricDefinitionId"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_missions","requiresAuth":true,"method":"POST","path":"/api/missions","summary":"Create missions missions","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationId","kind"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_missions_missionId_promote","requiresAuth":true,"method":"POST","path":"/api/missions/{missionId}/promote","summary":"Create missions promote","pathParameters":["missionId"],"requiredPathParameters":["missionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_model_gateway_configs","requiresAuth":true,"method":"POST","path":"/api/model-gateway/configs","summary":"Create model gateway configs","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["apiKey","backend","baseUrl","name"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_model_gateway_configs_id_health_check","requiresAuth":true,"method":"POST","path":"/api/model-gateway/configs/{id}/health-check","summary":"Create model gateway health check","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_model_gateway_configs_id_rotate_key","requiresAuth":true,"method":"POST","path":"/api/model-gateway/configs/{id}/rotate-key","summary":"Create model gateway rotate key","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["apiKey"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_model_gateway_models_sync","requiresAuth":true,"method":"POST","path":"/api/model-gateway/models/sync","summary":"Create model gateway sync","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["gatewayConfigId"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_model_gateway_routing_profiles","requiresAuth":true,"method":"POST","path":"/api/model-gateway/routing-profiles","summary":"Create model gateway routing profiles","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["mode","name","objective","useCase"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_model_gateway_routing_profiles_id_test","requiresAuth":true,"method":"POST","path":"/api/model-gateway/routing-profiles/{id}/test","summary":"Create model gateway test","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_model_gateway_test_call","requiresAuth":true,"method":"POST","path":"/api/model-gateway/test-call","summary":"Create model gateway test call","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_notifications_id_delivery","requiresAuth":true,"method":"POST","path":"/api/notifications/{id}/delivery","summary":"Create notifications delivery","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["stage"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_notifications_mark_read","requiresAuth":true,"method":"POST","path":"/api/notifications/mark-read","summary":"Create notifications mark read","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_online_evals_alerts_id_ack","requiresAuth":true,"method":"POST","path":"/api/online-evals/alerts/{id}/ack","summary":"Create online evals ack","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_online_evals_alerts_id_remediation","requiresAuth":true,"method":"POST","path":"/api/online-evals/alerts/{id}/remediation","summary":"Create online evals remediation","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","rationale","verificationTraceId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_online_evals_alerts_id_resolve","requiresAuth":true,"method":"POST","path":"/api/online-evals/alerts/{id}/resolve","summary":"Create online evals resolve","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_online_evals_alerts_id_snooze","requiresAuth":true,"method":"POST","path":"/api/online-evals/alerts/{id}/snooze","summary":"Create online evals snooze","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["reason"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_online_evals_backfills_id_cancel","requiresAuth":true,"method":"POST","path":"/api/online-evals/backfills/{id}/cancel","summary":"Create online evals cancel","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_online_evals_backfills_id_resume","requiresAuth":true,"method":"POST","path":"/api/online-evals/backfills/{id}/resume","summary":"Create online evals resume","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_online_evals_monitors","requiresAuth":true,"method":"POST","path":"/api/online-evals/monitors","summary":"Create online evals monitors","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_online_evals_monitors_id_activate","requiresAuth":true,"method":"POST","path":"/api/online-evals/monitors/{id}/activate","summary":"Create online evals activate","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedConfigHash","versionId"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_online_evals_monitors_id_backfills","requiresAuth":true,"method":"POST","path":"/api/online-evals/monitors/{id}/backfills","summary":"Create online evals backfills","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","windowEnd","windowStart"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_online_evals_monitors_id_pause","requiresAuth":true,"method":"POST","path":"/api/online-evals/monitors/{id}/pause","summary":"Create online evals pause","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_online_evals_monitors_id_resume","requiresAuth":true,"method":"POST","path":"/api/online-evals/monitors/{id}/resume","summary":"Create online evals resume","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_online_evals_monitors_id_simulate","requiresAuth":true,"method":"POST","path":"/api/online-evals/monitors/{id}/simulate","summary":"Create online evals simulate","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","windowEnd","windowStart"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_online_evals_monitors_id_test","requiresAuth":true,"method":"POST","path":"/api/online-evals/monitors/{id}/test","summary":"Create online evals test","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_orchestration_evals_runs","requiresAuth":true,"method":"POST","path":"/api/orchestration-evals/runs","summary":"Create orchestration evals runs","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["capabilityLeaseId","executionStateSessionId","interpreterProfileVersionId","programVersionId","taskAttemptId"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_org_keys","requiresAuth":true,"method":"POST","path":"/api/org/keys","summary":"Create org keys","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["apiKey","keyName","keyType","provider"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_org_keys_keyId_rotate","requiresAuth":true,"method":"POST","path":"/api/org/keys/{keyId}/rotate","summary":"Create org rotate","pathParameters":["keyId"],"requiredPathParameters":["keyId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["newApiKey"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_org_switch","requiresAuth":true,"method":"POST","path":"/api/org/switch","summary":"Create org switch","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["organizationId"],"pagination":null,"scopes":[]},{"operationId":"post_organizations","requiresAuth":true,"method":"POST","path":"/api/organizations","summary":"Create organizations organizations","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name"],"pagination":null,"scopes":[]},{"operationId":"post_organizations_identity_domains","requiresAuth":true,"method":"POST","path":"/api/organizations/identity/domains","summary":"Create organizations domains","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["domain"],"pagination":null,"scopes":["admin:org"]},{"operationId":"post_organizations_identity_domains_domainId_verify","requiresAuth":true,"method":"POST","path":"/api/organizations/identity/domains/{domainId}/verify","summary":"Create organizations verify","pathParameters":["domainId"],"requiredPathParameters":["domainId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:org"]},{"operationId":"post_organizations_identity_members_userId_mfa_reset","requiresAuth":true,"method":"POST","path":"/api/organizations/identity/members/{userId}/mfa-reset","summary":"Create organizations mfa reset","pathParameters":["userId"],"requiredPathParameters":["userId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:org"]},{"operationId":"post_organizations_identity_sso_providers","requiresAuth":true,"method":"POST","path":"/api/organizations/identity/sso-providers","summary":"Create organizations sso providers","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["displayName","domain","protocol"],"pagination":null,"scopes":["admin:org"]},{"operationId":"post_otel_v1_traces","requiresAuth":true,"method":"POST","path":"/api/otel/v1/traces","summary":"Create otel traces","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["resourceSpans"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_playgrounds_from_demo","requiresAuth":true,"method":"POST","path":"/api/playgrounds/from-demo","summary":"Create playgrounds from demo","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["input","name"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_policies","requiresAuth":true,"method":"POST","path":"/api/policies","summary":"Create policies policies","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["data","operation"],"pagination":null,"scopes":["eval:write","admin:workspace"]},{"operationId":"post_portability_exports","requiresAuth":true,"method":"POST","path":"/api/portability/exports","summary":"Create portability exports","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["policy","selectors"],"pagination":null,"scopes":["exports:download"]},{"operationId":"post_portability_imports_commit","requiresAuth":true,"method":"POST","path":"/api/portability/imports/commit","summary":"Create portability commit","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_portability_imports_dry_run","requiresAuth":true,"method":"POST","path":"/api/portability/imports/dry-run","summary":"Create portability dry run","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["exports:download"]},{"operationId":"post_portability_trusted_signers","requiresAuth":true,"method":"POST","path":"/api/portability/trusted-signers","summary":"Create portability trusted signers","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["displayName","keyId","publicKey"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_portable_quality_checks","requiresAuth":true,"method":"POST","path":"/api/portable-quality/checks","summary":"Create portable quality checks","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["budgetReservation","checkPlanId","idempotencyKey","mode","outagePolicy","taskRevisionId","triggerType"],"pagination":null,"scopes":["checks:run"]},{"operationId":"post_portable_quality_checks_executionId_evidence","requiresAuth":true,"method":"POST","path":"/api/portable-quality/checks/{executionId}/evidence","summary":"Create portable quality evidence","pathParameters":["executionId"],"requiredPathParameters":["executionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["attestations"],"pagination":null,"scopes":["checks:run"]},{"operationId":"post_portable_quality_contexts","requiresAuth":true,"method":"POST","path":"/api/portable-quality/contexts","summary":"Create portable quality contexts","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["goal","purpose"],"pagination":null,"scopes":["contexts:write"]},{"operationId":"post_portable_quality_contexts_contextId_collections","requiresAuth":true,"method":"POST","path":"/api/portable-quality/contexts/{contextId}/collections","summary":"Create portable quality collections","pathParameters":["contextId"],"requiredPathParameters":["contextId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["action"],"pagination":null,"scopes":["resources:write"]},{"operationId":"post_portable_quality_contexts_contextId_resources","requiresAuth":true,"method":"POST","path":"/api/portable-quality/contexts/{contextId}/resources","summary":"Create portable quality resources","pathParameters":["contextId"],"requiredPathParameters":["contextId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["byteSize","contentHash","mimeType","sourceKind"],"pagination":null,"scopes":["resources:write"]},{"operationId":"post_portable_quality_contexts_contextId_revisions","requiresAuth":true,"method":"POST","path":"/api/portable-quality/contexts/{contextId}/revisions","summary":"Create portable quality revisions","pathParameters":["contextId"],"requiredPathParameters":["contextId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["goal"],"pagination":null,"scopes":["contexts:write"]},{"operationId":"post_portable_quality_contexts_contextId_uploads","requiresAuth":true,"method":"POST","path":"/api/portable-quality/contexts/{contextId}/uploads","summary":"Create portable quality uploads","pathParameters":["contextId"],"requiredPathParameters":["contextId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["byteSize","contentHash","filename","idempotencyKey","mimeType"],"pagination":null,"scopes":["resources:write"]},{"operationId":"post_portable_quality_contexts_contextId_uploads_uploadId_finalize","requiresAuth":true,"method":"POST","path":"/api/portable-quality/contexts/{contextId}/uploads/{uploadId}/finalize","summary":"Create portable quality finalize","pathParameters":["contextId","uploadId"],"requiredPathParameters":["contextId","uploadId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["resources:write"]},{"operationId":"post_portable_quality_contexts_contextId_uploads_uploadId_parts","requiresAuth":true,"method":"POST","path":"/api/portable-quality/contexts/{contextId}/uploads/{uploadId}/parts","summary":"Create portable quality parts","pathParameters":["contextId","uploadId"],"requiredPathParameters":["contextId","uploadId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["partNumber"],"pagination":null,"scopes":["resources:write"]},{"operationId":"post_portable_quality_corrections","requiresAuth":true,"method":"POST","path":"/api/portable-quality/corrections","summary":"Create portable quality corrections","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["correction","observedDefect","sourceRevisionId","targetObservationId","taskRevisionId","workContextId"],"pagination":null,"scopes":["standards:write"]},{"operationId":"post_portable_quality_deliveries","requiresAuth":true,"method":"POST","path":"/api/portable-quality/deliveries","summary":"Create portable quality deliveries","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["installationId","taskRevisionId"],"pagination":null,"scopes":["standards:write"]},{"operationId":"post_portable_quality_deliveries_deliveryId_advance","requiresAuth":true,"method":"POST","path":"/api/portable-quality/deliveries/{deliveryId}/advance","summary":"Create portable quality advance","pathParameters":["deliveryId"],"requiredPathParameters":["deliveryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["state"],"pagination":null,"scopes":["standards:write"]},{"operationId":"post_portable_quality_deliveries_deliveryId_callback","requiresAuth":true,"method":"POST","path":"/api/portable-quality/deliveries/{deliveryId}/callback","summary":"Create portable quality callback","pathParameters":["deliveryId"],"requiredPathParameters":["deliveryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["grantId","webhookId"],"pagination":null,"scopes":["standards:write","eval:read"]},{"operationId":"post_portable_quality_grants","requiresAuth":true,"method":"POST","path":"/api/portable-quality/grants","summary":"Create portable quality grants","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["actions","destinations","eventTypes","expiresAt","installationId","maxConcurrency","maxDailyEvents","policyRevision","resourceIds"],"pagination":null,"scopes":["grants:write"]},{"operationId":"post_portable_quality_grants_grantId_resolve","requiresAuth":true,"method":"POST","path":"/api/portable-quality/grants/{grantId}/resolve","summary":"Create portable quality resolve","pathParameters":["grantId"],"requiredPathParameters":["grantId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["requested","tenantPolicy"],"pagination":null,"scopes":["grants:read"]},{"operationId":"post_portable_quality_installations","requiresAuth":true,"method":"POST","path":"/api/portable-quality/installations","summary":"Create portable quality installations","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["capabilities","capabilityRevision","externalIdentity","hostKind","identityAssurance"],"pagination":null,"scopes":["grants:write"]},{"operationId":"post_portable_quality_observations","requiresAuth":true,"method":"POST","path":"/api/portable-quality/observations","summary":"Create portable quality observations","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["envelope","idempotencyKey"],"pagination":null,"scopes":["observations:write"]},{"operationId":"post_portable_quality_plans","requiresAuth":true,"method":"POST","path":"/api/portable-quality/plans","summary":"Create portable quality plans","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["job","taskRevisionId"],"pagination":null,"scopes":["checks:run","resources:read","contexts:read"]},{"operationId":"post_portable_quality_resources_resourceId_revisions","requiresAuth":true,"method":"POST","path":"/api/portable-quality/resources/{resourceId}/revisions","summary":"Create portable quality revisions","pathParameters":["resourceId"],"requiredPathParameters":["resourceId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["byteSize","contentHash","isLossless","mimeType","parentRevisionId","transformIdentity"],"pagination":null,"scopes":["resources:write"]},{"operationId":"post_portable_quality_resources_resourceId_revisions_revisionId_query","requiresAuth":true,"method":"POST","path":"/api/portable-quality/resources/{resourceId}/revisions/{revisionId}/query","summary":"Create portable quality query","pathParameters":["resourceId","revisionId"],"requiredPathParameters":["resourceId","revisionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["resources:read"]},{"operationId":"post_portable_quality_resources_resourceId_revisions_revisionId_query_executions","requiresAuth":true,"method":"POST","path":"/api/portable-quality/resources/{resourceId}/revisions/{revisionId}/query/executions","summary":"Create portable quality executions","pathParameters":["resourceId","revisionId"],"requiredPathParameters":["resourceId","revisionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey"],"pagination":null,"scopes":["resources:read"]},{"operationId":"post_portable_quality_standards","requiresAuth":true,"method":"POST","path":"/api/portable-quality/standards","summary":"Create portable quality standards","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["correctionId","kind","proposalOrigin","scope","semanticKey","statement"],"pagination":null,"scopes":["standards:write"]},{"operationId":"post_portable_quality_standards_resolve","requiresAuth":true,"method":"POST","path":"/api/portable-quality/standards/resolve","summary":"Create portable quality resolve","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["at"],"pagination":null,"scopes":["standards:read"]},{"operationId":"post_portable_quality_standards_revisions_revisionId_decision","requiresAuth":true,"method":"POST","path":"/api/portable-quality/standards/revisions/{revisionId}/decision","summary":"Create portable quality decision","pathParameters":["revisionId"],"requiredPathParameters":["revisionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["decision"],"pagination":null,"scopes":["standards:approve"]},{"operationId":"post_production_insights_discover","requiresAuth":true,"method":"POST","path":"/api/production-insights/discover","summary":"Create production insights discover","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_production_insights_topics_merge","requiresAuth":true,"method":"POST","path":"/api/production-insights/topics/merge","summary":"Create production insights merge","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["rationale","sourceExpectedVersions","sourceTopicIds","targetExpectedVersion","targetTopicId"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_production_insights_topics_topicId_accept","requiresAuth":true,"method":"POST","path":"/api/production-insights/topics/{topicId}/accept","summary":"Create production insights accept","pathParameters":["topicId"],"requiredPathParameters":["topicId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedVersion","rationale","versionNumber"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_production_insights_topics_topicId_actions_action","requiresAuth":true,"method":"POST","path":"/api/production-insights/topics/{topicId}/actions/{action}","summary":"Create production insights action","pathParameters":["action","topicId"],"requiredPathParameters":["action","topicId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey"],"pagination":null,"scopes":[]},{"operationId":"post_production_insights_topics_topicId_actions_create_candidates","requiresAuth":true,"method":"POST","path":"/api/production-insights/topics/{topicId}/actions/create_candidates","summary":"Create production insights create candidates","pathParameters":["topicId"],"requiredPathParameters":["topicId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey"],"pagination":null,"scopes":[]},{"operationId":"post_production_insights_topics_topicId_actions_create_dataset","requiresAuth":true,"method":"POST","path":"/api/production-insights/topics/{topicId}/actions/create_dataset","summary":"Create production insights create dataset","pathParameters":["topicId"],"requiredPathParameters":["topicId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey"],"pagination":null,"scopes":[]},{"operationId":"post_production_insights_topics_topicId_actions_create_monitor","requiresAuth":true,"method":"POST","path":"/api/production-insights/topics/{topicId}/actions/create_monitor","summary":"Create production insights create monitor","pathParameters":["topicId"],"requiredPathParameters":["topicId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey"],"pagination":null,"scopes":[]},{"operationId":"post_production_insights_topics_topicId_actions_create_review","requiresAuth":true,"method":"POST","path":"/api/production-insights/topics/{topicId}/actions/create_review","summary":"Create production insights create review","pathParameters":["topicId"],"requiredPathParameters":["topicId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey"],"pagination":null,"scopes":[]},{"operationId":"post_production_insights_topics_topicId_actions_open_playground","requiresAuth":true,"method":"POST","path":"/api/production-insights/topics/{topicId}/actions/open_playground","summary":"Create production insights open playground","pathParameters":["topicId"],"requiredPathParameters":["topicId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey"],"pagination":null,"scopes":[]},{"operationId":"post_production_insights_topics_topicId_actions_promote_candidates","requiresAuth":true,"method":"POST","path":"/api/production-insights/topics/{topicId}/actions/promote_candidates","summary":"Create production insights promote candidates","pathParameters":["topicId"],"requiredPathParameters":["topicId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey"],"pagination":null,"scopes":[]},{"operationId":"post_production_insights_topics_topicId_actions_start_improvement_cycle","requiresAuth":true,"method":"POST","path":"/api/production-insights/topics/{topicId}/actions/start_improvement_cycle","summary":"Create production insights start improvement cycle","pathParameters":["topicId"],"requiredPathParameters":["topicId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey"],"pagination":null,"scopes":[]},{"operationId":"post_production_insights_topics_topicId_propose_label","requiresAuth":true,"method":"POST","path":"/api/production-insights/topics/{topicId}/propose-label","summary":"Create production insights propose label","pathParameters":["topicId"],"requiredPathParameters":["topicId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedVersion","model","provider"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_production_insights_topics_topicId_split","requiresAuth":true,"method":"POST","path":"/api/production-insights/topics/{topicId}/split","summary":"Create production insights split","pathParameters":["topicId"],"requiredPathParameters":["topicId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedVersion","partitions","rationale"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_prompts","requiresAuth":true,"method":"POST","path":"/api/prompts","summary":"Create prompts prompts","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["definition","key","name"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_prompts_promptId_environments_environment_rollback","requiresAuth":true,"method":"POST","path":"/api/prompts/{promptId}/environments/{environment}/rollback","summary":"Create prompts rollback","pathParameters":["environment","promptId"],"requiredPathParameters":["environment","promptId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedBindingRevision","expectedBindingVersionId"],"pagination":null,"scopes":["prompt:publish"]},{"operationId":"post_prompts_promptId_render","requiresAuth":true,"method":"POST","path":"/api/prompts/{promptId}/render","summary":"Create prompts render","pathParameters":["promptId"],"requiredPathParameters":["promptId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["environment","input"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_prompts_promptId_test","requiresAuth":true,"method":"POST","path":"/api/prompts/{promptId}/test","summary":"Create prompts test","pathParameters":["promptId"],"requiredPathParameters":["promptId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["input","versionId"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_prompts_promptId_versions","requiresAuth":true,"method":"POST","path":"/api/prompts/{promptId}/versions","summary":"Create prompts versions","pathParameters":["promptId"],"requiredPathParameters":["promptId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["definition"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_prompts_promptId_versions_versionId_approve","requiresAuth":true,"method":"POST","path":"/api/prompts/{promptId}/versions/{versionId}/approve","summary":"Create prompts approve","pathParameters":["promptId","versionId"],"requiredPathParameters":["promptId","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedRevision"],"pagination":null,"scopes":["prompt:publish"]},{"operationId":"post_prompts_promptId_versions_versionId_publish","requiresAuth":true,"method":"POST","path":"/api/prompts/{promptId}/versions/{versionId}/publish","summary":"Create prompts publish","pathParameters":["promptId","versionId"],"requiredPathParameters":["promptId","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["environment","expectedBindingRevision","expectedBindingVersionId"],"pagination":null,"scopes":["prompt:publish"]},{"operationId":"post_prompts_promptId_versions_versionId_submit_review","requiresAuth":true,"method":"POST","path":"/api/prompts/{promptId}/versions/{versionId}/submit-review","summary":"Create prompts submit review","pathParameters":["promptId","versionId"],"requiredPathParameters":["promptId","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedRevision"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_controls","requiresAuth":true,"method":"POST","path":"/api/proof/controls","summary":"Create proof controls","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["requirementText","title"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_proof_controls_controlId_evidence","requiresAuth":true,"method":"POST","path":"/api/proof/controls/{controlId}/evidence","summary":"Create proof evidence","pathParameters":["controlId"],"requiredPathParameters":["controlId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["captureKind"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_proof_controls_controlId_prepare_engagement","requiresAuth":true,"method":"POST","path":"/api/proof/controls/{controlId}/prepare-engagement","summary":"Create proof prepare engagement","pathParameters":["controlId"],"requiredPathParameters":["controlId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["periodEnd","periodStart","preparerUserId","reviewerUserId"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_proof_controls_controlId_safeguards","requiresAuth":true,"method":"POST","path":"/api/proof/controls/{controlId}/safeguards","summary":"Create proof safeguards","pathParameters":["controlId"],"requiredPathParameters":["controlId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["kind","scopeNote","supportsCriterion"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_proof_guest_evidence_token","requiresAuth":true,"method":"POST","path":"/api/proof/guest/evidence/{token}","summary":"Create proof token","pathParameters":["token"],"requiredPathParameters":["token"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["artifact","explanation","relationshipRationale"],"pagination":null,"scopes":[]},{"operationId":"post_proof_risks_and_controls_controls","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/controls","summary":"Create proof controls","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["intendedBehavior","reviewerUserId","title"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_risks_and_controls_controls_controlId_evidence_requests","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/controls/{controlId}/evidence-requests","summary":"Create proof evidence requests","pathParameters":["controlId"],"requiredPathParameters":["controlId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["criterion","ownerUserId","periodLabel","requiredArtifacts","reviewerUserId","whyNeeded"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_risks_and_controls_controls_controlId_review","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/controls/{controlId}/review","summary":"Create proof review","pathParameters":["controlId"],"requiredPathParameters":["controlId"],"queryParameters":["kind"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_risks_and_controls_controls_controlId_safeguards","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/controls/{controlId}/safeguards","summary":"Create proof safeguards","pathParameters":["controlId"],"requiredPathParameters":["controlId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["kind","limitations","supportsCriterion","title"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_risks_and_controls_discovery","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/discovery","summary":"Create proof discovery","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["action"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_risks_and_controls_evidence_requests_requestId_submissions","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/evidence-requests/{requestId}/submissions","summary":"Create proof submissions","pathParameters":["requestId"],"requiredPathParameters":["requestId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["explanation","items"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_risks_and_controls_exports","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/exports","summary":"Create proof exports","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["scopeLabel"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_proof_risks_and_controls_guest_invites","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/guest-invites","summary":"Create proof guest invites","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["requestId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_risks_and_controls_links","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/links","summary":"Create proof links","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["controlId","rationale","riskId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_risks_and_controls_profiles","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/profiles","summary":"Create proof profiles","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["action"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_risks_and_controls_risk_acceptances","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/risk-acceptances","summary":"Create proof risk acceptances","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expiresAt","rationale","riskId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_risks_and_controls_risks","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/risks","summary":"Create proof risks","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["consequences","scenario","title"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_risks_and_controls_submissions_submissionId_review","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/submissions/{submissionId}/review","summary":"Create proof review","pathParameters":["submissionId"],"requiredPathParameters":["submissionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedRequestWriteRevision","reviewerNote","status"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_risks_and_controls_tasks","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/tasks","summary":"Create proof tasks","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["assigneeUserId","deliverable","title"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_risks_and_controls_walkthroughs","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/walkthroughs","summary":"Create proof walkthroughs","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["purpose","title"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proof_risks_and_controls_walkthroughs_walkthroughId_notes","requiresAuth":true,"method":"POST","path":"/api/proof/risks-and-controls/walkthroughs/{walkthroughId}/notes","summary":"Create proof notes","pathParameters":["walkthroughId"],"requiredPathParameters":["walkthroughId"],"queryParameters":["action"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proposed_changes_id_approve","requiresAuth":true,"method":"POST","path":"/api/proposed-changes/{id}/approve","summary":"Create proposed changes approve","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedPromptActiveVersionId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proposed_changes_id_export_pr","requiresAuth":true,"method":"POST","path":"/api/proposed-changes/{id}/export-pr","summary":"Create proposed changes export pr","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedPromptActiveVersionId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_proposed_changes_id_reject","requiresAuth":true,"method":"POST","path":"/api/proposed-changes/{id}/reject","summary":"Create proposed changes reject","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedPromptActiveVersionId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_quality","requiresAuth":true,"method":"POST","path":"/api/quality","summary":"Create quality quality","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["runId"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_red_team_attack_cases_generate","requiresAuth":true,"method":"POST","path":"/api/red-team/attack-cases/generate","summary":"Create red team generate","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["category","objective","provider","riskPackVersionId"],"pagination":null,"scopes":["red_team:run"]},{"operationId":"post_red_team_attack_cases_id_review","requiresAuth":true,"method":"POST","path":"/api/red-team/attack-cases/{id}/review","summary":"Create red team review","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["decision","rationale"],"pagination":null,"scopes":["red_team:approve"]},{"operationId":"post_red_team_campaigns","requiresAuth":true,"method":"POST","path":"/api/red-team/campaigns","summary":"Create red team campaigns","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["budget","idempotencyKey","name","riskPackVersionIds","scorers","seed","target","variants"],"pagination":null,"scopes":["red_team:run"]},{"operationId":"post_red_team_campaigns_id_runs","requiresAuth":true,"method":"POST","path":"/api/red-team/campaigns/{id}/runs","summary":"Create red team runs","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["campaignVersionId","idempotencyKey","maxConcurrency","maxCostUsd"],"pagination":null,"scopes":["red_team:run"]},{"operationId":"post_red_team_campaigns_id_versions","requiresAuth":true,"method":"POST","path":"/api/red-team/campaigns/{id}/versions","summary":"Create red team versions","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["budget","riskPackVersionIds","scorers","seed","target","variants"],"pagination":null,"scopes":["red_team:run"]},{"operationId":"post_red_team_campaigns_id_versions_versionId_approve","requiresAuth":true,"method":"POST","path":"/api/red-team/campaigns/{id}/versions/{versionId}/approve","summary":"Create red team approve","pathParameters":["id","versionId"],"requiredPathParameters":["id","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["rationale"],"pagination":null,"scopes":["red_team:approve"]},{"operationId":"post_red_team_findings_id_promote_regression","requiresAuth":true,"method":"POST","path":"/api/red-team/findings/{id}/promote-regression","summary":"Create red team promote regression","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationId","rationale"],"pagination":null,"scopes":["red_team:approve"]},{"operationId":"post_red_team_findings_id_remediation_links","requiresAuth":true,"method":"POST","path":"/api/red-team/findings/{id}/remediation-links","summary":"Create red team remediation links","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evidence","linkType","resourceId","resourceType"],"pagination":null,"scopes":["red_team:approve"]},{"operationId":"post_red_team_findings_id_signed_report","requiresAuth":true,"method":"POST","path":"/api/red-team/findings/{id}/signed-report","summary":"Create red team signed report","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationId","evaluationRunId"],"pagination":null,"scopes":["red_team:approve"]},{"operationId":"post_red_team_findings_id_transition","requiresAuth":true,"method":"POST","path":"/api/red-team/findings/{id}/transition","summary":"Create red team transition","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evidence","rationale","toStatus"],"pagination":null,"scopes":["red_team:approve"]},{"operationId":"post_red_team_observations_bridge_evidence","requiresAuth":true,"method":"POST","path":"/api/red-team/observations/bridge-evidence","summary":"Create red team bridge evidence","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["observationId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_red_team_risk_packs","requiresAuth":true,"method":"POST","path":"/api/red-team/risk-packs","summary":"Create red team risk packs","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["cases","packKey","taxonomy","taxonomyVersion"],"pagination":null,"scopes":["red_team:approve"]},{"operationId":"post_red_team_risk_packs_id_review","requiresAuth":true,"method":"POST","path":"/api/red-team/risk-packs/{id}/review","summary":"Create red team review","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["decision","rationale"],"pagination":null,"scopes":["red_team:approve"]},{"operationId":"post_red_team_runs_id_cancel","requiresAuth":true,"method":"POST","path":"/api/red-team/runs/{id}/cancel","summary":"Create red team cancel","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["rationale"],"pagination":null,"scopes":["red_team:run"]},{"operationId":"post_red_team_runs_id_compare","requiresAuth":true,"method":"POST","path":"/api/red-team/runs/{id}/compare","summary":"Create red team compare","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["candidateRunId"],"pagination":null,"scopes":["red_team:run"]},{"operationId":"post_releases","requiresAuth":true,"method":"POST","path":"/api/releases","summary":"Create releases releases","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["data","operation"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_remote_runners","requiresAuth":true,"method":"POST","path":"/api/remote-runners","summary":"Create remote runners remote runners","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["capabilities","name","runnerKey"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_remote_runners_claim","requiresAuth":true,"method":"POST","path":"/api/remote-runners/claim","summary":"Create remote runners claim","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"post_remote_runners_complete","requiresAuth":true,"method":"POST","path":"/api/remote-runners/complete","summary":"Create remote runners complete","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["claimId","completedAt","completionChecksum","dispatchAttempt","evidence","finalStreamChecksum","inputHash","jobId","organizationId","resultHash","runnerId","status"],"pagination":null,"scopes":[]},{"operationId":"post_remote_runners_heartbeat","requiresAuth":true,"method":"POST","path":"/api/remote-runners/heartbeat","summary":"Create remote runners heartbeat","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["claimId"],"pagination":null,"scopes":[]},{"operationId":"post_remote_runners_id_rotate","requiresAuth":true,"method":"POST","path":"/api/remote-runners/{id}/rotate","summary":"Create remote runners rotate","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_remote_runners_jobs","requiresAuth":true,"method":"POST","path":"/api/remote-runners/jobs","summary":"Create remote runners jobs","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey","input","requirements","subject"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_remote_runners_jobs_jobId_cancel","requiresAuth":true,"method":"POST","path":"/api/remote-runners/jobs/{jobId}/cancel","summary":"Create remote runners cancel","pathParameters":["jobId"],"requiredPathParameters":["jobId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["reason"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_remote_runners_jobs_reap","requiresAuth":true,"method":"POST","path":"/api/remote-runners/jobs/reap","summary":"Create remote runners reap","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"post_remote_runners_session","requiresAuth":false,"method":"POST","path":"/api/remote-runners/session","summary":"Create remote runners session","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["bootstrapToken","runnerId"],"pagination":null,"scopes":[]},{"operationId":"post_remote_runners_stream","requiresAuth":true,"method":"POST","path":"/api/remote-runners/stream","summary":"Create remote runners stream","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["checksum","claimId","dispatchAttempt","emittedAt","jobId","kind","payloadHash","previousChecksum","sequence"],"pagination":null,"scopes":[]},{"operationId":"post_remote_runners_targets","requiresAuth":true,"method":"POST","path":"/api/remote-runners/targets","summary":"Create remote runners targets","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["entrypoint","key","repository","requirements"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_reports","requiresAuth":true,"method":"POST","path":"/api/reports","summary":"Create reports reports","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationId","evaluationRunId"],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_reports_shareToken_revoke","requiresAuth":true,"method":"POST","path":"/api/reports/{shareToken}/revoke","summary":"Create reports revoke","pathParameters":["shareToken"],"requiredPathParameters":["shareToken"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["reports:write"]},{"operationId":"post_repository_intelligence_repositories_repositoryId_baselines","requiresAuth":true,"method":"POST","path":"/api/repository-intelligence/repositories/{repositoryId}/baselines","summary":"Create repository intelligence baselines","pathParameters":["repositoryId"],"requiredPathParameters":["repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":["Idempotency-Key"],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["planHash","scanRunId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_repository_intelligence_repositories_repositoryId_baselines_baselineId_actions","requiresAuth":true,"method":"POST","path":"/api/repository-intelligence/repositories/{repositoryId}/baselines/{baselineId}/actions","summary":"Create repository intelligence actions","pathParameters":["baselineId","repositoryId"],"requiredPathParameters":["baselineId","repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":["Idempotency-Key"],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["actionType"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_repository_intelligence_repositories_repositoryId_baselines_baselineId_runs","requiresAuth":true,"method":"POST","path":"/api/repository-intelligence/repositories/{repositoryId}/baselines/{baselineId}/runs","summary":"Create repository intelligence runs","pathParameters":["baselineId","repositoryId"],"requiredPathParameters":["baselineId","repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":["Idempotency-Key"],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_repository_intelligence_repositories_repositoryId_graph_coverage","requiresAuth":true,"method":"POST","path":"/api/repository-intelligence/repositories/{repositoryId}/graph/coverage","summary":"Create repository intelligence coverage","pathParameters":["repositoryId"],"requiredPathParameters":["repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_repository_intelligence_repositories_repositoryId_graph_impact","requiresAuth":true,"method":"POST","path":"/api/repository-intelligence/repositories/{repositoryId}/graph/impact","summary":"Create repository intelligence impact","pathParameters":["repositoryId"],"requiredPathParameters":["repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["baseGraphVersionId","headGraphVersionId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_repository_intelligence_repositories_repositoryId_graph_objectives","requiresAuth":true,"method":"POST","path":"/api/repository-intelligence/repositories/{repositoryId}/graph/objectives","summary":"Create repository intelligence objectives","pathParameters":["repositoryId"],"requiredPathParameters":["repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["objectives:write"]},{"operationId":"post_repository_intelligence_repositories_repositoryId_graph_risks","requiresAuth":true,"method":"POST","path":"/api/repository-intelligence/repositories/{repositoryId}/graph/risks","summary":"Create repository intelligence risks","pathParameters":["repositoryId"],"requiredPathParameters":["repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_repository_intelligence_repositories_repositoryId_graph_traverse","requiresAuth":true,"method":"POST","path":"/api/repository-intelligence/repositories/{repositoryId}/graph/traverse","summary":"Create repository intelligence traverse","pathParameters":["repositoryId"],"requiredPathParameters":["repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["direction","maxDepth","maxEdges","maxNodes","purpose","relations","startNodeIds"],"pagination":null,"scopes":["eval:read"]},{"operationId":"post_repository_intelligence_repositories_repositoryId_scans","requiresAuth":true,"method":"POST","path":"/api/repository-intelligence/repositories/{repositoryId}/scans","summary":"Create repository intelligence scans","pathParameters":["repositoryId"],"requiredPathParameters":["repositoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["idempotencyKey"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_scorers","requiresAuth":true,"method":"POST","path":"/api/scorers","summary":"Create scorers scorers","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["definition","key","name"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_scorers_scorerId_alignment_runs","requiresAuth":true,"method":"POST","path":"/api/scorers/{scorerId}/alignment-runs","summary":"Create scorers alignment runs","pathParameters":["scorerId"],"requiredPathParameters":["scorerId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["versionId"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_scorers_scorerId_calibration","requiresAuth":true,"method":"POST","path":"/api/scorers/{scorerId}/calibration","summary":"Create scorers calibration","pathParameters":["scorerId"],"requiredPathParameters":["scorerId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["comparabilityStatus","versionId"],"pagination":null,"scopes":["scorer:publish"]},{"operationId":"post_scorers_scorerId_examples","requiresAuth":true,"method":"POST","path":"/api/scorers/{scorerId}/examples","summary":"Create scorers examples","pathParameters":["scorerId"],"requiredPathParameters":["scorerId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["examples"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_scorers_scorerId_test","requiresAuth":true,"method":"POST","path":"/api/scorers/{scorerId}/test","summary":"Create scorers test","pathParameters":["scorerId"],"requiredPathParameters":["scorerId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["input","resourceId","versionId"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_scorers_scorerId_versions","requiresAuth":true,"method":"POST","path":"/api/scorers/{scorerId}/versions","summary":"Create scorers versions","pathParameters":["scorerId"],"requiredPathParameters":["scorerId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["definition"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_scorers_scorerId_versions_versionId_approve","requiresAuth":true,"method":"POST","path":"/api/scorers/{scorerId}/versions/{versionId}/approve","summary":"Create scorers approve","pathParameters":["scorerId","versionId"],"requiredPathParameters":["scorerId","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedRevision"],"pagination":null,"scopes":["scorer:publish"]},{"operationId":"post_scorers_scorerId_versions_versionId_bindings","requiresAuth":true,"method":"POST","path":"/api/scorers/{scorerId}/versions/{versionId}/bindings","summary":"Create scorers bindings","pathParameters":["scorerId","versionId"],"requiredPathParameters":["scorerId","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["resourceId","surface"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_scorers_scorerId_versions_versionId_publish","requiresAuth":true,"method":"POST","path":"/api/scorers/{scorerId}/versions/{versionId}/publish","summary":"Create scorers publish","pathParameters":["scorerId","versionId"],"requiredPathParameters":["scorerId","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["environment","expectedBindingRevision","expectedBindingVersionId"],"pagination":null,"scopes":["scorer:publish"]},{"operationId":"post_scorers_scorerId_versions_versionId_submit_review","requiresAuth":true,"method":"POST","path":"/api/scorers/{scorerId}/versions/{versionId}/submit-review","summary":"Create scorers submit review","pathParameters":["scorerId","versionId"],"requiredPathParameters":["scorerId","versionId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedRevision"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_shadow_evals","requiresAuth":true,"method":"POST","path":"/api/shadow-evals","summary":"Create shadow evals shadow evals","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationId","traceIds"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_stream","requiresAuth":true,"method":"POST","path":"/api/stream","summary":"Create stream stream","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["target","type"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_sync_labeled_cases","requiresAuth":true,"method":"POST","path":"/api/sync/labeled-cases","summary":"Sync local labeled cases into web storage","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["cases","evaluationId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_sync_prompt_version","requiresAuth":true,"method":"POST","path":"/api/sync/prompt-version","summary":"Sync a local prompt edit as a web prompt version","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["content","evaluationId","expectedPromptActiveVersionId","promptId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_sync_run_result","requiresAuth":true,"method":"POST","path":"/api/sync/run-result","summary":"Sync a CLI evaluation run result","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["evaluationId","expectedPromptActiveVersionId","failureMode","mutationFamily","originalContent","patchSummary","promptId","proposedContent","versionId"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_telemetry_test_trace","requiresAuth":true,"method":"POST","path":"/api/telemetry/test-trace","summary":"Create telemetry test trace","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_traces","requiresAuth":true,"method":"POST","path":"/api/traces","summary":"Create traces traces","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_traces_id_feedback","requiresAuth":true,"method":"POST","path":"/api/traces/{id}/feedback","summary":"Create traces feedback","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["feedback_type"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_traces_id_prepare_labeling","requiresAuth":true,"method":"POST","path":"/api/traces/{id}/prepare-labeling","summary":"Create traces prepare labeling","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_traces_id_spans","requiresAuth":true,"method":"POST","path":"/api/traces/{id}/spans","summary":"Create traces spans","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["name"],"pagination":null,"scopes":["traces:write"]},{"operationId":"post_webhooks_git_provider","requiresAuth":false,"method":"POST","path":"/api/webhooks/git-provider","summary":"Create webhooks git provider","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":["X-GitHub-Delivery","X-GitHub-Event","X-Gitlab-Event","X-Gitlab-Event-UUID","X-Gitlab-Token","X-Hub-Signature-256"],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"post_webhooks_github_app","requiresAuth":false,"method":"POST","path":"/api/webhooks/github-app","summary":"Create webhooks github app","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":["X-GitHub-Delivery","X-GitHub-Event","X-Hub-Signature-256"],"requiredHeaderParameters":["X-GitHub-Delivery","X-GitHub-Event","X-Hub-Signature-256"],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"post_workflows","requiresAuth":true,"method":"POST","path":"/api/workflows","summary":"Create workflows workflows","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["definition","name"],"pagination":null,"scopes":["eval:write"]},{"operationId":"post_workflows_id_handoffs","requiresAuth":true,"method":"POST","path":"/api/workflows/{id}/handoffs","summary":"Create workflows handoffs","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["handoffType","toAgent","toSpanId","workflowRunId"],"pagination":null,"scopes":["runs:write"]},{"operationId":"post_workflows_id_runs","requiresAuth":true,"method":"POST","path":"/api/workflows/{id}/runs","summary":"Create workflows runs","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["traceId"],"pagination":null,"scopes":["runs:write"]},{"operationId":"pruneExpiredTrajectoryAnalyses","requiresAuth":true,"method":"POST","path":"/api/trajectory-analysis/retention","summary":"Prune expired trajectory analyses","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"put_annotations_tasks","requiresAuth":true,"method":"PUT","path":"/api/annotations/tasks","summary":"Replace annotations tasks","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"put_annotations_tasks_id_items","requiresAuth":true,"method":"PUT","path":"/api/annotations/tasks/{id}/items","summary":"Replace annotations items","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":["itemId"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"put_costs_alerts","requiresAuth":true,"method":"PUT","path":"/api/costs/alerts","summary":"Replace costs alerts","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"put_costs_result_budget","requiresAuth":true,"method":"PUT","path":"/api/costs/result-budget","summary":"Replace costs result budget","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedRevision","monthlyResultLimit","reason"],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"put_evaluations","requiresAuth":true,"method":"PUT","path":"/api/evaluations","summary":"Replace evaluations evaluations","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id"],"requiredQueryParameters":["id"],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"put_evaluations_id_program","requiresAuth":true,"method":"PUT","path":"/api/evaluations/{id}/program","summary":"Replace evaluations program","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["content"],"pagination":null,"scopes":["eval:write"]},{"operationId":"put_evaluations_id_regression","requiresAuth":true,"method":"PUT","path":"/api/evaluations/{id}/regression","summary":"Replace evaluations regression","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["testCaseIds"],"pagination":null,"scopes":["eval:write"]},{"operationId":"put_evaluations_id_test_cases_testCaseId","requiresAuth":true,"method":"PUT","path":"/api/evaluations/{id}/test-cases/{testCaseId}","summary":"Replace evaluations testCaseId","pathParameters":["id","testCaseId"],"requiredPathParameters":["id","testCaseId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"put_harness_baselines","requiresAuth":true,"method":"PUT","path":"/api/harness/baselines","summary":"Replace harness baselines","pathParameters":[],"requiredPathParameters":[],"queryParameters":["key"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"put_llm_judge_configs","requiresAuth":true,"method":"PUT","path":"/api/llm-judge/configs","summary":"Replace llm judge configs","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"put_organizations","requiresAuth":true,"method":"PUT","path":"/api/organizations","summary":"Replace organizations organizations","pathParameters":[],"requiredPathParameters":[],"queryParameters":["id"],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:org"]},{"operationId":"put_system_controls","requiresAuth":true,"method":"PUT","path":"/api/system/controls","summary":"Replace system controls","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]},{"operationId":"put_workflows_id","requiresAuth":true,"method":"PUT","path":"/api/workflows/{id}","summary":"Replace workflows id","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["eval:write"]},{"operationId":"put_workflows_id_runs_runId","requiresAuth":true,"method":"PUT","path":"/api/workflows/{id}/runs/{runId}","summary":"Replace workflows runId","pathParameters":["id","runId"],"requiredPathParameters":["id","runId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":["runs:write"]},{"operationId":"repairConnectorRoot","requiresAuth":true,"method":"PATCH","path":"/api/connections/graph/{id}","summary":"Repair reviewed canonical bindings and require fresh resource selection","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":false,"requiredBodyProperties":["endpoints","expectedAuthorityEpoch","expectedRevision","idempotencyKey","schemaVersion"],"pagination":null,"scopes":["admin:workspace","resources:read","resources:write"]},{"operationId":"resendOrganizationInvitation","requiresAuth":true,"method":"POST","path":"/api/organizations/invitations/{invitationId}/resend","summary":"Resend an organization invitation","pathParameters":["invitationId"],"requiredPathParameters":["invitationId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:org"]},{"operationId":"reviewAgentCredentialHandoff","requiresAuth":true,"method":"GET","path":"/api/agent-setup/authorize","summary":"Review an agent credential handoff","pathParameters":[],"requiredPathParameters":[],"queryParameters":["claim_attempt_token","user_code"],"requiredQueryParameters":["user_code"],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:keys"]},{"operationId":"revokeOrganizationInvitation","requiresAuth":true,"method":"DELETE","path":"/api/organizations/invitations/{invitationId}","summary":"Revoke an organization invitation","pathParameters":["invitationId"],"requiredPathParameters":["invitationId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:org"]},{"operationId":"runAssertionTestMode","requiresAuth":false,"method":"POST","path":"/api/demo/custom-eval","summary":"Test supplied text with deterministic assertions","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["assertions","output"],"pagination":null,"scopes":[]},{"operationId":"scoreTrajectoryAnalysis","requiresAuth":true,"method":"POST","path":"/api/trajectory-analysis/{trajectoryId}/score","summary":"Score a complete multi-agent trajectory","pathParameters":["trajectoryId"],"requiredPathParameters":["trajectoryId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["ideal"],"pagination":null,"scopes":["runs:write"]},{"operationId":"searchEvalGateDocumentation","requiresAuth":false,"method":"GET","path":"/ask","summary":"Search published EvalGate documentation","pathParameters":[],"requiredPathParameters":[],"queryParameters":["mode","query","streaming"],"requiredQueryParameters":["query"],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["docs:read"]},{"operationId":"selectConnectionResources","requiresAuth":true,"method":"POST","path":"/api/connections/graph/{id}/selection","summary":"Review exact existing resource revisions with concurrency fences","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedAuthorityEpoch","expectedRevision","idempotencyKey","resourceRevisionIds"],"pagination":null,"scopes":["admin:workspace","resources:read","resources:write"]},{"operationId":"setConnectorRootLifecycle","requiresAuth":true,"method":"POST","path":"/api/connections/graph/{id}/lifecycle","summary":"Pause, resume or permanently revoke this configured account root","pathParameters":["id"],"requiredPathParameters":["id"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":["expectedAuthorityEpoch","expectedRevision","idempotencyKey","state"],"pagination":null,"scopes":["admin:workspace","resources:read","resources:write"]},{"operationId":"startAgentCredentialHandoff","requiresAuth":false,"method":"POST","path":"/api/agent-setup/start","summary":"Start a human-approved agent credential handoff","pathParameters":[],"requiredPathParameters":[],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":true,"requestBodyRequired":true,"requiredBodyProperties":[],"pagination":null,"scopes":[]},{"operationId":"unlinkInfisicalVaultCredential","requiresAuth":true,"method":"DELETE","path":"/api/org/credential-vaults/infisical/bindings/{bindingId}","summary":"Unlink a vault-backed provider credential","pathParameters":["bindingId"],"requiredPathParameters":["bindingId"],"queryParameters":[],"requiredQueryParameters":[],"headerParameters":[],"requiredHeaderParameters":[],"requestBodyAllowed":false,"requestBodyRequired":false,"requiredBodyProperties":[],"pagination":null,"scopes":["admin:workspace"]}]
OPERATIONS
  class Client
    # Accept an organization invitation; scopes: public
    def accept_organization_invitation(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("acceptOrganizationInvitation", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOrganizationsInvitationsAcceptResponse200ApplicationJson", response.data)
      response
    end

    # Activate a connected repository; scopes: eval:write
    def activate_repository(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("activateRepository", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOnboardingActivationResponse202ApplicationJson", response.data)
      response
    end

    # Ask for published EvalGate documentation; scopes: docs:read
    def ask_eval_gate_documentation(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("askEvalGateDocumentation", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Backfill bounded canonical connection references; scopes: admin:workspace
    def backfill_connection_metadata(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("backfillConnectionMetadata", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiConnectionsGraphBackfillResponse200ApplicationJson", response.data)
      response
    end

    # Check a vault-backed provider credential; scopes: admin:workspace
    def check_infisical_vault_credential(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("checkInfisicalVaultCredential", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOrgCredentialVaultsInfisicalBindingsBindingIdCheckResponse200ApplicationJson", response.data)
      response
    end

    # Compare hosted and remote trajectories; scopes: runs:read
    def compare_trajectory_analyses(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("compareTrajectoryAnalyses", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiTrajectoryAnalysisCompareResponse200ApplicationJson", response.data)
      response
    end

    # Connect an Infisical vault; scopes: admin:workspace
    def connect_infisical_vault(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("connectInfisicalVault", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOrgCredentialVaultsInfisicalResponse201ApplicationJson", response.data)
      response
    end

    # Create an independent configured account root with canonical references; scopes: admin:workspace
    def create_connector_root(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("createConnectorRoot", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiConnectionsGraphResponse201ApplicationJson", response.data)
      response
    end

    # Create a trajectory evidence report; scopes: reports:write
    def create_trajectory_analysis_report(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("createTrajectoryAnalysisReport", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiTrajectoryAnalysisTrajectoryIdReportsResponse201ApplicationJson", response.data)
      response
    end

    # Approve or deny an agent credential handoff; scopes: admin:keys
    def decide_agent_credential_handoff(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("decideAgentCredentialHandoff", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAgentSetupAuthorizeResponse200ApplicationJson", response.data)
      response
    end

    # Delete annotations tasks; scopes: eval:write
    def delete_annotations_tasks(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_annotations_tasks", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiAnnotationsTasksResponse200ApplicationJson", response.data)
      response
    end

    # Delete annotations tags; scopes: eval:write
    def delete_annotations_tasks_id_items_item_id_tags(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("delete_annotations_tasks_id_items_itemId_tags", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiAnnotationsTasksIdItemsItemIdTagsResponse200ApplicationJson", response.data)
      response
    end

    # Delete benchmarks id; scopes: eval:write
    def delete_benchmarks_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_benchmarks_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiBenchmarksIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete dashboard alert rules id; scopes: reports:write
    def delete_dashboard_alert_rules_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_dashboard_alert_rules_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiDashboardAlertRulesIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete dashboards id; scopes: reports:write
    def delete_dashboards_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_dashboards_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiDashboardsIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete dashboards linkId; scopes: reports:write
    def delete_dashboards_id_shares_link_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_dashboards_id_shares_linkId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiDashboardsIdSharesLinkIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete dashboards widgetKey; scopes: reports:write
    def delete_dashboards_id_widgets_widget_key(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_dashboards_id_widgets_widgetKey", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiDashboardsIdWidgetsWidgetKeyResponse200ApplicationJson", response.data)
      response
    end

    # Delete datasets id; scopes: eval:write
    def delete_datasets_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_datasets_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiDatasetsIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete datasets rowId; scopes: eval:write
    def delete_datasets_id_rows_row_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_datasets_id_rows_rowId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiDatasetsIdRowsRowIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete developer id; scopes: admin:keys
    def delete_developer_api_keys_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_developer_api_keys_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiDeveloperApiKeysIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete developer id; scopes: admin:workspace
    def delete_developer_webhooks_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_developer_webhooks_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiDeveloperWebhooksIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete eval loop workflowId; scopes: eval:write
    def delete_eval_loop_workflows_workflow_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_eval_loop_workflows_workflowId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiEvalLoopWorkflowsWorkflowIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete evaluations evaluations; scopes: eval:write
    def delete_evaluations(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_evaluations", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiEvaluationsResponse200ApplicationJson", response.data)
      response
    end

    # Delete evaluations id; scopes: eval:write
    def delete_evaluations_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_evaluations_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiEvaluationsIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete evaluations artifactId; scopes: eval:write
    def delete_evaluations_id_artifacts_artifact_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_evaluations_id_artifacts_artifactId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiEvaluationsIdArtifactsArtifactIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete evaluations knowledge; scopes: eval:write
    def delete_evaluations_id_knowledge(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_evaluations_id_knowledge", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiEvaluationsIdKnowledgeResponse200ApplicationJson", response.data)
      response
    end

    # Delete evaluations labeled cases; scopes: eval:write
    def delete_evaluations_id_labeled_cases(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("delete_evaluations_id_labeled_cases", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiEvaluationsIdLabeledCasesResponse200ApplicationJson", response.data)
      response
    end

    # Delete evaluations variantId; scopes: eval:write
    def delete_evaluations_id_playground_variants_variant_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_evaluations_id_playground_variants_variantId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiEvaluationsIdPlaygroundVariantsVariantIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete evaluations publish; scopes: eval:write
    def delete_evaluations_id_publish(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_evaluations_id_publish", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiEvaluationsIdPublishResponse200ApplicationJson", response.data)
      response
    end

    # Delete evaluations schedule; scopes: eval:write
    def delete_evaluations_id_schedule(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_evaluations_id_schedule", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiEvaluationsIdScheduleResponse200ApplicationJson", response.data)
      response
    end

    # Delete evaluations test cases; scopes: eval:write
    def delete_evaluations_id_test_cases(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_evaluations_id_test_cases", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiEvaluationsIdTestCasesResponse200ApplicationJson", response.data)
      response
    end

    # Delete evaluations testCaseId; scopes: eval:write
    def delete_evaluations_id_test_cases_test_case_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_evaluations_id_test_cases_testCaseId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiEvaluationsIdTestCasesTestCaseIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete executions executionId; scopes: runs:write
    def delete_executions_execution_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_executions_executionId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiExecutionsExecutionIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete improvement runId; scopes: runs:write
    def delete_improvement_runs_run_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_improvement_runs_runId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiImprovementRunsRunIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete knowledge id; scopes: eval:write
    def delete_knowledge_documents_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_knowledge_documents_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiKnowledgeDocumentsIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete llm judge configs; scopes: eval:write
    def delete_llm_judge_configs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_llm_judge_configs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiLlmJudgeConfigsResponse200ApplicationJson", response.data)
      response
    end

    # Delete logs cohortId; scopes: traces:write
    def delete_logs_cohorts_cohort_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_logs_cohorts_cohortId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiLogsCohortsCohortIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete logs viewId; scopes: traces:write
    def delete_logs_views_view_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_logs_views_viewId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiLogsViewsViewIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete mcp mcp; scopes: public
    def delete_mcp(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_mcp", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiMcpResponse200ApplicationJson", response.data)
      response
    end

    # Delete metric definitions id; scopes: reports:write
    def delete_metric_definitions_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_metric_definitions_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiMetricDefinitionsIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete model gateway id; scopes: admin:workspace
    def delete_model_gateway_configs_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_model_gateway_configs_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("any", response.data)
      response
    end

    # Delete model gateway id; scopes: admin:workspace
    def delete_model_gateway_routing_profiles_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_model_gateway_routing_profiles_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("any", response.data)
      response
    end

    # Delete org keyId; scopes: admin:workspace
    def delete_org_keys_key_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_org_keys_keyId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiOrgKeysKeyIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete organizations organizations; scopes: admin:org
    def delete_organizations(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_organizations", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiOrganizationsResponse200ApplicationJson", response.data)
      response
    end

    # Delete organizations domainId; scopes: admin:org
    def delete_organizations_identity_domains_domain_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_organizations_identity_domains_domainId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiOrganizationsIdentityDomainsDomainIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete organizations providerId; scopes: admin:org
    def delete_organizations_identity_sso_providers_provider_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_organizations_identity_sso_providers_providerId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiOrganizationsIdentitySsoProvidersProviderIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete organizations memberId; scopes: admin:org
    def delete_organizations_members_member_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_organizations_members_memberId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiOrganizationsMembersMemberIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete portable quality executionId; scopes: checks:run
    def delete_portable_quality_checks_execution_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_portable_quality_checks_executionId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiPortableQualityChecksExecutionIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete portable quality grantId; scopes: grants:write
    def delete_portable_quality_grants_grant_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_portable_quality_grants_grantId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiPortableQualityGrantsGrantIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete portable quality resourceId; scopes: resources:write
    def delete_portable_quality_resources_resource_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_portable_quality_resources_resourceId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiPortableQualityResourcesResourceIdResponse202ApplicationJson", response.data)
      response
    end

    # Delete portable quality standardId; scopes: standards:approve
    def delete_portable_quality_standards_standard_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_portable_quality_standards_standardId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiPortableQualityStandardsStandardIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete prompts promptId; scopes: eval:write
    def delete_prompts_prompt_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_prompts_promptId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiPromptsPromptIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete traces traces; scopes: traces:write
    def delete_traces(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_traces", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiTracesResponse200ApplicationJson", response.data)
      response
    end

    # Delete traces id; scopes: traces:write
    def delete_traces_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_traces_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiTracesIdResponse200ApplicationJson", response.data)
      response
    end

    # Delete workflows id; scopes: eval:write
    def delete_workflows_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("delete_workflows_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiWorkflowsIdResponse200ApplicationJson", response.data)
      response
    end

    # Disconnect the Infisical vault; scopes: admin:workspace
    def disconnect_infisical_vault(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("disconnectInfisicalVault", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiOrgCredentialVaultsInfisicalResponse200ApplicationJson", response.data)
      response
    end

    # Discover one bounded native resource page with a reviewed snapshot; scopes: admin:workspace, resources:read
    def discover_connector_resources(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("discoverConnectorResources", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiConnectionsGraphIdDiscoverResponse200ApplicationJson", response.data)
      response
    end

    # Read, search or invoke one currently granted native resource; scopes: admin:workspace, resources:read
    def execute_connector_operation(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("executeConnectorOperation", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiConnectionsGraphIdExecuteResponse200ApplicationJson", response.data)
      response
    end

    # List adjudication items; scopes: eval:read
    def get_adjudication_items(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_adjudication_items", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAdjudicationItemsResponse200ApplicationJson", response.data)
      response
    end

    # Get adjudication id; scopes: eval:read
    def get_adjudication_items_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_adjudication_items_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAdjudicationItemsIdResponse200ApplicationJson", response.data)
      response
    end

    # Get adjudication amendments; scopes: eval:read
    def get_adjudication_items_id_amendments(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_adjudication_items_id_amendments", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAdjudicationItemsIdAmendmentsResponse200ApplicationJson", response.data)
      response
    end

    # Get adjudication comments; scopes: eval:read
    def get_adjudication_items_id_comments(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_adjudication_items_id_comments", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAdjudicationItemsIdCommentsResponse200ApplicationJson", response.data)
      response
    end

    # List adjudication queue summary; scopes: eval:read
    def get_adjudication_queue_summary(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_adjudication_queue_summary", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAdjudicationQueueSummaryResponse200ApplicationJson", response.data)
      response
    end

    # Get the agent evidence overview; scopes: traces:read
    def get_agent_evidence(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_agent_evidence", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAgentEvidenceResponse200ApplicationJson", response.data)
      response
    end

    # List normalized agent evidence records; scopes: traces:read
    def get_agent_evidence_resource(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_agent_evidence_resource", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAgentEvidenceResourceResponse200ApplicationJson", response.data)
      response
    end

    # List agent evidence work pattern templates; scopes: traces:read
    def get_agent_evidence_templates(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_agent_evidence_templates", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAgentEvidenceTemplatesResponse200ApplicationJson", response.data)
      response
    end

    # List annotations annotations; scopes: eval:read
    def get_annotations(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_annotations", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAnnotationsResponse200ApplicationJson", response.data)
      response
    end

    # List annotations routing; scopes: eval:read
    def get_annotations_routing(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_annotations_routing", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAnnotationsRoutingResponse200ApplicationJson", response.data)
      response
    end

    # List annotations tasks; scopes: eval:read
    def get_annotations_tasks(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_annotations_tasks", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAnnotationsTasksResponse200ApplicationJson", response.data)
      response
    end

    # Get annotations id; scopes: eval:read
    def get_annotations_tasks_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_annotations_tasks_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAnnotationsTasksIdResponse200ApplicationJson", response.data)
      response
    end

    # Get annotations items; scopes: eval:read
    def get_annotations_tasks_id_items(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_annotations_tasks_id_items", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAnnotationsTasksIdItemsResponse200ApplicationJson", response.data)
      response
    end

    # Get annotations revisions; scopes: eval:read
    def get_annotations_tasks_id_items_item_id_revisions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_annotations_tasks_id_items_itemId_revisions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAnnotationsTasksIdItemsItemIdRevisionsResponse200ApplicationJson", response.data)
      response
    end

    # Get annotations tags; scopes: eval:read
    def get_annotations_tasks_id_items_item_id_tags(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_annotations_tasks_id_items_itemId_tags", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAnnotationsTasksIdItemsItemIdTagsResponse200ApplicationJson", response.data)
      response
    end

    # List arena leaderboard; scopes: eval:read
    def get_arena_leaderboard(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_arena_leaderboard", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiArenaLeaderboardResponse200ApplicationJson", response.data)
      response
    end

    # List arena matches arena matches; scopes: eval:read
    def get_arena_matches(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_arena_matches", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiArenaMatchesResponse200ApplicationJson", response.data)
      response
    end

    # Get arena matches id; scopes: eval:read
    def get_arena_matches_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_arena_matches_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiArenaMatchesIdResponse200ApplicationJson", response.data)
      response
    end

    # List arena matches leaderboard; scopes: eval:read
    def get_arena_matches_leaderboard(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_arena_matches_leaderboard", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiArenaMatchesLeaderboardResponse200ApplicationJson", response.data)
      response
    end

    # Get arena id; scopes: eval:read
    def get_arena_reviews_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_arena_reviews_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiArenaReviewsIdResponse200ApplicationJson", response.data)
      response
    end

    # Get assessments id; scopes: eval:read
    def get_assessments_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_assessments_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAssessmentsIdResponse200ApplicationJson", response.data)
      response
    end

    # Get assessments runtime evidence; scopes: eval:read
    def get_assessments_id_runtime_evidence(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_assessments_id_runtime_evidence", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAssessmentsIdRuntimeEvidenceResponse200ApplicationJson", response.data)
      response
    end

    # List audit engagements; scopes: eval:read
    def get_audit_engagements(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_audit_engagements", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAuditEngagementsResponse200ApplicationJson", response.data)
      response
    end

    # Get audit id; scopes: eval:read
    def get_audit_engagements_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_audit_engagements_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAuditEngagementsIdResponse200ApplicationJson", response.data)
      response
    end

    # List audit logs audit logs; scopes: admin:workspace
    def get_audit_logs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_audit_logs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAuditLogsResponse200ApplicationJson", response.data)
      response
    end

    # List audit logs export; scopes: admin:workspace
    def get_audit_logs_export(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_audit_logs_export", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAuditLogsExportResponse200ApplicationJson", response.data)
      response
    end

    # List audit candidates; scopes: admin:workspace
    def get_audit_populations_candidates(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_audit_populations_candidates", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAuditPopulationsCandidatesResponse200ApplicationJson", response.data)
      response
    end

    # Get audit items; scopes: eval:read
    def get_audit_populations_id_items(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_audit_populations_id_items", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAuditPopulationsIdItemsResponse200ApplicationJson", response.data)
      response
    end

    # List audit samples; scopes: eval:read
    def get_audit_samples(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_audit_samples", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAuditSamplesResponse200ApplicationJson", response.data)
      response
    end

    # List benchmarks benchmarks; scopes: eval:read
    def get_benchmarks(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_benchmarks", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiBenchmarksResponse200ApplicationJson", response.data)
      response
    end

    # Get benchmarks id; scopes: eval:read
    def get_benchmarks_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_benchmarks_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiBenchmarksIdResponse200ApplicationJson", response.data)
      response
    end

    # Get benchmarks leaderboard; scopes: eval:read
    def get_benchmarks_id_leaderboard(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_benchmarks_id_leaderboard", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiBenchmarksIdLeaderboardResponse200ApplicationJson", response.data)
      response
    end

    # Get benchmarks results; scopes: eval:read
    def get_benchmarks_id_results(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_benchmarks_id_results", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiBenchmarksIdResultsResponse200ApplicationJson", response.data)
      response
    end

    # Get calibration mappingVersionId; scopes: eval:read
    def get_calibration_mappings_mapping_version_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_calibration_mappings_mappingVersionId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCalibrationMappingsMappingVersionIdResponse200ApplicationJson", response.data)
      response
    end

    # Get calibration diff; scopes: eval:read
    def get_calibration_mappings_mapping_version_id_diff(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_calibration_mappings_mappingVersionId_diff", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCalibrationMappingsMappingVersionIdDiffResponse200ApplicationJson", response.data)
      response
    end

    # List calibration release gates; scopes: eval:read
    def get_calibration_release_gates(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_calibration_release_gates", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCalibrationReleaseGatesResponse200ApplicationJson", response.data)
      response
    end

    # List calibration workspace; scopes: eval:read
    def get_calibration_workspace(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_calibration_workspace", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCalibrationWorkspaceResponse200ApplicationJson", response.data)
      response
    end

    # List campaigns campaigns; scopes: eval:read
    def get_campaigns(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_campaigns", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCampaignsResponse200ApplicationJson", response.data)
      response
    end

    # Get campaigns id; scopes: eval:read
    def get_campaigns_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_campaigns_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCampaignsIdResponse200ApplicationJson", response.data)
      response
    end

    # List candidates candidates; scopes: eval:read
    def get_candidates(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_candidates", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCandidatesResponse200ApplicationJson", response.data)
      response
    end

    # Get candidates id; scopes: eval:read
    def get_candidates_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_candidates_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCandidatesIdResponse200ApplicationJson", response.data)
      response
    end

    # List change assessments change assessments; scopes: eval:read
    def get_change_assessments(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_change_assessments", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiChangeAssessmentsResponse200ApplicationJson", response.data)
      response
    end

    # Get change assessments id; scopes: eval:read
    def get_change_assessments_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_change_assessments_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiChangeAssessmentsIdResponse200ApplicationJson", response.data)
      response
    end

    # Get change assessments qualification; scopes: eval:read
    def get_change_assessments_id_qualification(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_change_assessments_id_qualification", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiChangeAssessmentsIdQualificationResponse200ApplicationJson", response.data)
      response
    end

    # List command search; scopes: eval:read
    def get_command_search(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_command_search", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCommandSearchResponse200ApplicationJson", response.data)
      response
    end

    # List copilot proposals; scopes: eval:read
    def get_copilot_proposals(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_copilot_proposals", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCopilotProposalsResponse200ApplicationJson", response.data)
      response
    end

    # Get copilot id; scopes: eval:read
    def get_copilot_proposals_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_copilot_proposals_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCopilotProposalsIdResponse200ApplicationJson", response.data)
      response
    end

    # List copilot threads; scopes: eval:read
    def get_copilot_threads(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_copilot_threads", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCopilotThreadsResponse200ApplicationJson", response.data)
      response
    end

    # Get copilot id; scopes: eval:read
    def get_copilot_threads_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_copilot_threads_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCopilotThreadsIdResponse200ApplicationJson", response.data)
      response
    end

    # Get copilot messages; scopes: eval:read
    def get_copilot_threads_id_messages(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_copilot_threads_id_messages", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCopilotThreadsIdMessagesResponse200ApplicationJson", response.data)
      response
    end

    # List costs costs; scopes: traces:read
    def get_costs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_costs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCostsResponse200ApplicationJson", response.data)
      response
    end

    # List costs alerts; scopes: traces:read
    def get_costs_alerts(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_costs_alerts", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCostsAlertsResponse200ApplicationJson", response.data)
      response
    end

    # List costs pricing; scopes: public
    def get_costs_pricing(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_costs_pricing", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCostsPricingResponse200ApplicationJson", response.data)
      response
    end

    # List costs result budget; scopes: traces:read
    def get_costs_result_budget(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_costs_result_budget", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCostsResultBudgetResponse200ApplicationJson", response.data)
      response
    end

    # List costs trends; scopes: traces:read
    def get_costs_trends(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_costs_trends", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiCostsTrendsResponse200ApplicationJson", response.data)
      response
    end

    # List dashboard alert rules dashboard alert rules; scopes: eval:read
    def get_dashboard_alert_rules(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_dashboard_alert_rules", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDashboardAlertRulesResponse200ApplicationJson", response.data)
      response
    end

    # Get dashboard alert rules id; scopes: eval:read
    def get_dashboard_alert_rules_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_dashboard_alert_rules_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDashboardAlertRulesIdResponse200ApplicationJson", response.data)
      response
    end

    # Get dashboard alert rules events; scopes: eval:read
    def get_dashboard_alert_rules_id_events(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_dashboard_alert_rules_id_events", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDashboardAlertRulesIdEventsResponse200ApplicationJson", response.data)
      response
    end

    # Get dashboard shares token; scopes: eval:read
    def get_dashboard_shares_token(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_dashboard_shares_token", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDashboardSharesTokenResponse200ApplicationJson", response.data)
      response
    end

    # List dashboards dashboards; scopes: eval:read
    def get_dashboards(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_dashboards", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDashboardsResponse200ApplicationJson", response.data)
      response
    end

    # Get dashboards id; scopes: eval:read
    def get_dashboards_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_dashboards_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDashboardsIdResponse200ApplicationJson", response.data)
      response
    end

    # List datasets datasets; scopes: eval:read
    def get_datasets(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_datasets", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDatasetsResponse200ApplicationJson", response.data)
      response
    end

    # Get datasets id; scopes: eval:read
    def get_datasets_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_datasets_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDatasetsIdResponse200ApplicationJson", response.data)
      response
    end

    # Get datasets health; scopes: eval:read
    def get_datasets_id_health(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_datasets_id_health", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDatasetsIdHealthResponse200ApplicationJson", response.data)
      response
    end

    # Get datasets rows; scopes: eval:read
    def get_datasets_id_rows(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_datasets_id_rows", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDatasetsIdRowsResponse200ApplicationJson", response.data)
      response
    end

    # Get datasets rowId; scopes: eval:read
    def get_datasets_id_rows_row_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_datasets_id_rows_rowId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDatasetsIdRowsRowIdResponse200ApplicationJson", response.data)
      response
    end

    # Get datasets versions; scopes: eval:read
    def get_datasets_id_versions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_datasets_id_versions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDatasetsIdVersionsResponse200ApplicationJson", response.data)
      response
    end

    # Get datasets diff; scopes: eval:read
    def get_datasets_id_versions_version_id_diff(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_datasets_id_versions_versionId_diff", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDatasetsIdVersionsVersionIdDiffResponse200ApplicationJson", response.data)
      response
    end

    # List decisions decisions; scopes: traces:read
    def get_decisions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_decisions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDecisionsResponse200ApplicationJson", response.data)
      response
    end

    # List decisions stats; scopes: traces:read
    def get_decisions_stats(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_decisions_stats", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDecisionsStatsResponse200ApplicationJson", response.data)
      response
    end

    # List deployable assets deployable assets; scopes: runs:read
    def get_deployable_assets(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_deployable_assets", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDeployableAssetsResponse200ApplicationJson", response.data)
      response
    end

    # List developer api keys; scopes: admin:keys
    def get_developer_api_keys(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_developer_api_keys", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDeveloperApiKeysResponse200ApplicationJson", response.data)
      response
    end

    # Get developer usage; scopes: admin:keys
    def get_developer_api_keys_id_usage(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_developer_api_keys_id_usage", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDeveloperApiKeysIdUsageResponse200ApplicationJson", response.data)
      response
    end

    # List developer validate; scopes: public
    def get_developer_api_keys_validate(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_developer_api_keys_validate", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDeveloperApiKeysValidateResponse200ApplicationJson", response.data)
      response
    end

    # List developer usage; scopes: admin:keys
    def get_developer_usage(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_developer_usage", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDeveloperUsageResponse200ApplicationJson", response.data)
      response
    end

    # List developer summary; scopes: admin:keys
    def get_developer_usage_summary(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_developer_usage_summary", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDeveloperUsageSummaryResponse200ApplicationJson", response.data)
      response
    end

    # List developer webhooks; scopes: admin:workspace
    def get_developer_webhooks(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_developer_webhooks", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDeveloperWebhooksResponse200ApplicationJson", response.data)
      response
    end

    # Get developer id; scopes: admin:workspace
    def get_developer_webhooks_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_developer_webhooks_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDeveloperWebhooksIdResponse200ApplicationJson", response.data)
      response
    end

    # Get developer deliveries; scopes: admin:workspace
    def get_developer_webhooks_id_deliveries(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_developer_webhooks_id_deliveries", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDeveloperWebhooksIdDeliveriesResponse200ApplicationJson", response.data)
      response
    end

    # List drift alerts; scopes: eval:read
    def get_drift_alerts(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_drift_alerts", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDriftAlertsResponse200ApplicationJson", response.data)
      response
    end

    # List eval loop summary; scopes: eval:read
    def get_eval_loop_summary(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_eval_loop_summary", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvalLoopSummaryResponse200ApplicationJson", response.data)
      response
    end

    # Get eval loop workflowId; scopes: eval:read
    def get_eval_loop_workflows_workflow_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_eval_loop_workflows_workflowId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvalLoopWorkflowsWorkflowIdResponse200ApplicationJson", response.data)
      response
    end

    # Get eval loop suggestions; scopes: eval:read
    def get_eval_loop_workflows_workflow_id_suggestions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_eval_loop_workflows_workflowId_suggestions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvalLoopWorkflowsWorkflowIdSuggestionsResponse200ApplicationJson", response.data)
      response
    end

    # List eval packs eval packs; scopes: public
    def get_eval_packs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_eval_packs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvalPacksResponse200ApplicationJson", response.data)
      response
    end

    # List eval packs installations; scopes: eval:read
    def get_eval_packs_installations(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_eval_packs_installations", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvalPacksInstallationsResponse200ApplicationJson", response.data)
      response
    end

    # Get eval packs installationId; scopes: eval:read
    def get_eval_packs_installations_installation_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_eval_packs_installations_installationId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvalPacksInstallationsInstallationIdResponse200ApplicationJson", response.data)
      response
    end

    # Get eval packs packId; scopes: public
    def get_eval_packs_pack_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_eval_packs_packId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvalPacksPackIdResponse200ApplicationJson", response.data)
      response
    end

    # List evalgate synthesize; scopes: reports:write
    def get_evalgate_synthesize(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evalgate_synthesize", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvalgateSynthesizeResponse200ApplicationJson", response.data)
      response
    end

    # List evals as code applies; scopes: eval:read
    def get_evals_as_code_applies(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evals_as_code_applies", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvalsAsCodeAppliesResponse200ApplicationJson", response.data)
      response
    end

    # Get evals as code id; scopes: eval:read
    def get_evals_as_code_applies_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evals_as_code_applies_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvalsAsCodeAppliesIdResponse200ApplicationJson", response.data)
      response
    end

    # List evals as code drift events; scopes: eval:read
    def get_evals_as_code_drift_events(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evals_as_code_drift_events", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvalsAsCodeDriftEventsResponse200ApplicationJson", response.data)
      response
    end

    # List evals as code manifests; scopes: eval:read
    def get_evals_as_code_manifests(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evals_as_code_manifests", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvalsAsCodeManifestsResponse200ApplicationJson", response.data)
      response
    end

    # Get evals as code id; scopes: eval:read
    def get_evals_as_code_manifests_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evals_as_code_manifests_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvalsAsCodeManifestsIdResponse200ApplicationJson", response.data)
      response
    end

    # Get evals as code versions; scopes: eval:read
    def get_evals_as_code_manifests_id_versions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evals_as_code_manifests_id_versions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvalsAsCodeManifestsIdVersionsResponse200ApplicationJson", response.data)
      response
    end

    # List evaluation templates evaluation templates; scopes: public
    def get_evaluation_templates(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluation_templates", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationTemplatesResponse200ApplicationJson", response.data)
      response
    end

    # List evaluations evaluations; scopes: eval:read
    def get_evaluations(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations id; scopes: eval:read
    def get_evaluations_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations agent workflows; scopes: eval:read
    def get_evaluations_id_agent_workflows(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_agent_workflows", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdAgentWorkflowsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations alerts; scopes: eval:read
    def get_evaluations_id_alerts(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_alerts", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdAlertsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations artifacts; scopes: eval:read
    def get_evaluations_id_artifacts(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_artifacts", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdArtifactsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations auto readiness; scopes: eval:read
    def get_evaluations_id_auto_readiness(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_auto_readiness", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdAutoReadinessResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations auto sessions; scopes: eval:read
    def get_evaluations_id_auto_sessions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_auto_sessions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdAutoSessionsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations anti gaming; scopes: eval:read
    def get_evaluations_id_auto_sessions_session_id_anti_gaming(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_auto_sessions_sessionId_anti_gaming", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdAutoSessionsSessionIdAntiGamingResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations experiments; scopes: eval:read
    def get_evaluations_id_auto_sessions_session_id_experiments(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_auto_sessions_sessionId_experiments", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdAutoSessionsSessionIdExperimentsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations compare; scopes: eval:read
    def get_evaluations_id_auto_sessions_session_id_experiments_compare(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_auto_sessions_sessionId_experiments_compare", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdAutoSessionsSessionIdExperimentsCompareResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations ikb; scopes: eval:read
    def get_evaluations_id_auto_sessions_session_id_ikb(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_auto_sessions_sessionId_ikb", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdAutoSessionsSessionIdIkbResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations ledger; scopes: eval:read
    def get_evaluations_id_auto_sessions_session_id_ledger(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_auto_sessions_sessionId_ledger", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdAutoSessionsSessionIdLedgerResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations rounds; scopes: eval:read
    def get_evaluations_id_auto_sessions_session_id_rounds(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_auto_sessions_sessionId_rounds", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdAutoSessionsSessionIdRoundsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations status; scopes: eval:read
    def get_evaluations_id_auto_sessions_session_id_status(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_auto_sessions_sessionId_status", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdAutoSessionsSessionIdStatusResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations calibration; scopes: eval:read
    def get_evaluations_id_calibration(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_calibration", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdCalibrationResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations dataset bindings; scopes: eval:read
    def get_evaluations_id_dataset_bindings(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_dataset_bindings", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdDatasetBindingsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations audit; scopes: eval:read
    def get_evaluations_id_failure_memory_audit(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_failure_memory_audit", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdFailureMemoryAuditResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations search; scopes: eval:read
    def get_evaluations_id_failure_memory_search(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_failure_memory_search", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdFailureMemorySearchResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations human review; scopes: runs:read
    def get_evaluations_id_human_review(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_human_review", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdHumanReviewResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations integrity; scopes: runs:read
    def get_evaluations_id_integrity(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_integrity", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdIntegrityResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations knowledge; scopes: eval:read
    def get_evaluations_id_knowledge(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_knowledge", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdKnowledgeResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations health; scopes: eval:read
    def get_evaluations_id_knowledge_health(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_knowledge_health", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdKnowledgeHealthResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations hintId; scopes: eval:read
    def get_evaluations_id_knowledge_hint_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_knowledge_hintId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdKnowledgeHintIdResponse200ApplicationJson", response.data)
      response
    end

    # List labeled cases for an evaluation; scopes: eval:read
    def get_evaluations_id_labeled_cases(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_labeled_cases", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdLabeledCasesResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations metrics; scopes: eval:read
    def get_evaluations_id_metrics(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_metrics", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdMetricsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations playground; scopes: eval:read
    def get_evaluations_id_playground(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_playground", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdPlaygroundResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations export; scopes: eval:read
    def get_evaluations_id_playground_export(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_playground_export", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdPlaygroundExportResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations proposals; scopes: eval:read
    def get_evaluations_id_playground_proposals(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_playground_proposals", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdPlaygroundProposalsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations runs; scopes: eval:read
    def get_evaluations_id_playground_runs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_playground_runs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdPlaygroundRunsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations variants; scopes: eval:read
    def get_evaluations_id_playground_variants(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_playground_variants", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdPlaygroundVariantsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations variantId; scopes: eval:read
    def get_evaluations_id_playground_variants_variant_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_playground_variants_variantId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdPlaygroundVariantsVariantIdResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations winner; scopes: eval:read
    def get_evaluations_id_playground_winner(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_playground_winner", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdPlaygroundWinnerResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations program; scopes: eval:read
    def get_evaluations_id_program(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_program", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdProgramResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations prompts; scopes: eval:read
    def get_evaluations_id_prompts(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_prompts", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdPromptsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations active; scopes: eval:read
    def get_evaluations_id_prompts_prompt_id_active(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_prompts_promptId_active", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdPromptsPromptIdActiveResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations versions; scopes: eval:read
    def get_evaluations_id_prompts_prompt_id_versions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_prompts_promptId_versions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdPromptsPromptIdVersionsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations proposed changes; scopes: eval:read
    def get_evaluations_id_proposed_changes(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_proposed_changes", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdProposedChangesResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations report; scopes: eval:read
    def get_evaluations_id_report(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_report", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdReportResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations runs; scopes: runs:read
    def get_evaluations_id_runs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_runs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdRunsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations runId; scopes: runs:read
    def get_evaluations_id_runs_run_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_runs_runId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdRunsRunIdResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations dataset snapshots; scopes: runs:read
    def get_evaluations_id_runs_run_id_dataset_snapshots(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_runs_runId_dataset_snapshots", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdRunsRunIdDatasetSnapshotsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations compareRunId; scopes: eval:read
    def get_evaluations_id_runs_run_id_diff_compare_run_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_runs_runId_diff_compareRunId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdRunsRunIdDiffCompareRunIdResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations export; scopes: runs:read
    def get_evaluations_id_runs_run_id_export(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_runs_runId_export", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdRunsRunIdExportResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations progress; scopes: runs:read
    def get_evaluations_id_runs_run_id_progress(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_runs_runId_progress", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdRunsRunIdProgressResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations schedule; scopes: eval:read
    def get_evaluations_id_schedule(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_schedule", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdScheduleResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations synthetic candidates; scopes: eval:read
    def get_evaluations_id_synthetic_candidates(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_synthetic_candidates", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdSyntheticCandidatesResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations test cases; scopes: eval:read
    def get_evaluations_id_test_cases(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_test_cases", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdTestCasesResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluations versions; scopes: eval:read
    def get_evaluations_id_versions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluations_id_versions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluationsIdVersionsResponse200ApplicationJson", response.data)
      response
    end

    # List evaluator validation releases; scopes: eval:read
    def get_evaluator_validation_releases(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluator_validation_releases", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluatorValidationReleasesResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluator validation id; scopes: eval:read
    def get_evaluator_validation_releases_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluator_validation_releases_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluatorValidationReleasesIdResponse200ApplicationJson", response.data)
      response
    end

    # List evaluator validation runs; scopes: eval:read
    def get_evaluator_validation_runs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluator_validation_runs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluatorValidationRunsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluator validation id; scopes: eval:read
    def get_evaluator_validation_runs_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluator_validation_runs_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluatorValidationRunsIdResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluator validation metrics; scopes: eval:read
    def get_evaluator_validation_runs_id_metrics(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluator_validation_runs_id_metrics", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluatorValidationRunsIdMetricsResponse200ApplicationJson", response.data)
      response
    end

    # Get evaluator validation observations; scopes: eval:read
    def get_evaluator_validation_runs_id_observations(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_evaluator_validation_runs_id_observations", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiEvaluatorValidationRunsIdObservationsResponse200ApplicationJson", response.data)
      response
    end

    # List execution state sessions; scopes: runs:read
    def get_execution_state_sessions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_execution_state_sessions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExecutionStateSessionsResponse200ApplicationJson", response.data)
      response
    end

    # Get execution state sessionId; scopes: runs:read
    def get_execution_state_sessions_session_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_execution_state_sessions_sessionId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExecutionStateSessionsSessionIdResponse200ApplicationJson", response.data)
      response
    end

    # Get execution state events; scopes: runs:read
    def get_execution_state_sessions_session_id_events(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_execution_state_sessions_sessionId_events", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExecutionStateSessionsSessionIdEventsResponse200ApplicationJson", response.data)
      response
    end

    # Get execution state snapshot; scopes: runs:read
    def get_execution_state_sessions_session_id_snapshot(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_execution_state_sessions_sessionId_snapshot", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExecutionStateSessionsSessionIdSnapshotResponse200ApplicationJson", response.data)
      response
    end

    # Get execution state snapshots; scopes: runs:read
    def get_execution_state_sessions_session_id_snapshots(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_execution_state_sessions_sessionId_snapshots", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExecutionStateSessionsSessionIdSnapshotsResponse200ApplicationJson", response.data)
      response
    end

    # Get execution state snapshotId; scopes: runs:read
    def get_execution_state_snapshots_snapshot_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_execution_state_snapshots_snapshotId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExecutionStateSnapshotsSnapshotIdResponse200ApplicationJson", response.data)
      response
    end

    # List executions executions; scopes: runs:read
    def get_executions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_executions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExecutionsResponse200ApplicationJson", response.data)
      response
    end

    # Get executions executionId; scopes: runs:read
    def get_executions_execution_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_executions_executionId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExecutionsExecutionIdResponse200ApplicationJson", response.data)
      response
    end

    # Get executions lineage; scopes: runs:read
    def get_executions_execution_id_lineage(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_executions_executionId_lineage", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExecutionsExecutionIdLineageResponse200ApplicationJson", response.data)
      response
    end

    # List experiments experiments; scopes: eval:read
    def get_experiments(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_experiments", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExperimentsResponse200ApplicationJson", response.data)
      response
    end

    # Get experiments id; scopes: eval:read
    def get_experiments_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_experiments_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExperimentsIdResponse200ApplicationJson", response.data)
      response
    end

    # Get experiments compare; scopes: runs:read
    def get_experiments_id_compare(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_experiments_id_compare", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExperimentsIdCompareResponse200ApplicationJson", response.data)
      response
    end

    # Get experiments progress; scopes: runs:read
    def get_experiments_id_progress(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_experiments_id_progress", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExperimentsIdProgressResponse200ApplicationJson", response.data)
      response
    end

    # Get experiments results; scopes: runs:read
    def get_experiments_id_results(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_experiments_id_results", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExperimentsIdResultsResponse200ApplicationJson", response.data)
      response
    end

    # Get exports shareId; scopes: public
    def get_exports_share_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_exports_shareId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiExportsShareIdResponse200ApplicationJson", response.data)
      response
    end

    # List golden release config; scopes: public
    def get_golden_release_config(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_golden_release_config", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiGoldenReleaseConfigResponse200ApplicationJson", response.data)
      response
    end

    # List golden release summary; scopes: eval:read
    def get_golden_release_summary(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_golden_release_summary", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiGoldenReleaseSummaryResponse200ApplicationJson", response.data)
      response
    end

    # List harness baselines; scopes: runs:read
    def get_harness_baselines(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_harness_baselines", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiHarnessBaselinesResponse200ApplicationJson", response.data)
      response
    end

    # List harness schedules; scopes: eval:read
    def get_harness_schedules(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_harness_schedules", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiHarnessSchedulesResponse200ApplicationJson", response.data)
      response
    end

    # List identity me; scopes: public
    def get_identity_me(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_identity_me", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiIdentityMeResponse200ApplicationJson", response.data)
      response
    end

    # Get improvement attempts; scopes: runs:read
    def get_improvement_candidates_candidate_id_attempts(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_candidates_candidateId_attempts", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementCandidatesCandidateIdAttemptsResponse200ApplicationJson", response.data)
      response
    end

    # Get improvement diff; scopes: admin:workspace
    def get_improvement_candidates_candidate_id_diff(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_candidates_candidateId_diff", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementCandidatesCandidateIdDiffResponse200ApplicationJson", response.data)
      response
    end

    # Get improvement runId; scopes: runs:read
    def get_improvement_confirmation_runs_run_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_confirmation_runs_runId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementConfirmationRunsRunIdResponse200ApplicationJson", response.data)
      response
    end

    # List improvement cycles; scopes: runs:read
    def get_improvement_cycles(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_cycles", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementCyclesResponse200ApplicationJson", response.data)
      response
    end

    # Get improvement cycleId; scopes: runs:read
    def get_improvement_cycles_cycle_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_cycles_cycleId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementCyclesCycleIdResponse200ApplicationJson", response.data)
      response
    end

    # Get improvement candidates; scopes: runs:read
    def get_improvement_cycles_cycle_id_candidates(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_cycles_cycleId_candidates", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementCyclesCycleIdCandidatesResponse200ApplicationJson", response.data)
      response
    end

    # Get improvement confirmation; scopes: runs:read
    def get_improvement_cycles_cycle_id_confirmation(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_cycles_cycleId_confirmation", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementCyclesCycleIdConfirmationResponse200ApplicationJson", response.data)
      response
    end

    # Get improvement contracts; scopes: runs:read
    def get_improvement_cycles_cycle_id_contracts(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_cycles_cycleId_contracts", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementCyclesCycleIdContractsResponse200ApplicationJson", response.data)
      response
    end

    # Get improvement events; scopes: runs:read
    def get_improvement_cycles_cycle_id_events(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_cycles_cycleId_events", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementCyclesCycleIdEventsResponse200ApplicationJson", response.data)
      response
    end

    # Get improvement hypotheses; scopes: runs:read
    def get_improvement_cycles_cycle_id_hypotheses(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_cycles_cycleId_hypotheses", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementCyclesCycleIdHypothesesResponse200ApplicationJson", response.data)
      response
    end

    # Get improvement partitions; scopes: runs:read
    def get_improvement_cycles_cycle_id_partitions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_cycles_cycleId_partitions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementCyclesCycleIdPartitionsResponse200ApplicationJson", response.data)
      response
    end

    # Get improvement runs; scopes: runs:read
    def get_improvement_cycles_cycle_id_runs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_cycles_cycleId_runs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementCyclesCycleIdRunsResponse200ApplicationJson", response.data)
      response
    end

    # Get improvement members; scopes: runs:read
    def get_improvement_partitions_partition_id_members(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_partitions_partitionId_members", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementPartitionsPartitionIdMembersResponse200ApplicationJson", response.data)
      response
    end

    # Get improvement runId; scopes: runs:read
    def get_improvement_runs_run_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_runs_runId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementRunsRunIdResponse200ApplicationJson", response.data)
      response
    end

    # List improvement scenarios; scopes: runs:read
    def get_improvement_scenarios(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_improvement_scenarios", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiImprovementScenariosResponse200ApplicationJson", response.data)
      response
    end

    # List integrations github; scopes: eval:read
    def get_integrations_github(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_integrations_github", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiIntegrationsGithubResponse200ApplicationJson", response.data)
      response
    end

    # List integrations status; scopes: eval:read
    def get_integrations_slack_status(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_integrations_slack_status", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiIntegrationsSlackStatusResponse200ApplicationJson", response.data)
      response
    end

    # List jobs dead; scopes: admin:workspace
    def get_jobs_dead(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_jobs_dead", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiJobsDeadResponse200ApplicationJson", response.data)
      response
    end

    # List journey owned journey owned; scopes: eval:read
    def get_journey_owned(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_journey_owned", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiJourneyOwnedResponse200ApplicationJson", response.data)
      response
    end

    # List judge presets judge presets; scopes: eval:read
    def get_judge_presets(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_judge_presets", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiJudgePresetsResponse200ApplicationJson", response.data)
      response
    end

    # List judges judges; scopes: eval:read
    def get_judges(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_judges", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiJudgesResponse200ApplicationJson", response.data)
      response
    end

    # List knowledge documents; scopes: eval:read
    def get_knowledge_documents(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_knowledge_documents", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiKnowledgeDocumentsResponse200ApplicationJson", response.data)
      response
    end

    # Get knowledge chunks; scopes: eval:read
    def get_knowledge_documents_id_chunks(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_knowledge_documents_id_chunks", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiKnowledgeDocumentsIdChunksResponse200ApplicationJson", response.data)
      response
    end

    # List knowledge draft requirements; scopes: eval:read
    def get_knowledge_draft_requirements(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_knowledge_draft_requirements", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiKnowledgeDraftRequirementsResponse200ApplicationJson", response.data)
      response
    end

    # List knowledge network installations; scopes: eval:read
    def get_knowledge_network_installations(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_knowledge_network_installations", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiKnowledgeNetworkInstallationsResponse200ApplicationJson", response.data)
      response
    end

    # Get knowledge network installationId; scopes: eval:read
    def get_knowledge_network_installations_installation_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_knowledge_network_installations_installationId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiKnowledgeNetworkInstallationsInstallationIdResponse200ApplicationJson", response.data)
      response
    end

    # List knowledge network packages; scopes: eval:read
    def get_knowledge_network_packages(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_knowledge_network_packages", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiKnowledgeNetworkPackagesResponse200ApplicationJson", response.data)
      response
    end

    # Get knowledge network packageId; scopes: eval:read
    def get_knowledge_network_packages_package_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_knowledge_network_packages_packageId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiKnowledgeNetworkPackagesPackageIdResponse200ApplicationJson", response.data)
      response
    end

    # List knowledge search; scopes: eval:read
    def get_knowledge_search(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_knowledge_search", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiKnowledgeSearchResponse200ApplicationJson", response.data)
      response
    end

    # List lineage lineage; scopes: traces:read
    def get_lineage(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_lineage", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLineageResponse200ApplicationJson", response.data)
      response
    end

    # Get lineage runId; scopes: runs:read
    def get_lineage_run_run_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_lineage_run_runId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLineageRunRunIdResponse200ApplicationJson", response.data)
      response
    end

    # Get lineage resultId; scopes: runs:read
    def get_lineage_score_provenance_result_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_lineage_score_provenance_resultId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLineageScoreProvenanceResultIdResponse200ApplicationJson", response.data)
      response
    end

    # Get lineage testCaseId; scopes: runs:read
    def get_lineage_test_case_test_case_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_lineage_test_case_testCaseId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLineageTestCaseTestCaseIdResponse200ApplicationJson", response.data)
      response
    end

    # Get lineage traceId; scopes: runs:read
    def get_lineage_trace_trace_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_lineage_trace_traceId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLineageTraceTraceIdResponse200ApplicationJson", response.data)
      response
    end

    # List llm judge alignment; scopes: eval:read
    def get_llm_judge_alignment(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_llm_judge_alignment", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLlmJudgeAlignmentResponse200ApplicationJson", response.data)
      response
    end

    # List llm judge calibration proposals; scopes: eval:read
    def get_llm_judge_calibration_proposals(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_llm_judge_calibration_proposals", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLlmJudgeCalibrationProposalsResponse200ApplicationJson", response.data)
      response
    end

    # List llm judge configs; scopes: eval:read
    def get_llm_judge_configs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_llm_judge_configs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLlmJudgeConfigsResponse200ApplicationJson", response.data)
      response
    end

    # List llm judge results; scopes: eval:read
    def get_llm_judge_results(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_llm_judge_results", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLlmJudgeResultsResponse200ApplicationJson", response.data)
      response
    end

    # List logs cohorts; scopes: traces:read
    def get_logs_cohorts(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_logs_cohorts", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLogsCohortsResponse200ApplicationJson", response.data)
      response
    end

    # Get logs cohortId; scopes: traces:read
    def get_logs_cohorts_cohort_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_logs_cohorts_cohortId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLogsCohortsCohortIdResponse200ApplicationJson", response.data)
      response
    end

    # List logs traces; scopes: traces:read
    def get_logs_traces(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_logs_traces", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLogsTracesResponse200ApplicationJson", response.data)
      response
    end

    # Get logs traceId; scopes: traces:read
    def get_logs_traces_trace_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_logs_traces_traceId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLogsTracesTraceIdResponse200ApplicationJson", response.data)
      response
    end

    # List logs views; scopes: traces:read
    def get_logs_views(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_logs_views", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLogsViewsResponse200ApplicationJson", response.data)
      response
    end

    # Get logs viewId; scopes: traces:read
    def get_logs_views_view_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_logs_views_viewId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiLogsViewsViewIdResponse200ApplicationJson", response.data)
      response
    end

    # List mcp mcp; scopes: public
    def get_mcp(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_mcp", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiMcpResponse200ApplicationJson", response.data)
      response
    end

    # List mcp tools; scopes: eval:read
    def get_mcp_tools(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_mcp_tools", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiMcpToolsResponse200ApplicationJson", response.data)
      response
    end

    # List me me; scopes: public
    def get_me(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_me", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiMeResponse200ApplicationJson", response.data)
      response
    end

    # List metric definitions metric definitions; scopes: eval:read
    def get_metric_definitions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_metric_definitions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiMetricDefinitionsResponse200ApplicationJson", response.data)
      response
    end

    # Get metric definitions id; scopes: eval:read
    def get_metric_definitions_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_metric_definitions_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiMetricDefinitionsIdResponse200ApplicationJson", response.data)
      response
    end

    # List metrics slo; scopes: admin:workspace
    def get_metrics_slo(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_metrics_slo", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiMetricsSloResponse200ApplicationJson", response.data)
      response
    end

    # List missions missions; scopes: eval:read
    def get_missions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_missions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiMissionsResponse200ApplicationJson", response.data)
      response
    end

    # Get missions missionId; scopes: eval:read
    def get_missions_mission_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_missions_missionId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiMissionsMissionIdResponse200ApplicationJson", response.data)
      response
    end

    # Get missions proposals; scopes: eval:read
    def get_missions_mission_id_proposals(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_missions_missionId_proposals", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiMissionsMissionIdProposalsResponse200ApplicationJson", response.data)
      response
    end

    # Get missions stream; scopes: eval:read
    def get_missions_mission_id_stream(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_missions_missionId_stream", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("any", response.data)
      response
    end

    # List model gateway calls; scopes: eval:read
    def get_model_gateway_calls(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_model_gateway_calls", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiModelGatewayCallsResponse200ApplicationJson", response.data)
      response
    end

    # Get model gateway id; scopes: eval:read
    def get_model_gateway_calls_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_model_gateway_calls_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiModelGatewayCallsIdResponse200ApplicationJson", response.data)
      response
    end

    # List model gateway configs; scopes: eval:read
    def get_model_gateway_configs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_model_gateway_configs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiModelGatewayConfigsResponse200ApplicationJson", response.data)
      response
    end

    # Get model gateway id; scopes: eval:read
    def get_model_gateway_configs_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_model_gateway_configs_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiModelGatewayConfigsIdResponse200ApplicationJson", response.data)
      response
    end

    # List model gateway models; scopes: eval:read
    def get_model_gateway_models(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_model_gateway_models", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiModelGatewayModelsResponse200ApplicationJson", response.data)
      response
    end

    # List model gateway health; scopes: eval:read
    def get_model_gateway_provenance_health(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_model_gateway_provenance_health", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiModelGatewayProvenanceHealthResponse200ApplicationJson", response.data)
      response
    end

    # List model gateway routing profiles; scopes: eval:read
    def get_model_gateway_routing_profiles(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_model_gateway_routing_profiles", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiModelGatewayRoutingProfilesResponse200ApplicationJson", response.data)
      response
    end

    # Get model gateway id; scopes: eval:read
    def get_model_gateway_routing_profiles_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_model_gateway_routing_profiles_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiModelGatewayRoutingProfilesIdResponse200ApplicationJson", response.data)
      response
    end

    # Get model gateway explain; scopes: eval:read
    def get_model_gateway_routing_profiles_id_explain(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_model_gateway_routing_profiles_id_explain", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiModelGatewayRoutingProfilesIdExplainResponse200ApplicationJson", response.data)
      response
    end

    # List notifications notifications; scopes: eval:read
    def get_notifications(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_notifications", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiNotificationsResponse200ApplicationJson", response.data)
      response
    end

    # List onboarding activation; scopes: eval:read
    def get_onboarding_activation(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_onboarding_activation", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOnboardingActivationResponse200ApplicationJson", response.data)
      response
    end

    # List online evals alerts; scopes: eval:read
    def get_online_evals_alerts(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_online_evals_alerts", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOnlineEvalsAlertsResponse200ApplicationJson", response.data)
      response
    end

    # Get online evals id; scopes: eval:read
    def get_online_evals_alerts_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_online_evals_alerts_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOnlineEvalsAlertsIdResponse200ApplicationJson", response.data)
      response
    end

    # Get online evals deliveries; scopes: eval:read
    def get_online_evals_alerts_id_deliveries(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_online_evals_alerts_id_deliveries", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOnlineEvalsAlertsIdDeliveriesResponse200ApplicationJson", response.data)
      response
    end

    # List online evals monitors; scopes: eval:read
    def get_online_evals_monitors(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_online_evals_monitors", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOnlineEvalsMonitorsResponse200ApplicationJson", response.data)
      response
    end

    # Get online evals id; scopes: eval:read
    def get_online_evals_monitors_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_online_evals_monitors_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOnlineEvalsMonitorsIdResponse200ApplicationJson", response.data)
      response
    end

    # Get online evals backfills; scopes: eval:read
    def get_online_evals_monitors_id_backfills(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_online_evals_monitors_id_backfills", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOnlineEvalsMonitorsIdBackfillsResponse200ApplicationJson", response.data)
      response
    end

    # Get online evals candidates; scopes: eval:read
    def get_online_evals_monitors_id_candidates(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_online_evals_monitors_id_candidates", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOnlineEvalsMonitorsIdCandidatesResponse200ApplicationJson", response.data)
      response
    end

    # Get online evals health; scopes: eval:read
    def get_online_evals_monitors_id_health(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_online_evals_monitors_id_health", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOnlineEvalsMonitorsIdHealthResponse200ApplicationJson", response.data)
      response
    end

    # Get online evals runs; scopes: eval:read
    def get_online_evals_monitors_id_runs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_online_evals_monitors_id_runs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOnlineEvalsMonitorsIdRunsResponse200ApplicationJson", response.data)
      response
    end

    # Get online evals topics; scopes: eval:read
    def get_online_evals_monitors_id_topics(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_online_evals_monitors_id_topics", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOnlineEvalsMonitorsIdTopicsResponse200ApplicationJson", response.data)
      response
    end

    # Get online evals versions; scopes: eval:read
    def get_online_evals_monitors_id_versions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_online_evals_monitors_id_versions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOnlineEvalsMonitorsIdVersionsResponse200ApplicationJson", response.data)
      response
    end

    # List online evals samples; scopes: eval:read, traces:read
    def get_online_evals_samples(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_online_evals_samples", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOnlineEvalsSamplesResponse200ApplicationJson", response.data)
      response
    end

    # List ops health; scopes: admin:workspace
    def get_ops_health(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_ops_health", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOpsHealthResponse200ApplicationJson", response.data)
      response
    end

    # List ops reconciliation; scopes: admin:workspace
    def get_ops_reconciliation(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_ops_reconciliation", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOpsReconciliationResponse200ApplicationJson", response.data)
      response
    end

    # List ops slo; scopes: admin:workspace
    def get_ops_slo(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_ops_slo", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOpsSloResponse200ApplicationJson", response.data)
      response
    end

    # Get orchestration evals id; scopes: eval:read
    def get_orchestration_evals_runs_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_orchestration_evals_runs_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOrchestrationEvalsRunsIdResponse200ApplicationJson", response.data)
      response
    end

    # List org keys; scopes: admin:workspace
    def get_org_keys(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_org_keys", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOrgKeysResponse200ApplicationJson", response.data)
      response
    end

    # List org availability; scopes: admin:workspace
    def get_org_keys_availability(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_org_keys_availability", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOrgKeysAvailabilityResponse200ApplicationJson", response.data)
      response
    end

    # Get org keyId; scopes: admin:workspace
    def get_org_keys_key_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_org_keys_keyId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOrgKeysKeyIdResponse200ApplicationJson", response.data)
      response
    end

    # List organizations organizations; scopes: eval:read
    def get_organizations(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_organizations", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOrganizationsResponse200ApplicationJson", response.data)
      response
    end

    # List organizations current; scopes: public
    def get_organizations_current(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_organizations_current", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOrganizationsCurrentResponse200ApplicationJson", response.data)
      response
    end

    # List organizations identity; scopes: admin:org
    def get_organizations_identity(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_organizations_identity", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOrganizationsIdentityResponse200ApplicationJson", response.data)
      response
    end

    # List playgrounds playgrounds; scopes: eval:read
    def get_playgrounds(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_playgrounds", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPlaygroundsResponse200ApplicationJson", response.data)
      response
    end

    # List policies policies; scopes: eval:read
    def get_policies(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_policies", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPoliciesResponse200ApplicationJson", response.data)
      response
    end

    # List portability portability; scopes: exports:download
    def get_portability(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_portability", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPortabilityResponse200ApplicationJson", response.data)
      response
    end

    # Get portability id; scopes: exports:download
    def get_portability_bundles_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_portability_bundles_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPortabilityBundlesIdResponse200ApplicationJson", response.data)
      response
    end

    # Get portability id; scopes: exports:download
    def get_portability_imports_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_portability_imports_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPortabilityImportsIdResponse200ApplicationJson", response.data)
      response
    end

    # List portable quality checks; scopes: checks:read
    def get_portable_quality_checks(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_portable_quality_checks", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPortableQualityChecksResponse200ApplicationJson", response.data)
      response
    end

    # Get portable quality executionId; scopes: checks:read
    def get_portable_quality_checks_execution_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_portable_quality_checks_executionId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPortableQualityChecksExecutionIdResponse200ApplicationJson", response.data)
      response
    end

    # List portable quality contexts; scopes: contexts:read
    def get_portable_quality_contexts(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_portable_quality_contexts", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPortableQualityContextsResponse200ApplicationJson", response.data)
      response
    end

    # Get portable quality resources; scopes: resources:read
    def get_portable_quality_contexts_context_id_resources(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_portable_quality_contexts_contextId_resources", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPortableQualityContextsContextIdResourcesResponse200ApplicationJson", response.data)
      response
    end

    # Get portable quality uploadId; scopes: resources:read
    def get_portable_quality_contexts_context_id_uploads_upload_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_portable_quality_contexts_contextId_uploads_uploadId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPortableQualityContextsContextIdUploadsUploadIdResponse200ApplicationJson", response.data)
      response
    end

    # Get portable quality deliveryId; scopes: standards:read, eval:read
    def get_portable_quality_deliveries_delivery_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_portable_quality_deliveries_deliveryId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPortableQualityDeliveriesDeliveryIdResponse200ApplicationJson", response.data)
      response
    end

    # List portable quality grants; scopes: grants:read
    def get_portable_quality_grants(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_portable_quality_grants", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPortableQualityGrantsResponse200ApplicationJson", response.data)
      response
    end

    # List portable quality plans; scopes: checks:read
    def get_portable_quality_plans(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_portable_quality_plans", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPortableQualityPlansResponse200ApplicationJson", response.data)
      response
    end

    # Get portable quality revisions; scopes: resources:read
    def get_portable_quality_resources_resource_id_revisions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_portable_quality_resources_resourceId_revisions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPortableQualityResourcesResourceIdRevisionsResponse200ApplicationJson", response.data)
      response
    end

    # Get portable quality executionId; scopes: resources:read
    def get_portable_quality_resources_resource_id_revisions_revision_id_query_executions_execution_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_portable_quality_resources_resourceId_revisions_revisionId_query_executions_executionId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPortableQualityResourcesResourceIdRevisionsRevisionIdQueryExecutionsExecutionIdResponse200ApplicationJson", response.data)
      response
    end

    # List production insights summary; scopes: traces:read
    def get_production_insights_summary(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_production_insights_summary", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProductionInsightsSummaryResponse200ApplicationJson", response.data)
      response
    end

    # List production insights topics; scopes: traces:read
    def get_production_insights_topics(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_production_insights_topics", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProductionInsightsTopicsResponse200ApplicationJson", response.data)
      response
    end

    # Get production insights topicId; scopes: traces:read
    def get_production_insights_topics_topic_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_production_insights_topics_topicId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProductionInsightsTopicsTopicIdResponse200ApplicationJson", response.data)
      response
    end

    # Get projects projectKey; scopes: eval:read
    def get_projects_project_key(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_projects_projectKey", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProjectsProjectKeyResponse200ApplicationJson", response.data)
      response
    end

    # List prompts prompts; scopes: eval:read
    def get_prompts(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_prompts", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPromptsResponse200ApplicationJson", response.data)
      response
    end

    # Get prompts promptId; scopes: eval:read
    def get_prompts_prompt_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_prompts_promptId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPromptsPromptIdResponse200ApplicationJson", response.data)
      response
    end

    # Get prompts performance; scopes: eval:read
    def get_prompts_prompt_id_performance(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_prompts_promptId_performance", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPromptsPromptIdPerformanceResponse200ApplicationJson", response.data)
      response
    end

    # Get prompts resolve; scopes: eval:read
    def get_prompts_prompt_id_resolve(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_prompts_promptId_resolve", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPromptsPromptIdResolveResponse200ApplicationJson", response.data)
      response
    end

    # Get prompts usage; scopes: eval:read
    def get_prompts_prompt_id_usage(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_prompts_promptId_usage", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPromptsPromptIdUsageResponse200ApplicationJson", response.data)
      response
    end

    # Get prompts versions; scopes: eval:read
    def get_prompts_prompt_id_versions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_prompts_promptId_versions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPromptsPromptIdVersionsResponse200ApplicationJson", response.data)
      response
    end

    # Get prompts versionId; scopes: eval:read
    def get_prompts_prompt_id_versions_version_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_prompts_promptId_versions_versionId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPromptsPromptIdVersionsVersionIdResponse200ApplicationJson", response.data)
      response
    end

    # Get prompts export; scopes: eval:read
    def get_prompts_prompt_id_versions_version_id_export(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_prompts_promptId_versions_versionId_export", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiPromptsPromptIdVersionsVersionIdExportResponse200ApplicationJson", response.data)
      response
    end

    # List proof controls; scopes: eval:read
    def get_proof_controls(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_proof_controls", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProofControlsResponse200ApplicationJson", response.data)
      response
    end

    # Get proof controlId; scopes: eval:read
    def get_proof_controls_control_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_proof_controls_controlId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProofControlsControlIdResponse200ApplicationJson", response.data)
      response
    end

    # Get proof token; scopes: public
    def get_proof_guest_evidence_token(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_proof_guest_evidence_token", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProofGuestEvidenceTokenResponse200ApplicationJson", response.data)
      response
    end

    # List proof risks and controls; scopes: eval:read
    def get_proof_risks_and_controls(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_proof_risks_and_controls", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProofRisksAndControlsResponse200ApplicationJson", response.data)
      response
    end

    # List proof controls; scopes: eval:read
    def get_proof_risks_and_controls_controls(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_proof_risks_and_controls_controls", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProofRisksAndControlsControlsResponse200ApplicationJson", response.data)
      response
    end

    # Get proof controlId; scopes: eval:read
    def get_proof_risks_and_controls_controls_control_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_proof_risks_and_controls_controls_controlId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProofRisksAndControlsControlsControlIdResponse200ApplicationJson", response.data)
      response
    end

    # Get proof evidence requests; scopes: eval:read
    def get_proof_risks_and_controls_controls_control_id_evidence_requests(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_proof_risks_and_controls_controls_controlId_evidence_requests", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProofRisksAndControlsControlsControlIdEvidenceRequestsResponse200ApplicationJson", response.data)
      response
    end

    # List proof discovery; scopes: eval:read
    def get_proof_risks_and_controls_discovery(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_proof_risks_and_controls_discovery", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProofRisksAndControlsDiscoveryResponse200ApplicationJson", response.data)
      response
    end

    # Get proof requestId; scopes: eval:read
    def get_proof_risks_and_controls_evidence_requests_request_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_proof_risks_and_controls_evidence_requests_requestId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProofRisksAndControlsEvidenceRequestsRequestIdResponse200ApplicationJson", response.data)
      response
    end

    # List proof profiles; scopes: eval:read
    def get_proof_risks_and_controls_profiles(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_proof_risks_and_controls_profiles", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProofRisksAndControlsProfilesResponse200ApplicationJson", response.data)
      response
    end

    # Get proof submissionId; scopes: eval:read
    def get_proof_risks_and_controls_submissions_submission_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_proof_risks_and_controls_submissions_submissionId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProofRisksAndControlsSubmissionsSubmissionIdResponse200ApplicationJson", response.data)
      response
    end

    # Get proof walkthroughId; scopes: eval:read
    def get_proof_risks_and_controls_walkthroughs_walkthrough_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_proof_risks_and_controls_walkthroughs_walkthroughId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProofRisksAndControlsWalkthroughsWalkthroughIdResponse200ApplicationJson", response.data)
      response
    end

    # Get proposed changes id; scopes: eval:read
    def get_proposed_changes_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_proposed_changes_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiProposedChangesIdResponse200ApplicationJson", response.data)
      response
    end

    # List quality quality; scopes: runs:read
    def get_quality(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_quality", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiQualityResponse200ApplicationJson", response.data)
      response
    end

    # List quality spec; scopes: public
    def get_quality_spec(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_quality_spec", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiQualitySpecResponse200ApplicationJson", response.data)
      response
    end

    # Get r shareToken; scopes: public
    def get_r_share_token(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_r_shareToken", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRShareTokenResponse200ApplicationJson", response.data)
      response
    end

    # Get red team id; scopes: red_team:read
    def get_red_team_findings_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_red_team_findings_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRedTeamFindingsIdResponse200ApplicationJson", response.data)
      response
    end

    # List red team risk packs; scopes: red_team:read
    def get_red_team_risk_packs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_red_team_risk_packs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRedTeamRiskPacksResponse200ApplicationJson", response.data)
      response
    end

    # Get red team id; scopes: red_team:read
    def get_red_team_runs_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_red_team_runs_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRedTeamRunsIdResponse200ApplicationJson", response.data)
      response
    end

    # Get red team release evidence; scopes: red_team:read
    def get_red_team_runs_id_release_evidence(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_red_team_runs_id_release_evidence", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRedTeamRunsIdReleaseEvidenceResponse200ApplicationJson", response.data)
      response
    end

    # List red team workspace; scopes: red_team:read
    def get_red_team_workspace(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_red_team_workspace", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRedTeamWorkspaceResponse200ApplicationJson", response.data)
      response
    end

    # List releases releases; scopes: eval:read
    def get_releases(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_releases", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiReleasesResponse200ApplicationJson", response.data)
      response
    end

    # List remote runners remote runners; scopes: runs:read
    def get_remote_runners(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_remote_runners", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRemoteRunnersResponse200ApplicationJson", response.data)
      response
    end

    # Get remote runners id; scopes: runs:read
    def get_remote_runners_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_remote_runners_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRemoteRunnersIdResponse200ApplicationJson", response.data)
      response
    end

    # List remote runners jobs; scopes: runs:read
    def get_remote_runners_jobs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_remote_runners_jobs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRemoteRunnersJobsResponse200ApplicationJson", response.data)
      response
    end

    # Get remote runners jobId; scopes: runs:read
    def get_remote_runners_jobs_job_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_remote_runners_jobs_jobId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRemoteRunnersJobsJobIdResponse200ApplicationJson", response.data)
      response
    end

    # List remote runners targets; scopes: runs:read
    def get_remote_runners_targets(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_remote_runners_targets", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRemoteRunnersTargetsResponse200ApplicationJson", response.data)
      response
    end

    # List report cards report cards; scopes: eval:read
    def get_report_cards(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_report_cards", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiReportCardsResponse200ApplicationJson", response.data)
      response
    end

    # Get report cards evaluationId; scopes: eval:read
    def get_report_cards_evaluation_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_report_cards_evaluationId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiReportCardsEvaluationIdResponse200ApplicationJson", response.data)
      response
    end

    # List reports reports; scopes: runs:read
    def get_reports(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_reports", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiReportsResponse200ApplicationJson", response.data)
      response
    end

    # Get reports verify; scopes: runs:read
    def get_reports_share_token_verify(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_reports_shareToken_verify", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiReportsShareTokenVerifyResponse200ApplicationJson", response.data)
      response
    end

    # List repository intelligence repositories; scopes: eval:read
    def get_repository_intelligence_repositories(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_repository_intelligence_repositories", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRepositoryIntelligenceRepositoriesResponse200ApplicationJson", response.data)
      response
    end

    # Get repository intelligence baselines; scopes: eval:read
    def get_repository_intelligence_repositories_repository_id_baselines(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_repository_intelligence_repositories_repositoryId_baselines", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRepositoryIntelligenceRepositoriesRepositoryIdBaselinesResponse200ApplicationJson", response.data)
      response
    end

    # Get repository intelligence baselineId; scopes: eval:read
    def get_repository_intelligence_repositories_repository_id_baselines_baseline_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_repository_intelligence_repositories_repositoryId_baselines_baselineId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRepositoryIntelligenceRepositoriesRepositoryIdBaselinesBaselineIdResponse200ApplicationJson", response.data)
      response
    end

    # Get repository intelligence evidence; scopes: eval:read
    def get_repository_intelligence_repositories_repository_id_graph_evidence(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_repository_intelligence_repositories_repositoryId_graph_evidence", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRepositoryIntelligenceRepositoriesRepositoryIdGraphEvidenceResponse200ApplicationJson", response.data)
      response
    end

    # Get repository intelligence scenario cases; scopes: eval:read
    def get_repository_intelligence_repositories_repository_id_graph_scenario_cases(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_repository_intelligence_repositories_repositoryId_graph_scenario_cases", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRepositoryIntelligenceRepositoriesRepositoryIdGraphScenarioCasesResponse200ApplicationJson", response.data)
      response
    end

    # Get repository intelligence scans; scopes: eval:read
    def get_repository_intelligence_repositories_repository_id_scans(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_repository_intelligence_repositories_repositoryId_scans", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRepositoryIntelligenceRepositoriesRepositoryIdScansResponse200ApplicationJson", response.data)
      response
    end

    # Get repository intelligence scanRunId; scopes: eval:read
    def get_repository_intelligence_repositories_repository_id_scans_scan_run_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_repository_intelligence_repositories_repositoryId_scans_scanRunId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRepositoryIntelligenceRepositoriesRepositoryIdScansScanRunIdResponse200ApplicationJson", response.data)
      response
    end

    # Get runs judges; scopes: eval:read
    def get_runs_id_cases_case_id_judges(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_runs_id_cases_caseId_judges", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRunsIdCasesCaseIdJudgesResponse200ApplicationJson", response.data)
      response
    end

    # Get runs judges; scopes: eval:read
    def get_runs_id_judges(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_runs_id_judges", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiRunsIdJudgesResponse200ApplicationJson", response.data)
      response
    end

    # List scorers scorers; scopes: eval:read
    def get_scorers(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_scorers", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiScorersResponse200ApplicationJson", response.data)
      response
    end

    # Get scorers scorerId; scopes: eval:read
    def get_scorers_scorer_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_scorers_scorerId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiScorersScorerIdResponse200ApplicationJson", response.data)
      response
    end

    # Get scorers runId; scopes: eval:read
    def get_scorers_scorer_id_alignment_runs_run_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_scorers_scorerId_alignment_runs_runId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiScorersScorerIdAlignmentRunsRunIdResponse200ApplicationJson", response.data)
      response
    end

    # Get scorers usage; scopes: eval:read
    def get_scorers_scorer_id_usage(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_scorers_scorerId_usage", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiScorersScorerIdUsageResponse200ApplicationJson", response.data)
      response
    end

    # Get scorers versions; scopes: eval:read
    def get_scorers_scorer_id_versions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_scorers_scorerId_versions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiScorersScorerIdVersionsResponse200ApplicationJson", response.data)
      response
    end

    # Get scorers versionId; scopes: eval:read
    def get_scorers_scorer_id_versions_version_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_scorers_scorerId_versions_versionId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiScorersScorerIdVersionsVersionIdResponse200ApplicationJson", response.data)
      response
    end

    # List settings scoring; scopes: eval:read
    def get_settings_scoring(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_settings_scoring", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiSettingsScoringResponse200ApplicationJson", response.data)
      response
    end

    # Get shadow evals id; scopes: runs:read
    def get_shadow_evals_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_shadow_evals_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiShadowEvalsIdResponse200ApplicationJson", response.data)
      response
    end

    # List shadow evals stats; scopes: runs:read
    def get_shadow_evals_stats(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_shadow_evals_stats", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiShadowEvalsStatsResponse200ApplicationJson", response.data)
      response
    end

    # List stream stream; scopes: eval:read
    def get_stream(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_stream", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("any", response.data)
      response
    end

    # Get stream evalId; scopes: eval:read
    def get_stream_eval_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_stream_evalId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("any", response.data)
      response
    end

    # Get sync evaluationId; scopes: eval:read
    def get_sync_status_evaluation_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_sync_status_evaluationId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiSyncStatusEvaluationIdResponse200ApplicationJson", response.data)
      response
    end

    # List system controls; scopes: eval:read
    def get_system_controls(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_system_controls", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiSystemControlsResponse200ApplicationJson", response.data)
      response
    end

    # List telemetry setup; scopes: traces:read
    def get_telemetry_setup(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_telemetry_setup", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiTelemetrySetupResponse200ApplicationJson", response.data)
      response
    end

    # List traces traces; scopes: traces:read
    def get_traces(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_traces", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiTracesResponse200ApplicationJson", response.data)
      response
    end

    # Get traces id; scopes: traces:read
    def get_traces_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_traces_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiTracesIdResponse200ApplicationJson", response.data)
      response
    end

    # Get traces spans; scopes: traces:read
    def get_traces_id_spans(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_traces_id_spans", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiTracesIdSpansResponse200ApplicationJson", response.data)
      response
    end

    # List workflows workflows; scopes: eval:read
    def get_workflows(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_workflows", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiWorkflowsResponse200ApplicationJson", response.data)
      response
    end

    # Get workflows id; scopes: eval:read
    def get_workflows_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_workflows_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiWorkflowsIdResponse200ApplicationJson", response.data)
      response
    end

    # Get workflows handoffs; scopes: runs:read
    def get_workflows_id_handoffs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_workflows_id_handoffs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiWorkflowsIdHandoffsResponse200ApplicationJson", response.data)
      response
    end

    # Get workflows runs; scopes: runs:read
    def get_workflows_id_runs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_workflows_id_runs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiWorkflowsIdRunsResponse200ApplicationJson", response.data)
      response
    end

    # Get workflows runId; scopes: runs:read
    def get_workflows_id_runs_run_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("get_workflows_id_runs_runId", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiWorkflowsIdRunsRunIdResponse200ApplicationJson", response.data)
      response
    end

    # Discover the stateless API test mode; scopes: public
    def get_assertion_test_mode(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("getAssertionTestMode", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiDemoCustomEvalResponse200ApplicationJson", response.data)
      response
    end

    # Inspect connector setup availability and unbound blueprints; scopes: eval:read
    def get_connection_catalog(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("getConnectionCatalog", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiConnectionsCatalogResponse200ApplicationJson", response.data)
      response
    end

    # Read a tenant-scoped connection metadata graph; scopes: eval:read
    def get_connection_graph(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("getConnectionGraph", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiConnectionsGraphIdResponse200ApplicationJson", response.data)
      response
    end

    # Recover native operation metadata by the initiating client idempotency key; scopes: admin:workspace, resources:read
    def get_connector_operation_receipt(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("getConnectorOperationReceipt", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiConnectionsGraphIdOperationsOperationIdResponse200ApplicationJson", response.data)
      response
    end

    # Review native connector authority, grants and supported operations; scopes: admin:workspace, resources:read
    def get_connector_runtime_status(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("getConnectorRuntimeStatus", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiConnectionsGraphIdRuntimeResponse200ApplicationJson", response.data)
      response
    end

    # Get the Infisical vault connection; scopes: admin:workspace
    def get_infisical_vault(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("getInfisicalVault", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOrgCredentialVaultsInfisicalResponse200ApplicationJson", response.data)
      response
    end

    # Get a repository activation run; scopes: eval:read
    def get_repository_activation_run(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("getRepositoryActivationRun", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOnboardingActivationRunsActivationRunIdResponse200ApplicationJson", response.data)
      response
    end

    # Get a normalized multi-agent trajectory; scopes: runs:read
    def get_trajectory_analysis(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("getTrajectoryAnalysis", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiTrajectoryAnalysisTrajectoryIdResponse200ApplicationJson", response.data)
      response
    end

    # Review native resource grants from an exact discovery snapshot; scopes: admin:workspace, resources:read, resources:write
    def grant_connector_resources(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("grantConnectorResources", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiConnectionsGraphIdGrantsResponse200ApplicationJson", response.data)
      response
    end

    # Ingest a normalized multi-agent trajectory batch; scopes: runs:write
    def ingest_trajectory_analysis(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("ingestTrajectoryAnalysis", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiTrajectoryAnalysisResponse201ApplicationJson", response.data)
      response
    end

    # Invite an organization member; scopes: admin:org
    def invite_organization_member(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("inviteOrganizationMember", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOrganizationsMembersResponse201ApplicationJson", response.data)
      response
    end

    # Link a model provider to an Infisical secret; scopes: admin:workspace
    def link_infisical_vault_credential(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("linkInfisicalVaultCredential", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOrgCredentialVaultsInfisicalBindingsResponse201ApplicationJson", response.data)
      response
    end

    # List authorized connection metadata across canonical stores; scopes: eval:read
    def list_connections(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("listConnections", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiConnectionsResponse200ApplicationJson", response.data)
      response
    end

    # List nonsecret installed connector environment references for this workspace; scopes: admin:workspace, resources:read
    def list_connector_environments(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("listConnectorEnvironments", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiConnectionsRuntimeEnvironmentsResponse200ApplicationJson", response.data)
      response
    end

    # Page independent account configuration metadata; scopes: admin:workspace
    def list_connector_roots(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("listConnectorRoots", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiConnectionsGraphResponse200ApplicationJson", response.data)
      response
    end

    # List secret names in an Infisical folder; scopes: admin:workspace
    def list_infisical_vault_secrets(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("listInfisicalVaultSecrets", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOrgCredentialVaultsInfisicalSecretsResponse200ApplicationJson", response.data)
      response
    end

    # List organization members and invitations; scopes: eval:read
    def list_organization_members(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("listOrganizationMembers", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiOrganizationsMembersResponse200ApplicationJson", response.data)
      response
    end

    # List normalized multi-agent trajectories; scopes: runs:read
    def list_trajectory_analyses(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("listTrajectoryAnalyses", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiTrajectoryAnalysisResponse200ApplicationJson", response.data)
      response
    end

    # OPTIONS a2a a2a; scopes: agent:read
    def options_a2a(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("options_a2a", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("any", response.data)
      response
    end

    # Update adjudication id; scopes: admin:workspace
    def patch_adjudication_items_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_adjudication_items_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiAdjudicationItemsIdResponse200ApplicationJson", response.data)
      response
    end

    # Approve or reject a human approval request; scopes: admin:workspace
    def patch_agent_evidence_approvals_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_agent_evidence_approvals_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiAgentEvidenceApprovalsIdResponse200ApplicationJson", response.data)
      response
    end

    # Update audit corrective actions; scopes: eval:write
    def patch_audit_corrective_actions(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_audit_corrective_actions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiAuditCorrectiveActionsResponse200ApplicationJson", response.data)
      response
    end

    # Update audit evidence requests; scopes: eval:write
    def patch_audit_evidence_requests(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_audit_evidence_requests", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiAuditEvidenceRequestsResponse200ApplicationJson", response.data)
      response
    end

    # Update candidates id; scopes: eval:write
    def patch_candidates_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_candidates_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiCandidatesIdResponse200ApplicationJson", response.data)
      response
    end

    # Update dashboard alert rules id; scopes: reports:write
    def patch_dashboard_alert_rules_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_dashboard_alert_rules_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiDashboardAlertRulesIdResponse200ApplicationJson", response.data)
      response
    end

    # Update dashboards id; scopes: reports:write
    def patch_dashboards_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_dashboards_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiDashboardsIdResponse200ApplicationJson", response.data)
      response
    end

    # Update dashboards widgetKey; scopes: reports:write
    def patch_dashboards_id_widgets_widget_key(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_dashboards_id_widgets_widgetKey", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiDashboardsIdWidgetsWidgetKeyResponse200ApplicationJson", response.data)
      response
    end

    # Update datasets id; scopes: eval:write
    def patch_datasets_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_datasets_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiDatasetsIdResponse200ApplicationJson", response.data)
      response
    end

    # Update datasets rowId; scopes: eval:write
    def patch_datasets_id_rows_row_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_datasets_id_rows_rowId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiDatasetsIdRowsRowIdResponse200ApplicationJson", response.data)
      response
    end

    # Update deployable assets id; scopes: admin:workspace
    def patch_deployable_assets_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_deployable_assets_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiDeployableAssetsIdResponse200ApplicationJson", response.data)
      response
    end

    # Update developer id; scopes: admin:keys
    def patch_developer_api_keys_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_developer_api_keys_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiDeveloperApiKeysIdResponse200ApplicationJson", response.data)
      response
    end

    # Update developer id; scopes: admin:workspace
    def patch_developer_webhooks_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_developer_webhooks_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiDeveloperWebhooksIdResponse200ApplicationJson", response.data)
      response
    end

    # Update drift id; scopes: eval:write
    def patch_drift_alerts_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("patch_drift_alerts_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiDriftAlertsIdResponse200ApplicationJson", response.data)
      response
    end

    # Update evaluations id; scopes: eval:write
    def patch_evaluations_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_evaluations_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiEvaluationsIdResponse200ApplicationJson", response.data)
      response
    end

    # Update evaluations hintId; scopes: eval:write
    def patch_evaluations_id_knowledge_hint_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_evaluations_id_knowledge_hintId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiEvaluationsIdKnowledgeHintIdResponse200ApplicationJson", response.data)
      response
    end

    # Update evaluations playground; scopes: eval:write
    def patch_evaluations_id_playground(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_evaluations_id_playground", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiEvaluationsIdPlaygroundResponse200ApplicationJson", response.data)
      response
    end

    # Update evaluations variantId; scopes: eval:write
    def patch_evaluations_id_playground_variants_variant_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_evaluations_id_playground_variants_variantId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiEvaluationsIdPlaygroundVariantsVariantIdResponse200ApplicationJson", response.data)
      response
    end

    # Update evaluations schedule; scopes: eval:write
    def patch_evaluations_id_schedule(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_evaluations_id_schedule", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiEvaluationsIdScheduleResponse200ApplicationJson", response.data)
      response
    end

    # Update evaluator validation id; scopes: eval:write
    def patch_evaluator_validation_releases_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_evaluator_validation_releases_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiEvaluatorValidationReleasesIdResponse200ApplicationJson", response.data)
      response
    end

    # Update knowledge draft requirements; scopes: admin:workspace
    def patch_knowledge_draft_requirements(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_knowledge_draft_requirements", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiKnowledgeDraftRequirementsResponse200ApplicationJson", response.data)
      response
    end

    # Update knowledge network installationId; scopes: eval:write
    def patch_knowledge_network_installations_installation_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_knowledge_network_installations_installationId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiKnowledgeNetworkInstallationsInstallationIdResponse200ApplicationJson", response.data)
      response
    end

    # Update logs cohortId; scopes: traces:write
    def patch_logs_cohorts_cohort_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_logs_cohorts_cohortId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiLogsCohortsCohortIdResponse200ApplicationJson", response.data)
      response
    end

    # Update logs viewId; scopes: traces:write
    def patch_logs_views_view_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_logs_views_viewId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiLogsViewsViewIdResponse200ApplicationJson", response.data)
      response
    end

    # Update metric definitions id; scopes: reports:write
    def patch_metric_definitions_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_metric_definitions_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiMetricDefinitionsIdResponse201ApplicationJson", response.data)
      response
    end

    # Update missions proposals; scopes: eval:write
    def patch_missions_mission_id_proposals(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_missions_missionId_proposals", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiMissionsMissionIdProposalsResponse200ApplicationJson", response.data)
      response
    end

    # Update model gateway id; scopes: admin:workspace
    def patch_model_gateway_configs_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_model_gateway_configs_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiModelGatewayConfigsIdResponse200ApplicationJson", response.data)
      response
    end

    # Update model gateway id; scopes: admin:workspace
    def patch_model_gateway_routing_profiles_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_model_gateway_routing_profiles_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiModelGatewayRoutingProfilesIdResponse200ApplicationJson", response.data)
      response
    end

    # Update online evals id; scopes: admin:workspace
    def patch_online_evals_monitors_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_online_evals_monitors_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiOnlineEvalsMonitorsIdResponse200ApplicationJson", response.data)
      response
    end

    # Update org keyId; scopes: admin:workspace
    def patch_org_keys_key_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_org_keys_keyId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiOrgKeysKeyIdResponse200ApplicationJson", response.data)
      response
    end

    # Update organizations policy; scopes: admin:org
    def patch_organizations_identity_policy(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_organizations_identity_policy", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiOrganizationsIdentityPolicyResponse200ApplicationJson", response.data)
      response
    end

    # Update organizations providerId; scopes: admin:org
    def patch_organizations_identity_sso_providers_provider_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_organizations_identity_sso_providers_providerId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiOrganizationsIdentitySsoProvidersProviderIdResponse200ApplicationJson", response.data)
      response
    end

    # Update organizations memberId; scopes: admin:org
    def patch_organizations_members_member_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_organizations_members_memberId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiOrganizationsMembersMemberIdResponse200ApplicationJson", response.data)
      response
    end

    # Update portable quality grantId; scopes: grants:write
    def patch_portable_quality_grants_grant_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_portable_quality_grants_grantId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiPortableQualityGrantsGrantIdResponse200ApplicationJson", response.data)
      response
    end

    # Update portable quality resourceId; scopes: resources:write
    def patch_portable_quality_resources_resource_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_portable_quality_resources_resourceId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiPortableQualityResourcesResourceIdResponse200ApplicationJson", response.data)
      response
    end

    # Update production insights topicId; scopes: traces:write
    def patch_production_insights_topics_topic_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_production_insights_topics_topicId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiProductionInsightsTopicsTopicIdResponse200ApplicationJson", response.data)
      response
    end

    # Update prompts promptId; scopes: eval:write
    def patch_prompts_prompt_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_prompts_promptId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiPromptsPromptIdResponse200ApplicationJson", response.data)
      response
    end

    # Update proof findingId; scopes: eval:write
    def patch_proof_risks_and_controls_findings_finding_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_proof_risks_and_controls_findings_findingId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiProofRisksAndControlsFindingsFindingIdResponse200ApplicationJson", response.data)
      response
    end

    # Update proof guest invites; scopes: eval:write
    def patch_proof_risks_and_controls_guest_invites(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_proof_risks_and_controls_guest_invites", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiProofRisksAndControlsGuestInvitesResponse200ApplicationJson", response.data)
      response
    end

    # Update proof taskId; scopes: eval:write
    def patch_proof_risks_and_controls_tasks_task_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_proof_risks_and_controls_tasks_taskId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiProofRisksAndControlsTasksTaskIdResponse200ApplicationJson", response.data)
      response
    end

    # Update remote runners id; scopes: admin:workspace
    def patch_remote_runners_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_remote_runners_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiRemoteRunnersIdResponse200ApplicationJson", response.data)
      response
    end

    # Update repository intelligence confirm; scopes: objectives:write
    def patch_repository_intelligence_repositories_repository_id_objectives_candidate_id_confirm(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_repository_intelligence_repositories_repositoryId_objectives_candidateId_confirm", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiRepositoryIntelligenceRepositoriesRepositoryIdObjectivesCandidateIdConfirmResponse200ApplicationJson", response.data)
      response
    end

    # Update repository intelligence reject; scopes: objectives:write
    def patch_repository_intelligence_repositories_repository_id_objectives_candidate_id_reject(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_repository_intelligence_repositories_repositoryId_objectives_candidateId_reject", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiRepositoryIntelligenceRepositoriesRepositoryIdObjectivesCandidateIdRejectResponse200ApplicationJson", response.data)
      response
    end

    # Update repository intelligence settings; scopes: eval:write
    def patch_repository_intelligence_repositories_repository_id_settings(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_repository_intelligence_repositories_repositoryId_settings", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiRepositoryIntelligenceRepositoriesRepositoryIdSettingsResponse200ApplicationJson", response.data)
      response
    end

    # Update scorers scorerId; scopes: eval:write
    def patch_scorers_scorer_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_scorers_scorerId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiScorersScorerIdResponse200ApplicationJson", response.data)
      response
    end

    # Update settings scoring; scopes: admin:workspace
    def patch_settings_scoring(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_settings_scoring", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiSettingsScoringResponse200ApplicationJson", response.data)
      response
    end

    # Update traces id; scopes: traces:write
    def patch_traces_id(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("patch_traces_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiTracesIdResponse200ApplicationJson", response.data)
      response
    end

    # Poll a human-approved agent credential handoff; scopes: public
    def poll_agent_credential_handoff(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("pollAgentCredentialHandoff", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create a2a a2a; scopes: agent:read
    def post_a2a(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_a2a", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiA2aResponse200ApplicationJson", response.data)
      response
    end

    # Create adjudication items; scopes: admin:workspace
    def post_adjudication_items(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_adjudication_items", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAdjudicationItemsResponse201ApplicationJson", response.data)
      response
    end

    # Create adjudication activity; scopes: eval:write
    def post_adjudication_items_id_activity(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_adjudication_items_id_activity", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAdjudicationItemsIdActivityResponse200ApplicationJson", response.data)
      response
    end

    # Create adjudication add to calibration; scopes: admin:workspace
    def post_adjudication_items_id_add_to_calibration(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_adjudication_items_id_add_to_calibration", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAdjudicationItemsIdAddToCalibrationResponse200ApplicationJson", response.data)
      response
    end

    # Create adjudication amendments; scopes: admin:workspace
    def post_adjudication_items_id_amendments(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_adjudication_items_id_amendments", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAdjudicationItemsIdAmendmentsResponse201ApplicationJson", response.data)
      response
    end

    # Create adjudication assign; scopes: admin:workspace
    def post_adjudication_items_id_assign(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_adjudication_items_id_assign", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAdjudicationItemsIdAssignResponse200ApplicationJson", response.data)
      response
    end

    # Create adjudication comments; scopes: eval:write
    def post_adjudication_items_id_comments(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_adjudication_items_id_comments", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAdjudicationItemsIdCommentsResponse200ApplicationJson", response.data)
      response
    end

    # Create adjudication decision; scopes: admin:workspace
    def post_adjudication_items_id_decision(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_adjudication_items_id_decision", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAdjudicationItemsIdDecisionResponse200ApplicationJson", response.data)
      response
    end

    # Create adjudication ground truth; scopes: admin:workspace
    def post_adjudication_items_id_ground_truth(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_adjudication_items_id_ground_truth", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAdjudicationItemsIdGroundTruthResponse201ApplicationJson", response.data)
      response
    end

    # Create adjudication prepare; scopes: eval:write, runs:write
    def post_adjudication_items_id_prepare(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_adjudication_items_id_prepare", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create adjudication promote to golden; scopes: admin:workspace
    def post_adjudication_items_id_promote_to_golden(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_adjudication_items_id_promote_to_golden", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAdjudicationItemsIdPromoteToGoldenResponse200ApplicationJson", response.data)
      response
    end

    # Create an agent evidence audit export; scopes: reports:write
    def post_agent_evidence_audit_pack_export(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_agent_evidence_audit_pack_export", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAgentEvidenceAuditPackExportResponse201ApplicationJson", response.data)
      response
    end

    # Audit an OpenAPI or tool connector manifest; scopes: admin:workspace
    def post_agent_evidence_connector_audit(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_agent_evidence_connector_audit", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAgentEvidenceConnectorAuditResponse201ApplicationJson", response.data)
      response
    end

    # Ingest a canonical agent evidence envelope; scopes: traces:write
    def post_agent_evidence_ingest(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_agent_evidence_ingest", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAgentEvidenceIngestResponse200ApplicationJson", response.data)
      response
    end

    # Evaluate an agent evidence policy gate; scopes: traces:write
    def post_agent_evidence_policy_evaluate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_agent_evidence_policy_evaluate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAgentEvidencePolicyEvaluateResponse201ApplicationJson", response.data)
      response
    end

    # Generate an agent evidence quality case; scopes: reports:write
    def post_agent_evidence_quality_case_generate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_agent_evidence_quality_case_generate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAgentEvidenceQualityCaseGenerateResponse201ApplicationJson", response.data)
      response
    end

    # Create an agent evidence replay run; scopes: traces:write
    def post_agent_evidence_replay(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_agent_evidence_replay", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAgentEvidenceReplayResponse201ApplicationJson", response.data)
      response
    end

    # Create a normalized agent evidence record; scopes: traces:write
    def post_agent_evidence_resource(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_agent_evidence_resource", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAgentEvidenceResourceResponse201ApplicationJson", response.data)
      response
    end

    # Create a side-effect simulation run; scopes: traces:write
    def post_agent_evidence_simulate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_agent_evidence_simulate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAgentEvidenceSimulateResponse201ApplicationJson", response.data)
      response
    end

    # Create ai releases rollout; scopes: admin:workspace
    def post_ai_releases_release_id_rollout(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_ai_releases_releaseId_rollout", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAiReleasesReleaseIdRolloutResponse200ApplicationJson", response.data)
      response
    end

    # Create annotations annotations; scopes: eval:write
    def post_annotations(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_annotations", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAnnotationsResponse201ApplicationJson", response.data)
      response
    end

    # Create annotations routing; scopes: eval:write
    def post_annotations_routing(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_annotations_routing", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAnnotationsRoutingResponse201ApplicationJson", response.data)
      response
    end

    # Create annotations preview; scopes: eval:read
    def post_annotations_routing_preview(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_annotations_routing_preview", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAnnotationsRoutingPreviewResponse200ApplicationJson", response.data)
      response
    end

    # Create annotations suggestions; scopes: eval:write
    def post_annotations_suggestions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_annotations_suggestions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAnnotationsSuggestionsResponse200ApplicationJson", response.data)
      response
    end

    # Create annotations tasks; scopes: eval:write
    def post_annotations_tasks(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_annotations_tasks", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAnnotationsTasksResponse201ApplicationJson", response.data)
      response
    end

    # Create annotations items; scopes: eval:write
    def post_annotations_tasks_id_items(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_annotations_tasks_id_items", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAnnotationsTasksIdItemsResponse201ApplicationJson", response.data)
      response
    end

    # Create annotations control link; scopes: eval:write
    def post_annotations_tasks_id_items_item_id_control_link(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_annotations_tasks_id_items_itemId_control_link", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAnnotationsTasksIdItemsItemIdControlLinkResponse201ApplicationJson", response.data)
      response
    end

    # Create annotations reuse; scopes: eval:write
    def post_annotations_tasks_id_items_item_id_reuse(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_annotations_tasks_id_items_itemId_reuse", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAnnotationsTasksIdItemsItemIdReuseResponse201ApplicationJson", response.data)
      response
    end

    # Create annotations tags; scopes: eval:write
    def post_annotations_tasks_id_items_item_id_tags(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_annotations_tasks_id_items_itemId_tags", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAnnotationsTasksIdItemsItemIdTagsResponse201ApplicationJson", response.data)
      response
    end

    # Create arena compare; scopes: eval:write
    def post_arena_compare(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_arena_compare", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiArenaCompareResponse201ApplicationJson", response.data)
      response
    end

    # Create arena matches arena matches; scopes: eval:write
    def post_arena_matches(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_arena_matches", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiArenaMatchesResponse201ApplicationJson", response.data)
      response
    end

    # Create arena id; scopes: eval:write
    def post_arena_reviews_id(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_arena_reviews_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiArenaReviewsIdResponse200ApplicationJson", response.data)
      response
    end

    # Create assessments runtime evidence; scopes: eval:write
    def post_assessments_id_runtime_evidence(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_assessments_id_runtime_evidence", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create audit corrective actions; scopes: admin:workspace
    def post_audit_corrective_actions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_audit_corrective_actions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAuditCorrectiveActionsResponse201ApplicationJson", response.data)
      response
    end

    # Create audit engagements; scopes: admin:workspace
    def post_audit_engagements(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_audit_engagements", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAuditEngagementsResponse201ApplicationJson", response.data)
      response
    end

    # Create audit id; scopes: eval:read
    def post_audit_engagements_id(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_audit_engagements_id", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAuditEngagementsIdResponse200ApplicationJson", response.data)
      response
    end

    # Create audit evidence requests; scopes: admin:workspace
    def post_audit_evidence_requests(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_audit_evidence_requests", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAuditEvidenceRequestsResponse201ApplicationJson", response.data)
      response
    end

    # Create audit populations; scopes: admin:workspace
    def post_audit_populations(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_audit_populations", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAuditPopulationsResponse201ApplicationJson", response.data)
      response
    end

    # Create audit samples; scopes: admin:workspace
    def post_audit_samples(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_audit_samples", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAuditSamplesResponse201ApplicationJson", response.data)
      response
    end

    # Create audit tests; scopes: eval:write
    def post_audit_tests(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_audit_tests", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAuditTestsResponse201ApplicationJson", response.data)
      response
    end

    # Create benchmarks benchmarks; scopes: eval:write
    def post_benchmarks(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_benchmarks", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiBenchmarksResponse201ApplicationJson", response.data)
      response
    end

    # Create benchmarks results; scopes: eval:write
    def post_benchmarks_id_results(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_benchmarks_id_results", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiBenchmarksIdResultsResponse201ApplicationJson", response.data)
      response
    end

    # Create benchmarks run; scopes: eval:write
    def post_benchmarks_id_run(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_benchmarks_id_run", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiBenchmarksIdRunResponse201ApplicationJson", response.data)
      response
    end

    # Request an agent top-up; scopes: admin:workspace
    def post_billing_agent_payments_top_ups(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_billing_agent_payments_top_ups", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiBillingAgentPaymentsTopUpsResponse201ApplicationJson", response.data)
      response
    end

    # Pay an agent top-up; scopes: public
    def post_billing_agent_payments_top_ups_top_up_id_pay(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_billing_agent_payments_top_ups_topUpId_pay", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiBillingAgentPaymentsTopUpsTopUpIdPayResponse200ApplicationJson", response.data)
      response
    end

    # Create billing portal billing portal; scopes: admin:workspace
    def post_billing_portal(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_billing_portal", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiBillingPortalResponse200ApplicationJson", response.data)
      response
    end

    # Create calibration mappings; scopes: runs:write
    def post_calibration_mappings(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_calibration_mappings", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCalibrationMappingsResponse201ApplicationJson", response.data)
      response
    end

    # Create calibration drift; scopes: runs:write
    def post_calibration_mappings_mapping_version_id_drift(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_calibration_mappings_mappingVersionId_drift", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCalibrationMappingsMappingVersionIdDriftResponse201ApplicationJson", response.data)
      response
    end

    # Create calibration review; scopes: scorer:publish
    def post_calibration_mappings_mapping_version_id_review(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_calibration_mappings_mappingVersionId_review", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCalibrationMappingsMappingVersionIdReviewResponse200ApplicationJson", response.data)
      response
    end

    # Create calibration release gates; scopes: runs:write
    def post_calibration_release_gates(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_calibration_release_gates", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCalibrationReleaseGatesResponse201ApplicationJson", response.data)
      response
    end

    # Create calibration review; scopes: scorer:publish
    def post_calibration_set_versions_version_id_review(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_calibration_set_versions_versionId_review", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCalibrationSetVersionsVersionIdReviewResponse200ApplicationJson", response.data)
      response
    end

    # Create calibration sets; scopes: eval:write
    def post_calibration_sets(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_calibration_sets", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCalibrationSetsResponse201ApplicationJson", response.data)
      response
    end

    # Create calibration versions; scopes: eval:write
    def post_calibration_sets_set_id_versions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_calibration_sets_setId_versions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCalibrationSetsSetIdVersionsResponse201ApplicationJson", response.data)
      response
    end

    # Create campaigns campaigns; scopes: eval:write
    def post_campaigns(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_campaigns", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCampaignsResponse201ApplicationJson", response.data)
      response
    end

    # Create campaigns id; scopes: eval:write
    def post_campaigns_id(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_campaigns_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create candidates promote; scopes: eval:write
    def post_candidates_id_promote(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_candidates_id_promote", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCandidatesIdPromoteResponse201ApplicationJson", response.data)
      response
    end

    # Create candidates replay; scopes: eval:read
    def post_candidates_id_replay(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_candidates_id_replay", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCandidatesIdReplayResponse200ApplicationJson", response.data)
      response
    end

    # Create change assessments change assessments; scopes: eval:write
    def post_change_assessments(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_change_assessments", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiChangeAssessmentsResponse201ApplicationJson", response.data)
      response
    end

    # Create change assessments id; scopes: eval:write
    def post_change_assessments_id(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_change_assessments_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create change assessments qualification; scopes: eval:write
    def post_change_assessments_id_qualification(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_change_assessments_id_qualification", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create change assessments import; scopes: eval:write
    def post_change_assessments_import(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_change_assessments_import", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiChangeAssessmentsImportResponse200ApplicationJson", response.data)
      response
    end

    # Create collector collector; scopes: traces:write
    def post_collector(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_collector", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCollectorResponse201ApplicationJson", response.data)
      response
    end

    # Create collector batch; scopes: traces:write
    def post_collector_batch(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_collector_batch", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCollectorBatchResponse200ApplicationJson", response.data)
      response
    end

    # Create copilot accept; scopes: eval:write
    def post_copilot_proposals_id_accept(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_copilot_proposals_id_accept", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCopilotProposalsIdAcceptResponse200ApplicationJson", response.data)
      response
    end

    # Create copilot apply; scopes: eval:write
    def post_copilot_proposals_id_apply(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_copilot_proposals_id_apply", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCopilotProposalsIdApplyResponse200ApplicationJson", response.data)
      response
    end

    # Create copilot reject; scopes: eval:write
    def post_copilot_proposals_id_reject(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_copilot_proposals_id_reject", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCopilotProposalsIdRejectResponse200ApplicationJson", response.data)
      response
    end

    # Create copilot threads; scopes: eval:write
    def post_copilot_threads(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_copilot_threads", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCopilotThreadsResponse201ApplicationJson", response.data)
      response
    end

    # Create copilot actions; scopes: eval:read, eval:write
    def post_copilot_threads_id_actions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_copilot_threads_id_actions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCopilotThreadsIdActionsResponse200ApplicationJson", response.data)
      response
    end

    # Create copilot messages; scopes: eval:write
    def post_copilot_threads_id_messages(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_copilot_threads_id_messages", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCopilotThreadsIdMessagesResponse201ApplicationJson", response.data)
      response
    end

    # Create costs costs; scopes: traces:write
    def post_costs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_costs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCostsResponse201ApplicationJson", response.data)
      response
    end

    # Create costs budget check; scopes: traces:read
    def post_costs_budget_check(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_costs_budget_check", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCostsBudgetCheckResponse200ApplicationJson", response.data)
      response
    end

    # Create costs loop detect; scopes: traces:read
    def post_costs_loop_detect(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_costs_loop_detect", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCostsLoopDetectResponse200ApplicationJson", response.data)
      response
    end

    # Create costs pricing; scopes: admin:workspace
    def post_costs_pricing(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_costs_pricing", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiCostsPricingResponse201ApplicationJson", response.data)
      response
    end

    # Create dashboard alert rules dashboard alert rules; scopes: reports:write
    def post_dashboard_alert_rules(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_dashboard_alert_rules", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDashboardAlertRulesResponse201ApplicationJson", response.data)
      response
    end

    # Create dashboard alert rules evaluate; scopes: runs:write
    def post_dashboard_alert_rules_id_evaluate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_dashboard_alert_rules_id_evaluate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDashboardAlertRulesIdEvaluateResponse200ApplicationJson", response.data)
      response
    end

    # Create dashboards dashboards; scopes: reports:write
    def post_dashboards(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_dashboards", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDashboardsResponse201ApplicationJson", response.data)
      response
    end

    # Create dashboards render; scopes: eval:read
    def post_dashboards_id_render(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_dashboards_id_render", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDashboardsIdRenderResponse200ApplicationJson", response.data)
      response
    end

    # Create dashboards shares; scopes: reports:write
    def post_dashboards_id_shares(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_dashboards_id_shares", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDashboardsIdSharesResponse201ApplicationJson", response.data)
      response
    end

    # Create dashboards versions; scopes: reports:write
    def post_dashboards_id_versions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_dashboards_id_versions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDashboardsIdVersionsResponse201ApplicationJson", response.data)
      response
    end

    # Create dashboards publish; scopes: reports:write
    def post_dashboards_id_versions_version_id_publish(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_dashboards_id_versions_versionId_publish", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDashboardsIdVersionsVersionIdPublishResponse200ApplicationJson", response.data)
      response
    end

    # Create dashboards widgets; scopes: reports:write
    def post_dashboards_id_widgets(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_dashboards_id_widgets", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDashboardsIdWidgetsResponse201ApplicationJson", response.data)
      response
    end

    # Create datasets datasets; scopes: eval:write
    def post_datasets(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_datasets", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDatasetsResponse201ApplicationJson", response.data)
      response
    end

    # Create datasets from traces; scopes: traces:read, eval:write
    def post_datasets_id_from_traces(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_datasets_id_from_traces", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDatasetsIdFromTracesResponse201ApplicationJson", response.data)
      response
    end

    # Create datasets import; scopes: eval:write
    def post_datasets_id_import(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_datasets_id_import", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create datasets rows; scopes: eval:write
    def post_datasets_id_rows(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_datasets_id_rows", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create datasets review; scopes: eval:write
    def post_datasets_id_rows_row_id_review(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_datasets_id_rows_rowId_review", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDatasetsIdRowsRowIdReviewResponse200ApplicationJson", response.data)
      response
    end

    # Create datasets versions; scopes: eval:write
    def post_datasets_id_versions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_datasets_id_versions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDatasetsIdVersionsResponse201ApplicationJson", response.data)
      response
    end

    # Create datasets approve; scopes: public
    def post_datasets_id_versions_version_id_approve(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_datasets_id_versions_versionId_approve", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDatasetsIdVersionsVersionIdApproveResponse200ApplicationJson", response.data)
      response
    end

    # Create datasets deprecate; scopes: public
    def post_datasets_id_versions_version_id_deprecate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_datasets_id_versions_versionId_deprecate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDatasetsIdVersionsVersionIdDeprecateResponse200ApplicationJson", response.data)
      response
    end

    # Create datasets publish; scopes: public
    def post_datasets_id_versions_version_id_publish(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_datasets_id_versions_versionId_publish", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDatasetsIdVersionsVersionIdPublishResponse200ApplicationJson", response.data)
      response
    end

    # Create datasets review; scopes: public
    def post_datasets_id_versions_version_id_review(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_datasets_id_versions_versionId_review", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDatasetsIdVersionsVersionIdReviewResponse200ApplicationJson", response.data)
      response
    end

    # Create decisions decisions; scopes: traces:write
    def post_decisions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_decisions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDecisionsResponse201ApplicationJson", response.data)
      response
    end

    # Create deployable assets deployable assets; scopes: admin:workspace
    def post_deployable_assets(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_deployable_assets", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDeployableAssetsResponse201ApplicationJson", response.data)
      response
    end

    # Create deployable assets approvals; scopes: admin:workspace
    def post_deployable_assets_approvals(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_deployable_assets_approvals", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDeployableAssetsApprovalsResponse201ApplicationJson", response.data)
      response
    end

    # Create deployable assets health; scopes: public
    def post_deployable_assets_id_health(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_deployable_assets_id_health", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDeployableAssetsIdHealthResponse201ApplicationJson", response.data)
      response
    end

    # Create deployable assets invoke; scopes: runs:write
    def post_deployable_assets_id_invoke(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_deployable_assets_id_invoke", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDeployableAssetsIdInvokeResponse200ApplicationJson", response.data)
      response
    end

    # Create deployable assets rollout; scopes: admin:workspace
    def post_deployable_assets_id_rollout(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_deployable_assets_id_rollout", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDeployableAssetsIdRolloutResponse200ApplicationJson", response.data)
      response
    end

    # Create developer api keys; scopes: admin:keys
    def post_developer_api_keys(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_developer_api_keys", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDeveloperApiKeysResponse201ApplicationJson", response.data)
      response
    end

    # Create developer connection test; scopes: eval:read
    def post_developer_mcp_connection_test(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_developer_mcp_connection_test", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDeveloperMcpConnectionTestResponse200ApplicationJson", response.data)
      response
    end

    # Create developer webhooks; scopes: admin:workspace
    def post_developer_webhooks(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_developer_webhooks", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDeveloperWebhooksResponse201ApplicationJson", response.data)
      response
    end

    # Create drift alerts; scopes: eval:write
    def post_drift_alerts(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_drift_alerts", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDriftAlertsResponse200ApplicationJson", response.data)
      response
    end

    # Create eval loop workflows; scopes: eval:write
    def post_eval_loop_workflows(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_eval_loop_workflows", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalLoopWorkflowsResponse201ApplicationJson", response.data)
      response
    end

    # Create eval loop transitions; scopes: eval:write
    def post_eval_loop_workflows_workflow_id_transitions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_eval_loop_workflows_workflowId_transitions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalLoopWorkflowsWorkflowIdTransitionsResponse200ApplicationJson", response.data)
      response
    end

    # Create eval packs install; scopes: eval:write
    def post_eval_packs_pack_id_install(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_eval_packs_packId_install", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalPacksPackIdInstallResponse201ApplicationJson", response.data)
      response
    end

    # Create evalgate analyze; scopes: reports:write
    def post_evalgate_analyze(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evalgate_analyze", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalgateAnalyzeResponse200ApplicationJson", response.data)
      response
    end

    # Create evalgate auto plan; scopes: reports:write
    def post_evalgate_auto_plan(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evalgate_auto_plan", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalgateAutoPlanResponse200ApplicationJson", response.data)
      response
    end

    # Create evalgate discover diversity; scopes: reports:write
    def post_evalgate_discover_diversity(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evalgate_discover_diversity", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalgateDiscoverDiversityResponse200ApplicationJson", response.data)
      response
    end

    # Create evalgate export; scopes: exports:download
    def post_evalgate_export(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evalgate_export", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalgateExportResponse201ApplicationJson", response.data)
      response
    end

    # Create evalgate synthesize; scopes: reports:write
    def post_evalgate_synthesize(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evalgate_synthesize", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create evals as code retry; scopes: admin:workspace
    def post_evals_as_code_applies_id_retry(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evals_as_code_applies_id_retry", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalsAsCodeAppliesIdRetryResponse200ApplicationJson", response.data)
      response
    end

    # Create evals as code rollback; scopes: admin:workspace
    def post_evals_as_code_applies_id_rollback(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evals_as_code_applies_id_rollback", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalsAsCodeAppliesIdRollbackResponse200ApplicationJson", response.data)
      response
    end

    # Create evals as code apply; scopes: admin:workspace
    def post_evals_as_code_apply(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evals_as_code_apply", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalsAsCodeApplyResponse200ApplicationJson", response.data)
      response
    end

    # Create evals as code diff; scopes: eval:read
    def post_evals_as_code_diff(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evals_as_code_diff", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalsAsCodeDiffResponse200ApplicationJson", response.data)
      response
    end

    # Create evals as code accept; scopes: admin:workspace
    def post_evals_as_code_drift_events_id_accept(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evals_as_code_drift_events_id_accept", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalsAsCodeDriftEventsIdAcceptResponse200ApplicationJson", response.data)
      response
    end

    # Create evals as code remediate; scopes: admin:workspace
    def post_evals_as_code_drift_events_id_remediate(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evals_as_code_drift_events_id_remediate", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalsAsCodeDriftEventsIdRemediateResponse200ApplicationJson", response.data)
      response
    end

    # Create evals as code gate; scopes: eval:read
    def post_evals_as_code_gate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evals_as_code_gate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalsAsCodeGateResponse200ApplicationJson", response.data)
      response
    end

    # Create evals as code plan; scopes: eval:read
    def post_evals_as_code_plan(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evals_as_code_plan", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalsAsCodePlanResponse200ApplicationJson", response.data)
      response
    end

    # Create evals as code validate; scopes: eval:read
    def post_evals_as_code_validate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evals_as_code_validate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvalsAsCodeValidateResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations evaluations; scopes: eval:write
    def post_evaluations(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations agent workflows; scopes: eval:write
    def post_evaluations_id_agent_workflows(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_agent_workflows", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdAgentWorkflowsResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations artifacts; scopes: eval:write
    def post_evaluations_id_artifacts(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_artifacts", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdArtifactsResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations accept; scopes: eval:write
    def post_evaluations_id_artifacts_artifact_id_accept(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_artifacts_artifactId_accept", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdArtifactsArtifactIdAcceptResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations auto sessions; scopes: eval:write
    def post_evaluations_id_auto_sessions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_auto_sessions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdAutoSessionsResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations run; scopes: eval:write, runs:write
    def post_evaluations_id_auto_sessions_session_id_run(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_auto_sessions_sessionId_run", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdAutoSessionsSessionIdRunResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations stop; scopes: eval:write
    def post_evaluations_id_auto_sessions_session_id_stop(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_auto_sessions_sessionId_stop", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdAutoSessionsSessionIdStopResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations calibration; scopes: eval:write
    def post_evaluations_id_calibration(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_calibration", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create evaluations dataset bindings; scopes: eval:write
    def post_evaluations_id_dataset_bindings(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_dataset_bindings", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdDatasetBindingsResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations quarantine; scopes: eval:write
    def post_evaluations_id_failure_memory_entry_id_quarantine(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_failure_memory_entryId_quarantine", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdFailureMemoryEntryIdQuarantineResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations trust; scopes: eval:write
    def post_evaluations_id_failure_memory_entry_id_trust(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_failure_memory_entryId_trust", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdFailureMemoryEntryIdTrustResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations human review; scopes: eval:write
    def post_evaluations_id_human_review(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_human_review", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdHumanReviewResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations reviews; scopes: eval:write
    def post_evaluations_id_human_review_reviews(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_human_review_reviews", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdHumanReviewReviewsResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations integrity; scopes: eval:write
    def post_evaluations_id_integrity(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_integrity", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdIntegrityResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations merge; scopes: eval:write
    def post_evaluations_id_knowledge_merge(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_knowledge_merge", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdKnowledgeMergeResponse200ApplicationJson", response.data)
      response
    end

    # Create a manual labeled case for an evaluation; scopes: eval:write
    def post_evaluations_id_labeled_cases(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_labeled_cases", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdLabeledCasesResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations playground; scopes: eval:write
    def post_evaluations_id_playground(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_playground", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations assistant; scopes: eval:write
    def post_evaluations_id_playground_assistant(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_playground_assistant", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundAssistantResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations cases; scopes: eval:write
    def post_evaluations_id_playground_cases(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_playground_cases", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundCasesResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations from trace; scopes: eval:write
    def post_evaluations_id_playground_cases_from_trace(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_playground_cases_from_trace", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundCasesFromTraceResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations generate; scopes: eval:write
    def post_evaluations_id_playground_cases_generate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_playground_cases_generate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundCasesGenerateResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations import; scopes: eval:write
    def post_evaluations_id_playground_cases_import(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_playground_cases_import", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundCasesImportResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations promote to experiment; scopes: eval:write
    def post_evaluations_id_playground_promote_to_experiment(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_playground_promote_to_experiment", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create evaluations proposalId; scopes: eval:write
    def post_evaluations_id_playground_proposals_proposal_id(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_playground_proposals_proposalId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundProposalsProposalIdResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations run all; scopes: runs:write
    def post_evaluations_id_playground_run_all(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_playground_run_all", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundRunAllResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations run row; scopes: runs:write
    def post_evaluations_id_playground_run_row(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_playground_run_row", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundRunRowResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations run selection; scopes: runs:write
    def post_evaluations_id_playground_run_selection(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_playground_run_selection", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundRunSelectionResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations cancel; scopes: eval:write
    def post_evaluations_id_playground_runs_run_id_cancel(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_playground_runs_runId_cancel", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundRunsRunIdCancelResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations test; scopes: eval:write
    def post_evaluations_id_playground_scorers_test(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_playground_scorers_test", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundScorersTestResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations variants; scopes: eval:write
    def post_evaluations_id_playground_variants(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_playground_variants", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundVariantsResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations set baseline; scopes: eval:write
    def post_evaluations_id_playground_variants_variant_id_set_baseline(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_playground_variants_variantId_set_baseline", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundVariantsVariantIdSetBaselineResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations winner; scopes: admin:workspace
    def post_evaluations_id_playground_winner(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_playground_winner", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPlaygroundWinnerResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations prompts; scopes: eval:write
    def post_evaluations_id_prompts(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_prompts", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPromptsResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations active; scopes: eval:write
    def post_evaluations_id_prompts_prompt_id_active(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_prompts_promptId_active", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPromptsPromptIdActiveResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations rollback; scopes: eval:write
    def post_evaluations_id_prompts_prompt_id_rollback(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_prompts_promptId_rollback", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPromptsPromptIdRollbackResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations publish; scopes: eval:write
    def post_evaluations_id_publish(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_publish", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPublishResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations publish run; scopes: eval:write
    def post_evaluations_id_publish_run(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_publish_run", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdPublishRunResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations regression; scopes: runs:write
    def post_evaluations_id_regression(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_regression", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdRegressionResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations report; scopes: reports:write
    def post_evaluations_id_report(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_report", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdReportResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations runs; scopes: runs:write
    def post_evaluations_id_runs(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_runs", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdRunsResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations import; scopes: runs:write
    def post_evaluations_id_runs_import(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_runs_import", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create evaluations analyze; scopes: runs:read
    def post_evaluations_id_runs_run_id_analyze(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_runs_runId_analyze", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdRunsRunIdAnalyzeResponse200ApplicationJson", response.data)
      response
    end

    # Prepare a regression candidate from verified executed failure evidence; scopes: eval:write, runs:read
    def post_evaluations_id_runs_run_id_candidates(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_runs_runId_candidates", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create evaluations cluster; scopes: runs:read
    def post_evaluations_id_runs_run_id_cluster(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_runs_runId_cluster", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdRunsRunIdClusterResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations dataset; scopes: runs:read
    def post_evaluations_id_runs_run_id_dataset(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_runs_runId_dataset", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdRunsRunIdDatasetResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations debug; scopes: runs:read
    def post_evaluations_id_runs_run_id_debug(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_runs_runId_debug", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdRunsRunIdDebugResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations schedule; scopes: eval:write
    def post_evaluations_id_schedule(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_schedule", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdScheduleResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations promote; scopes: eval:write
    def post_evaluations_id_synthetic_candidates_candidate_id_promote(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_synthetic_candidates_candidateId_promote", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdSyntheticCandidatesCandidateIdPromoteResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluations review; scopes: eval:write
    def post_evaluations_id_synthetic_candidates_candidate_id_review(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_synthetic_candidates_candidateId_review", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdSyntheticCandidatesCandidateIdReviewResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations test cases; scopes: eval:write
    def post_evaluations_id_test_cases(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_test_cases", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdTestCasesResponse201ApplicationJson", response.data)
      response
    end

    # Activate a reviewed test case; scopes: eval:write
    def post_evaluations_id_test_cases_test_case_id_activate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_test_cases_testCaseId_activate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdTestCasesTestCaseIdActivateResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations archive; scopes: eval:write
    def post_evaluations_id_test_cases_test_case_id_archive(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_test_cases_testCaseId_archive", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdTestCasesTestCaseIdArchiveResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations deprecate; scopes: eval:write
    def post_evaluations_id_test_cases_test_case_id_deprecate(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_test_cases_testCaseId_deprecate", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdTestCasesTestCaseIdDeprecateResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations restore; scopes: eval:write
    def post_evaluations_id_test_cases_test_case_id_restore(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_test_cases_testCaseId_restore", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdTestCasesTestCaseIdRestoreResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations supersede; scopes: eval:write
    def post_evaluations_id_test_cases_test_case_id_supersede(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluations_id_test_cases_testCaseId_supersede", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdTestCasesTestCaseIdSupersedeResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluations versions; scopes: eval:write
    def post_evaluations_id_versions(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluations_id_versions", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluationsIdVersionsResponse201ApplicationJson", response.data)
      response
    end

    # Create evaluator validation outcomes; scopes: eval:write
    def post_evaluator_validation_outcomes(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluator_validation_outcomes", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluatorValidationOutcomesResponse202ApplicationJson", response.data)
      response
    end

    # Create evaluator validation plan; scopes: eval:read
    def post_evaluator_validation_plan(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluator_validation_plan", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluatorValidationPlanResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluator validation releases; scopes: eval:write
    def post_evaluator_validation_releases(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluator_validation_releases", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create evaluator validation runs; scopes: eval:write
    def post_evaluator_validation_runs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluator_validation_runs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create evaluator validation execute; scopes: eval:write
    def post_evaluator_validation_runs_id_execute(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluator_validation_runs_id_execute", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create evaluator validation observations; scopes: eval:write
    def post_evaluator_validation_runs_id_observations(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_evaluator_validation_runs_id_observations", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiEvaluatorValidationRunsIdObservationsResponse200ApplicationJson", response.data)
      response
    end

    # Create evaluator validation resume; scopes: eval:write
    def post_evaluator_validation_runs_id_resume(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_evaluator_validation_runs_id_resume", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create execution state resume; scopes: runs:write
    def post_execution_state_handoffs_bundle_id_resume(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_execution_state_handoffs_bundleId_resume", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiExecutionStateHandoffsBundleIdResumeResponse200ApplicationJson", response.data)
      response
    end

    # Create execution state sessions; scopes: runs:write
    def post_execution_state_sessions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_execution_state_sessions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiExecutionStateSessionsResponse201ApplicationJson", response.data)
      response
    end

    # Create execution state events; scopes: runs:write
    def post_execution_state_sessions_session_id_events(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_execution_state_sessions_sessionId_events", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiExecutionStateSessionsSessionIdEventsResponse201ApplicationJson", response.data)
      response
    end

    # Create execution state handoffs; scopes: runs:write
    def post_execution_state_sessions_session_id_handoffs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_execution_state_sessions_sessionId_handoffs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiExecutionStateSessionsSessionIdHandoffsResponse201ApplicationJson", response.data)
      response
    end

    # Create execution state snapshot; scopes: runs:write
    def post_execution_state_sessions_session_id_snapshot(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_execution_state_sessions_sessionId_snapshot", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiExecutionStateSessionsSessionIdSnapshotResponse201ApplicationJson", response.data)
      response
    end

    # Create executions executions; scopes: runs:write
    def post_executions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_executions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create executions claim; scopes: runs:write
    def post_executions_execution_id_claim(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_executions_executionId_claim", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiExecutionsExecutionIdClaimResponse200ApplicationJson", response.data)
      response
    end

    # Create executions complete; scopes: runs:write
    def post_executions_execution_id_complete(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_executions_executionId_complete", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiExecutionsExecutionIdCompleteResponse200ApplicationJson", response.data)
      response
    end

    # Create executions heartbeat; scopes: runs:write
    def post_executions_execution_id_heartbeat(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_executions_executionId_heartbeat", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiExecutionsExecutionIdHeartbeatResponse200ApplicationJson", response.data)
      response
    end

    # Create executions resume; scopes: runs:write
    def post_executions_execution_id_resume(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_executions_executionId_resume", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiExecutionsExecutionIdResumeResponse200ApplicationJson", response.data)
      response
    end

    # Create experiments experiments; scopes: eval:write
    def post_experiments(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_experiments", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create experiments cancel; scopes: runs:write
    def post_experiments_id_cancel(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_experiments_id_cancel", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiExperimentsIdCancelResponse200ApplicationJson", response.data)
      response
    end

    # Create experiments decision; scopes: eval:write
    def post_experiments_id_decision(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_experiments_id_decision", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create experiments publish winner; scopes: prompt:publish
    def post_experiments_id_publish_winner(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_experiments_id_publish_winner", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create experiments run; scopes: runs:write
    def post_experiments_id_run(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_experiments_id_run", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create github questions; scopes: eval:read
    def post_github_intelligence_repositories_repository_id_questions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_github_intelligence_repositories_repositoryId_questions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiGithubIntelligenceRepositoriesRepositoryIdQuestionsResponse200ApplicationJson", response.data)
      response
    end

    # Create github publications; scopes: eval:write
    def post_github_publications(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_github_publications", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiGithubPublicationsResponse202ApplicationJson", response.data)
      response
    end

    # Create governance evaluate; scopes: eval:read
    def post_governance_evaluate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_governance_evaluate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiGovernanceEvaluateResponse200ApplicationJson", response.data)
      response
    end

    # Create harness compare; scopes: eval:read
    def post_harness_experiments_compare(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_harness_experiments_compare", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiHarnessExperimentsCompareResponse200ApplicationJson", response.data)
      response
    end

    # Create harness outcomes; scopes: runs:write
    def post_harness_outcomes(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_harness_outcomes", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create harness schedules; scopes: admin:workspace
    def post_harness_schedules(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_harness_schedules", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiHarnessSchedulesResponse201ApplicationJson", response.data)
      response
    end

    # Create identity backup code; scopes: public
    def post_identity_mfa_backup_code(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_identity_mfa_backup_code", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiIdentityMfaBackupCodeResponse200ApplicationJson", response.data)
      response
    end

    # Create improvement authorize; scopes: admin:workspace
    def post_improvement_candidates_candidate_id_authorize(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_improvement_candidates_candidateId_authorize", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create improvement adopt; scopes: admin:workspace
    def post_improvement_cycles_cycle_id_adopt(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_improvement_cycles_cycleId_adopt", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiImprovementCyclesCycleIdAdoptResponse200ApplicationJson", response.data)
      response
    end

    # Create improvement confirmation; scopes: runs:write
    def post_improvement_cycles_cycle_id_confirmation(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_improvement_cycles_cycleId_confirmation", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create improvement contracts; scopes: runs:write
    def post_improvement_cycles_cycle_id_contracts(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_improvement_cycles_cycleId_contracts", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiImprovementCyclesCycleIdContractsResponse201ApplicationJson", response.data)
      response
    end

    # Create improvement approve; scopes: runs:write
    def post_improvement_cycles_cycle_id_contracts_contract_id_approve(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_improvement_cycles_cycleId_contracts_contractId_approve", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiImprovementCyclesCycleIdContractsContractIdApproveResponse200ApplicationJson", response.data)
      response
    end

    # Create improvement runs; scopes: runs:write
    def post_improvement_cycles_cycle_id_runs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_improvement_cycles_cycleId_runs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiImprovementCyclesCycleIdRunsResponse202ApplicationJson", response.data)
      response
    end

    # Validate or ingest a batch of evalgate.integration.v1 adapter events; scopes: traces:write
    def post_integrations_events(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_integrations_events", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiIntegrationsEventsResponse200ApplicationJson", response.data)
      response
    end

    # Create integrations github; scopes: eval:write
    def post_integrations_github(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_integrations_github", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiIntegrationsGithubResponse200ApplicationJson", response.data)
      response
    end

    # Create integrations disconnect; scopes: admin:workspace
    def post_integrations_slack_disconnect(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_integrations_slack_disconnect", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiIntegrationsSlackDisconnectResponse200ApplicationJson", response.data)
      response
    end

    # Create jobs bulk retry; scopes: admin:workspace
    def post_jobs_dead_bulk_retry(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_jobs_dead_bulk_retry", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiJobsDeadBulkRetryResponse200ApplicationJson", response.data)
      response
    end

    # Create jobs retry; scopes: admin:workspace
    def post_jobs_id_retry(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_jobs_id_retry", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiJobsIdRetryResponse200ApplicationJson", response.data)
      response
    end

    # Create journey owned journey owned; scopes: eval:write
    def post_journey_owned(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_journey_owned", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create knowledge documents; scopes: eval:write
    def post_knowledge_documents(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_knowledge_documents", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiKnowledgeDocumentsResponse201ApplicationJson", response.data)
      response
    end

    # Create knowledge draft requirements; scopes: eval:read
    def post_knowledge_draft_requirements(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_knowledge_draft_requirements", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiKnowledgeDraftRequirementsResponse201ApplicationJson", response.data)
      response
    end

    # Create knowledge grounding; scopes: eval:read
    def post_knowledge_grounding(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_knowledge_grounding", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiKnowledgeGroundingResponse200ApplicationJson", response.data)
      response
    end

    # Create knowledge network installations; scopes: eval:write
    def post_knowledge_network_installations(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_knowledge_network_installations", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiKnowledgeNetworkInstallationsResponse201ApplicationJson", response.data)
      response
    end

    # Create knowledge network install plan; scopes: eval:write
    def post_knowledge_network_packages_package_id_versions_version_id_install_plan(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_knowledge_network_packages_packageId_versions_versionId_install_plan", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiKnowledgeNetworkPackagesPackageIdVersionsVersionIdInstallPlanResponse201ApplicationJson", response.data)
      response
    end

    # Create knowledge reindex embeddings; scopes: eval:write
    def post_knowledge_reindex_embeddings(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_knowledge_reindex_embeddings", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create lineage gate decision; scopes: runs:write
    def post_lineage_gate_decision(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_lineage_gate_decision", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLineageGateDecisionResponse200ApplicationJson", response.data)
      response
    end

    # Create llm judge calibration proposals; scopes: eval:write
    def post_llm_judge_calibration_proposals(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_llm_judge_calibration_proposals", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLlmJudgeCalibrationProposalsResponse200ApplicationJson", response.data)
      response
    end

    # Create llm judge compare; scopes: eval:write
    def post_llm_judge_compare(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_llm_judge_compare", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLlmJudgeCompareResponse201ApplicationJson", response.data)
      response
    end

    # Create llm judge configs; scopes: eval:write
    def post_llm_judge_configs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_llm_judge_configs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLlmJudgeConfigsResponse201ApplicationJson", response.data)
      response
    end

    # Create llm judge estimate; scopes: eval:read
    def post_llm_judge_estimate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_llm_judge_estimate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLlmJudgeEstimateResponse200ApplicationJson", response.data)
      response
    end

    # Create llm judge evaluate; scopes: eval:write
    def post_llm_judge_evaluate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_llm_judge_evaluate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLlmJudgeEvaluateResponse201ApplicationJson", response.data)
      response
    end

    # Create llm judge test; scopes: eval:write
    def post_llm_judge_test(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_llm_judge_test", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLlmJudgeTestResponse200ApplicationJson", response.data)
      response
    end

    # Create logs add to dataset; scopes: traces:read, eval:write
    def post_logs_actions_add_to_dataset(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_logs_actions_add_to_dataset", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLogsActionsAddToDatasetResponse200ApplicationJson", response.data)
      response
    end

    # Create logs compare; scopes: traces:read
    def post_logs_actions_compare(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_logs_actions_compare", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLogsActionsCompareResponse200ApplicationJson", response.data)
      response
    end

    # Create logs create candidate; scopes: traces:read, eval:write
    def post_logs_actions_create_candidate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_logs_actions_create_candidate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLogsActionsCreateCandidateResponse200ApplicationJson", response.data)
      response
    end

    # Create logs create monitor; scopes: admin:workspace
    def post_logs_actions_create_monitor(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_logs_actions_create_monitor", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLogsActionsCreateMonitorResponse200ApplicationJson", response.data)
      response
    end

    # Create logs create review; scopes: traces:write
    def post_logs_actions_create_review(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_logs_actions_create_review", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLogsActionsCreateReviewResponse200ApplicationJson", response.data)
      response
    end

    # Create logs open in playground; scopes: traces:read, eval:write
    def post_logs_actions_open_in_playground(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_logs_actions_open_in_playground", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLogsActionsOpenInPlaygroundResponse200ApplicationJson", response.data)
      response
    end

    # Create logs tag; scopes: traces:write
    def post_logs_actions_tag(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_logs_actions_tag", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLogsActionsTagResponse200ApplicationJson", response.data)
      response
    end

    # Create logs aggregate; scopes: traces:read
    def post_logs_aggregate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_logs_aggregate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLogsAggregateResponse200ApplicationJson", response.data)
      response
    end

    # Create logs cohorts; scopes: traces:write
    def post_logs_cohorts(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_logs_cohorts", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLogsCohortsResponse201ApplicationJson", response.data)
      response
    end

    # Create logs export; scopes: traces:read, exports:download
    def post_logs_export(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_logs_export", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("any", response.data)
      response
    end

    # Create logs query; scopes: traces:read
    def post_logs_query(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_logs_query", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLogsQueryResponse200ApplicationJson", response.data)
      response
    end

    # Create logs views; scopes: traces:write
    def post_logs_views(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_logs_views", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiLogsViewsResponse201ApplicationJson", response.data)
      response
    end

    # Create mcp mcp; scopes: public
    def post_mcp(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_mcp", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiMcpResponse200ApplicationJson", response.data)
      response
    end

    # Create mcp call; scopes: eval:read
    def post_mcp_call(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_mcp_call", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiMcpCallResponse200ApplicationJson", response.data)
      response
    end

    # Create metric definitions metric definitions; scopes: reports:write
    def post_metric_definitions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_metric_definitions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiMetricDefinitionsResponse201ApplicationJson", response.data)
      response
    end

    # Create metric definitions approve; scopes: reports:write
    def post_metric_definitions_id_approve(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_metric_definitions_id_approve", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiMetricDefinitionsIdApproveResponse200ApplicationJson", response.data)
      response
    end

    # Create metrics preview; scopes: eval:read
    def post_metrics_preview(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_metrics_preview", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiMetricsPreviewResponse200ApplicationJson", response.data)
      response
    end

    # Create metrics query; scopes: eval:read
    def post_metrics_query(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_metrics_query", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiMetricsQueryResponse200ApplicationJson", response.data)
      response
    end

    # Create missions missions; scopes: eval:write
    def post_missions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_missions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiMissionsResponse200ApplicationJson", response.data)
      response
    end

    # Create missions promote; scopes: eval:write
    def post_missions_mission_id_promote(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_missions_missionId_promote", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiMissionsMissionIdPromoteResponse200ApplicationJson", response.data)
      response
    end

    # Create model gateway configs; scopes: admin:workspace
    def post_model_gateway_configs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_model_gateway_configs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiModelGatewayConfigsResponse201ApplicationJson", response.data)
      response
    end

    # Create model gateway health check; scopes: admin:workspace
    def post_model_gateway_configs_id_health_check(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_model_gateway_configs_id_health_check", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiModelGatewayConfigsIdHealthCheckResponse200ApplicationJson", response.data)
      response
    end

    # Create model gateway rotate key; scopes: admin:workspace
    def post_model_gateway_configs_id_rotate_key(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_model_gateway_configs_id_rotate_key", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiModelGatewayConfigsIdRotateKeyResponse200ApplicationJson", response.data)
      response
    end

    # Create model gateway sync; scopes: admin:workspace
    def post_model_gateway_models_sync(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_model_gateway_models_sync", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiModelGatewayModelsSyncResponse200ApplicationJson", response.data)
      response
    end

    # Create model gateway routing profiles; scopes: admin:workspace
    def post_model_gateway_routing_profiles(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_model_gateway_routing_profiles", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiModelGatewayRoutingProfilesResponse201ApplicationJson", response.data)
      response
    end

    # Create model gateway test; scopes: admin:workspace
    def post_model_gateway_routing_profiles_id_test(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_model_gateway_routing_profiles_id_test", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiModelGatewayRoutingProfilesIdTestResponse200ApplicationJson", response.data)
      response
    end

    # Create model gateway test call; scopes: admin:workspace
    def post_model_gateway_test_call(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_model_gateway_test_call", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiModelGatewayTestCallResponse200ApplicationJson", response.data)
      response
    end

    # Create notifications delivery; scopes: eval:read
    def post_notifications_id_delivery(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_notifications_id_delivery", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiNotificationsIdDeliveryResponse200ApplicationJson", response.data)
      response
    end

    # Create notifications mark read; scopes: eval:write
    def post_notifications_mark_read(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_notifications_mark_read", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiNotificationsMarkReadResponse200ApplicationJson", response.data)
      response
    end

    # Create online evals ack; scopes: eval:write
    def post_online_evals_alerts_id_ack(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_online_evals_alerts_id_ack", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOnlineEvalsAlertsIdAckResponse200ApplicationJson", response.data)
      response
    end

    # Create online evals remediation; scopes: eval:write
    def post_online_evals_alerts_id_remediation(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_online_evals_alerts_id_remediation", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOnlineEvalsAlertsIdRemediationResponse201ApplicationJson", response.data)
      response
    end

    # Create online evals resolve; scopes: eval:write
    def post_online_evals_alerts_id_resolve(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_online_evals_alerts_id_resolve", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOnlineEvalsAlertsIdResolveResponse200ApplicationJson", response.data)
      response
    end

    # Create online evals snooze; scopes: eval:write
    def post_online_evals_alerts_id_snooze(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_online_evals_alerts_id_snooze", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOnlineEvalsAlertsIdSnoozeResponse200ApplicationJson", response.data)
      response
    end

    # Create online evals cancel; scopes: eval:write
    def post_online_evals_backfills_id_cancel(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_online_evals_backfills_id_cancel", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOnlineEvalsBackfillsIdCancelResponse200ApplicationJson", response.data)
      response
    end

    # Create online evals resume; scopes: eval:write
    def post_online_evals_backfills_id_resume(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_online_evals_backfills_id_resume", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOnlineEvalsBackfillsIdResumeResponse202ApplicationJson", response.data)
      response
    end

    # Create online evals monitors; scopes: admin:workspace
    def post_online_evals_monitors(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_online_evals_monitors", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOnlineEvalsMonitorsResponse201ApplicationJson", response.data)
      response
    end

    # Create online evals activate; scopes: admin:workspace
    def post_online_evals_monitors_id_activate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_online_evals_monitors_id_activate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOnlineEvalsMonitorsIdActivateResponse200ApplicationJson", response.data)
      response
    end

    # Create online evals backfills; scopes: eval:write
    def post_online_evals_monitors_id_backfills(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_online_evals_monitors_id_backfills", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create online evals pause; scopes: admin:workspace
    def post_online_evals_monitors_id_pause(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_online_evals_monitors_id_pause", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOnlineEvalsMonitorsIdPauseResponse200ApplicationJson", response.data)
      response
    end

    # Create online evals resume; scopes: admin:workspace
    def post_online_evals_monitors_id_resume(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_online_evals_monitors_id_resume", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOnlineEvalsMonitorsIdResumeResponse200ApplicationJson", response.data)
      response
    end

    # Create online evals simulate; scopes: eval:write
    def post_online_evals_monitors_id_simulate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_online_evals_monitors_id_simulate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create online evals test; scopes: admin:workspace
    def post_online_evals_monitors_id_test(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_online_evals_monitors_id_test", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOnlineEvalsMonitorsIdTestResponse200ApplicationJson", response.data)
      response
    end

    # Create orchestration evals runs; scopes: runs:write
    def post_orchestration_evals_runs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_orchestration_evals_runs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create org keys; scopes: admin:workspace
    def post_org_keys(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_org_keys", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOrgKeysResponse201ApplicationJson", response.data)
      response
    end

    # Create org rotate; scopes: admin:workspace
    def post_org_keys_key_id_rotate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_org_keys_keyId_rotate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOrgKeysKeyIdRotateResponse200ApplicationJson", response.data)
      response
    end

    # Create org switch; scopes: public
    def post_org_switch(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_org_switch", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOrgSwitchResponse200ApplicationJson", response.data)
      response
    end

    # Create organizations organizations; scopes: public
    def post_organizations(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_organizations", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOrganizationsResponse201ApplicationJson", response.data)
      response
    end

    # Create organizations domains; scopes: admin:org
    def post_organizations_identity_domains(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_organizations_identity_domains", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOrganizationsIdentityDomainsResponse201ApplicationJson", response.data)
      response
    end

    # Create organizations verify; scopes: admin:org
    def post_organizations_identity_domains_domain_id_verify(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_organizations_identity_domains_domainId_verify", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOrganizationsIdentityDomainsDomainIdVerifyResponse200ApplicationJson", response.data)
      response
    end

    # Create organizations mfa reset; scopes: admin:org
    def post_organizations_identity_members_user_id_mfa_reset(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_organizations_identity_members_userId_mfa_reset", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOrganizationsIdentityMembersUserIdMfaResetResponse200ApplicationJson", response.data)
      response
    end

    # Create organizations sso providers; scopes: admin:org
    def post_organizations_identity_sso_providers(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_organizations_identity_sso_providers", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOrganizationsIdentitySsoProvidersResponse201ApplicationJson", response.data)
      response
    end

    # Create otel traces; scopes: traces:write
    def post_otel_v1_traces(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_otel_v1_traces", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOtelV1TracesResponse200ApplicationJson", response.data)
      response
    end

    # Create playgrounds from demo; scopes: eval:write
    def post_playgrounds_from_demo(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_playgrounds_from_demo", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPlaygroundsFromDemoResponse201ApplicationJson", response.data)
      response
    end

    # Create policies policies; scopes: eval:write, admin:workspace
    def post_policies(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_policies", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create portability exports; scopes: exports:download
    def post_portability_exports(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portability_exports", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortabilityExportsResponse201ApplicationJson", response.data)
      response
    end

    # Create portability commit; scopes: admin:workspace
    def post_portability_imports_commit(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_portability_imports_commit", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortabilityImportsCommitResponse201ApplicationJson", response.data)
      response
    end

    # Create portability dry run; scopes: exports:download
    def post_portability_imports_dry_run(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_portability_imports_dry_run", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortabilityImportsDryRunResponse201ApplicationJson", response.data)
      response
    end

    # Create portability trusted signers; scopes: admin:workspace
    def post_portability_trusted_signers(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portability_trusted_signers", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortabilityTrustedSignersResponse201ApplicationJson", response.data)
      response
    end

    # Create portable quality checks; scopes: checks:run
    def post_portable_quality_checks(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_checks", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityChecksResponse202ApplicationJson", response.data)
      response
    end

    # Create portable quality evidence; scopes: checks:run
    def post_portable_quality_checks_execution_id_evidence(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_checks_executionId_evidence", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityChecksExecutionIdEvidenceResponse200ApplicationJson", response.data)
      response
    end

    # Create portable quality contexts; scopes: contexts:write
    def post_portable_quality_contexts(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_contexts", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityContextsResponse201ApplicationJson", response.data)
      response
    end

    # Create portable quality collections; scopes: resources:write
    def post_portable_quality_contexts_context_id_collections(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_contexts_contextId_collections", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create portable quality resources; scopes: resources:write
    def post_portable_quality_contexts_context_id_resources(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_contexts_contextId_resources", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityContextsContextIdResourcesResponse201ApplicationJson", response.data)
      response
    end

    # Create portable quality revisions; scopes: contexts:write
    def post_portable_quality_contexts_context_id_revisions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_contexts_contextId_revisions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityContextsContextIdRevisionsResponse201ApplicationJson", response.data)
      response
    end

    # Create portable quality uploads; scopes: resources:write
    def post_portable_quality_contexts_context_id_uploads(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_contexts_contextId_uploads", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create portable quality finalize; scopes: resources:write
    def post_portable_quality_contexts_context_id_uploads_upload_id_finalize(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_portable_quality_contexts_contextId_uploads_uploadId_finalize", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityContextsContextIdUploadsUploadIdFinalizeResponse202ApplicationJson", response.data)
      response
    end

    # Create portable quality parts; scopes: resources:write
    def post_portable_quality_contexts_context_id_uploads_upload_id_parts(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_contexts_contextId_uploads_uploadId_parts", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityContextsContextIdUploadsUploadIdPartsResponse200ApplicationJson", response.data)
      response
    end

    # Create portable quality corrections; scopes: standards:write
    def post_portable_quality_corrections(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_corrections", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityCorrectionsResponse201ApplicationJson", response.data)
      response
    end

    # Create portable quality deliveries; scopes: standards:write
    def post_portable_quality_deliveries(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_deliveries", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityDeliveriesResponse201ApplicationJson", response.data)
      response
    end

    # Create portable quality advance; scopes: standards:write
    def post_portable_quality_deliveries_delivery_id_advance(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_deliveries_deliveryId_advance", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityDeliveriesDeliveryIdAdvanceResponse200ApplicationJson", response.data)
      response
    end

    # Create portable quality callback; scopes: standards:write, eval:read
    def post_portable_quality_deliveries_delivery_id_callback(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_deliveries_deliveryId_callback", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityDeliveriesDeliveryIdCallbackResponse202ApplicationJson", response.data)
      response
    end

    # Create portable quality grants; scopes: grants:write
    def post_portable_quality_grants(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_grants", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityGrantsResponse201ApplicationJson", response.data)
      response
    end

    # Create portable quality resolve; scopes: grants:read
    def post_portable_quality_grants_grant_id_resolve(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_grants_grantId_resolve", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityGrantsGrantIdResolveResponse200ApplicationJson", response.data)
      response
    end

    # Create portable quality installations; scopes: grants:write
    def post_portable_quality_installations(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_installations", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityInstallationsResponse201ApplicationJson", response.data)
      response
    end

    # Create portable quality observations; scopes: observations:write
    def post_portable_quality_observations(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_observations", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityObservationsResponse202ApplicationJson", response.data)
      response
    end

    # Create portable quality plans; scopes: checks:run, resources:read, contexts:read
    def post_portable_quality_plans(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_plans", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityPlansResponse201ApplicationJson", response.data)
      response
    end

    # Create portable quality revisions; scopes: resources:write
    def post_portable_quality_resources_resource_id_revisions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_resources_resourceId_revisions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityResourcesResourceIdRevisionsResponse201ApplicationJson", response.data)
      response
    end

    # Create portable quality query; scopes: resources:read
    def post_portable_quality_resources_resource_id_revisions_revision_id_query(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_resources_resourceId_revisions_revisionId_query", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityResourcesResourceIdRevisionsRevisionIdQueryResponse200ApplicationJson", response.data)
      response
    end

    # Create portable quality executions; scopes: resources:read
    def post_portable_quality_resources_resource_id_revisions_revision_id_query_executions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_resources_resourceId_revisions_revisionId_query_executions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityResourcesResourceIdRevisionsRevisionIdQueryExecutionsResponse202ApplicationJson", response.data)
      response
    end

    # Create portable quality standards; scopes: standards:write
    def post_portable_quality_standards(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_standards", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityStandardsResponse201ApplicationJson", response.data)
      response
    end

    # Create portable quality resolve; scopes: standards:read
    def post_portable_quality_standards_resolve(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_standards_resolve", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityStandardsResolveResponse200ApplicationJson", response.data)
      response
    end

    # Create portable quality decision; scopes: standards:approve
    def post_portable_quality_standards_revisions_revision_id_decision(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_portable_quality_standards_revisions_revisionId_decision", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPortableQualityStandardsRevisionsRevisionIdDecisionResponse200ApplicationJson", response.data)
      response
    end

    # Create production insights discover; scopes: traces:write
    def post_production_insights_discover(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_production_insights_discover", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProductionInsightsDiscoverResponse201ApplicationJson", response.data)
      response
    end

    # Create production insights merge; scopes: admin:workspace
    def post_production_insights_topics_merge(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_production_insights_topics_merge", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProductionInsightsTopicsMergeResponse201ApplicationJson", response.data)
      response
    end

    # Create production insights accept; scopes: traces:write
    def post_production_insights_topics_topic_id_accept(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_production_insights_topics_topicId_accept", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProductionInsightsTopicsTopicIdAcceptResponse200ApplicationJson", response.data)
      response
    end

    # Create production insights action; scopes: public
    def post_production_insights_topics_topic_id_actions_action(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_production_insights_topics_topicId_actions_action", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProductionInsightsTopicsTopicIdActionsActionResponse200ApplicationJson", response.data)
      response
    end

    # Create production insights create candidates; scopes: public
    def post_production_insights_topics_topic_id_actions_create_candidates(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_production_insights_topics_topicId_actions_create_candidates", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProductionInsightsTopicsTopicIdActionsCreateCandidatesResponse200ApplicationJson", response.data)
      response
    end

    # Create production insights create dataset; scopes: public
    def post_production_insights_topics_topic_id_actions_create_dataset(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_production_insights_topics_topicId_actions_create_dataset", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProductionInsightsTopicsTopicIdActionsCreateDatasetResponse200ApplicationJson", response.data)
      response
    end

    # Create production insights create monitor; scopes: public
    def post_production_insights_topics_topic_id_actions_create_monitor(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_production_insights_topics_topicId_actions_create_monitor", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProductionInsightsTopicsTopicIdActionsCreateMonitorResponse200ApplicationJson", response.data)
      response
    end

    # Create production insights create review; scopes: public
    def post_production_insights_topics_topic_id_actions_create_review(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_production_insights_topics_topicId_actions_create_review", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProductionInsightsTopicsTopicIdActionsCreateReviewResponse200ApplicationJson", response.data)
      response
    end

    # Create production insights open playground; scopes: public
    def post_production_insights_topics_topic_id_actions_open_playground(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_production_insights_topics_topicId_actions_open_playground", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProductionInsightsTopicsTopicIdActionsOpenPlaygroundResponse200ApplicationJson", response.data)
      response
    end

    # Create production insights promote candidates; scopes: public
    def post_production_insights_topics_topic_id_actions_promote_candidates(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_production_insights_topics_topicId_actions_promote_candidates", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProductionInsightsTopicsTopicIdActionsPromoteCandidatesResponse200ApplicationJson", response.data)
      response
    end

    # Create production insights start improvement cycle; scopes: public
    def post_production_insights_topics_topic_id_actions_start_improvement_cycle(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_production_insights_topics_topicId_actions_start_improvement_cycle", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProductionInsightsTopicsTopicIdActionsStartImprovementCycleResponse200ApplicationJson", response.data)
      response
    end

    # Create production insights propose label; scopes: traces:write
    def post_production_insights_topics_topic_id_propose_label(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_production_insights_topics_topicId_propose_label", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProductionInsightsTopicsTopicIdProposeLabelResponse201ApplicationJson", response.data)
      response
    end

    # Create production insights split; scopes: admin:workspace
    def post_production_insights_topics_topic_id_split(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_production_insights_topics_topicId_split", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProductionInsightsTopicsTopicIdSplitResponse201ApplicationJson", response.data)
      response
    end

    # Create prompts prompts; scopes: eval:write
    def post_prompts(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_prompts", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPromptsResponse201ApplicationJson", response.data)
      response
    end

    # Create prompts rollback; scopes: prompt:publish
    def post_prompts_prompt_id_environments_environment_rollback(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_prompts_promptId_environments_environment_rollback", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPromptsPromptIdEnvironmentsEnvironmentRollbackResponse200ApplicationJson", response.data)
      response
    end

    # Create prompts render; scopes: eval:read
    def post_prompts_prompt_id_render(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_prompts_promptId_render", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPromptsPromptIdRenderResponse200ApplicationJson", response.data)
      response
    end

    # Create prompts test; scopes: runs:write
    def post_prompts_prompt_id_test(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_prompts_promptId_test", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPromptsPromptIdTestResponse200ApplicationJson", response.data)
      response
    end

    # Create prompts versions; scopes: eval:write
    def post_prompts_prompt_id_versions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_prompts_promptId_versions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPromptsPromptIdVersionsResponse201ApplicationJson", response.data)
      response
    end

    # Create prompts approve; scopes: prompt:publish
    def post_prompts_prompt_id_versions_version_id_approve(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_prompts_promptId_versions_versionId_approve", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPromptsPromptIdVersionsVersionIdApproveResponse200ApplicationJson", response.data)
      response
    end

    # Create prompts publish; scopes: prompt:publish
    def post_prompts_prompt_id_versions_version_id_publish(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_prompts_promptId_versions_versionId_publish", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPromptsPromptIdVersionsVersionIdPublishResponse200ApplicationJson", response.data)
      response
    end

    # Create prompts submit review; scopes: eval:write
    def post_prompts_prompt_id_versions_version_id_submit_review(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_prompts_promptId_versions_versionId_submit_review", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiPromptsPromptIdVersionsVersionIdSubmitReviewResponse200ApplicationJson", response.data)
      response
    end

    # Create proof controls; scopes: eval:read
    def post_proof_controls(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_controls", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofControlsResponse201ApplicationJson", response.data)
      response
    end

    # Create proof evidence; scopes: eval:read
    def post_proof_controls_control_id_evidence(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_controls_controlId_evidence", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofControlsControlIdEvidenceResponse201ApplicationJson", response.data)
      response
    end

    # Create proof prepare engagement; scopes: eval:read
    def post_proof_controls_control_id_prepare_engagement(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_controls_controlId_prepare_engagement", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofControlsControlIdPrepareEngagementResponse201ApplicationJson", response.data)
      response
    end

    # Create proof safeguards; scopes: eval:read
    def post_proof_controls_control_id_safeguards(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_controls_controlId_safeguards", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofControlsControlIdSafeguardsResponse201ApplicationJson", response.data)
      response
    end

    # Create proof token; scopes: public
    def post_proof_guest_evidence_token(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_guest_evidence_token", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofGuestEvidenceTokenResponse201ApplicationJson", response.data)
      response
    end

    # Create proof controls; scopes: eval:write
    def post_proof_risks_and_controls_controls(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_controls", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofRisksAndControlsControlsResponse201ApplicationJson", response.data)
      response
    end

    # Create proof evidence requests; scopes: eval:write
    def post_proof_risks_and_controls_controls_control_id_evidence_requests(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_controls_controlId_evidence_requests", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofRisksAndControlsControlsControlIdEvidenceRequestsResponse201ApplicationJson", response.data)
      response
    end

    # Create proof review; scopes: eval:write
    def post_proof_risks_and_controls_controls_control_id_review(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_controls_controlId_review", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofRisksAndControlsControlsControlIdReviewResponse201ApplicationJson", response.data)
      response
    end

    # Create proof safeguards; scopes: eval:write
    def post_proof_risks_and_controls_controls_control_id_safeguards(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_controls_controlId_safeguards", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create proof discovery; scopes: eval:write
    def post_proof_risks_and_controls_discovery(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_discovery", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofRisksAndControlsDiscoveryResponse200ApplicationJson", response.data)
      response
    end

    # Create proof submissions; scopes: eval:write
    def post_proof_risks_and_controls_evidence_requests_request_id_submissions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_evidence_requests_requestId_submissions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofRisksAndControlsEvidenceRequestsRequestIdSubmissionsResponse201ApplicationJson", response.data)
      response
    end

    # Create proof exports; scopes: eval:read
    def post_proof_risks_and_controls_exports(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_exports", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofRisksAndControlsExportsResponse201ApplicationJson", response.data)
      response
    end

    # Create proof guest invites; scopes: eval:write
    def post_proof_risks_and_controls_guest_invites(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_guest_invites", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofRisksAndControlsGuestInvitesResponse201ApplicationJson", response.data)
      response
    end

    # Create proof links; scopes: eval:write
    def post_proof_risks_and_controls_links(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_links", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create proof profiles; scopes: eval:write
    def post_proof_risks_and_controls_profiles(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_profiles", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofRisksAndControlsProfilesResponse200ApplicationJson", response.data)
      response
    end

    # Create proof risk acceptances; scopes: eval:write
    def post_proof_risks_and_controls_risk_acceptances(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_risk_acceptances", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofRisksAndControlsRiskAcceptancesResponse201ApplicationJson", response.data)
      response
    end

    # Create proof risks; scopes: eval:write
    def post_proof_risks_and_controls_risks(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_risks", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofRisksAndControlsRisksResponse201ApplicationJson", response.data)
      response
    end

    # Create proof review; scopes: eval:write
    def post_proof_risks_and_controls_submissions_submission_id_review(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_submissions_submissionId_review", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofRisksAndControlsSubmissionsSubmissionIdReviewResponse200ApplicationJson", response.data)
      response
    end

    # Create proof tasks; scopes: eval:write
    def post_proof_risks_and_controls_tasks(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_tasks", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create proof walkthroughs; scopes: eval:write
    def post_proof_risks_and_controls_walkthroughs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_walkthroughs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProofRisksAndControlsWalkthroughsResponse201ApplicationJson", response.data)
      response
    end

    # Create proof notes; scopes: eval:write
    def post_proof_risks_and_controls_walkthroughs_walkthrough_id_notes(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proof_risks_and_controls_walkthroughs_walkthroughId_notes", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create proposed changes approve; scopes: eval:write
    def post_proposed_changes_id_approve(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proposed_changes_id_approve", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProposedChangesIdApproveResponse200ApplicationJson", response.data)
      response
    end

    # Create proposed changes export pr; scopes: eval:write
    def post_proposed_changes_id_export_pr(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proposed_changes_id_export_pr", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProposedChangesIdExportPrResponse200ApplicationJson", response.data)
      response
    end

    # Create proposed changes reject; scopes: eval:write
    def post_proposed_changes_id_reject(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_proposed_changes_id_reject", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiProposedChangesIdRejectResponse200ApplicationJson", response.data)
      response
    end

    # Create quality quality; scopes: runs:write
    def post_quality(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_quality", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiQualityResponse200ApplicationJson", response.data)
      response
    end

    # Create red team generate; scopes: red_team:run
    def post_red_team_attack_cases_generate(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_attack_cases_generate", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRedTeamAttackCasesGenerateResponse201ApplicationJson", response.data)
      response
    end

    # Create red team review; scopes: red_team:approve
    def post_red_team_attack_cases_id_review(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_attack_cases_id_review", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRedTeamAttackCasesIdReviewResponse200ApplicationJson", response.data)
      response
    end

    # Create red team campaigns; scopes: red_team:run
    def post_red_team_campaigns(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_campaigns", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create red team runs; scopes: red_team:run
    def post_red_team_campaigns_id_runs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_campaigns_id_runs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create red team versions; scopes: red_team:run
    def post_red_team_campaigns_id_versions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_campaigns_id_versions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRedTeamCampaignsIdVersionsResponse201ApplicationJson", response.data)
      response
    end

    # Create red team approve; scopes: red_team:approve
    def post_red_team_campaigns_id_versions_version_id_approve(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_campaigns_id_versions_versionId_approve", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRedTeamCampaignsIdVersionsVersionIdApproveResponse200ApplicationJson", response.data)
      response
    end

    # Create red team promote regression; scopes: red_team:approve
    def post_red_team_findings_id_promote_regression(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_findings_id_promote_regression", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRedTeamFindingsIdPromoteRegressionResponse201ApplicationJson", response.data)
      response
    end

    # Create red team remediation links; scopes: red_team:approve
    def post_red_team_findings_id_remediation_links(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_findings_id_remediation_links", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create red team signed report; scopes: red_team:approve
    def post_red_team_findings_id_signed_report(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_findings_id_signed_report", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRedTeamFindingsIdSignedReportResponse201ApplicationJson", response.data)
      response
    end

    # Create red team transition; scopes: red_team:approve
    def post_red_team_findings_id_transition(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_findings_id_transition", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRedTeamFindingsIdTransitionResponse200ApplicationJson", response.data)
      response
    end

    # Create red team bridge evidence; scopes: eval:write
    def post_red_team_observations_bridge_evidence(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_observations_bridge_evidence", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create red team risk packs; scopes: red_team:approve
    def post_red_team_risk_packs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_risk_packs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRedTeamRiskPacksResponse201ApplicationJson", response.data)
      response
    end

    # Create red team review; scopes: red_team:approve
    def post_red_team_risk_packs_id_review(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_risk_packs_id_review", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRedTeamRiskPacksIdReviewResponse200ApplicationJson", response.data)
      response
    end

    # Create red team cancel; scopes: red_team:run
    def post_red_team_runs_id_cancel(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_runs_id_cancel", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRedTeamRunsIdCancelResponse200ApplicationJson", response.data)
      response
    end

    # Create red team compare; scopes: red_team:run
    def post_red_team_runs_id_compare(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_red_team_runs_id_compare", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRedTeamRunsIdCompareResponse201ApplicationJson", response.data)
      response
    end

    # Create releases releases; scopes: eval:write
    def post_releases(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_releases", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create remote runners remote runners; scopes: admin:workspace
    def post_remote_runners(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_remote_runners", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRemoteRunnersResponse201ApplicationJson", response.data)
      response
    end

    # Create remote runners claim; scopes: public
    def post_remote_runners_claim(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_remote_runners_claim", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create remote runners complete; scopes: public
    def post_remote_runners_complete(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_remote_runners_complete", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create remote runners heartbeat; scopes: public
    def post_remote_runners_heartbeat(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_remote_runners_heartbeat", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRemoteRunnersHeartbeatResponse200ApplicationJson", response.data)
      response
    end

    # Create remote runners rotate; scopes: admin:workspace
    def post_remote_runners_id_rotate(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_remote_runners_id_rotate", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRemoteRunnersIdRotateResponse200ApplicationJson", response.data)
      response
    end

    # Create remote runners jobs; scopes: runs:write
    def post_remote_runners_jobs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_remote_runners_jobs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create remote runners cancel; scopes: runs:write
    def post_remote_runners_jobs_job_id_cancel(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_remote_runners_jobs_jobId_cancel", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRemoteRunnersJobsJobIdCancelResponse200ApplicationJson", response.data)
      response
    end

    # Create remote runners reap; scopes: admin:workspace
    def post_remote_runners_jobs_reap(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_remote_runners_jobs_reap", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRemoteRunnersJobsReapResponse200ApplicationJson", response.data)
      response
    end

    # Create remote runners session; scopes: public
    def post_remote_runners_session(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_remote_runners_session", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRemoteRunnersSessionResponse200ApplicationJson", response.data)
      response
    end

    # Create remote runners stream; scopes: public
    def post_remote_runners_stream(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_remote_runners_stream", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRemoteRunnersStreamResponse201ApplicationJson", response.data)
      response
    end

    # Create remote runners targets; scopes: runs:write
    def post_remote_runners_targets(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_remote_runners_targets", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create reports reports; scopes: reports:write
    def post_reports(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_reports", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiReportsResponse201ApplicationJson", response.data)
      response
    end

    # Create reports revoke; scopes: reports:write
    def post_reports_share_token_revoke(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_reports_shareToken_revoke", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiReportsShareTokenRevokeResponse200ApplicationJson", response.data)
      response
    end

    # Create repository intelligence baselines; scopes: eval:write
    def post_repository_intelligence_repositories_repository_id_baselines(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_repository_intelligence_repositories_repositoryId_baselines", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create repository intelligence actions; scopes: eval:write
    def post_repository_intelligence_repositories_repository_id_baselines_baseline_id_actions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_repository_intelligence_repositories_repositoryId_baselines_baselineId_actions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create repository intelligence runs; scopes: runs:write
    def post_repository_intelligence_repositories_repository_id_baselines_baseline_id_runs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_repository_intelligence_repositories_repositoryId_baselines_baselineId_runs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create repository intelligence coverage; scopes: eval:read
    def post_repository_intelligence_repositories_repository_id_graph_coverage(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_repository_intelligence_repositories_repositoryId_graph_coverage", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRepositoryIntelligenceRepositoriesRepositoryIdGraphCoverageResponse200ApplicationJson", response.data)
      response
    end

    # Create repository intelligence impact; scopes: eval:write
    def post_repository_intelligence_repositories_repository_id_graph_impact(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_repository_intelligence_repositories_repositoryId_graph_impact", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRepositoryIntelligenceRepositoriesRepositoryIdGraphImpactResponse200ApplicationJson", response.data)
      response
    end

    # Create repository intelligence objectives; scopes: objectives:write
    def post_repository_intelligence_repositories_repository_id_graph_objectives(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_repository_intelligence_repositories_repositoryId_graph_objectives", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRepositoryIntelligenceRepositoriesRepositoryIdGraphObjectivesResponse200ApplicationJson", response.data)
      response
    end

    # Create repository intelligence risks; scopes: eval:write
    def post_repository_intelligence_repositories_repository_id_graph_risks(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_repository_intelligence_repositories_repositoryId_graph_risks", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRepositoryIntelligenceRepositoriesRepositoryIdGraphRisksResponse200ApplicationJson", response.data)
      response
    end

    # Create repository intelligence traverse; scopes: eval:read
    def post_repository_intelligence_repositories_repository_id_graph_traverse(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_repository_intelligence_repositories_repositoryId_graph_traverse", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRepositoryIntelligenceRepositoriesRepositoryIdGraphTraverseResponse200ApplicationJson", response.data)
      response
    end

    # Create repository intelligence scans; scopes: eval:write
    def post_repository_intelligence_repositories_repository_id_scans(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_repository_intelligence_repositories_repositoryId_scans", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiRepositoryIntelligenceRepositoriesRepositoryIdScansResponse202ApplicationJson", response.data)
      response
    end

    # Create scorers scorers; scopes: eval:write
    def post_scorers(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_scorers", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiScorersResponse201ApplicationJson", response.data)
      response
    end

    # Create scorers alignment runs; scopes: runs:write
    def post_scorers_scorer_id_alignment_runs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_scorers_scorerId_alignment_runs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiScorersScorerIdAlignmentRunsResponse201ApplicationJson", response.data)
      response
    end

    # Create scorers calibration; scopes: scorer:publish
    def post_scorers_scorer_id_calibration(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_scorers_scorerId_calibration", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiScorersScorerIdCalibrationResponse201ApplicationJson", response.data)
      response
    end

    # Create scorers examples; scopes: eval:write
    def post_scorers_scorer_id_examples(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_scorers_scorerId_examples", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiScorersScorerIdExamplesResponse201ApplicationJson", response.data)
      response
    end

    # Create scorers test; scopes: runs:write
    def post_scorers_scorer_id_test(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_scorers_scorerId_test", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiScorersScorerIdTestResponse200ApplicationJson", response.data)
      response
    end

    # Create scorers versions; scopes: eval:write
    def post_scorers_scorer_id_versions(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_scorers_scorerId_versions", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiScorersScorerIdVersionsResponse201ApplicationJson", response.data)
      response
    end

    # Create scorers approve; scopes: scorer:publish
    def post_scorers_scorer_id_versions_version_id_approve(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_scorers_scorerId_versions_versionId_approve", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiScorersScorerIdVersionsVersionIdApproveResponse200ApplicationJson", response.data)
      response
    end

    # Create scorers bindings; scopes: eval:write
    def post_scorers_scorer_id_versions_version_id_bindings(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_scorers_scorerId_versions_versionId_bindings", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiScorersScorerIdVersionsVersionIdBindingsResponse201ApplicationJson", response.data)
      response
    end

    # Create scorers publish; scopes: scorer:publish
    def post_scorers_scorer_id_versions_version_id_publish(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_scorers_scorerId_versions_versionId_publish", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiScorersScorerIdVersionsVersionIdPublishResponse200ApplicationJson", response.data)
      response
    end

    # Create scorers submit review; scopes: eval:write
    def post_scorers_scorer_id_versions_version_id_submit_review(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_scorers_scorerId_versions_versionId_submit_review", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiScorersScorerIdVersionsVersionIdSubmitReviewResponse200ApplicationJson", response.data)
      response
    end

    # Create shadow evals shadow evals; scopes: runs:write
    def post_shadow_evals(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_shadow_evals", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiShadowEvalsResponse201ApplicationJson", response.data)
      response
    end

    # Create stream stream; scopes: eval:write
    def post_stream(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_stream", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiStreamResponse200ApplicationJson", response.data)
      response
    end

    # Sync local labeled cases into web storage; scopes: eval:write
    def post_sync_labeled_cases(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_sync_labeled_cases", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiSyncLabeledCasesResponse201ApplicationJson", response.data)
      response
    end

    # Sync a local prompt edit as a web prompt version; scopes: eval:write
    def post_sync_prompt_version(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_sync_prompt_version", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Sync a CLI evaluation run result; scopes: eval:write
    def post_sync_run_result(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_sync_run_result", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiSyncRunResultResponse201ApplicationJson", response.data)
      response
    end

    # Create telemetry test trace; scopes: traces:write
    def post_telemetry_test_trace(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("post_telemetry_test_trace", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiTelemetryTestTraceResponse201ApplicationJson", response.data)
      response
    end

    # Create traces traces; scopes: traces:write
    def post_traces(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_traces", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiTracesResponse201ApplicationJson", response.data)
      response
    end

    # Create traces feedback; scopes: traces:write
    def post_traces_id_feedback(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_traces_id_feedback", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiTracesIdFeedbackResponse201ApplicationJson", response.data)
      response
    end

    # Create traces prepare labeling; scopes: eval:write
    def post_traces_id_prepare_labeling(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_traces_id_prepare_labeling", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create traces spans; scopes: traces:write
    def post_traces_id_spans(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_traces_id_spans", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiTracesIdSpansResponse201ApplicationJson", response.data)
      response
    end

    # Create webhooks git provider; scopes: public
    def post_webhooks_git_provider(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_webhooks_git_provider", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Create webhooks github app; scopes: public
    def post_webhooks_github_app(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_webhooks_github_app", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiWebhooksGithubAppResponse202ApplicationJson", response.data)
      response
    end

    # Create workflows workflows; scopes: eval:write
    def post_workflows(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_workflows", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiWorkflowsResponse201ApplicationJson", response.data)
      response
    end

    # Create workflows handoffs; scopes: runs:write
    def post_workflows_id_handoffs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_workflows_id_handoffs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiWorkflowsIdHandoffsResponse201ApplicationJson", response.data)
      response
    end

    # Create workflows runs; scopes: runs:write
    def post_workflows_id_runs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("post_workflows_id_runs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiWorkflowsIdRunsResponse201ApplicationJson", response.data)
      response
    end

    # Prune expired trajectory analyses; scopes: admin:workspace
    def prune_expired_trajectory_analyses(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("pruneExpiredTrajectoryAnalyses", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiTrajectoryAnalysisRetentionResponse200ApplicationJson", response.data)
      response
    end

    # Replace annotations tasks; scopes: eval:write
    def put_annotations_tasks(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("put_annotations_tasks", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PutApiAnnotationsTasksResponse200ApplicationJson", response.data)
      response
    end

    # Replace annotations items; scopes: eval:write
    def put_annotations_tasks_id_items(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("put_annotations_tasks_id_items", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PutApiAnnotationsTasksIdItemsResponse200ApplicationJson", response.data)
      response
    end

    # Replace costs alerts; scopes: admin:workspace
    def put_costs_alerts(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("put_costs_alerts", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PutApiCostsAlertsResponse200ApplicationJson", response.data)
      response
    end

    # Replace costs result budget; scopes: admin:workspace
    def put_costs_result_budget(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("put_costs_result_budget", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PutApiCostsResultBudgetResponse200ApplicationJson", response.data)
      response
    end

    # Replace evaluations evaluations; scopes: eval:write
    def put_evaluations(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("put_evaluations", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PutApiEvaluationsResponse200ApplicationJson", response.data)
      response
    end

    # Replace evaluations program; scopes: eval:write
    def put_evaluations_id_program(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("put_evaluations_id_program", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PutApiEvaluationsIdProgramResponse200ApplicationJson", response.data)
      response
    end

    # Replace evaluations regression; scopes: eval:write
    def put_evaluations_id_regression(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("put_evaluations_id_regression", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PutApiEvaluationsIdRegressionResponse200ApplicationJson", response.data)
      response
    end

    # Replace evaluations testCaseId; scopes: eval:write
    def put_evaluations_id_test_cases_test_case_id(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("put_evaluations_id_test_cases_testCaseId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PutApiEvaluationsIdTestCasesTestCaseIdResponse200ApplicationJson", response.data)
      response
    end

    # Replace harness baselines; scopes: admin:workspace
    def put_harness_baselines(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("put_harness_baselines", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PutApiHarnessBaselinesResponse200ApplicationJson", response.data)
      response
    end

    # Replace llm judge configs; scopes: eval:write
    def put_llm_judge_configs(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("put_llm_judge_configs", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PutApiLlmJudgeConfigsResponse200ApplicationJson", response.data)
      response
    end

    # Replace organizations organizations; scopes: admin:org
    def put_organizations(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("put_organizations", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PutApiOrganizationsResponse200ApplicationJson", response.data)
      response
    end

    # Replace system controls; scopes: admin:workspace
    def put_system_controls(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("put_system_controls", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PutApiSystemControlsResponse200ApplicationJson", response.data)
      response
    end

    # Replace workflows id; scopes: eval:write
    def put_workflows_id(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("put_workflows_id", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PutApiWorkflowsIdResponse200ApplicationJson", response.data)
      response
    end

    # Replace workflows runId; scopes: runs:write
    def put_workflows_id_runs_run_id(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("put_workflows_id_runs_runId", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PutApiWorkflowsIdRunsRunIdResponse200ApplicationJson", response.data)
      response
    end

    # Repair reviewed canonical bindings and require fresh resource selection; scopes: admin:workspace, resources:read, resources:write
    def repair_connector_root(path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      response = request("repairConnectorRoot", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PatchApiConnectionsGraphIdResponse200ApplicationJson", response.data)
      response
    end

    # Resend an organization invitation; scopes: admin:org
    def resend_organization_invitation(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("resendOrganizationInvitation", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiOrganizationsInvitationsInvitationIdResendResponse200ApplicationJson", response.data)
      response
    end

    # Review an agent credential handoff; scopes: admin:keys
    def review_agent_credential_handoff(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("reviewAgentCredentialHandoff", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("GetApiAgentSetupAuthorizeResponse200ApplicationJson", response.data)
      response
    end

    # Revoke an organization invitation; scopes: admin:org
    def revoke_organization_invitation(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("revokeOrganizationInvitation", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiOrganizationsInvitationsInvitationIdResponse200ApplicationJson", response.data)
      response
    end

    # Test supplied text with deterministic assertions; scopes: public
    def run_assertion_test_mode(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("runAssertionTestMode", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiDemoCustomEvalResponse200ApplicationJson", response.data)
      response
    end

    # Score a complete multi-agent trajectory; scopes: runs:write
    def score_trajectory_analysis(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("scoreTrajectoryAnalysis", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiTrajectoryAnalysisTrajectoryIdScoreResponse201ApplicationJson", response.data)
      response
    end

    # Search published EvalGate documentation; scopes: docs:read
    def search_eval_gate_documentation(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("searchEvalGateDocumentation", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("json.RawMessage", response.data)
      response
    end

    # Review exact existing resource revisions with concurrency fences; scopes: admin:workspace, resources:read, resources:write
    def select_connection_resources(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("selectConnectionResources", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiConnectionsGraphIdSelectionResponse200ApplicationJson", response.data)
      response
    end

    # Pause, resume or permanently revoke this configured account root; scopes: admin:workspace, resources:read, resources:write
    def set_connector_root_lifecycle(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("setConnectorRootLifecycle", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiConnectionsGraphIdLifecycleResponse200ApplicationJson", response.data)
      response
    end

    # Start a human-approved agent credential handoff; scopes: public
    def start_agent_credential_handoff(path: {}, query: {}, headers: {}, body:, idempotency_key: nil)
      response = request("startAgentCredentialHandoff", path: path, query: query, headers: headers, body: body, idempotency_key: idempotency_key)
      response.data = Model.decode("PostApiAgentSetupStartResponse201ApplicationJson", response.data)
      response
    end

    # Unlink a vault-backed provider credential; scopes: admin:workspace
    def unlink_infisical_vault_credential(path: {}, query: {}, headers: {}, idempotency_key: nil)
      response = request("unlinkInfisicalVaultCredential", path: path, query: query, headers: headers, idempotency_key: idempotency_key)
      response.data = Model.decode("DeleteApiOrgCredentialVaultsInfisicalBindingsBindingIdResponse200ApplicationJson", response.data)
      response
    end
  end
end
