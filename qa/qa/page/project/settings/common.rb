module QA
  module Page
    module Project
      module Settings
        module Common
          def self.included(base)
            base.class_eval do
              view 'app/views/projects/edit.html.haml' do
                element :advanced_settings_expand, "= expanded ? 'Collapse' : 'Expand'"
              end
            end
          end

          # Click the Expand button present in the specified section
          #
          # @param [String] name present in the container in the DOM
          def expand_section(name)
            page.within('#content-body') do
              page.within('section', text: name) do
<<<<<<< HEAD
                click_button('Expand')
=======
                click_button 'Expand' unless first('button', text: 'Collapse')
>>>>>>> upstream/master

                yield if block_given?
              end
            end
          end
        end
      end
    end
  end
end
