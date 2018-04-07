describe command('ps ax | grep activem[q]') do
  its('exit_status') { should eq 0 }
end

describe command('/opt/activemq_main_queue_5_14_4/bin/activemq producer') do
  its('stdout') { should match(/Produced: 1000 messages/) }
end

describe command('/opt/activemq_main_queue_5_14_4/bin/activemq consumer') do
  its('stdout') { should match(/Consumed: 1000 messages/) }
end
