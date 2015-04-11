xml.instruct!
xml.tag! "soap:Envelope", {
    "xmlns:soap" => 'http://schemas.xmlsoap.org/soap/envelope/'
  }.merge(@additional_namespaces) do
  xml.tag! "soap:Body" do
    xml.tag! "soap:Fault" do
      xml.faultcode error_code
      xml.faultstring error_message
    end
  end
end
