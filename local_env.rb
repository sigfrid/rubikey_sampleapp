module LocalEnv
  require 'yaml'

  def api_id
    p env_file['api_id']
  end

  def api_key
    env_file['api_key']
  end

  def env_file
    if File.exist?('./api-credentials.yml')
      YAML.load_file('./api-credentials.yml')
    end
  end
end
