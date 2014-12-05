rule 'MND001', 'No action specified for resource' do
  tags %w(mendeley correctness)
  recipe do |ast|
    find_resources(ast).select do |resource|
      actions = resource_attributes(resource)['action']
      resource if actions.nil?
    end
  end
end
