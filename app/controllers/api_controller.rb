class ApiController < ApplicationController
  def get_info
    slack_name = 'EMMANUEL OBI' # Set the slack_name to a fixed value
    track = 'Backend' # Set the track to a fixed value

    current_day = Time.now.strftime('%A')
    utc_time = Time.now.utc.strftime('%Y-%m-%dT%H:%M:%SZ')

    github_file_url = 'https://github.com/Gmanlove/endpoint_project/blob/main/app/controllers/api_controller.rb'
    github_repo_url = 'https://github.com/Gmanlove/endpoint_project'

    response_data = {
      slack_name: slack_name,
      current_day: current_day,
      utc_time: utc_time,
      track: track,
      github_file_url: github_file_url,
      github_repo_url: github_repo_url,
      status_code: 200
    }

    render json: response_data
  end
end
