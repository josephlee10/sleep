class LoadData < ActiveRecord::Migration
  def change
  	sched = Schedule.new
  	sched.started_at = DateTime.new
  	sched.current_debt = 0
  	sched.required_num_hours = 8
  	sched.save()

  	user1 = User.new
  	user1.username = "joelee"
  	# user1.schedule = sched
  	user1.save()

    f1 = Fact.new
    f1.info = "Sleep deprivation was a factor in some of the biggest disasters in recent history: the 1979 nuclear accident at Three Mile Island, the massive Exxon Valdez oil spill, the 1986 nuclear meltdown at Chernobyl, and others."
    f1.save()

    f2 = Fact.new
    f2.info = "If you do not get enough sleep, you will not be able to remember what you learned and experienced during the day."
    f2.save()

    f3 = Fact.new
    f3.info = "90% of people with insomnia -- a sleep disorder characterized by trouble falling and staying asleep -- also have another health condition."
    f3.save()

    f4 = Fact.new
    f4.info = "Sleep specialists say that sleep-deprived men and women report lower libidos and less interest in sex. Depleted energy, sleepiness, and increased tension may be largely to blame."
    f4.save()

    f5 = Fact.new
    f5.info = "Sleep disorders and chronic sleep loss can put you at risk for heart disease, heart attack, heart failure, stroke, diabetes, and irregular heart pressure."
    f5.save()

    f6 = Fact.new
    f6.info = "Sleep disorders and chronic sleep loss can put you at risk for heart attack."
    f6.save()

    f7 = Fact.new
    f7.info = "A study published in the Journal of Clinical Endocrinology & Metabolism in 2002 suggests that many men with sleep apnea also have low testosterone levels."
    f7.save()

    f8 = Fact.new
    f8.info = "A study published in the Journal of Clinical Endocrinology & Metabolism in 2002 suggests that many men with sleep apnea also have low testosterone levels."
    f8.save()

    f9 = Fact.new
    f9.info = "To achieve optimal alertness throughout the day, there is but one long-term solution that never fails: you must repay your sleep debt hour for hour."
    f9.save()

    f10 = Fact.new
    f10.info = "Far and away the most important aspect of the homeostatic regulation of sleep is the following simple fact:sleep loss is cumulative. When total nightly sleep is reduced by exactly the same amount each night for several consecutive nights, the tendency to fall asleep in the daytime becomes progressively stronger each day, and performance is often compromised as a result. -Dr. Dement"
    f10.save()

    f11 = Fact.new
    f11.info = "Carrying a sizable sleep debt throughout the day can drastically decrease productivity."
    f11.save()

    f12 = Fact.new
    f12.info = "Specifically, learning, memory, and creativity are frequently hampered by a large sleep debt."
    f12.save()    

    f13 = Fact.new
    f13.info = "It's not uncommon for sleep-deprived individuals to be subject to extreme emotions and mood swings. A very tired person who is laughing uncontrollably at one moment may be crying or yelling angrily a few minutes later."
    f13.save()

    f14 = Fact.new
    f14.info = "A decrease in energy and motivation is probably the most noticeable consequence of sleep deprivation. Individuals who have not received sufficient sleep will feel lethargic and uninspired to work." 
    f14.save()

    f15 = Fact.new
    f15.info = "Extreme sleep deprivation can literally cause a degree of physical pain, such as headaches." 
    f15.save()

    f16 = Fact.new
    f16.info = "Official statistics show that drowsy driving results in over 100,000 automobile wrecks every single year--and those are quite evidently conservative numbers, for fatigue often plays a major role in many accidents where it is not officially documented."
    f16.save()

    f17 = Fact.new
    f17.info = "The life and death sleep crisis you are most likely to face will occur when you are driving." 
    f17.save()

    f18 = Fact.new
    f18.info = "Drowsiness is red alert!" 
    f18.save()

    f19 = Fact.new
    f19.info = "You know lack of sleep can make you grumpy and foggy. You may not know what it can do to your sex life, memory, health, looks, and even ability to lose weight."
    f19.save()

    f20 = Fact.new
    f20.info = "You know why you should sleep? Dr. Dement said so! How's that for a reason and some education?"
    f20.save()


  end
end
