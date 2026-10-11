output "ces_agents_id" {
  description = "Map of id values across all ces_agents, keyed the same as var.ces_agents except keys with no id are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ces_agents_after_agent_callbacks" {
  description = "Map of after_agent_callbacks values across all ces_agents, keyed the same as var.ces_agents except keys with no after_agent_callbacks are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.after_agent_callbacks if v.after_agent_callbacks != null && length(v.after_agent_callbacks) > 0 }
}
output "ces_agents_after_model_callbacks" {
  description = "Map of after_model_callbacks values across all ces_agents, keyed the same as var.ces_agents except keys with no after_model_callbacks are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.after_model_callbacks if v.after_model_callbacks != null && length(v.after_model_callbacks) > 0 }
}
output "ces_agents_after_tool_callbacks" {
  description = "Map of after_tool_callbacks values across all ces_agents, keyed the same as var.ces_agents except keys with no after_tool_callbacks are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.after_tool_callbacks if v.after_tool_callbacks != null && length(v.after_tool_callbacks) > 0 }
}
output "ces_agents_agent_id" {
  description = "Map of agent_id values across all ces_agents, keyed the same as var.ces_agents except keys with no agent_id are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.agent_id if v.agent_id != null && length(v.agent_id) > 0 }
}
output "ces_agents_app" {
  description = "Map of app values across all ces_agents, keyed the same as var.ces_agents except keys with no app are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.app if v.app != null && length(v.app) > 0 }
}
output "ces_agents_before_agent_callbacks" {
  description = "Map of before_agent_callbacks values across all ces_agents, keyed the same as var.ces_agents except keys with no before_agent_callbacks are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.before_agent_callbacks if v.before_agent_callbacks != null && length(v.before_agent_callbacks) > 0 }
}
output "ces_agents_before_model_callbacks" {
  description = "Map of before_model_callbacks values across all ces_agents, keyed the same as var.ces_agents except keys with no before_model_callbacks are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.before_model_callbacks if v.before_model_callbacks != null && length(v.before_model_callbacks) > 0 }
}
output "ces_agents_before_tool_callbacks" {
  description = "Map of before_tool_callbacks values across all ces_agents, keyed the same as var.ces_agents except keys with no before_tool_callbacks are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.before_tool_callbacks if v.before_tool_callbacks != null && length(v.before_tool_callbacks) > 0 }
}
output "ces_agents_child_agents" {
  description = "Map of child_agents values across all ces_agents, keyed the same as var.ces_agents except keys with no child_agents are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.child_agents if v.child_agents != null && length(v.child_agents) > 0 }
}
output "ces_agents_create_time" {
  description = "Map of create_time values across all ces_agents, keyed the same as var.ces_agents except keys with no create_time are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "ces_agents_deletion_policy" {
  description = "Map of deletion_policy values across all ces_agents, keyed the same as var.ces_agents except keys with no deletion_policy are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "ces_agents_description" {
  description = "Map of description values across all ces_agents, keyed the same as var.ces_agents except keys with no description are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.description if v.description != null && length(v.description) > 0 }
}
output "ces_agents_display_name" {
  description = "Map of display_name values across all ces_agents, keyed the same as var.ces_agents except keys with no display_name are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "ces_agents_etag" {
  description = "Map of etag values across all ces_agents, keyed the same as var.ces_agents except keys with no etag are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "ces_agents_generated_summary" {
  description = "Map of generated_summary values across all ces_agents, keyed the same as var.ces_agents except keys with no generated_summary are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.generated_summary if v.generated_summary != null && length(v.generated_summary) > 0 }
}
output "ces_agents_guardrails" {
  description = "Map of guardrails values across all ces_agents, keyed the same as var.ces_agents except keys with no guardrails are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.guardrails if v.guardrails != null && length(v.guardrails) > 0 }
}
output "ces_agents_instruction" {
  description = "Map of instruction values across all ces_agents, keyed the same as var.ces_agents except keys with no instruction are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.instruction if v.instruction != null && length(v.instruction) > 0 }
}
output "ces_agents_llm_agent" {
  description = "Map of llm_agent values across all ces_agents, keyed the same as var.ces_agents except keys with no llm_agent are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => one(v.llm_agent) if v.llm_agent != null && length(v.llm_agent) > 0 }
}
output "ces_agents_location" {
  description = "Map of location values across all ces_agents, keyed the same as var.ces_agents except keys with no location are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.location if v.location != null && length(v.location) > 0 }
}
output "ces_agents_model_settings" {
  description = "Map of model_settings values across all ces_agents, keyed the same as var.ces_agents except keys with no model_settings are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => one(v.model_settings) if v.model_settings != null && length(v.model_settings) > 0 }
}
output "ces_agents_name" {
  description = "Map of name values across all ces_agents, keyed the same as var.ces_agents except keys with no name are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ces_agents_project" {
  description = "Map of project values across all ces_agents, keyed the same as var.ces_agents except keys with no project are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.project if v.project != null && length(v.project) > 0 }
}
output "ces_agents_remote_a2a_agent" {
  description = "Map of remote_a2a_agent values across all ces_agents, keyed the same as var.ces_agents except keys with no remote_a2a_agent are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => one(v.remote_a2a_agent) if v.remote_a2a_agent != null && length(v.remote_a2a_agent) > 0 }
}
output "ces_agents_remote_dialogflow_agent" {
  description = "Map of remote_dialogflow_agent values across all ces_agents, keyed the same as var.ces_agents except keys with no remote_dialogflow_agent are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => one(v.remote_dialogflow_agent) if v.remote_dialogflow_agent != null && length(v.remote_dialogflow_agent) > 0 }
}
output "ces_agents_tools" {
  description = "Map of tools values across all ces_agents, keyed the same as var.ces_agents except keys with no tools are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.tools if v.tools != null && length(v.tools) > 0 }
}
output "ces_agents_toolsets" {
  description = "Map of toolsets values across all ces_agents, keyed the same as var.ces_agents except keys with no toolsets are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.toolsets if v.toolsets != null && length(v.toolsets) > 0 }
}
output "ces_agents_transfer_rules" {
  description = "Map of transfer_rules values across all ces_agents, keyed the same as var.ces_agents except keys with no transfer_rules are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.transfer_rules if v.transfer_rules != null && length(v.transfer_rules) > 0 }
}
output "ces_agents_update_time" {
  description = "Map of update_time values across all ces_agents, keyed the same as var.ces_agents except keys with no update_time are omitted"
  value       = { for k, v in google_ces_agent.ces_agents : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

