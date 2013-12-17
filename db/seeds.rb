# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 # User.create(name:'Pikachu', email:'pikachu@gmail.com')

 # Campaign.create(user:'1', title:'CAMPAIGN TITLE', price:'1', description:'DESCRIPTION TEST')


 # Submission.create(submitter:'2',campaign_id:'1',title:'TEST SUBMISSION TITLE', content:' TEST SUBMISSION CONTENT')


User.create(name:'Pikachu', email:'pikachu@gmail.com')
User.create(name:'Diglett', email:'diglett@gmail.com')
User.create(name:'Mew', email:'mew@aol.com')

Campaign.create(user_id:'1', status: 'live', title:'Catch Phrase', price:'50', description:'flexitarian sriracha flannel YOLO kale chips. American Apparel you probably havent heard of them eu irony XOXO, exercitation trust fund umami nostrud kale chips 90s ethical PBR commodo keytar. Street art blog church-key YOLO, tote bag duis nesciunt next level mollit')
Campaign.create(user_id:'1', status: 'live', title:'Blog Post', price:'100', description:'flexitarian sriracha flannel YOLO kale chips. American Apparel you probably havent heard of them eu irony XOXO, exercitation trust fund umami nostrud kale chips 90s ethical PBR commodo keytar. Street art blog church-key YOLO, tote bag duis nesciunt next level mollit')
Campaign.create(user_id:'2', status: 'live', title:'Novel', price:'200', description:'flexitarian sriracha flannel YOLO kale chips. American Apparel you probably havent heard of them eu irony XOXO, exercitation trust fund umami nostrud kale chips 90s ethical PBR commodo keytar. Street art blog church-key YOLO, tote bag duis nesciunt next level mollit')
Campaign.create(user_id:'2', status: 'live', title:'Pitch Deck', price:'150', description:'flexitarian sriracha flannel YOLO kale chips. American Apparel you probably havent heard of them eu irony XOXO, exercitation trust fund umami nostrud kale chips 90s ethical PBR commodo keytar. Street art blog church-key YOLO, tote bag duis nesciunt next level mollit')
Campaign.create(user_id:'3', status: 'live', title:'Web Site Content', price:'100', description:'flexitarian sriracha flannel YOLO kale chips. American Apparel you probably havent heard of them eu irony XOXO, exercitation trust fund umami nostrud kale chips 90s ethical PBR commodo keytar. Street art blog church-key YOLO, tote bag duis nesciunt next level mollit')


Submission.create(user_id:'2',campaign_id:'1', winner:'no',title:'Phrase of the day', content:' flexitarian sriracha flannel YOLO kale chips. American Apparel you probably havent heard of them eu irony XOXO, exercitation trust fund umami nostrud kale chips 90s ethical PBR commodo keytar. Street art blog church-key YOLO, tote bag duis nesciunt next level mollit kitsch drinking vinegar retro. Artisan photo booth Austin next level.')
Submission.create(user_id:'3',campaign_id:'1',winner:'no',title:'Phrase for you', content:' flexitarian sriracha flannel YOLO kale chips. American Apparel you probably havent heard of them eu irony XOXO, exercitation trust fund umami nostrud kale chips 90s ethical PBR commodo keytar. Street art blog church-key YOLO, tote bag duis nesciunt next level mollit kitsch drinking vinegar retro. Artisan photo booth Austin next level.')
Submission.create(user_id:'1',campaign_id:'3',winner:'no',title:'I got a book for you', content:' flexitarian sriracha flannel YOLO kale chips. American Apparel you probably havent heard of them eu irony XOXO, exercitation trust fund umami nostrud kale chips 90s ethical PBR commodo keytar. Street art blog church-key YOLO, tote bag duis nesciunt next level mollit kitsch drinking vinegar retro. Artisan photo booth Austin next level.')
Submission.create(user_id:'2',campaign_id:'2',winner:'no',title:'Hipster Blog Post', content:' flexitarian sriracha flannel YOLO kale chips. American Apparel you probably havent heard of them eu irony XOXO, exercitation trust fund umami nostrud kale chips 90s ethical PBR commodo keytar. Street art blog church-key YOLO, tote bag duis nesciunt next level mollit kitsch drinking vinegar retro. Artisan photo booth Austin next level.')
Submission.create(user_id:'3',campaign_id:'2',winner:'no',title:'Bro Post', content:' flexitarian sriracha flannel YOLO kale chips. American Apparel you probably havent heard of them eu irony XOXO, exercitation trust fund umami nostrud kale chips 90s ethical PBR commodo keytar. Street art blog church-key YOLO, tote bag duis nesciunt next level mollit kitsch drinking vinegar retro. Artisan photo booth Austin next level.')
Submission.create(user_id:'1',campaign_id:'4',winner:'no',title:'CEO DECK', content:' flexitarian sriracha flannel YOLO kale chips. American Apparel you probably havent heard of them eu irony XOXO, exercitation trust fund umami nostrud kale chips 90s ethical PBR commodo keytar. Street art blog church-key YOLO, tote bag duis nesciunt next level mollit kitsch drinking vinegar retro. Artisan photo booth Austin next level.')
Submission.create(user_id:'2',campaign_id:'5',winner:'no',title:'Content for your site', content:' flexitarian sriracha flannel YOLO kale chips. American Apparel you probably havent heard of them eu irony XOXO, exercitation trust fund umami nostrud kale chips 90s ethical PBR commodo keytar. Street art blog church-key YOLO, tote bag duis nesciunt next level mollit kitsch drinking vinegar retro. Artisan photo booth Austin next level.')
Submission.create(user_id:'3',campaign_id:'4',winner:'no',title:'Startup Deck', content:' flexitarian sriracha flannel YOLO kale chips. American Apparel you probably havent heard of them eu irony XOXO, exercitation trust fund umami nostrud kale chips 90s ethical PBR commodo keytar. Street art blog church-key YOLO, tote bag duis nesciunt next level mollit kitsch drinking vinegar retro. Artisan photo booth Austin next level.')
Submission.create(user_id:'1',campaign_id:'5',winner:'no',title:'Cat Pics', content:' flexitarian sriracha flannel YOLO kale chips. American Apparel you probably havent heard of them eu irony XOXO, exercitation trust fund umami nostrud kale chips 90s ethical PBR commodo keytar. Street art blog church-key YOLO, tote bag duis nesciunt next level mollit kitsch drinking vinegar retro. Artisan photo booth Austin next level.')
