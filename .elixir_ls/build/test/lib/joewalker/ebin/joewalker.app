{application,joewalker,
             [{compile_env,[{joewalker,['Elixir.JoewalkerWeb.Gettext'],error},
                            {joewalker,[dev_routes],error}]},
              {optional_applications,[]},
              {applications,[kernel,stdlib,elixir,logger,runtime_tools,
                             phoenix,phoenix_html,phoenix_live_view,floki,
                             phoenix_live_dashboard,swoosh,finch,
                             telemetry_metrics,telemetry_poller,gettext,jason,
                             dns_cluster,bandit,nimble_publisher,
                             makeup_elixir,makeup_erlang]},
              {description,"joewalker"},
              {modules,['Elixir.Joewalker','Elixir.Joewalker.Application',
                        'Elixir.Joewalker.Blog',
                        'Elixir.Joewalker.Blog.NotFoundError',
                        'Elixir.Joewalker.Blog.Posts',
                        'Elixir.Joewalker.FileWriter',
                        'Elixir.Joewalker.Mailer','Elixir.JoewalkerWeb',
                        'Elixir.JoewalkerWeb.BlogController',
                        'Elixir.JoewalkerWeb.BlogHTML',
                        'Elixir.JoewalkerWeb.ConnCase',
                        'Elixir.JoewalkerWeb.CoreComponents',
                        'Elixir.JoewalkerWeb.Endpoint',
                        'Elixir.JoewalkerWeb.ErrorHTML',
                        'Elixir.JoewalkerWeb.ErrorJSON',
                        'Elixir.JoewalkerWeb.Gettext',
                        'Elixir.JoewalkerWeb.Layouts',
                        'Elixir.JoewalkerWeb.PageController',
                        'Elixir.JoewalkerWeb.PageHTML',
                        'Elixir.JoewalkerWeb.Router',
                        'Elixir.JoewalkerWeb.Telemetry']},
              {registered,[]},
              {vsn,"0.1.0"},
              {mod,{'Elixir.Joewalker.Application',[]}}]}.