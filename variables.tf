variable "ces_agents" {
  description = <<EOT
Map of ces_agents, attributes below
Required:
    - app
    - display_name
    - location
Optional:
    - agent_id
    - child_agents
    - deletion_policy
    - description
    - guardrails
    - instruction
    - project
    - tools
    - after_agent_callbacks (block):
        - description (optional)
        - disabled (optional)
        - proactive_execution_enabled (optional)
        - python_code (required)
    - after_model_callbacks (block):
        - description (optional)
        - disabled (optional)
        - proactive_execution_enabled (optional)
        - python_code (required)
    - after_tool_callbacks (block):
        - description (optional)
        - disabled (optional)
        - proactive_execution_enabled (optional)
        - python_code (required)
    - before_agent_callbacks (block):
        - description (optional)
        - disabled (optional)
        - proactive_execution_enabled (optional)
        - python_code (required)
    - before_model_callbacks (block):
        - description (optional)
        - disabled (optional)
        - proactive_execution_enabled (optional)
        - python_code (required)
    - before_tool_callbacks (block):
        - description (optional)
        - disabled (optional)
        - proactive_execution_enabled (optional)
        - python_code (required)
    - llm_agent (block):
    - model_settings (block):
        - model (optional)
        - temperature (optional)
    - remote_a2a_agent (block):
        - a2a_config (required, block):
            - agent_card (optional, block):
                - description (required)
                - name (required)
                - skills (required, block):
                    - description (required)
                    - examples (optional)
                    - id (required)
                    - input_modes (optional)
                    - name (required)
                    - output_modes (optional)
                    - tags (required)
                - supported_interfaces (required, block):
                    - protocol_binding (required)
                    - protocol_version (required)
                    - tenant (optional)
                    - url (required)
                - version (required)
            - agent_registry (optional)
            - api_authentication (optional, block):
                - api_key_config (optional, block):
                    - api_key_secret_version (required)
                    - key_name (required)
                    - request_location (required)
                - bearer_token_config (optional, block):
                    - token (required)
                - oauth_config (optional, block):
                    - client_id (required)
                    - client_secret_version (required)
                    - oauth_grant_type (required)
                    - scopes (optional)
                    - token_endpoint (required)
                - service_account_auth_config (optional, block):
                    - scopes (optional)
                    - service_account (required)
            - context_id (optional)
            - input_variable_mapping (optional)
            - output_variable_mapping (optional)
            - streaming_enabled (optional)
    - remote_dialogflow_agent (block):
        - agent (required)
        - environment_id (optional)
        - flow_id (required)
        - input_variable_mapping (optional)
        - language_code_variable (optional)
        - output_variable_mapping (optional)
        - respect_response_interruption_settings (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - toolsets (block):
        - tool_ids (optional)
        - toolset (required)
    - transfer_rules (block):
        - child_agent (required)
        - deterministic_transfer (optional, block):
            - expression_condition (optional, block):
                - expression (required)
            - python_code_condition (optional, block):
                - python_code (required)
        - direction (required)
        - disable_planner_transfer (optional, block):
            - expression_condition (required, block):
                - expression (required)
EOT

  type = map(object({
    app             = string
    display_name    = string
    location        = string
    agent_id        = optional(string)
    child_agents    = optional(list(string))
    deletion_policy = optional(string)
    description     = optional(string)
    guardrails      = optional(list(string))
    instruction     = optional(string)
    project         = optional(string)
    tools           = optional(list(string))
    after_agent_callbacks = optional(list(object({
      description                 = optional(string)
      disabled                    = optional(bool)
      proactive_execution_enabled = optional(bool)
      python_code                 = string
    })))
    after_model_callbacks = optional(list(object({
      description                 = optional(string)
      disabled                    = optional(bool)
      proactive_execution_enabled = optional(bool)
      python_code                 = string
    })))
    after_tool_callbacks = optional(list(object({
      description                 = optional(string)
      disabled                    = optional(bool)
      proactive_execution_enabled = optional(bool)
      python_code                 = string
    })))
    before_agent_callbacks = optional(list(object({
      description                 = optional(string)
      disabled                    = optional(bool)
      proactive_execution_enabled = optional(bool)
      python_code                 = string
    })))
    before_model_callbacks = optional(list(object({
      description                 = optional(string)
      disabled                    = optional(bool)
      proactive_execution_enabled = optional(bool)
      python_code                 = string
    })))
    before_tool_callbacks = optional(list(object({
      description                 = optional(string)
      disabled                    = optional(bool)
      proactive_execution_enabled = optional(bool)
      python_code                 = string
    })))
    llm_agent = optional(object({
    }))
    model_settings = optional(object({
      model       = optional(string)
      temperature = optional(number)
    }))
    remote_a2a_agent = optional(object({
      a2a_config = object({
        agent_card = optional(object({
          description = string
          name        = string
          skills = list(object({
            description  = string
            examples     = optional(list(string))
            id           = string
            input_modes  = optional(list(string))
            name         = string
            output_modes = optional(list(string))
            tags         = list(string)
          }))
          supported_interfaces = list(object({
            protocol_binding = string
            protocol_version = string
            tenant           = optional(string)
            url              = string
          }))
          version = string
        }))
        agent_registry = optional(string)
        api_authentication = optional(object({
          api_key_config = optional(object({
            api_key_secret_version = string
            key_name               = string
            request_location       = string
          }))
          bearer_token_config = optional(object({
            token = string
          }))
          oauth_config = optional(object({
            client_id             = string
            client_secret_version = string
            oauth_grant_type      = string
            scopes                = optional(list(string))
            token_endpoint        = string
          }))
          service_account_auth_config = optional(object({
            scopes          = optional(list(string))
            service_account = string
          }))
        }))
        context_id              = optional(string)
        input_variable_mapping  = optional(map(string))
        output_variable_mapping = optional(map(string))
        streaming_enabled       = optional(bool)
      })
    }))
    remote_dialogflow_agent = optional(object({
      agent                                  = string
      environment_id                         = optional(string)
      flow_id                                = string
      input_variable_mapping                 = optional(map(string))
      language_code_variable                 = optional(string)
      output_variable_mapping                = optional(map(string))
      respect_response_interruption_settings = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    toolsets = optional(list(object({
      tool_ids = optional(list(string))
      toolset  = string
    })))
    transfer_rules = optional(list(object({
      child_agent = string
      deterministic_transfer = optional(object({
        expression_condition = optional(object({
          expression = string
        }))
        python_code_condition = optional(object({
          python_code = string
        }))
      }))
      direction = string
      disable_planner_transfer = optional(object({
        expression_condition = object({
          expression = string
        })
      }))
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ces_agents : (
        v.remote_a2a_agent == null || (v.remote_a2a_agent.a2a_config.agent_card == null || (length(v.remote_a2a_agent.a2a_config.agent_card.skills) >= 1))
      )
    ])
    error_message = "Each skills list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_agents : (
        v.remote_a2a_agent == null || (v.remote_a2a_agent.a2a_config.agent_card == null || (length(v.remote_a2a_agent.a2a_config.agent_card.supported_interfaces) >= 1))
      )
    ])
    error_message = "Each supported_interfaces list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

