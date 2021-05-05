##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Participant' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .participants('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conferences/CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Participants/CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": null,
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": true,
          "call_sid_to_coach": "CAbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_by_label responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": "customer",
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": true,
          "call_sid_to_coach": "CAbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .participants('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conferences/CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Participants/CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives mute_participant responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": null,
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": true,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": false,
          "call_sid_to_coach": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "receives mute_participant_by_label responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": "customer",
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": true,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": false,
          "call_sid_to_coach": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "receives modify_participant responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": null,
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": true,
          "call_sid_to_coach": "CAbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "receives modify_participant_by_label responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": "customer",
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": true,
          "call_sid_to_coach": "CAbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .participants.create(from: '+15017122661', to: '+15558675310')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'From' => '+15017122661', 'To' => '+15558675310', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conferences/CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Participants.json',
        data: values,
    ))).to eq(true)
  end

  it "receives create_with_sid responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": "customer",
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": false,
          "call_sid_to_coach": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.create(from: '+15017122661', to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_with_friendly_name responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": "customer",
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": false,
          "call_sid_to_coach": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.create(from: '+15017122661', to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_with_sid_as_coach responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": null,
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "queued",
          "start_conference_on_enter": true,
          "coaching": false,
          "call_sid_to_coach": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.create(from: '+15017122661', to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_with_non_e164_number responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": null,
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": false,
          "call_sid_to_coach": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.create(from: '+15017122661', to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_with_friendly_name_jitter_buffer_size responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": null,
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": false,
          "call_sid_to_coach": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.create(from: '+15017122661', to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_with_friendly_name_byoc responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": null,
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": false,
          "call_sid_to_coach": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.create(from: '+15017122661', to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_with_friendly_name_caller_id responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": false,
          "call_sid_to_coach": null,
          "label": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.create(from: '+15017122661', to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_with_friendly_name_reason responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": null,
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": false,
          "call_sid_to_coach": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.create(from: '+15017122661', to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_with_friendly_name_recording_track responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": null,
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": false,
          "call_sid_to_coach": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.create(from: '+15017122661', to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_with_from_to_client responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": "customer",
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": false,
          "call_sid_to_coach": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.create(from: '+15017122661', to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_with_from_to_sip responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "label": "customer",
          "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
          "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
          "end_conference_on_exit": false,
          "muted": false,
          "hold": false,
          "status": "complete",
          "start_conference_on_enter": true,
          "coaching": false,
          "call_sid_to_coach": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.create(from: '+15017122661', to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .participants('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conferences/CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Participants/CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end

  it "receives delete_by_label responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .participants.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conferences/CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Participants.json',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "participants": [],
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json?Hold=True&PageSize=50&Page=0",
          "next_page_uri": null,
          "previous_page_uri": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json?Hold=True&PageSize=50&Page=0",
          "page": 0,
          "page_size": 50,
          "end": 0,
          "start": 0
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "participants": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "label": null,
                  "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "Sat, 19 Feb 2011 21:07:19 +0000",
                  "date_updated": "Sat, 19 Feb 2011 21:07:19 +0000",
                  "end_conference_on_exit": false,
                  "muted": true,
                  "hold": false,
                  "status": "connected",
                  "start_conference_on_enter": true,
                  "coaching": true,
                  "call_sid_to_coach": "CAbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
              },
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "call_sid": "CAbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
                  "label": null,
                  "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
                  "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
                  "end_conference_on_exit": false,
                  "muted": true,
                  "hold": false,
                  "status": "connected",
                  "start_conference_on_enter": true,
                  "coaching": false,
                  "call_sid_to_coach": null,
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb.json"
              }
          ],
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json?Muted=true&PageSize=2&Page=0",
          "next_page_uri": null,
          "previous_page_uri": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json?Muted=true&PageSize=2&Page=0",
          "page": 0,
          "page_size": 2,
          "start": 0,
          "end": 1
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_next responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "participants": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "call_sid": "CAcccccccccccccccccccccccccccccccc",
                  "label": null,
                  "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "Thu, 17 Feb 2011 21:07:19 +0000",
                  "date_updated": "Thu, 17 Feb 2011 21:07:19 +0000",
                  "end_conference_on_exit": false,
                  "muted": true,
                  "hold": false,
                  "status": "connected",
                  "start_conference_on_enter": true,
                  "coaching": false,
                  "call_sid_to_coach": null,
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAcccccccccccccccccccccccccccccccc.json"
              },
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "call_sid": "CAdddddddddddddddddddddddddddddddd",
                  "label": null,
                  "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "Wed, 16 Feb 2011 21:07:19 +0000",
                  "date_updated": "Wed, 16 Feb 2011 21:07:19 +0000",
                  "end_conference_on_exit": false,
                  "muted": true,
                  "hold": false,
                  "status": "connected",
                  "start_conference_on_enter": true,
                  "coaching": false,
                  "call_sid_to_coach": null,
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAdddddddddddddddddddddddddddddddd.json"
              }
          ],
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json?Muted=true&PageSize=2&Page=0",
          "next_page_uri": null,
          "previous_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json?Muted=true&PageSize=2&Page=0&PageToken=PBCPcccccccccccccccccccccccccccccccc",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json?Muted=true&PageSize=2&Page=1&PageToken=PACPbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
          "page": 1,
          "page_size": 2,
          "start": 2,
          "end": 3
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_previous responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "participants": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "label": null,
                  "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "Sat, 19 Feb 2011 21:07:19 +0000",
                  "date_updated": "Sat, 19 Feb 2011 21:07:19 +0000",
                  "end_conference_on_exit": false,
                  "muted": true,
                  "hold": false,
                  "status": "connected",
                  "start_conference_on_enter": true,
                  "coaching": true,
                  "call_sid_to_coach": "CAbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
              },
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "call_sid": "CAbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
                  "label": null,
                  "conference_sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "Fri, 18 Feb 2011 21:07:19 +0000",
                  "date_updated": "Fri, 18 Feb 2011 21:07:19 +0000",
                  "end_conference_on_exit": false,
                  "muted": true,
                  "hold": false,
                  "status": "connected",
                  "start_conference_on_enter": true,
                  "coaching": false,
                  "call_sid_to_coach": null,
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/CAbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb.json"
              }
          ],
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json?Muted=true&PageSize=2&Page=0",
          "next_page_uri": null,
          "previous_page_uri": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json?Muted=true&PageSize=2&Page=0&PageToken=PBCPcccccccccccccccccccccccccccccccc",
          "page": 0,
          "page_size": 2,
          "start": 0,
          "end": 1
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .participants.list()

    expect(actual).to_not eq(nil)
  end
end