##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'SchemaVersion' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.events.v1.schemas('id') \
                       .versions.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://events.twilio.com/v1/Schemas/id/Versions',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "schema_versions": [],
          "meta": {
              "page": 0,
              "page_size": 10,
              "first_page_url": "https://events.twilio.com/v1/Schemas/Messaging.MessageStatus/Versions?PageSize=10&Page=0",
              "previous_page_url": null,
              "url": "https://events.twilio.com/v1/Schemas/Messaging.MessageStatus/Versions?PageSize=10&Page=0",
              "next_page_url": null,
              "key": "schema_versions"
          }
      }
      ]
    ))

    actual = @client.events.v1.schemas('id') \
                              .versions.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_results responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "schema_versions": [
              {
                  "id": "Messaging.MessageStatus",
                  "schema_version": 1,
                  "public": true,
                  "date_created": "2015-07-30T20:00:00Z",
                  "url": "https://events.twilio.com/v1/Schemas/Messaging.MessageStatus/Versions/1",
                  "raw": "https://events-schemas.twilio.com/Messaging.MessageStatus/1"
              },
              {
                  "id": "Messaging.MessageStatus",
                  "schema_version": 2,
                  "public": true,
                  "date_created": "2015-07-30T20:00:00Z",
                  "url": "https://events.twilio.com/v1/Schemas/Messaging.MessageStatus/Versions/2",
                  "raw": "https://events-schemas.twilio.com/Messaging.MessageStatus/2"
              }
          ],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://events.twilio.com/v1/Schemas/Messaging.MessageStatus/Versions?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://events.twilio.com/v1/Schemas/Messaging.MessageStatus/Versions?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "schema_versions"
          }
      }
      ]
    ))

    actual = @client.events.v1.schemas('id') \
                              .versions.list()

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.events.v1.schemas('id') \
                       .versions(1).fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://events.twilio.com/v1/Schemas/id/Versions/1',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "id": "Messaging.MessageStatus",
          "schema_version": 1,
          "public": true,
          "date_created": "2015-07-30T20:00:00Z",
          "url": "https://events.twilio.com/v1/Schemas/Messaging.MessageStatus/Versions/1",
          "raw": "https://events-schemas.twilio.com/Messaging.MessageStatus/1"
      }
      ]
    ))

    actual = @client.events.v1.schemas('id') \
                              .versions(1).fetch()

    expect(actual).to_not eq(nil)
  end
end