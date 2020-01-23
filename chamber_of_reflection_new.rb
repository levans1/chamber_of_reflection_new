# Welcome to Sonic Pi v3.
back="C:/Users/logan_evans/Downloads/backingtrack.wav"
elio="C:/Users/logan_evans/Downloads/cmbyn_dialouge.wav"

use_bpm 131
use_synth :piano
live_loop :backtrack do
  8.times do
    sample back, amp:10
    print sample_duration back
    sleep 32.67
  end
  stop
end
live_loop :demarco do
  8.times do
    sample elio, amp:5
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