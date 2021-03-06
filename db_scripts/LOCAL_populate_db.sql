TRUNCATE TABLE `events`;

INSERT INTO `events` (`noodleID`, `noodleTitle`, `userID`, `noodleStatus`, `noodleDescription`, `noodleSummary`, `noodleTags`, `noodleCoverImage`, `noodleImages`, 
`noodleImageText`, `noodleLocation`, `noodleDirections`, `noodleDate`, `noodleTime`, `noodlePrice`, `noodleMinTickets`, `noodleMaxTickets`, `noodleTicketsSold`, `noodleCutoff`) VALUES
( 
null,
'Fishing with Friends',
'1',
'event',
'Hey, I am Pam! I love fishing but none of my friends do! I have a boat, and all the gear you could possibly need. Fish is on the menu but if we get skunked, I have food available as well.',
'Come fish with me! I have a boat, and gear.',
'fishing, food, hobby, friends, sports',
'http://localhost/noodlewall/images/events/fishing-crop.png',
null,
null,
'Sydney, Ontario',
'Drive up the hill, then take a right, and into the large parking lot on the left',
'2021-05-30',
'8:30AM-5:00PM',
'17.00',
'2',
'3',
'1',
'2021-04-30'
),

( 
null,
'Thursday Bowling Nights',
'2',
'dream',
'Bowling Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum. Suspendisse pulvinar in ex a posuere.',
null,
'bowling, hobby, sports',
'http://localhost/noodlewall/images/events/bowling-crop.png',
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null
),

( 
null,
'Cooking For Kids',
'1',
'dream',
'Cooking Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum. Suspendisse pulvinar in ex a posuere.',
null,
'cooking, food, hobby, kids',
'http://localhost/noodlewall/images/events/kidsCooking-crop.png',
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null
),

( 
null,
'Throwback Disco Night',
'7',
'event',
'Not many events feature so strongly in our culture as those that revolve around the dance floor. Whether you go ballroom dancing or clubbing, just for fun or to compete, their variety is almost limitless, and so is their enduring appeal. If venues are limited, consider moving the event — and moving your body.',
null,
'dancing, fun, party, friends, social, drinks',
'http://localhost/noodlewall/images/events/disco-crop.png',
null,
null,
'Toronto, Ontario',
null,
'2021-07-22',
'9:00PM-2:00AM',
'22.00',
'20',
'40',
'6',
'2021-06-15'
),

( 
null,
'Dryden Barbeque',
'8',
'dream',
'Hey Im Bob, Im a bit of a grillmaster, and a perfect dad. If you would like to experience the best meal of your life, bring some beer and a few bucks so we can hang out and do what we do best.',
null,
'bbq, barbeque, meat, friends, social, drinks',
'http://localhost/noodlewall/images/events/bbq-crop.png',
null,
null,
'Dryden, Ontario',
null,
'2021-06-12',
'4:30PM-10:00PM',
null,
null,
null,
null,
'2021-06-01'
),

( 
null,
'Local Live Rock',
'3',
'event',
'Witness some of the most talented local rock artists in Thunder Bay, planning on a fun bar concert, but if theres enough interest I can find a bigger venue.',
null,
'music, livemusic, bar, friends, concert, social',
'http://localhost/noodlewall/images/events/liveRock-crop.png',
null,
null,
'Thunder Bay, Ontario',
null,
'2021-05-30',
'7:00PM-11:30PM',
'10.00',
'15',
'50',
'4',
'2021-05-01'
),

( 
null,
'Farmers Market',
'1',
'dream',
'Id like to know how much interest there is in a sunday morning farmers market, I know many local businesses that would love to get something rolling and if we can get real interest, I can plan something.',
null,
'farmers market, grocery',
'http://localhost/noodlewall/images/events/bowling-crop.png',
null,
null,
'Lakehead University Area',
null,
null,
null,
null,
null,
null,
null,
null
),

( 
null,
'Board Game Night',
'4',
'event',
null,
'Hi there, im Howie. I love board games but have few friends who share my love. Im looking for a few like-minded individuals who would like nothing better than to stay in on a friday night and order a pizza to play some games.',
'board games, hobby, pizza, games, friends',
'http://localhost/noodlewall/images/events/boardgame-crop.png',
null,
null,
'Carleton Place, Ontario',
null,
'2021-05-30',
'6:00PM-9:00PM',
'5.00',
'3',
'6',
'1',
'2021-05-16'
);








TRUNCATE TABLE `users`;

INSERT INTO `users` (`userID`, `userName`, `userFirstName`, `userLastName`, `userRating`, `userBio`, `userBioLong`, `userImage`) VALUES
(
null,
"Pam's Fishing",
'Pam',
'Poovey',
'4',
'PamLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum.',
'PamLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum. Suspendisse pulvinar in ex a posuere. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras varius arcu tellus, et eleifend turpis porta id. Aliquam commodo leo leo, eget rhoncus enim dictum nec. Morbi porta elementum ex sollicitudin porttitor.',
'http://localhost/noodlewall/images/userIcons/pam-icon.png'
),

( 
null,
"Krieger's Bowling Team",
"Krieger's",
'Bowling Team',
'3',
'KriegLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum.',
'KriegLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum. Suspendisse pulvinar in ex a posuere. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras varius arcu tellus, et eleifend turpis porta id. Aliquam commodo leo leo, eget rhoncus enim dictum nec. Morbi porta elementum ex sollicitudin porttitor.',
'http://localhost/noodlewall/images/userIcons/bowling-icon.png'
),

(
null,
"RichAGand",
'Richard',
'Gandy',
'3',
'RichLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum.',
'RichLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum. Suspendisse pulvinar in ex a posuere. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras varius arcu tellus, et eleifend turpis porta id. Aliquam commodo leo leo, eget rhoncus enim dictum nec. Morbi porta elementum ex sollicitudin porttitor.',
'http://localhost/noodlewall/images/userIcons/richard-icon.png'
),

(
null,
"Howie B",
'Howard',
'Olson',
'2',
'HowieLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum.',
'HowieLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum. Suspendisse pulvinar in ex a posuere. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras varius arcu tellus, et eleifend turpis porta id. Aliquam commodo leo leo, eget rhoncus enim dictum nec. Morbi porta elementum ex sollicitudin porttitor.',
'http://localhost/noodlewall/images/userIcons/howie-icon.png'
),

(
null,
"NouPaiMan",
'Nouel',
'Paiement',
'5',
'NouelLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum.',
'NouelLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum. Suspendisse pulvinar in ex a posuere. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras varius arcu tellus, et eleifend turpis porta id. Aliquam commodo leo leo, eget rhoncus enim dictum nec. Morbi porta elementum ex sollicitudin porttitor.',
'http://localhost/noodlewall/images/userIcons/nouel-icon.png'
),

(
null,
"Caro54",
'Carol',
'Vance',
'4',
'Carolorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum.',
'Carolorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum. Suspendisse pulvinar in ex a posuere. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras varius arcu tellus, et eleifend turpis porta id. Aliquam commodo leo leo, eget rhoncus enim dictum nec. Morbi porta elementum ex sollicitudin porttitor.',
'http://localhost/noodlewall/images/userIcons/carol-icon.png'
),

(
null,
"Jeanette100",
'Jeanette',
'Stewart',
'1',
'JeanetteLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum.',
'JeanetteLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum. Suspendisse pulvinar in ex a posuere. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras varius arcu tellus, et eleifend turpis porta id. Aliquam commodo leo leo, eget rhoncus enim dictum nec. Morbi porta elementum ex sollicitudin porttitor.',
'http://localhost/noodlewall/images/userIcons/jeanette-icon.png'
),

(
null,
"BobbyRay",
'Bobby',
'Raymer',
'5',
'BobLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum.',
'BobLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum. Suspendisse pulvinar in ex a posuere. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras varius arcu tellus, et eleifend turpis porta id. Aliquam commodo leo leo, eget rhoncus enim dictum nec. Morbi porta elementum ex sollicitudin porttitor.',
'http://localhost/noodlewall/images/userIcons/bob-icon.png'
);
