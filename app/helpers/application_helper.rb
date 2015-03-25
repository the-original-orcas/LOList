module ApplicationHelper

#   def link_to_with_icon(icon_css, title, url, options = {})
#     icon = content_tag(:i, nil, class: icon_css)
#     title_with_icon = icon_css << ' ' << title
#     link_to(title_with_icon, url, options)
#   end

#   def toggle_button_to(icon_css, title, url, options = {})

#     on_options = {
#       'data-remote' => true,
#       'data-type' => 'script',
#       'data-method' => 'PUT',
#       class: options[:on]
#         }

#       off_options = {
#         'data-remote' => true,
#         'data-type' => 'script',
#         'data-method' => 'DELETE',
#         class: options[:off]
#           }

#         on_link = link_to_with_icon(icon_css, title, url, on_options)
#         off_link = link_to_with_icon(icon_css, title, url, off_options)

#         on_link << off_link

#         end
        end