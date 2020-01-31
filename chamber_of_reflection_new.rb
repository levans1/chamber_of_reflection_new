# Welcome to Sonic Pi v3.
back="C:/Users/logan_evans/Downloads/audacity sounds/backingtrack.wav"
elio="C:/Users/logan_evans/Downloads/audacity sounds/cmbyn_dialouge.wav"
love="C:/Users/logan_evans/Downloads/audacity sounds/love.wav"
friend="C:/Users/logan_evans/Downloads/audacity sounds/friend2.wav"

x=1
use_bpm 131
use_synth :piano
2.times do
  sample love, rate:x, amp: 5
  print sample_duration love
  x=x-0.25
  sleep 15.8
end
live_loop :backtrack do
  5.times do
    sample back, amp: 5
    print sample_duration back
    sleep 32.8
  end
  1.times do
    sample friend
    print sample_duration friend
  end
  stop
end
live_loop :demarco do
  4.times do
    sample elio, amp: 5
    print sample_duration elio
    sleep 18.8
    play :g5
    sleep 1
    play :e5
    sleep 1
    play :b4
    sleep 1.5
    play :c5
    sleep 0.25
    play :b4
    sleep 0.25
    play :a4
    sleep 2
    play :r
    sleep 2
    play :b4
    sleep 1
    play :c5
    sleep 1
    play :d5
    sleep 1.5
    play :b4
    sleep 0.5
    play :f4
    sleep 2
  end
  stop
end
