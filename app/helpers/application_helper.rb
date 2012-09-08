module ApplicationHelper
  def project_name
    DisruptTemplate::Application.config.project_name
  end
end
