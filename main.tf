resource "google_ces_agent" "ces_agents" {
  for_each = var.ces_agents

  app             = each.value.app
  display_name    = each.value.display_name
  location        = each.value.location
  agent_id        = each.value.agent_id
  child_agents    = each.value.child_agents
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  guardrails      = each.value.guardrails
  instruction     = each.value.instruction
  project         = each.value.project
  tools           = each.value.tools

  dynamic "after_agent_callbacks" {
    for_each = each.value.after_agent_callbacks != null ? each.value.after_agent_callbacks : []
    content {
      description                 = after_agent_callbacks.value.description
      disabled                    = after_agent_callbacks.value.disabled
      proactive_execution_enabled = after_agent_callbacks.value.proactive_execution_enabled
      python_code                 = after_agent_callbacks.value.python_code
    }
  }

  dynamic "after_model_callbacks" {
    for_each = each.value.after_model_callbacks != null ? each.value.after_model_callbacks : []
    content {
      description                 = after_model_callbacks.value.description
      disabled                    = after_model_callbacks.value.disabled
      proactive_execution_enabled = after_model_callbacks.value.proactive_execution_enabled
      python_code                 = after_model_callbacks.value.python_code
    }
  }

  dynamic "after_tool_callbacks" {
    for_each = each.value.after_tool_callbacks != null ? each.value.after_tool_callbacks : []
    content {
      description                 = after_tool_callbacks.value.description
      disabled                    = after_tool_callbacks.value.disabled
      proactive_execution_enabled = after_tool_callbacks.value.proactive_execution_enabled
      python_code                 = after_tool_callbacks.value.python_code
    }
  }

  dynamic "before_agent_callbacks" {
    for_each = each.value.before_agent_callbacks != null ? each.value.before_agent_callbacks : []
    content {
      description                 = before_agent_callbacks.value.description
      disabled                    = before_agent_callbacks.value.disabled
      proactive_execution_enabled = before_agent_callbacks.value.proactive_execution_enabled
      python_code                 = before_agent_callbacks.value.python_code
    }
  }

  dynamic "before_model_callbacks" {
    for_each = each.value.before_model_callbacks != null ? each.value.before_model_callbacks : []
    content {
      description                 = before_model_callbacks.value.description
      disabled                    = before_model_callbacks.value.disabled
      proactive_execution_enabled = before_model_callbacks.value.proactive_execution_enabled
      python_code                 = before_model_callbacks.value.python_code
    }
  }

  dynamic "before_tool_callbacks" {
    for_each = each.value.before_tool_callbacks != null ? each.value.before_tool_callbacks : []
    content {
      description                 = before_tool_callbacks.value.description
      disabled                    = before_tool_callbacks.value.disabled
      proactive_execution_enabled = before_tool_callbacks.value.proactive_execution_enabled
      python_code                 = before_tool_callbacks.value.python_code
    }
  }

  dynamic "llm_agent" {
    for_each = each.value.llm_agent != null ? [each.value.llm_agent] : []
    content {
    }
  }

  dynamic "model_settings" {
    for_each = each.value.model_settings != null ? [each.value.model_settings] : []
    content {
      model       = model_settings.value.model
      temperature = model_settings.value.temperature
    }
  }

  dynamic "remote_a2a_agent" {
    for_each = each.value.remote_a2a_agent != null ? [each.value.remote_a2a_agent] : []
    content {
      a2a_config {
        dynamic "agent_card" {
          for_each = remote_a2a_agent.value.a2a_config.agent_card != null ? [remote_a2a_agent.value.a2a_config.agent_card] : []
          content {
            description = agent_card.value.description
            name        = agent_card.value.name
            dynamic "skills" {
              for_each = agent_card.value.skills
              content {
                description  = skills.value.description
                examples     = skills.value.examples
                id           = skills.value.id
                input_modes  = skills.value.input_modes
                name         = skills.value.name
                output_modes = skills.value.output_modes
                tags         = skills.value.tags
              }
            }
            dynamic "supported_interfaces" {
              for_each = agent_card.value.supported_interfaces
              content {
                protocol_binding = supported_interfaces.value.protocol_binding
                protocol_version = supported_interfaces.value.protocol_version
                tenant           = supported_interfaces.value.tenant
                url              = supported_interfaces.value.url
              }
            }
            version = agent_card.value.version
          }
        }
        agent_registry = remote_a2a_agent.value.a2a_config.agent_registry
        dynamic "api_authentication" {
          for_each = remote_a2a_agent.value.a2a_config.api_authentication != null ? [remote_a2a_agent.value.a2a_config.api_authentication] : []
          content {
            dynamic "api_key_config" {
              for_each = api_authentication.value.api_key_config != null ? [api_authentication.value.api_key_config] : []
              content {
                api_key_secret_version = api_key_config.value.api_key_secret_version
                key_name               = api_key_config.value.key_name
                request_location       = api_key_config.value.request_location
              }
            }
            dynamic "bearer_token_config" {
              for_each = api_authentication.value.bearer_token_config != null ? [api_authentication.value.bearer_token_config] : []
              content {
                token = bearer_token_config.value.token
              }
            }
            dynamic "oauth_config" {
              for_each = api_authentication.value.oauth_config != null ? [api_authentication.value.oauth_config] : []
              content {
                client_id             = oauth_config.value.client_id
                client_secret_version = oauth_config.value.client_secret_version
                oauth_grant_type      = oauth_config.value.oauth_grant_type
                scopes                = oauth_config.value.scopes
                token_endpoint        = oauth_config.value.token_endpoint
              }
            }
            dynamic "service_account_auth_config" {
              for_each = api_authentication.value.service_account_auth_config != null ? [api_authentication.value.service_account_auth_config] : []
              content {
                scopes          = service_account_auth_config.value.scopes
                service_account = service_account_auth_config.value.service_account
              }
            }
          }
        }
        context_id              = remote_a2a_agent.value.a2a_config.context_id
        input_variable_mapping  = remote_a2a_agent.value.a2a_config.input_variable_mapping
        output_variable_mapping = remote_a2a_agent.value.a2a_config.output_variable_mapping
        streaming_enabled       = remote_a2a_agent.value.a2a_config.streaming_enabled
      }
    }
  }

  dynamic "remote_dialogflow_agent" {
    for_each = each.value.remote_dialogflow_agent != null ? [each.value.remote_dialogflow_agent] : []
    content {
      agent                                  = remote_dialogflow_agent.value.agent
      environment_id                         = remote_dialogflow_agent.value.environment_id
      flow_id                                = remote_dialogflow_agent.value.flow_id
      input_variable_mapping                 = remote_dialogflow_agent.value.input_variable_mapping
      language_code_variable                 = remote_dialogflow_agent.value.language_code_variable
      output_variable_mapping                = remote_dialogflow_agent.value.output_variable_mapping
      respect_response_interruption_settings = remote_dialogflow_agent.value.respect_response_interruption_settings
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "toolsets" {
    for_each = each.value.toolsets != null ? each.value.toolsets : []
    content {
      tool_ids = toolsets.value.tool_ids
      toolset  = toolsets.value.toolset
    }
  }

  dynamic "transfer_rules" {
    for_each = each.value.transfer_rules != null ? each.value.transfer_rules : []
    content {
      child_agent = transfer_rules.value.child_agent
      dynamic "deterministic_transfer" {
        for_each = transfer_rules.value.deterministic_transfer != null ? [transfer_rules.value.deterministic_transfer] : []
        content {
          dynamic "expression_condition" {
            for_each = deterministic_transfer.value.expression_condition != null ? [deterministic_transfer.value.expression_condition] : []
            content {
              expression = expression_condition.value.expression
            }
          }
          dynamic "python_code_condition" {
            for_each = deterministic_transfer.value.python_code_condition != null ? [deterministic_transfer.value.python_code_condition] : []
            content {
              python_code = python_code_condition.value.python_code
            }
          }
        }
      }
      direction = transfer_rules.value.direction
      dynamic "disable_planner_transfer" {
        for_each = transfer_rules.value.disable_planner_transfer != null ? [transfer_rules.value.disable_planner_transfer] : []
        content {
          expression_condition {
            expression = disable_planner_transfer.value.expression_condition.expression
          }
        }
      }
    }
  }
}

