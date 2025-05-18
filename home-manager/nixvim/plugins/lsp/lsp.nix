{
  pkgs,
  ...
}:
{
  programs.nixvim = {
    plugins = {
      lsp-lines = {
        enable = true;
      };
      lsp-format = {
        enable = true;
      };
      helm = {
        enable = true;
      };
      lsp = {
        enable = true;
        inlayHints = true;
        servers = {
          cssls = {
            enable = true;
          };
          denols = {
            enable = true;
          };
          docker_compose_language_service = {
            enable = true;
          };
          dockerls = {
            enable = true;
          };
          eslint = {
            enable = true;
          };
          gopls = {
            enable = true;
          };
          html = {
            enable = true;
          };
          # python LSP
          jedi_language_server = {
            enable = true;
          };
          jsonls = {
            enable = true;
          };
          lua_ls = {
            enable = true;
          };
          marksman = {
            enable = true;
          };
          postgres_lsp = {
            enable = true;
          };
          pyright = {
            enable = true;
          };
          sqls = {
            enable = true;
          };
          nil_ls = {
            enable = true;
          };
          tailwindcss = {
            enable = true;
          };
          ts_ls = {
            enable = true;
          };
          terraformls = {
            enable = true;
          };
          volar = {
            enable = true;
          };
          ansiblels = {
            enable = true;
          };
          helm_ls = {
            enable = true;
            extraOptions = {
              settings = {
                "helm_ls" = {
                  yamlls = {
                    path = "${pkgs.yaml-language-server}/bin/yaml-language-server";
                  };
                };
              };
            };
          };
          yamlls = {
            enable = true;
            extraOptions = {
              settings = {
                yaml = {
                  schemas = {
                    kubernetes = "'*.yaml";
                    "http://json.schemastore.org/github-workflow" = ".github/workflows/*";
                    "http://json.schemastore.org/github-action" = ".github/action.{yml,yaml}";
                    "http://json.schemastore.org/ansible-stable-2.9" = "roles/tasks/*.{yml,yaml}";
                    "http://json.schemastore.org/kustomization" = "kustomization.{yml,yaml}";
                    "http://json.schemastore.org/ansible-playbook" = "*play*.{yml,yaml}";
                    "http://json.schemastore.org/chart" = "Chart.{yml,yaml}";
                    "https://json.schemastore.org/dependabot-v2" = ".github/dependabot.{yml,yaml}";
                    "https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json" =
                      "*docker-compose*.{yml,yaml}";
                    "https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json" =
                      "*flow*.{yml,yaml}";
                  };
                };
              };
            };
          };
        };
      };
    };
    extraPlugins = with pkgs.vimPlugins; [
      ansible-vim
    ];

    extraConfigLua = ''
      local _border = "rounded"

      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
        vim.lsp.handlers.hover, {
          border = _border
        }
      )

      vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
        vim.lsp.handlers.signature_help, {
          border = _border
        }
      )

      vim.diagnostic.config{
        float={border=_border}
      };

      require('lspconfig.ui.windows').default_options = {
        border = _border
      }
    '';
  };
}
