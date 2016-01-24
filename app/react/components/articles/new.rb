module Components
  module Articles
    class New < React::Component::Base
      
      def render
        div.container do
                    
          h1 { 'New Article' }
          
          form do
                        
            label(class: 'form-control-label') do
              'Title'
            end
            
            input.form_control(type: :text, value: state.title).
            on(:change) do |e|
              state.title! e.target.value
            end
            
            br
                        
            label(class: 'form-control-label') do
              'Short Title'
            end
            
            input.form_control(type: :text, value: state.title_short).
            on(:change) do |e|
              state.title_short! e.target.value
            end
            
            br
                        
            label(class: 'form-control-label') do
              'Synopsis'
            end
            
            textarea.form_control(rows: 2) do
              state.synopsis
            end.on(:change) do |e|
              state.synopsis! e.target.value
            end
            
            p { state.synopsis }
            
            br
            
            a(class: 'btn btn-primary') do
              'Save Article'
            end.on(:click) do |e|
              a = Article.new(
                title: state.title,
                title_short: state.title_short,
                synopsis: state.synopsis
              )
              a.save
              
              state.title! ''
              state.title_short! ''
              state.synopsis! ''
            end
                        
            a(href: '/articles', class: 'btn') do
              'Cancel'
            end
            
          end
          
        end
      end
    end
  end
end
