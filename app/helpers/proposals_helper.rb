module ProposalsHelper
  def fields_for_target(target, &block)
    prefix = target.new_record? ? 'new' : 'existing'
    fields_for("proposal[#{prefix}_target_attributes][]", target, &block)
  end

  def add_target_link(name) 
    link_to_function name do |page| 
      page.insert_html :bottom, :targets, :partial => 'target', :object => Target.new 
  end 
end
end
