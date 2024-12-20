return {
  --   'huggingface/llm.nvim',
  --   opts = {
  --     model = 'mistral',
  --     url = 'http://syskoai.replynet.prv:11434/api/generate',
  --     -- cf https://github.com/ollama/ollama/blob/main/docs/api.md#parameters
  --     request_body = {
  --       -- Modelfile options for the model you use
  --       options = {
  --         temperature = 0.2,
  --         top_p = 0.95,
  --       },
  --     },
  --     debounce_ms = 0,
  --     accept_keymap = '<C>-y',
  --     dismiss_keymap = '<S-Tab>',
  --     tls_skip_verify_insecure = false,
  --     enable_suggestions_on_startup = true,
  --   },
}
