class Natero::Metric < Natero::Base
  def self.retrieve(name)
    get([name])
  end

  def self.bulk_insert_modify(metrics)
    post([], json_data({records: metrics}.to_json))
  end

  def self.modify(name, metric)
    put([name], json_data(metric.to_json))
  end

  def self.delete(name)
    request_helper.delete([name])
  end

  def self.endpoint_path
    ['metrics']
  end
end
