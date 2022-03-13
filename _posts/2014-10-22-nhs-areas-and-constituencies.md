---
title: NHS areas and constituencies
layout: post
---
<span style="font: 13.0px Arial;">This is a dataset article. It presents information on which parliamentary constituencies are contained within which clinical commissioning groups (CCGs). It also provides the relationship with the old primary care trusts (PCTs) for people wanting to look at historical data. </span>

<span style="font: 13.0px Arial;">There are two obvious uses for the dataset: </span>

<span style="font: 13.0px Arial;">if you have an issue with a CCGs performance this will help you find the set of MPs who are meant to be paying attention to it. </span>

  * <span style="font: 13.0px Arial;"> if you are looking at a particular constituency or set of constituencies then this is how you would find out about the relevant NHS bodies for that area. </span>
  * <span style="font: 13.0px Arial;">I've been vaguely looking for a particular dataset for a while without success. Fortunately with the help of twitter and some lovely people, we managed to build our own.  I'll take you through the process because it's a nice illustration of how open data and collaboration works well. </span>

<span style="font: 13.0px Arial;"> </span>

The dataset was a result of this tweet I made:

https://twitter.com/joereddington/status/511105946710716416

&nbsp;

<span style="font: 13.0px Arial;">It became clear that this was something that would be generally useful and we had people pitching in from all ports </span>

<span style="font: 13.0px Arial;">Speaking of generally useful &#8211; respectable open-data-and-politics experts mySociety had some useful points to make:<br /> </span>

<blockquote class="twitter-tweet" data-width="550" data-dnt="true">
  <p lang="en" dir="ltr">
    @joereddington This started quite a conversation among our devs, which I'll try to reproduce in tweets now.
  </p>
  
  <p>
    &mdash; mySociety (@mySociety) <a href="https://twitter.com/mySociety/status/511492026643513344?ref_src=twsrc%5Etfw">September 15, 2014</a>
  </p>
</blockquote>



<blockquote class="twitter-tweet" data-width="550" data-dnt="true">
  <p lang="en" dir="ltr">
    @joereddington "the ONSPD at <a href="http://t.co/9MF9u3vjKr">http://t.co/9MF9u3vjKr</a> might have a column for constituency & column for NHS something for each postcode but
  </p>
  
  <p>
    &mdash; mySociety (@mySociety) <a href="https://twitter.com/mySociety/status/511492270512947200?ref_src=twsrc%5Etfw">September 15, 2014</a>
  </p>
</blockquote>



<blockquote class="twitter-tweet" data-width="550" data-dnt="true">
  <p lang="en" dir="ltr">
    @joereddington "doubt they fit within each other nicely". and CCG areas are available at <a href="http://t.co/VYA55Jv4k0">http://t.co/VYA55Jv4k0</a>
  </p>
  
  <p>
    &mdash; mySociety (@mySociety) <a href="https://twitter.com/mySociety/status/511492377631293440?ref_src=twsrc%5Etfw">September 15, 2014</a>
  </p>
</blockquote>



<blockquote class="twitter-tweet" data-width="550" data-dnt="true">
  <p lang="en" dir="ltr">
    @joereddington The NHS Choices Syndication API might provide a more computer readable version; you need to register: <a href="http://t.co/O2UPLw0LLy">http://t.co/O2UPLw0LLy</a>
  </p>
  
  <p>
    &mdash; mySociety (@mySociety) <a href="https://twitter.com/mySociety/status/511493492645052416?ref_src=twsrc%5Etfw">September 15, 2014</a>
  </p>
</blockquote>



S<span style="font: 13.0px Arial;">everal tweets later the very lovely <a href="https://twitter.com/martinjc">@martinjc</a>  has already writen the code required to work out which constituencies are in which CCGs together in a half hour he had spare and put it on GitHub. For the uninitiated GitHub is a place were coders can store things they are working on. Everybody can see their code and more to the point everybody can copy, change and suggest improvements to the code.  </span>

<blockquote class="twitter-tweet" data-width="550" data-dnt="true">
  <p lang="en" dir="ltr">
    @joereddington if dropbox isn’t working, I’ve added it to github too: <a href="http://t.co/QBl9TnAxXq">http://t.co/QBl9TnAxXq</a> &#8211; but yes, it’s easy with the ONS lookup data
  </p>
  
  <p>
    &mdash; Martin Chorley (@martinjc) <a href="https://twitter.com/martinjc/status/511829901822156800?ref_src=twsrc%5Etfw">September 16, 2014</a>
  </p>
</blockquote>



<span style="font: 13.0px Arial;">The code is all at <a href="http://bit.ly/Xuvst1">the relevant github repo</a> and does exactly the job I asked for on Twitter. Of course, what I *really* wanted was to also be able to make a historical comparison to PCTs as well &#8211; so I downloaded the code, added the relevant files and scripts (I'm not as good in Python as Martin but I'm good enough to retarget what he did for PCTs) and I made a official GitHub request to have my changes worked in. Martin accepted this (he has ownership, obviously, of the repository). </span>

<span style="font: 13.0px Arial;">As far as I'm concerned, this is what good science and good civic tech should be about. We provided a dataset that gives information and where we have released not only the locations were we pulled the raw data from, but also the exact code used to get from one set to another. Everything is entirely transparent and repeatable. </span>

<span style="font: 13.0px Arial;">More to the point &#8211; all the communication was entirely public. There was literally no communication between the people involved that wasn't Twitter or GitHub comments. And very little cost. On my own it would have taken a day to learn the stuff I needed. With people it took many two hours between us because we had the right knowledge between us and worked together. Quite happy with that. </span>

<span style="font: 13.0px Arial;">Anyway. The code and so on is available <a href="http://bit.ly/Xuvst1">here</a> (including the references for the source datasets and the like and the results are:<br /> </span>

<table width="360">
  <tr>
    <td width="295">
      CCG
    </td>
    
    <td width="65">
      Parliamentary Constituency
    </td>
  </tr>
  
  <tr>
    <td>
      NHS East and North Hertfordshire
    </td>
    
    <td>
      Broxbourne;North East Hertfordshire;Welwyn Hatfield;Hertford and Stortford;Stevenage;Hitchin and Harpenden
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North Tyneside
    </td>
    
    <td>
      Tynemouth;North Tyneside
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North Norfolk
    </td>
    
    <td>
      Broadland;North Norfolk
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North Somerset
    </td>
    
    <td>
      Weston-Super-Mare;North Somerset
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North Lincolnshire
    </td>
    
    <td>
      Scunthorpe;Cleethorpes;Brigg and Goole
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North Manchester
    </td>
    
    <td>
      Manchester Central;Blackley and Broughton
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North Hampshire
    </td>
    
    <td>
      East Hampshire;North West Hampshire;North East Hampshire;Basingstoke
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North Kirklees
    </td>
    
    <td>
      Dewsbury;Batley and Spen
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Cumbria
    </td>
    
    <td>
      Skipton and Ripon;Barrow and Furness;Carlisle;Workington;Penrith and The Border;Copeland;Westmorland and Lonsdale
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Croydon
    </td>
    
    <td>
      Croydon South;Croydon Central;Croydon North
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Dartford, Gravesham and Swanley
    </td>
    
    <td>
      Gravesham;Sevenoaks;Dartford
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Darlington
    </td>
    
    <td>
      Sedgefield;Darlington
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Dorset
    </td>
    
    <td>
      Poole;South Dorset;Christchurch;North Dorset;Mid Dorset and North Poole;Bournemouth East;Bournemouth West;West Dorset
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Doncaster
    </td>
    
    <td>
      Doncaster North;Doncaster Central;Don Valley
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Durham Dales, Easington and Sedgefield
    </td>
    
    <td>
      Sedgefield;North West Durham;Easington;Bishop Auckland
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Dudley
    </td>
    
    <td>
      Halesowen and Rowley Regis;Stourbridge;Wolverhampton South East;Dudley North;Dudley South
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Barnsley
    </td>
    
    <td>
      Penistone and Stocksbridge;Wentworth and Dearne;Barnsley East;Barnsley Central
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Bassetlaw
    </td>
    
    <td>
      Newark;Bassetlaw
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Coventry and Rugby
    </td>
    
    <td>
      Kenilworth and Southam;Rugby;Coventry North East;Coventry North West;Coventry South
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Crawley
    </td>
    
    <td>
      Crawley
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Chorley and South Ribble
    </td>
    
    <td>
      South Ribble;Ribble Valley;Chorley
    </td>
  </tr>
  
  <tr>
    <td>
      NHS City and Hackney
    </td>
    
    <td>
      Cities of London and Westminster;Hackney North and Stoke Newington;Hackney South and Shoreditch
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Coastal West Sussex
    </td>
    
    <td>
      Chichester;Arundel and South Downs;Worthing West;Horsham;East Worthing and Shoreham;Bognor Regis and Littlehampton
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Corby
    </td>
    
    <td>
      Corby
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Castle Point, Rayleigh and Rochford
    </td>
    
    <td>
      Rochford and Southend East;Castle Point;Rayleigh and Wickford
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Central London (Westminster)
    </td>
    
    <td>
      Cities of London and Westminster;Westminster North
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Central Manchester
    </td>
    
    <td>
      Manchester Central;Manchester, Withington;Manchester, Gorton
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Chiltern
    </td>
    
    <td>
      Chesham and Amersham;Beaconsfield;Wycombe;Aylesbury
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Erewash
    </td>
    
    <td>
      Erewash
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Fareham and Gosport
    </td>
    
    <td>
      Fareham;Gosport
    </td>
  </tr>
  
  <tr>
    <td>
      NHS East Riding of Yorkshire
    </td>
    
    <td>
      East Yorkshire;Beverley and Holderness;Kingston upon Hull West and Hessle;Haltemprice and Howden;Brigg and Goole
    </td>
  </tr>
  
  <tr>
    <td>
      NHS East Staffordshire
    </td>
    
    <td>
      Burton;Lichfield
    </td>
  </tr>
  
  <tr>
    <td>
      NHS East Lancashire
    </td>
    
    <td>
      Burnley;Rossendale and Darwen;Hyndburn;Ribble Valley;Pendle
    </td>
  </tr>
  
  <tr>
    <td>
      NHS East Leicestershire and Rutland
    </td>
    
    <td>
      Harborough;Charnwood;South Leicestershire;Rutland and Melton
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Eastern Cheshire
    </td>
    
    <td>
      Tatton;Congleton;Macclesfield
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Enfield
    </td>
    
    <td>
      Enfield, Southgate;Enfield North;Edmonton
    </td>
  </tr>
  
  <tr>
    <td>
      NHS East Surrey
    </td>
    
    <td>
      East Surrey;Reigate
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Eastbourne, Hailsham and Seaford
    </td>
    
    <td>
      Wealden;Bexhill and Battle;Eastbourne;Lewes
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North West Surrey
    </td>
    
    <td>
      Spelthorne;Runnymede and Weybridge;Woking;Esher and Walton;Surrey Heath
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North, East, West Devon
    </td>
    
    <td>
      Central Devon;Plymouth, Sutton and Devonport;North Devon;Torridge and West Devon;Totnes;Exeter;Newton Abbot;South West Devon;Tiverton and Honiton;East Devon;Plymouth, Moor View
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Ealing
    </td>
    
    <td>
      Ealing Central and Acton;Ealing North;Ealing, Southall
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Windsor, Ascot and Maidenhead
    </td>
    
    <td>
      Runnymede and Weybridge;Maidenhead;Windsor
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Wiltshire
    </td>
    
    <td>
      South West Wiltshire;Chippenham;North Wiltshire;Devizes;Salisbury
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Wigan Borough
    </td>
    
    <td>
      Wigan;Makerfield;Leigh;Bolton West
    </td>
  </tr>
  
  <tr>
    <td>
      NHS West Suffolk
    </td>
    
    <td>
      Bury St Edmunds;South Suffolk;West Suffolk
    </td>
  </tr>
  
  <tr>
    <td>
      NHS West Norfolk
    </td>
    
    <td>
      South West Norfolk;North West Norfolk;Mid Norfolk
    </td>
  </tr>
  
  <tr>
    <td>
      NHS West London (Kensington and Chelsea, Queen’s Park and Paddington)
    </td>
    
    <td>
      Cities of London and Westminster;Chelsea and Fulham;Kensington;Westminster North
    </td>
  </tr>
  
  <tr>
    <td>
      NHS West Leicestershire
    </td>
    
    <td>
      Loughborough;Bosworth;Charnwood;North West Leicestershire;South Leicestershire
    </td>
  </tr>
  
  <tr>
    <td>
      NHS West Lancashire
    </td>
    
    <td>
      South Ribble;West Lancashire
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Wokingham
    </td>
    
    <td>
      Wokingham;Bracknell;Reading East;Maidenhead
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Wirral
    </td>
    
    <td>
      Wirral West;Wirral South;Birkenhead;Wallasey
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Hammersmith and Fulham
    </td>
    
    <td>
      Hammersmith;Chelsea and Fulham
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Hambleton, Richmondshire and Whitby
    </td>
    
    <td>
      Richmond (Yorks);Thirsk and Malton;Scarborough and Whitby
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Halton
    </td>
    
    <td>
      Weaver Vale;Halton
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Guildford and Waverley
    </td>
    
    <td>
      Woking;South West Surrey;Chichester;Mole Valley;Guildford
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Greenwich
    </td>
    
    <td>
      Eltham;Erith and Thamesmead;Greenwich and Woolwich
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Greater Preston
    </td>
    
    <td>
      Ribble Valley;Preston;Wyre and Preston North;Fylde;South Ribble
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Greater Huddersfield
    </td>
    
    <td>
      Colne Valley;Huddersfield;Dewsbury
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Great Yarmouth & Waveney
    </td>
    
    <td>
      Waveney;Great Yarmouth;Suffolk Coastal
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Gloucestershire
    </td>
    
    <td>
      Gloucester;Forest of Dean;Cheltenham;The Cotswolds;Tewkesbury;Stroud
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Gateshead
    </td>
    
    <td>
      Gateshead;Jarrow;Blaydon
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Fylde & Wyre
    </td>
    
    <td>
      Blackpool North and Cleveleys;Lancaster and Fleetwood;Wyre and Preston North;Fylde
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Wandsworth
    </td>
    
    <td>
      Putney;Tooting;Battersea
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Waltham Forest
    </td>
    
    <td>
      Walthamstow;Chingford and Woodford Green;Leyton and Wanstead
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Walsall
    </td>
    
    <td>
      Walsall North;Walsall South;Aldridge-Brownhills
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Wakefield
    </td>
    
    <td>
      Wakefield;Hemsworth;Normanton, Pontefract and Castleford;Morley and Outwood
    </td>
  </tr>
  
  <tr>
    <td>
      NHS West Essex
    </td>
    
    <td>
      Epping Forest;Harlow;Saffron Walden;Brentwood and Ongar
    </td>
  </tr>
  
  <tr>
    <td>
      NHS West Cheshire
    </td>
    
    <td>
      Ellesmere Port and Neston;City of Chester;Weaver Vale;Eddisbury
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Warwickshire North
    </td>
    
    <td>
      North Warwickshire;Rugby;Nuneaton
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Warrington
    </td>
    
    <td>
      Warrington North;Warrington South
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Wolverhampton
    </td>
    
    <td>
      Wolverhampton South West;Wolverhampton South East;Wolverhampton North East
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Wyre Forest
    </td>
    
    <td>
      Wyre Forest
    </td>
  </tr>
  
  <tr>
    <td>
      NHS West Kent
    </td>
    
    <td>
      Chatham and Aylesford;Tunbridge Wells;Faversham and Mid Kent;Tonbridge and Malling;Maidstone and The Weald;Sevenoaks
    </td>
  </tr>
  
  <tr>
    <td>
      NHS West Hampshire
    </td>
    
    <td>
      Meon Valley;North West Hampshire;Winchester;New Forest West;Romsey and Southampton North;East Hampshire;Eastleigh;New Forest East
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Herefordshire
    </td>
    
    <td>
      North Herefordshire;Hereford and South Herefordshire
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North East Lincolnshire
    </td>
    
    <td>
      Great Grimsby;Cleethorpes
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North East Hampshire and Farnham
    </td>
    
    <td>
      South West Surrey;North East Hampshire;Aldershot
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Southport and Formby
    </td>
    
    <td>
      Southport;Sefton Central
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Newham
    </td>
    
    <td>
      West Ham;East Ham
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Newcastle West
    </td>
    
    <td>
      Newcastle upon Tyne North;Newcastle upon Tyne Central
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Newcastle North and East
    </td>
    
    <td>
      Newcastle upon Tyne East;Newcastle upon Tyne North;Newcastle upon Tyne Central
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Newbury and District
    </td>
    
    <td>
      Newbury
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North East Essex
    </td>
    
    <td>
      Colchester;Witham;Harwich and North Essex;Clacton
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North Durham
    </td>
    
    <td>
      North West Durham;North Durham;City of Durham
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North Derbyshire
    </td>
    
    <td>
      North East Derbyshire;High Peak;Chesterfield;Bolsover;Derbyshire Dales
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North & West Reading
    </td>
    
    <td>
      Reading West;Newbury;Wokingham;Reading East
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Sutton
    </td>
    
    <td>
      Sutton and Cheam;Carshalton and Wallington
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Hardwick
    </td>
    
    <td>
      North East Derbyshire;Bolsover
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Haringey
    </td>
    
    <td>
      Hornsey and Wood Green;Tottenham
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Harrogate and Rural District
    </td>
    
    <td>
      Harrogate and Knaresborough;Selby and Ainsty;Skipton and Ripon
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Harrow
    </td>
    
    <td>
      Harrow East;Ruislip, Northwood and Pinner;Harrow West
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Hartlepool and Stockton-on-Tees
    </td>
    
    <td>
      Hartlepool;Stockton South;Stockton North
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Hastings & Rother
    </td>
    
    <td>
      Bexhill and Battle;Hastings and Rye
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Havering
    </td>
    
    <td>
      Dagenham and Rainham;Hornchurch and Upminster;Romford
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Southwark
    </td>
    
    <td>
      Dulwich and West Norwood;Bermondsey and Old Southwark;Camberwell and Peckham
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Herts Valleys
    </td>
    
    <td>
      Hemel Hempstead;St Albans;Hertsmere;South West Hertfordshire;Watford;Hitchin and Harpenden
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Stafford and Surrounds
    </td>
    
    <td>
      Stone;Stafford;South Staffordshire
    </td>
  </tr>
  
  <tr>
    <td>
      NHS St Helens
    </td>
    
    <td>
      St Helens North;St Helens South and Whiston
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Stoke on Trent
    </td>
    
    <td>
      Stoke-on-Trent South;Stoke-on-Trent North;Stoke-on-Trent Central;Staffordshire Moorlands
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Stockport
    </td>
    
    <td>
      Cheadle;Hazel Grove;Denton and Reddish;Stockport
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Surrey Downs
    </td>
    
    <td>
      Reigate;Esher and Walton;Epsom and Ewell;Mole Valley
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Sunderland
    </td>
    
    <td>
      Washington and Sunderland West;Sunderland Central;Houghton and Sunderland South
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Thanet
    </td>
    
    <td>
      South Thanet;North Thanet
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Thurrock
    </td>
    
    <td>
      Thurrock;South Basildon and East Thurrock
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Tower Hamlets
    </td>
    
    <td>
      Bethnal Green and Bow;Poplar and Limehouse
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Trafford
    </td>
    
    <td>
      Wythenshawe and Sale East;Altrincham and Sale West;Stretford and Urmston
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Swale
    </td>
    
    <td>
      Sittingbourne and Sheppey
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Swindon
    </td>
    
    <td>
      Wantage;North Swindon;South Swindon
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Tameside and Glossop
    </td>
    
    <td>
      Ashton-under-Lyne;Denton and Reddish;High Peak;Stalybridge and Hyde
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Telford & Wrekin
    </td>
    
    <td>
      Telford;The Wrekin
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Vale of York
    </td>
    
    <td>
      Selby and Ainsty;York Outer;East Yorkshire;Thirsk and Malton;York Central
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Vale Royal
    </td>
    
    <td>
      Tatton;Weaver Vale;Eddisbury
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Nene
    </td>
    
    <td>
      Northampton South;Daventry;Northampton North;Corby;Kettering;South Northamptonshire;Wellingborough
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Newark & Sherwood
    </td>
    
    <td>
      Sherwood;Newark
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Medway
    </td>
    
    <td>
      Rochester and Strood;Chatham and Aylesford;Gillingham and Rainham
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Merton
    </td>
    
    <td>
      Mitcham and Morden;Wimbledon
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Mid Essex
    </td>
    
    <td>
      Braintree;Maldon;Chelmsford;Saffron Walden;Witham
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Milton Keynes
    </td>
    
    <td>
      Milton Keynes North;Buckingham;Milton Keynes South
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Lincolnshire West
    </td>
    
    <td>
      Lincoln;Sleaford and North Hykeham;Gainsborough
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Liverpool
    </td>
    
    <td>
      Garston and Halewood;Liverpool, West Derby;Liverpool, Wavertree;Liverpool, Walton;Liverpool, Riverside
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Luton
    </td>
    
    <td>
      Luton South;Luton North
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Mansfield & Ashfield
    </td>
    
    <td>
      Mansfield;Ashfield
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Barnet
    </td>
    
    <td>
      Finchley and Golders Green;Hendon;Chipping Barnet
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Barking & Dagenham
    </td>
    
    <td>
      Dagenham and Rainham;Barking
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Basildon and Brentwood
    </td>
    
    <td>
      South Basildon and East Thurrock;Basildon and Billericay;Brentwood and Ongar;Rayleigh and Wickford
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Southern Derbyshire
    </td>
    
    <td>
      Amber Valley;South Derbyshire;Derby South;Derby North;Mid Derbyshire;Derbyshire Dales
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Airedale, Wharfedale and Craven
    </td>
    
    <td>
      Keighley;Shipley;Skipton and Ripon
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Aylesbury Vale
    </td>
    
    <td>
      Buckingham;Henley;Aylesbury
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Ashford
    </td>
    
    <td>
      Ashford;Folkestone and Hythe
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South Tees
    </td>
    
    <td>
      Middlesbrough;Middlesbrough South and East Cleveland;Redcar
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South Tyneside
    </td>
    
    <td>
      Jarrow;South Shields
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South Reading
    </td>
    
    <td>
      Reading West;Reading East
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South Sefton
    </td>
    
    <td>
      Bootle;Sefton Central
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South Worcestershire
    </td>
    
    <td>
      Mid Worcestershire;Worcester;Redditch;West Worcestershire
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Southampton
    </td>
    
    <td>
      Romsey and Southampton North;Southampton, Itchen;Southampton, Test
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South Warwickshire
    </td>
    
    <td>
      Stratford-on-Avon;Kenilworth and Southam;Warwick and Leamington
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South West Lincolnshire
    </td>
    
    <td>
      Grantham and Stamford;Sleaford and North Hykeham
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Leeds South and East
    </td>
    
    <td>
      Elmet and Rothwell;Leeds Central;Leeds North East;Leeds East;Morley and Outwood
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Bolton
    </td>
    
    <td>
      Bolton South East;Bolton North East;Bolton West
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Bracknell and Ascot
    </td>
    
    <td>
      Bracknell;Windsor
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Blackburn with Darwen
    </td>
    
    <td>
      Blackburn;Rossendale and Darwen
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Blackpool
    </td>
    
    <td>
      Blackpool South;Blackpool North and Cleveleys
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Birmingham CrossCity
    </td>
    
    <td>
      Birmingham, Selly Oak;Birmingham, Yardley;Birmingham, Ladywood;Birmingham, Northfield;Birmingham, Perry Barr;Sutton Coldfield;Birmingham, Edgbaston;Birmingham, Erdington;Birmingham, Hall Green;Birmingham, Hodge Hill
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Birmingham South and Central
    </td>
    
    <td>
      Birmingham, Ladywood;Birmingham, Northfield;Birmingham, Selly Oak;Birmingham, Edgbaston;Birmingham, Hall Green
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South Norfolk
    </td>
    
    <td>
      Norwich South;South West Norfolk;South Norfolk;Mid Norfolk
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Bexley
    </td>
    
    <td>
      Erith and Thamesmead;Old Bexley and Sidcup;Bexleyheath and Crayford
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South Lincolnshire
    </td>
    
    <td>
      South Holland and The Deepings;Grantham and Stamford
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South Kent Coast
    </td>
    
    <td>
      Folkestone and Hythe;Dover
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Southend
    </td>
    
    <td>
      Rochford and Southend East;Southend West
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South Eastern Hampshire
    </td>
    
    <td>
      Meon Valley;East Hampshire;Havant
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South East Staffs and Seisdon and Peninsular
    </td>
    
    <td>
      Tamworth;Lichfield;South Staffordshire
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South Devon and Torbay
    </td>
    
    <td>
      Torbay;Newton Abbot;Central Devon;Totnes
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Bradford City
    </td>
    
    <td>
      Bradford West;Bradford East
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Bradford Districts
    </td>
    
    <td>
      Shipley;Bradford South;Bradford West;Bradford East
    </td>
  </tr>
  
  <tr>
    <td>
      NHS North Staffordshire
    </td>
    
    <td>
      Stone;Stoke-on-Trent North;Newcastle-under-Lyme;Staffordshire Moorlands
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Kernow
    </td>
    
    <td>
      South East Cornwall;Camborne and Redruth;St Austell and Newquay;Truro and Falmouth;St Ives;North Cornwall
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Islington
    </td>
    
    <td>
      Islington South and Finsbury;Islington North
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Hull
    </td>
    
    <td>
      Kingston upon Hull East;Kingston upon Hull West and Hessle;Kingston upon Hull North
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Hounslow
    </td>
    
    <td>
      Feltham and Heston;Brentford and Isleworth
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Isle of Wight
    </td>
    
    <td>
      Isle of Wight
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Ipswich and East Suffolk
    </td>
    
    <td>
      Bury St Edmunds;Central Suffolk and North Ipswich;Suffolk Coastal;South Suffolk;West Suffolk;Ipswich
    </td>
  </tr>
  
  <tr>
    <td>
      NHS High Weald Lewes Havens
    </td>
    
    <td>
      Wealden;Bexhill and Battle;Brighton, Kemptown;Lewes
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Heywood, Middleton & Rochdale
    </td>
    
    <td>
      Heywood and Middleton;Rochdale
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Horsham and Mid Sussex
    </td>
    
    <td>
      Horsham;Arundel and South Downs;Mid Sussex
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Hillingdon
    </td>
    
    <td>
      Ruislip, Northwood and Pinner;Hayes and Harlington;Uxbridge and South Ruislip
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Richmond
    </td>
    
    <td>
      Twickenham;Richmond Park
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Rotherham
    </td>
    
    <td>
      Wentworth and Dearne;Rother Valley;Rotherham
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Rushcliffe
    </td>
    
    <td>
      Newark;Rushcliffe
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Salford
    </td>
    
    <td>
      Blackley and Broughton;Salford and Eccles;Worsley and Eccles South
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Sandwell and West Birmingham
    </td>
    
    <td>
      Halesowen and Rowley Regis;West Bromwich East;Warley;Birmingham, Ladywood;West Bromwich West;Birmingham, Perry Barr;Birmingham, Edgbaston
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Scarborough and Ryedale
    </td>
    
    <td>
      Scarborough and Whitby;Thirsk and Malton
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Sheffield
    </td>
    
    <td>
      Sheffield South East;Sheffield, Brightside and Hillsborough;Sheffield, Hallam;Sheffield, Heeley;Penistone and Stocksbridge;Sheffield Central
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Shropshire
    </td>
    
    <td>
      Shrewsbury and Atcham;North Shropshire;Ludlow;The Wrekin
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Slough
    </td>
    
    <td>
      Slough;Windsor
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Solihull
    </td>
    
    <td>
      Meriden;Solihull
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Surrey Heath
    </td>
    
    <td>
      Surrey Heath
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Bedfordshire
    </td>
    
    <td>
      North East Bedfordshire;South West Bedfordshire;Luton South;Mid Bedfordshire;Bedford
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Lewisham
    </td>
    
    <td>
      Lewisham West and Penge;Lewisham, Deptford;Lewisham East
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Lincolnshire East
    </td>
    
    <td>
      Boston and Skegness;South Holland and The Deepings;Gainsborough;Louth and Horncastle
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Leeds West
    </td>
    
    <td>
      Pudsey;Leeds North West;Leeds West;Leeds North East;Leeds Central;Morley and Outwood
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Leicester City
    </td>
    
    <td>
      Leicester East;Leicester South;Leicester West
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Leeds North
    </td>
    
    <td>
      Leeds North West;Elmet and Rothwell;Leeds Central;Leeds North East;Leeds East
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South Manchester
    </td>
    
    <td>
      Wythenshawe and Sale East;Manchester, Withington
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Lambeth
    </td>
    
    <td>
      Vauxhall;Dulwich and West Norwood;Streatham
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Lancashire North
    </td>
    
    <td>
      Morecambe and Lunesdale;Lancaster and Fleetwood;Wyre and Preston North
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Kingston
    </td>
    
    <td>
      Kingston and Surbiton;Richmond Park
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Knowsley
    </td>
    
    <td>
      Garston and Halewood;Knowsley;St Helens South and Whiston
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South Gloucestershire
    </td>
    
    <td>
      Kingswood;Filton and Bradley Stoke;Thornbury and Yate
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Oldham
    </td>
    
    <td>
      Ashton-under-Lyne;Oldham East and Saddleworth;Oldham West and Royton
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Nottingham West
    </td>
    
    <td>
      Ashfield;Broxtowe
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Portsmouth
    </td>
    
    <td>
      Portsmouth South;Portsmouth North
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Oxfordshire
    </td>
    
    <td>
      Banbury;Witney;Oxford West and Abingdon;Oxford East;Henley;Wantage
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Norwich
    </td>
    
    <td>
      Norwich South;Broadland;Norwich North
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Northumberland
    </td>
    
    <td>
      Berwick-upon-Tweed;Hexham;Wansbeck;Blyth Valley
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Nottingham North & East
    </td>
    
    <td>
      Sherwood;Newark;Gedling
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Nottingham City
    </td>
    
    <td>
      Nottingham East;Nottingham South;Nottingham North
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Redditch and Bromsgrove
    </td>
    
    <td>
      Redditch;Bromsgrove
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Redbridge
    </td>
    
    <td>
      Ilford North;Chingford and Woodford Green;Ilford South;Leyton and Wanstead
    </td>
  </tr>
  
  <tr>
    <td>
      NHS South Cheshire
    </td>
    
    <td>
      Congleton;Crewe and Nantwich;Eddisbury
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Somerset
    </td>
    
    <td>
      Somerton and Frome;Wells;Bridgwater and West Somerset;Yeovil;Taunton Deane
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Canterbury and Coastal
    </td>
    
    <td>
      Canterbury;Sittingbourne and Sheppey;North Thanet;South Thanet;Dover;Faversham and Mid Kent
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Cannock Chase
    </td>
    
    <td>
      Cannock Chase;Lichfield;South Staffordshire
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Bath and North East Somerset
    </td>
    
    <td>
      Bath;North East Somerset
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Bromley
    </td>
    
    <td>
      Lewisham West and Penge;Orpington;Beckenham;Bromley and Chislehurst
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Bristol
    </td>
    
    <td>
      Bristol South;Bristol North West;Bristol East;Bristol West
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Brighton & Hove
    </td>
    
    <td>
      Brighton, Pavilion;Brighton, Kemptown;Hove
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Brent
    </td>
    
    <td>
      Brent Central;Brent North;Hampstead and Kilburn
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Camden
    </td>
    
    <td>
      Holborn and St Pancras;Hampstead and Kilburn
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Cambridgeshire and Peterborough
    </td>
    
    <td>
      Cambridge;North West Cambridgeshire;South East Cambridgeshire;North East Hertfordshire;South Cambridgeshire;Huntingdon;Corby;North East Cambridgeshire;Peterborough
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Calderdale
    </td>
    
    <td>
      Halifax;Calder Valley
    </td>
  </tr>
  
  <tr>
    <td>
      NHS Bury
    </td>
    
    <td>
      Bury South;Bury North
    </td>
  </tr>
</table>

And the PCT version:


<table width="186">
  <tr>
    <td width="121">
      Primary Care Trust
    </td>
    
    <td width="65">
      Parliamentary Constituency
    </td>
  </tr>
  
  <tr>
    <td>
        South Gloucestershire
    </td>
    
    <td>
      Filton and Bradley Stoke
    </td>
  </tr>
  
  <tr>
    <td>
        South Gloucestershire
    </td>
    
    <td>
      Kingswood
    </td>
  </tr>
  
  <tr>
    <td>
        South Gloucestershire
    </td>
    
    <td>
      North Wiltshire
    </td>
  </tr>
  
  <tr>
    <td>
        South Gloucestershire
    </td>
    
    <td>
      Thornbury and Yate
    </td>
  </tr>
  
  <tr>
    <td>
        Havering
    </td>
    
    <td>
      Dagenham and Rainham
    </td>
  </tr>
  
  <tr>
    <td>
        Havering
    </td>
    
    <td>
      Hornchurch and Upminster
    </td>
  </tr>
  
  <tr>
    <td>
        Havering
    </td>
    
    <td>
      Romford
    </td>
  </tr>
  
  <tr>
    <td>
        Kingston
    </td>
    
    <td>
      Kingston and Surbiton
    </td>
  </tr>
  
  <tr>
    <td>
        Kingston
    </td>
    
    <td>
      Richmond Park
    </td>
  </tr>
  
  <tr>
    <td>
        Bromley
    </td>
    
    <td>
      Beckenham
    </td>
  </tr>
  
  <tr>
    <td>
        Bromley
    </td>
    
    <td>
      Bromley and Chislehurst
    </td>
  </tr>
  
  <tr>
    <td>
        Bromley
    </td>
    
    <td>
      Lewisham West and Penge
    </td>
  </tr>
  
  <tr>
    <td>
        Bromley
    </td>
    
    <td>
      Orpington
    </td>
  </tr>
  
  <tr>
    <td>
        Greenwich Teaching
    </td>
    
    <td>
      Eltham
    </td>
  </tr>
  
  <tr>
    <td>
        Greenwich Teaching
    </td>
    
    <td>
      Erith and Thamesmead
    </td>
  </tr>
  
  <tr>
    <td>
        Greenwich Teaching
    </td>
    
    <td>
      Greenwich and Woolwich
    </td>
  </tr>
  
  <tr>
    <td>
        Barnet
    </td>
    
    <td>
      Chipping Barnet
    </td>
  </tr>
  
  <tr>
    <td>
        Barnet
    </td>
    
    <td>
      Finchley and Golders Green
    </td>
  </tr>
  
  <tr>
    <td>
        Barnet
    </td>
    
    <td>
      Hendon
    </td>
  </tr>
  
  <tr>
    <td>
        Hillingdon
    </td>
    
    <td>
      Hayes and Harlington
    </td>
  </tr>
  
  <tr>
    <td>
        Hillingdon
    </td>
    
    <td>
      Ruislip Northwood and Pinner
    </td>
  </tr>
  
  <tr>
    <td>
        Hillingdon
    </td>
    
    <td>
      Uxbridge and South Ruislip
    </td>
  </tr>
  
  <tr>
    <td>
        Enfield
    </td>
    
    <td>
      Edmonton
    </td>
  </tr>
  
  <tr>
    <td>
        Enfield
    </td>
    
    <td>
      Enfield North
    </td>
  </tr>
  
  <tr>
    <td>
        Enfield
    </td>
    
    <td>
      Enfield Southgate
    </td>
  </tr>
  
  <tr>
    <td>
        Barking and Dagenham
    </td>
    
    <td>
      Barking
    </td>
  </tr>
  
  <tr>
    <td>
        Barking and Dagenham
    </td>
    
    <td>
      Dagenham and Rainham
    </td>
  </tr>
  
  <tr>
    <td>
        City and Hackney Teaching
    </td>
    
    <td>
      Cities of London and Westminster
    </td>
  </tr>
  
  <tr>
    <td>
        City and Hackney Teaching
    </td>
    
    <td>
      Hackney North and Stoke Newington
    </td>
  </tr>
  
  <tr>
    <td>
        City and Hackney Teaching
    </td>
    
    <td>
      Hackney South and Shoreditch
    </td>
  </tr>
  
  <tr>
    <td>
        Tower Hamlets
    </td>
    
    <td>
      Bethnal Green and Bow
    </td>
  </tr>
  
  <tr>
    <td>
        Tower Hamlets
    </td>
    
    <td>
      Poplar and Limehouse
    </td>
  </tr>
  
  <tr>
    <td>
        Newham
    </td>
    
    <td>
      East Ham
    </td>
  </tr>
  
  <tr>
    <td>
        Newham
    </td>
    
    <td>
      West Ham
    </td>
  </tr>
  
  <tr>
    <td>
        Haringey Teaching
    </td>
    
    <td>
      Hornsey and Wood Green
    </td>
  </tr>
  
  <tr>
    <td>
        Haringey Teaching
    </td>
    
    <td>
      Tottenham
    </td>
  </tr>
  
  <tr>
    <td>
        Herefordshire
    </td>
    
    <td>
      Hereford and South Herefordshire
    </td>
  </tr>
  
  <tr>
    <td>
        Herefordshire
    </td>
    
    <td>
      North Herefordshire
    </td>
  </tr>
  
  <tr>
    <td>
        Milton Keynes
    </td>
    
    <td>
      Buckingham
    </td>
  </tr>
  
  <tr>
    <td>
        Milton Keynes
    </td>
    
    <td>
      Milton Keynes North
    </td>
  </tr>
  
  <tr>
    <td>
        Milton Keynes
    </td>
    
    <td>
      Milton Keynes South
    </td>
  </tr>
  
  <tr>
    <td>
        Newcastle
    </td>
    
    <td>
      Newcastle upon Tyne Central
    </td>
  </tr>
  
  <tr>
    <td>
        Newcastle
    </td>
    
    <td>
      Newcastle upon Tyne East
    </td>
  </tr>
  
  <tr>
    <td>
        Newcastle
    </td>
    
    <td>
      Newcastle upon Tyne North
    </td>
  </tr>
  
  <tr>
    <td>
        North Tyneside
    </td>
    
    <td>
      North Tyneside
    </td>
  </tr>
  
  <tr>
    <td>
        North Tyneside
    </td>
    
    <td>
      Tynemouth
    </td>
  </tr>
  
  <tr>
    <td>
        Hartlepool
    </td>
    
    <td>
      Hartlepool
    </td>
  </tr>
  
  <tr>
    <td>
        Stockton-on-Tees Teaching
    </td>
    
    <td>
      Stockton North
    </td>
  </tr>
  
  <tr>
    <td>
        Stockton-on-Tees Teaching
    </td>
    
    <td>
      Stockton South
    </td>
  </tr>
  
  <tr>
    <td>
        North Lincolnshire
    </td>
    
    <td>
      Brigg and Goole
    </td>
  </tr>
  
  <tr>
    <td>
        North Lincolnshire
    </td>
    
    <td>
      Cleethorpes
    </td>
  </tr>
  
  <tr>
    <td>
        North Lincolnshire
    </td>
    
    <td>
      Scunthorpe
    </td>
  </tr>
  
  <tr>
    <td>
        Nottingham City
    </td>
    
    <td>
      Nottingham East
    </td>
  </tr>
  
  <tr>
    <td>
        Nottingham City
    </td>
    
    <td>
      Nottingham North
    </td>
  </tr>
  
  <tr>
    <td>
        Nottingham City
    </td>
    
    <td>
      Nottingham South
    </td>
  </tr>
  
  <tr>
    <td>
        Bassetlaw
    </td>
    
    <td>
      Bassetlaw
    </td>
  </tr>
  
  <tr>
    <td>
        Bassetlaw
    </td>
    
    <td>
      Newark
    </td>
  </tr>
  
  <tr>
    <td>
        Plymouth Teaching
    </td>
    
    <td>
      Plymouth Moor View
    </td>
  </tr>
  
  <tr>
    <td>
        Plymouth Teaching
    </td>
    
    <td>
      Plymouth Sutton and Devonport
    </td>
  </tr>
  
  <tr>
    <td>
        Plymouth Teaching
    </td>
    
    <td>
      South West Devon
    </td>
  </tr>
  
  <tr>
    <td>
        Salford
    </td>
    
    <td>
      Blackley and Broughton
    </td>
  </tr>
  
  <tr>
    <td>
        Salford
    </td>
    
    <td>
      Salford and Eccles
    </td>
  </tr>
  
  <tr>
    <td>
        Salford
    </td>
    
    <td>
      Worsley and Eccles South
    </td>
  </tr>
  
  <tr>
    <td>
        Stockport
    </td>
    
    <td>
      Cheadle
    </td>
  </tr>
  
  <tr>
    <td>
        Stockport
    </td>
    
    <td>
      Denton and Reddish
    </td>
  </tr>
  
  <tr>
    <td>
        Stockport
    </td>
    
    <td>
      Hazel Grove
    </td>
  </tr>
  
  <tr>
    <td>
        Stockport
    </td>
    
    <td>
      Stockport
    </td>
  </tr>
  
  <tr>
    <td>
        Portsmouth City Teaching
    </td>
    
    <td>
      Portsmouth North
    </td>
  </tr>
  
  <tr>
    <td>
        Portsmouth City Teaching
    </td>
    
    <td>
      Portsmouth South
    </td>
  </tr>
  
  <tr>
    <td>
        Bath and North East Somerset
    </td>
    
    <td>
      Bath
    </td>
  </tr>
  
  <tr>
    <td>
        Bath and North East Somerset
    </td>
    
    <td>
      North East Somerset
    </td>
  </tr>
  
  <tr>
    <td>
        Luton
    </td>
    
    <td>
      Luton North
    </td>
  </tr>
  
  <tr>
    <td>
        Luton
    </td>
    
    <td>
      Luton South
    </td>
  </tr>
  
  <tr>
    <td>
        Hammersmith and Fulham
    </td>
    
    <td>
      Chelsea and Fulham
    </td>
  </tr>
  
  <tr>
    <td>
        Hammersmith and Fulham
    </td>
    
    <td>
      Hammersmith
    </td>
  </tr>
  
  <tr>
    <td>
        Rotherham
    </td>
    
    <td>
      Rother Valley
    </td>
  </tr>
  
  <tr>
    <td>
        Rotherham
    </td>
    
    <td>
      Rotherham
    </td>
  </tr>
  
  <tr>
    <td>
        Rotherham
    </td>
    
    <td>
      Wentworth and Dearne
    </td>
  </tr>
  
  <tr>
    <td>
        Ashton
    </td>
    
    <td>
      Bolton West
    </td>
  </tr>
  
  <tr>
    <td>
        Ashton
    </td>
    
    <td>
      Leigh
    </td>
  </tr>
  
  <tr>
    <td>
        Ashton
    </td>
    
    <td>
      Makerfield
    </td>
  </tr>
  
  <tr>
    <td>
        Ashton
    </td>
    
    <td>
      Wigan
    </td>
  </tr>
  
  <tr>
    <td>
        Blackpool
    </td>
    
    <td>
      Blackpool North and Cleveleys
    </td>
  </tr>
  
  <tr>
    <td>
        Blackpool
    </td>
    
    <td>
      Blackpool South
    </td>
  </tr>
  
  <tr>
    <td>
        Ealing
    </td>
    
    <td>
      Ealing Central and Acton
    </td>
  </tr>
  
  <tr>
    <td>
        Ealing
    </td>
    
    <td>
      Ealing North
    </td>
  </tr>
  
  <tr>
    <td>
        Ealing
    </td>
    
    <td>
      Ealing Southall
    </td>
  </tr>
  
  <tr>
    <td>
        Hounslow
    </td>
    
    <td>
      Brentford and Isleworth
    </td>
  </tr>
  
  <tr>
    <td>
        Hounslow
    </td>
    
    <td>
      Feltham and Heston
    </td>
  </tr>
  
  <tr>
    <td>
        Warrington
    </td>
    
    <td>
      Warrington North
    </td>
  </tr>
  
  <tr>
    <td>
        Warrington
    </td>
    
    <td>
      Warrington South
    </td>
  </tr>
  
  <tr>
    <td>
        Knowsley
    </td>
    
    <td>
      Garston and Halewood
    </td>
  </tr>
  
  <tr>
    <td>
        Knowsley
    </td>
    
    <td>
      Knowsley
    </td>
  </tr>
  
  <tr>
    <td>
        Knowsley
    </td>
    
    <td>
      St Helens South and Whiston
    </td>
  </tr>
  
  <tr>
    <td>
        Oldham
    </td>
    
    <td>
      Ashton-under-Lyne
    </td>
  </tr>
  
  <tr>
    <td>
        Oldham
    </td>
    
    <td>
      Oldham East and Saddleworth
    </td>
  </tr>
  
  <tr>
    <td>
        Oldham
    </td>
    
    <td>
      Oldham West and Royton
    </td>
  </tr>
  
  <tr>
    <td>
        Calderdale
    </td>
    
    <td>
      Calder Valley
    </td>
  </tr>
  
  <tr>
    <td>
        Calderdale
    </td>
    
    <td>
      Halifax
    </td>
  </tr>
  
  <tr>
    <td>
        Darlington
    </td>
    
    <td>
      Darlington
    </td>
  </tr>
  
  <tr>
    <td>
        Darlington
    </td>
    
    <td>
      Sedgefield
    </td>
  </tr>
  
  <tr>
    <td>
        Barnsley
    </td>
    
    <td>
      Barnsley Central
    </td>
  </tr>
  
  <tr>
    <td>
        Barnsley
    </td>
    
    <td>
      Barnsley East
    </td>
  </tr>
  
  <tr>
    <td>
        Barnsley
    </td>
    
    <td>
      Penistone and Stocksbridge
    </td>
  </tr>
  
  <tr>
    <td>
        Barnsley
    </td>
    
    <td>
      Wentworth and Dearne
    </td>
  </tr>
  
  <tr>
    <td>
        Bury
    </td>
    
    <td>
      Bury North
    </td>
  </tr>
  
  <tr>
    <td>
        Bury
    </td>
    
    <td>
      Bury South
    </td>
  </tr>
  
  <tr>
    <td>
        Swindon
    </td>
    
    <td>
      North Swindon
    </td>
  </tr>
  
  <tr>
    <td>
        Swindon
    </td>
    
    <td>
      South Swindon
    </td>
  </tr>
  
  <tr>
    <td>
        Swindon
    </td>
    
    <td>
      Wantage
    </td>
  </tr>
  
  <tr>
    <td>
        Brent Teaching
    </td>
    
    <td>
      Brent Central
    </td>
  </tr>
  
  <tr>
    <td>
        Brent Teaching
    </td>
    
    <td>
      Brent North
    </td>
  </tr>
  
  <tr>
    <td>
        Brent Teaching
    </td>
    
    <td>
      Hampstead and Kilburn
    </td>
  </tr>
  
  <tr>
    <td>
        Harrow
    </td>
    
    <td>
      Harrow East
    </td>
  </tr>
  
  <tr>
    <td>
        Harrow
    </td>
    
    <td>
      Harrow West
    </td>
  </tr>
  
  <tr>
    <td>
        Harrow
    </td>
    
    <td>
      Ruislip Northwood and Pinner
    </td>
  </tr>
  
  <tr>
    <td>
        Camden
    </td>
    
    <td>
      Hampstead and Kilburn
    </td>
  </tr>
  
  <tr>
    <td>
        Camden
    </td>
    
    <td>
      Holborn and St Pancras
    </td>
  </tr>
  
  <tr>
    <td>
        Islington
    </td>
    
    <td>
      Islington North
    </td>
  </tr>
  
  <tr>
    <td>
        Islington
    </td>
    
    <td>
      Islington South and Finsbury
    </td>
  </tr>
  
  <tr>
    <td>
        Croydon
    </td>
    
    <td>
      Croydon Central
    </td>
  </tr>
  
  <tr>
    <td>
        Croydon
    </td>
    
    <td>
      Croydon North
    </td>
  </tr>
  
  <tr>
    <td>
        Croydon
    </td>
    
    <td>
      Croydon South
    </td>
  </tr>
  
  <tr>
    <td>
        Gateshead
    </td>
    
    <td>
      Blaydon
    </td>
  </tr>
  
  <tr>
    <td>
        Gateshead
    </td>
    
    <td>
      Gateshead
    </td>
  </tr>
  
  <tr>
    <td>
        Gateshead
    </td>
    
    <td>
      Jarrow
    </td>
  </tr>
  
  <tr>
    <td>
        South Tyneside
    </td>
    
    <td>
      Jarrow
    </td>
  </tr>
  
  <tr>
    <td>
        South Tyneside
    </td>
    
    <td>
      South Shields
    </td>
  </tr>
  
  <tr>
    <td>
        Sunderland Teaching
    </td>
    
    <td>
      Houghton and Sunderland South
    </td>
  </tr>
  
  <tr>
    <td>
        Sunderland Teaching
    </td>
    
    <td>
      Sunderland Central
    </td>
  </tr>
  
  <tr>
    <td>
        Sunderland Teaching
    </td>
    
    <td>
      Washington and Sunderland West
    </td>
  </tr>
  
  <tr>
    <td>
        Middlesbrough
    </td>
    
    <td>
      Middlesbrough
    </td>
  </tr>
  
  <tr>
    <td>
        Middlesbrough
    </td>
    
    <td>
      Middlesbrough South and East Cleveland
    </td>
  </tr>
  
  <tr>
    <td>
        Southampton City
    </td>
    
    <td>
      Romsey and Southampton North
    </td>
  </tr>
  
  <tr>
    <td>
        Southampton City
    </td>
    
    <td>
      Southampton Itchen
    </td>
  </tr>
  
  <tr>
    <td>
        Southampton City
    </td>
    
    <td>
      Southampton Test
    </td>
  </tr>
  
  <tr>
    <td>
        Medway
    </td>
    
    <td>
      Chatham and Aylesford
    </td>
  </tr>
  
  <tr>
    <td>
        Medway
    </td>
    
    <td>
      Gillingham and Rainham
    </td>
  </tr>
  
  <tr>
    <td>
        Medway
    </td>
    
    <td>
      Rochester and Strood
    </td>
  </tr>
  
  <tr>
    <td>
        Kensington and Chelsea
    </td>
    
    <td>
      Chelsea and Fulham
    </td>
  </tr>
  
  <tr>
    <td>
        Kensington and Chelsea
    </td>
    
    <td>
      Kensington
    </td>
  </tr>
  
  <tr>
    <td>
        Westminster
    </td>
    
    <td>
      Cities of London and Westminster
    </td>
  </tr>
  
  <tr>
    <td>
        Westminster
    </td>
    
    <td>
      Westminster North
    </td>
  </tr>
  
  <tr>
    <td>
        Lambeth
    </td>
    
    <td>
      Dulwich and West Norwood
    </td>
  </tr>
  
  <tr>
    <td>
        Lambeth
    </td>
    
    <td>
      Streatham
    </td>
  </tr>
  
  <tr>
    <td>
        Lambeth
    </td>
    
    <td>
      Vauxhall
    </td>
  </tr>
  
  <tr>
    <td>
        Southwark
    </td>
    
    <td>
      Bermondsey and Old Southwark
    </td>
  </tr>
  
  <tr>
    <td>
        Southwark
    </td>
    
    <td>
      Camberwell and Peckham
    </td>
  </tr>
  
  <tr>
    <td>
        Southwark
    </td>
    
    <td>
      Dulwich and West Norwood
    </td>
  </tr>
  
  <tr>
    <td>
        Lewisham
    </td>
    
    <td>
      Lewisham East
    </td>
  </tr>
  
  <tr>
    <td>
        Lewisham
    </td>
    
    <td>
      Lewisham West and Penge
    </td>
  </tr>
  
  <tr>
    <td>
        Lewisham
    </td>
    
    <td>
      Lewisham Deptford
    </td>
  </tr>
  
  <tr>
    <td>
        Wandsworth
    </td>
    
    <td>
      Battersea
    </td>
  </tr>
  
  <tr>
    <td>
        Wandsworth
    </td>
    
    <td>
      Putney
    </td>
  </tr>
  
  <tr>
    <td>
        Wandsworth
    </td>
    
    <td>
      Tooting
    </td>
  </tr>
  
  <tr>
    <td>
        Tameside and Glossop
    </td>
    
    <td>
      Ashton-under-Lyne
    </td>
  </tr>
  
  <tr>
    <td>
        Tameside and Glossop
    </td>
    
    <td>
      Denton and Reddish
    </td>
  </tr>
  
  <tr>
    <td>
        Tameside and Glossop
    </td>
    
    <td>
      High Peak
    </td>
  </tr>
  
  <tr>
    <td>
        Tameside and Glossop
    </td>
    
    <td>
      Stalybridge and Hyde
    </td>
  </tr>
  
  <tr>
    <td>
        Brighton and Hove City
    </td>
    
    <td>
      Brighton Kemptown
    </td>
  </tr>
  
  <tr>
    <td>
        Brighton and Hove City
    </td>
    
    <td>
      Brighton Pavilion
    </td>
  </tr>
  
  <tr>
    <td>
        Brighton and Hove City
    </td>
    
    <td>
      Hove
    </td>
  </tr>
  
  <tr>
    <td>
        South Birmingham
    </td>
    
    <td>
      Birmingham Edgbaston
    </td>
  </tr>
  
  <tr>
    <td>
        South Birmingham
    </td>
    
    <td>
      Birmingham Hall Green
    </td>
  </tr>
  
  <tr>
    <td>
        South Birmingham
    </td>
    
    <td>
      Birmingham Ladywood
    </td>
  </tr>
  
  <tr>
    <td>
        South Birmingham
    </td>
    
    <td>
      Birmingham Northfield
    </td>
  </tr>
  
  <tr>
    <td>
        South Birmingham
    </td>
    
    <td>
      Birmingham Selly Oak
    </td>
  </tr>
  
  <tr>
    <td>
        Shropshire County
    </td>
    
    <td>
      Ludlow
    </td>
  </tr>
  
  <tr>
    <td>
        Shropshire County
    </td>
    
    <td>
      North Shropshire
    </td>
  </tr>
  
  <tr>
    <td>
        Shropshire County
    </td>
    
    <td>
      Shrewsbury and Atcham
    </td>
  </tr>
  
  <tr>
    <td>
        Shropshire County
    </td>
    
    <td>
      The Wrekin
    </td>
  </tr>
  
  <tr>
    <td>
        Walsall Teaching
    </td>
    
    <td>
      Aldridge-Brownhills
    </td>
  </tr>
  
  <tr>
    <td>
        Walsall Teaching
    </td>
    
    <td>
      Walsall North
    </td>
  </tr>
  
  <tr>
    <td>
        Walsall Teaching
    </td>
    
    <td>
      Walsall South
    </td>
  </tr>
  
  <tr>
    <td>
        Richmond and Twickenham
    </td>
    
    <td>
      Richmond Park
    </td>
  </tr>
  
  <tr>
    <td>
        Richmond and Twickenham
    </td>
    
    <td>
      Twickenham
    </td>
  </tr>
  
  <tr>
    <td>
        Sutton and Merton
    </td>
    
    <td>
      Carshalton and Wallington
    </td>
  </tr>
  
  <tr>
    <td>
        Sutton and Merton
    </td>
    
    <td>
      Mitcham and Morden
    </td>
  </tr>
  
  <tr>
    <td>
        Sutton and Merton
    </td>
    
    <td>
      Sutton and Cheam
    </td>
  </tr>
  
  <tr>
    <td>
        Sutton and Merton
    </td>
    
    <td>
      Wimbledon
    </td>
  </tr>
  
  <tr>
    <td>
        North Somerset
    </td>
    
    <td>
      North Somerset
    </td>
  </tr>
  
  <tr>
    <td>
        North Somerset
    </td>
    
    <td>
      Weston-Super-Mare
    </td>
  </tr>
  
  <tr>
    <td>
        Coventry Teaching
    </td>
    
    <td>
      Coventry North East
    </td>
  </tr>
  
  <tr>
    <td>
        Coventry Teaching
    </td>
    
    <td>
      Coventry North West
    </td>
  </tr>
  
  <tr>
    <td>
        Coventry Teaching
    </td>
    
    <td>
      Coventry South
    </td>
  </tr>
  
  <tr>
    <td>
        Telford and Wrekin
    </td>
    
    <td>
      Telford
    </td>
  </tr>
  
  <tr>
    <td>
        Telford and Wrekin
    </td>
    
    <td>
      The Wrekin
    </td>
  </tr>
  
  <tr>
    <td>
        Wolverhampton City
    </td>
    
    <td>
      Wolverhampton North East
    </td>
  </tr>
  
  <tr>
    <td>
        Wolverhampton City
    </td>
    
    <td>
      Wolverhampton South East
    </td>
  </tr>
  
  <tr>
    <td>
        Wolverhampton City
    </td>
    
    <td>
      Wolverhampton South West
    </td>
  </tr>
  
  <tr>
    <td>
        Heart of Birmingham Teaching
    </td>
    
    <td>
      Birmingham Hall Green
    </td>
  </tr>
  
  <tr>
    <td>
        Heart of Birmingham Teaching
    </td>
    
    <td>
      Birmingham Ladywood
    </td>
  </tr>
  
  <tr>
    <td>
        Heart of Birmingham Teaching
    </td>
    
    <td>
      Birmingham Perry Barr
    </td>
  </tr>
  
  <tr>
    <td>
        Leeds
    </td>
    
    <td>
      Elmet and Rothwell
    </td>
  </tr>
  
  <tr>
    <td>
        Leeds
    </td>
    
    <td>
      Leeds Central
    </td>
  </tr>
  
  <tr>
    <td>
        Leeds
    </td>
    
    <td>
      Leeds East
    </td>
  </tr>
  
  <tr>
    <td>
        Leeds
    </td>
    
    <td>
      Leeds North East
    </td>
  </tr>
  
  <tr>
    <td>
        Leeds
    </td>
    
    <td>
      Leeds North West
    </td>
  </tr>
  
  <tr>
    <td>
        Leeds
    </td>
    
    <td>
      Leeds West
    </td>
  </tr>
  
  <tr>
    <td>
        Leeds
    </td>
    
    <td>
      Morley and Outwood
    </td>
  </tr>
  
  <tr>
    <td>
        Leeds
    </td>
    
    <td>
      Pudsey
    </td>
  </tr>
  
  <tr>
    <td>
        Kirklees
    </td>
    
    <td>
      Batley and Spen
    </td>
  </tr>
  
  <tr>
    <td>
        Kirklees
    </td>
    
    <td>
      Colne Valley
    </td>
  </tr>
  
  <tr>
    <td>
        Kirklees
    </td>
    
    <td>
      Dewsbury
    </td>
  </tr>
  
  <tr>
    <td>
        Kirklees
    </td>
    
    <td>
      Huddersfield
    </td>
  </tr>
  
  <tr>
    <td>
        Wakefield District
    </td>
    
    <td>
      Hemsworth
    </td>
  </tr>
  
  <tr>
    <td>
        Wakefield District
    </td>
    
    <td>
      Morley and Outwood
    </td>
  </tr>
  
  <tr>
    <td>
        Wakefield District
    </td>
    
    <td>
      Normanton Pontefract and Castleford
    </td>
  </tr>
  
  <tr>
    <td>
        Wakefield District
    </td>
    
    <td>
      Wakefield
    </td>
  </tr>
  
  <tr>
    <td>
        Sheffield
    </td>
    
    <td>
      Penistone and Stocksbridge
    </td>
  </tr>
  
  <tr>
    <td>
        Sheffield
    </td>
    
    <td>
      Sheffield Central
    </td>
  </tr>
  
  <tr>
    <td>
        Sheffield
    </td>
    
    <td>
      Sheffield South East
    </td>
  </tr>
  
  <tr>
    <td>
        Sheffield
    </td>
    
    <td>
      Sheffield Brightside and Hillsborough
    </td>
  </tr>
  
  <tr>
    <td>
        Sheffield
    </td>
    
    <td>
      Sheffield Hallam
    </td>
  </tr>
  
  <tr>
    <td>
        Sheffield
    </td>
    
    <td>
      Sheffield Heeley
    </td>
  </tr>
  
  <tr>
    <td>
        Doncaster
    </td>
    
    <td>
      Don Valley
    </td>
  </tr>
  
  <tr>
    <td>
        Doncaster
    </td>
    
    <td>
      Doncaster Central
    </td>
  </tr>
  
  <tr>
    <td>
        Doncaster
    </td>
    
    <td>
      Doncaster North
    </td>
  </tr>
  
  <tr>
    <td>
        Derbyshire County
    </td>
    
    <td>
      Amber Valley
    </td>
  </tr>
  
  <tr>
    <td>
        Derbyshire County
    </td>
    
    <td>
      Bolsover
    </td>
  </tr>
  
  <tr>
    <td>
        Derbyshire County
    </td>
    
    <td>
      Chesterfield
    </td>
  </tr>
  
  <tr>
    <td>
        Derbyshire County
    </td>
    
    <td>
      Derbyshire Dales
    </td>
  </tr>
  
  <tr>
    <td>
        Derbyshire County
    </td>
    
    <td>
      Erewash
    </td>
  </tr>
  
  <tr>
    <td>
        Derbyshire County
    </td>
    
    <td>
      High Peak
    </td>
  </tr>
  
  <tr>
    <td>
        Derbyshire County
    </td>
    
    <td>
      Mid Derbyshire
    </td>
  </tr>
  
  <tr>
    <td>
        Derbyshire County
    </td>
    
    <td>
      North East Derbyshire
    </td>
  </tr>
  
  <tr>
    <td>
        Derbyshire County
    </td>
    
    <td>
      South Derbyshire
    </td>
  </tr>
  
  <tr>
    <td>
        Derby City
    </td>
    
    <td>
      Derby North
    </td>
  </tr>
  
  <tr>
    <td>
        Derby City
    </td>
    
    <td>
      Derby South
    </td>
  </tr>
  
  <tr>
    <td>
        Derby City
    </td>
    
    <td>
      Mid Derbyshire
    </td>
  </tr>
  
  <tr>
    <td>
        Nottinghamshire County Teaching
    </td>
    
    <td>
      Ashfield
    </td>
  </tr>
  
  <tr>
    <td>
        Nottinghamshire County Teaching
    </td>
    
    <td>
      Broxtowe
    </td>
  </tr>
  
  <tr>
    <td>
        Nottinghamshire County Teaching
    </td>
    
    <td>
      Gedling
    </td>
  </tr>
  
  <tr>
    <td>
        Nottinghamshire County Teaching
    </td>
    
    <td>
      Mansfield
    </td>
  </tr>
  
  <tr>
    <td>
        Nottinghamshire County Teaching
    </td>
    
    <td>
      Newark
    </td>
  </tr>
  
  <tr>
    <td>
        Nottinghamshire County Teaching
    </td>
    
    <td>
      Rushcliffe
    </td>
  </tr>
  
  <tr>
    <td>
        Nottinghamshire County Teaching
    </td>
    
    <td>
      Sherwood
    </td>
  </tr>
  
  <tr>
    <td>
        Lincolnshire Teaching
    </td>
    
    <td>
      Boston and Skegness
    </td>
  </tr>
  
  <tr>
    <td>
        Lincolnshire Teaching
    </td>
    
    <td>
      Gainsborough
    </td>
  </tr>
  
  <tr>
    <td>
        Lincolnshire Teaching
    </td>
    
    <td>
      Grantham and Stamford
    </td>
  </tr>
  
  <tr>
    <td>
        Lincolnshire Teaching
    </td>
    
    <td>
      Lincoln
    </td>
  </tr>
  
  <tr>
    <td>
        Lincolnshire Teaching
    </td>
    
    <td>
      Louth and Horncastle
    </td>
  </tr>
  
  <tr>
    <td>
        Lincolnshire Teaching
    </td>
    
    <td>
      Scunthorpe
    </td>
  </tr>
  
  <tr>
    <td>
        Lincolnshire Teaching
    </td>
    
    <td>
      Sleaford and North Hykeham
    </td>
  </tr>
  
  <tr>
    <td>
        Lincolnshire Teaching
    </td>
    
    <td>
      South Holland and The Deepings
    </td>
  </tr>
  
  <tr>
    <td>
        Redbridge
    </td>
    
    <td>
      Chingford and Woodford Green
    </td>
  </tr>
  
  <tr>
    <td>
        Redbridge
    </td>
    
    <td>
      Ilford North
    </td>
  </tr>
  
  <tr>
    <td>
        Redbridge
    </td>
    
    <td>
      Ilford South
    </td>
  </tr>
  
  <tr>
    <td>
        Redbridge
    </td>
    
    <td>
      Leyton and Wanstead
    </td>
  </tr>
  
  <tr>
    <td>
        Waltham Forest
    </td>
    
    <td>
      Chingford and Woodford Green
    </td>
  </tr>
  
  <tr>
    <td>
        Waltham Forest
    </td>
    
    <td>
      Leyton and Wanstead
    </td>
  </tr>
  
  <tr>
    <td>
        Waltham Forest
    </td>
    
    <td>
      Walthamstow
    </td>
  </tr>
  
  <tr>
    <td>
        County Durham
    </td>
    
    <td>
      Bishop Auckland
    </td>
  </tr>
  
  <tr>
    <td>
        County Durham
    </td>
    
    <td>
      City of Durham
    </td>
  </tr>
  
  <tr>
    <td>
        County Durham
    </td>
    
    <td>
      Easington
    </td>
  </tr>
  
  <tr>
    <td>
        County Durham
    </td>
    
    <td>
      North Durham
    </td>
  </tr>
  
  <tr>
    <td>
        County Durham
    </td>
    
    <td>
      North West Durham
    </td>
  </tr>
  
  <tr>
    <td>
        County Durham
    </td>
    
    <td>
      Sedgefield
    </td>
  </tr>
  
  <tr>
    <td>
        Cumbria Teaching
    </td>
    
    <td>
      Barrow and Furness
    </td>
  </tr>
  
  <tr>
    <td>
        Cumbria Teaching
    </td>
    
    <td>
      Carlisle
    </td>
  </tr>
  
  <tr>
    <td>
        Cumbria Teaching
    </td>
    
    <td>
      Copeland
    </td>
  </tr>
  
  <tr>
    <td>
        Cumbria Teaching
    </td>
    
    <td>
      Penrith and The Border
    </td>
  </tr>
  
  <tr>
    <td>
        Cumbria Teaching
    </td>
    
    <td>
      Westmorland and Lonsdale
    </td>
  </tr>
  
  <tr>
    <td>
        Cumbria Teaching
    </td>
    
    <td>
      Workington
    </td>
  </tr>
  
  <tr>
    <td>
        North Lancashire Teaching
    </td>
    
    <td>
      Blackpool North and Cleveleys
    </td>
  </tr>
  
  <tr>
    <td>
        North Lancashire Teaching
    </td>
    
    <td>
      Fylde
    </td>
  </tr>
  
  <tr>
    <td>
        North Lancashire Teaching
    </td>
    
    <td>
      Lancaster and Fleetwood
    </td>
  </tr>
  
  <tr>
    <td>
        North Lancashire Teaching
    </td>
    
    <td>
      Morecambe and Lunesdale
    </td>
  </tr>
  
  <tr>
    <td>
        North Lancashire Teaching
    </td>
    
    <td>
      Wyre and Preston North
    </td>
  </tr>
  
  <tr>
    <td>
        Central Lancashire
    </td>
    
    <td>
      Chorley
    </td>
  </tr>
  
  <tr>
    <td>
        Central Lancashire
    </td>
    
    <td>
      Fylde
    </td>
  </tr>
  
  <tr>
    <td>
        Central Lancashire
    </td>
    
    <td>
      Preston
    </td>
  </tr>
  
  <tr>
    <td>
        Central Lancashire
    </td>
    
    <td>
      Ribble Valley
    </td>
  </tr>
  
  <tr>
    <td>
        Central Lancashire
    </td>
    
    <td>
      South Ribble
    </td>
  </tr>
  
  <tr>
    <td>
        Central Lancashire
    </td>
    
    <td>
      West Lancashire
    </td>
  </tr>
  
  <tr>
    <td>
        Central Lancashire
    </td>
    
    <td>
      Wyre and Preston North
    </td>
  </tr>
  
  <tr>
    <td>
        East Lancashire Teaching
    </td>
    
    <td>
      Burnley
    </td>
  </tr>
  
  <tr>
    <td>
        East Lancashire Teaching
    </td>
    
    <td>
      Hyndburn
    </td>
  </tr>
  
  <tr>
    <td>
        East Lancashire Teaching
    </td>
    
    <td>
      Pendle
    </td>
  </tr>
  
  <tr>
    <td>
        East Lancashire Teaching
    </td>
    
    <td>
      Ribble Valley
    </td>
  </tr>
  
  <tr>
    <td>
        East Lancashire Teaching
    </td>
    
    <td>
      Rossendale and Darwen
    </td>
  </tr>
  
  <tr>
    <td>
        Sefton
    </td>
    
    <td>
      Bootle
    </td>
  </tr>
  
  <tr>
    <td>
        Sefton
    </td>
    
    <td>
      Sefton Central
    </td>
  </tr>
  
  <tr>
    <td>
        Sefton
    </td>
    
    <td>
      Southport
    </td>
  </tr>
  
  <tr>
    <td>
        Wirral
    </td>
    
    <td>
      Birkenhead
    </td>
  </tr>
  
  <tr>
    <td>
        Wirral
    </td>
    
    <td>
      Wallasey
    </td>
  </tr>
  
  <tr>
    <td>
        Wirral
    </td>
    
    <td>
      Wirral South
    </td>
  </tr>
  
  <tr>
    <td>
        Wirral
    </td>
    
    <td>
      Wirral West
    </td>
  </tr>
  
  <tr>
    <td>
        Liverpool
    </td>
    
    <td>
      Garston and Halewood
    </td>
  </tr>
  
  <tr>
    <td>
        Liverpool
    </td>
    
    <td>
      Liverpool Riverside
    </td>
  </tr>
  
  <tr>
    <td>
        Liverpool
    </td>
    
    <td>
      Liverpool Walton
    </td>
  </tr>
  
  <tr>
    <td>
        Liverpool
    </td>
    
    <td>
      Liverpool Wavertree
    </td>
  </tr>
  
  <tr>
    <td>
        Liverpool
    </td>
    
    <td>
      Liverpool West Derby
    </td>
  </tr>
  
  <tr>
    <td>
        Halton and St Helens
    </td>
    
    <td>
      Halton
    </td>
  </tr>
  
  <tr>
    <td>
        Halton and St Helens
    </td>
    
    <td>
      St Helens North
    </td>
  </tr>
  
  <tr>
    <td>
        Halton and St Helens
    </td>
    
    <td>
      St Helens South and Whiston
    </td>
  </tr>
  
  <tr>
    <td>
        Halton and St Helens
    </td>
    
    <td>
      Weaver Vale
    </td>
  </tr>
  
  <tr>
    <td>
        Western Cheshire
    </td>
    
    <td>
      City of Chester
    </td>
  </tr>
  
  <tr>
    <td>
        Western Cheshire
    </td>
    
    <td>
      Eddisbury
    </td>
  </tr>
  
  <tr>
    <td>
        Western Cheshire
    </td>
    
    <td>
      Ellesmere Port and Neston
    </td>
  </tr>
  
  <tr>
    <td>
        Western Cheshire
    </td>
    
    <td>
      Weaver Vale
    </td>
  </tr>
  
  <tr>
    <td>
        Central and Eastern Cheshire
    </td>
    
    <td>
      Congleton
    </td>
  </tr>
  
  <tr>
    <td>
        Central and Eastern Cheshire
    </td>
    
    <td>
      Crewe and Nantwich
    </td>
  </tr>
  
  <tr>
    <td>
        Central and Eastern Cheshire
    </td>
    
    <td>
      Eddisbury
    </td>
  </tr>
  
  <tr>
    <td>
        Central and Eastern Cheshire
    </td>
    
    <td>
      Macclesfield
    </td>
  </tr>
  
  <tr>
    <td>
        Central and Eastern Cheshire
    </td>
    
    <td>
      Tatton
    </td>
  </tr>
  
  <tr>
    <td>
        Central and Eastern Cheshire
    </td>
    
    <td>
      Weaver Vale
    </td>
  </tr>
  
  <tr>
    <td>
        Heywood
    </td>
    
    <td>
      Heywood and Middleton
    </td>
  </tr>
  
  <tr>
    <td>
        Heywood
    </td>
    
    <td>
      Rochdale
    </td>
  </tr>
  
  <tr>
    <td>
        Trafford
    </td>
    
    <td>
      Altrincham and Sale West
    </td>
  </tr>
  
  <tr>
    <td>
        Trafford
    </td>
    
    <td>
      Stretford and Urmston
    </td>
  </tr>
  
  <tr>
    <td>
        Trafford
    </td>
    
    <td>
      Wythenshawe and Sale East
    </td>
  </tr>
  
  <tr>
    <td>
        North Yorkshire and York
    </td>
    
    <td>
      Harrogate and Knaresborough
    </td>
  </tr>
  
  <tr>
    <td>
        North Yorkshire and York
    </td>
    
    <td>
      Richmond (Yorks)
    </td>
  </tr>
  
  <tr>
    <td>
        North Yorkshire and York
    </td>
    
    <td>
      Scarborough and Whitby
    </td>
  </tr>
  
  <tr>
    <td>
        North Yorkshire and York
    </td>
    
    <td>
      Selby and Ainsty
    </td>
  </tr>
  
  <tr>
    <td>
        North Yorkshire and York
    </td>
    
    <td>
      Skipton and Ripon
    </td>
  </tr>
  
  <tr>
    <td>
        North Yorkshire and York
    </td>
    
    <td>
      Thirsk and Malton
    </td>
  </tr>
  
  <tr>
    <td>
        North Yorkshire and York
    </td>
    
    <td>
      York Central
    </td>
  </tr>
  
  <tr>
    <td>
        North Yorkshire and York
    </td>
    
    <td>
      York Outer
    </td>
  </tr>
  
  <tr>
    <td>
        East Riding of Yorkshire
    </td>
    
    <td>
      Beverley and Holderness
    </td>
  </tr>
  
  <tr>
    <td>
        East Riding of Yorkshire
    </td>
    
    <td>
      Brigg and Goole
    </td>
  </tr>
  
  <tr>
    <td>
        East Riding of Yorkshire
    </td>
    
    <td>
      East Yorkshire
    </td>
  </tr>
  
  <tr>
    <td>
        East Riding of Yorkshire
    </td>
    
    <td>
      Haltemprice and Howden
    </td>
  </tr>
  
  <tr>
    <td>
        East Riding of Yorkshire
    </td>
    
    <td>
      Kingston upon Hull West and Hessle
    </td>
  </tr>
  
  <tr>
    <td>
        Hull Teaching
    </td>
    
    <td>
      Kingston upon Hull East
    </td>
  </tr>
  
  <tr>
    <td>
        Hull Teaching
    </td>
    
    <td>
      Kingston upon Hull North
    </td>
  </tr>
  
  <tr>
    <td>
        Hull Teaching
    </td>
    
    <td>
      Kingston upon Hull West and Hessle
    </td>
  </tr>
  
  <tr>
    <td>
        Bradford and Airedale Teaching
    </td>
    
    <td>
      Bradford East
    </td>
  </tr>
  
  <tr>
    <td>
        Bradford and Airedale Teaching
    </td>
    
    <td>
      Bradford South
    </td>
  </tr>
  
  <tr>
    <td>
        Bradford and Airedale Teaching
    </td>
    
    <td>
      Bradford West
    </td>
  </tr>
  
  <tr>
    <td>
        Bradford and Airedale Teaching
    </td>
    
    <td>
      Keighley
    </td>
  </tr>
  
  <tr>
    <td>
        Bradford and Airedale Teaching
    </td>
    
    <td>
      Shipley
    </td>
  </tr>
  
  <tr>
    <td>
        South East Essex
    </td>
    
    <td>
      Castle Point
    </td>
  </tr>
  
  <tr>
    <td>
        South East Essex
    </td>
    
    <td>
      Rayleigh and Wickford
    </td>
  </tr>
  
  <tr>
    <td>
        South East Essex
    </td>
    
    <td>
      Rochford and Southend East
    </td>
  </tr>
  
  <tr>
    <td>
        South East Essex
    </td>
    
    <td>
      Southend West
    </td>
  </tr>
  
  <tr>
    <td>
        Bedfordshire
    </td>
    
    <td>
      Bedford
    </td>
  </tr>
  
  <tr>
    <td>
        Bedfordshire
    </td>
    
    <td>
      Luton South
    </td>
  </tr>
  
  <tr>
    <td>
        Bedfordshire
    </td>
    
    <td>
      Mid Bedfordshire
    </td>
  </tr>
  
  <tr>
    <td>
        Bedfordshire
    </td>
    
    <td>
      North East Bedfordshire
    </td>
  </tr>
  
  <tr>
    <td>
        Bedfordshire
    </td>
    
    <td>
      South West Bedfordshire
    </td>
  </tr>
  
  <tr>
    <td>
        Surrey
    </td>
    
    <td>
      East Surrey
    </td>
  </tr>
  
  <tr>
    <td>
        Surrey
    </td>
    
    <td>
      Epsom and Ewell
    </td>
  </tr>
  
  <tr>
    <td>
        Surrey
    </td>
    
    <td>
      Esher and Walton
    </td>
  </tr>
  
  <tr>
    <td>
        Surrey
    </td>
    
    <td>
      Guildford
    </td>
  </tr>
  
  <tr>
    <td>
        Surrey
    </td>
    
    <td>
      Mole Valley
    </td>
  </tr>
  
  <tr>
    <td>
        Surrey
    </td>
    
    <td>
      Reigate
    </td>
  </tr>
  
  <tr>
    <td>
        Surrey
    </td>
    
    <td>
      Runnymede and Weybridge
    </td>
  </tr>
  
  <tr>
    <td>
        Surrey
    </td>
    
    <td>
      South West Surrey
    </td>
  </tr>
  
  <tr>
    <td>
        Surrey
    </td>
    
    <td>
      Spelthorne
    </td>
  </tr>
  
  <tr>
    <td>
        Surrey
    </td>
    
    <td>
      Surrey Heath
    </td>
  </tr>
  
  <tr>
    <td>
        Surrey
    </td>
    
    <td>
      Woking
    </td>
  </tr>
  
  <tr>
    <td>
        West Sussex
    </td>
    
    <td>
      Arundel and South Downs
    </td>
  </tr>
  
  <tr>
    <td>
        West Sussex
    </td>
    
    <td>
      Bognor Regis and Littlehampton
    </td>
  </tr>
  
  <tr>
    <td>
        West Sussex
    </td>
    
    <td>
      Chichester
    </td>
  </tr>
  
  <tr>
    <td>
        West Sussex
    </td>
    
    <td>
      Crawley
    </td>
  </tr>
  
  <tr>
    <td>
        West Sussex
    </td>
    
    <td>
      East Worthing and Shoreham
    </td>
  </tr>
  
  <tr>
    <td>
        West Sussex
    </td>
    
    <td>
      Horsham
    </td>
  </tr>
  
  <tr>
    <td>
        West Sussex
    </td>
    
    <td>
      Mid Sussex
    </td>
  </tr>
  
  <tr>
    <td>
        West Sussex
    </td>
    
    <td>
      Worthing West
    </td>
  </tr>
  
  <tr>
    <td>
        East Sussex Downs and Weald
    </td>
    
    <td>
      Bexhill and Battle
    </td>
  </tr>
  
  <tr>
    <td>
        East Sussex Downs and Weald
    </td>
    
    <td>
      Brighton Kemptown
    </td>
  </tr>
  
  <tr>
    <td>
        East Sussex Downs and Weald
    </td>
    
    <td>
      Eastbourne
    </td>
  </tr>
  
  <tr>
    <td>
        East Sussex Downs and Weald
    </td>
    
    <td>
      Lewes
    </td>
  </tr>
  
  <tr>
    <td>
        East Sussex Downs and Weald
    </td>
    
    <td>
      Wealden
    </td>
  </tr>
  
  <tr>
    <td>
        Hastings and Rother
    </td>
    
    <td>
      Bexhill and Battle
    </td>
  </tr>
  
  <tr>
    <td>
        Hastings and Rother
    </td>
    
    <td>
      Hastings and Rye
    </td>
  </tr>
  
  <tr>
    <td>
        West Kent
    </td>
    
    <td>
      Chatham and Aylesford
    </td>
  </tr>
  
  <tr>
    <td>
        West Kent
    </td>
    
    <td>
      Dartford
    </td>
  </tr>
  
  <tr>
    <td>
        West Kent
    </td>
    
    <td>
      Faversham and Mid Kent
    </td>
  </tr>
  
  <tr>
    <td>
        West Kent
    </td>
    
    <td>
      Gravesham
    </td>
  </tr>
  
  <tr>
    <td>
        West Kent
    </td>
    
    <td>
      Maidstone and The Weald
    </td>
  </tr>
  
  <tr>
    <td>
        West Kent
    </td>
    
    <td>
      Sevenoaks
    </td>
  </tr>
  
  <tr>
    <td>
        West Kent
    </td>
    
    <td>
      Tonbridge and Malling
    </td>
  </tr>
  
  <tr>
    <td>
        West Kent
    </td>
    
    <td>
      Tunbridge Wells
    </td>
  </tr>
  
  <tr>
    <td>
        Leicestershire County and Rutland
    </td>
    
    <td>
      Bosworth
    </td>
  </tr>
  
  <tr>
    <td>
        Leicestershire County and Rutland
    </td>
    
    <td>
      Charnwood
    </td>
  </tr>
  
  <tr>
    <td>
        Leicestershire County and Rutland
    </td>
    
    <td>
      Harborough
    </td>
  </tr>
  
  <tr>
    <td>
        Leicestershire County and Rutland
    </td>
    
    <td>
      Loughborough
    </td>
  </tr>
  
  <tr>
    <td>
        Leicestershire County and Rutland
    </td>
    
    <td>
      North West Leicestershire
    </td>
  </tr>
  
  <tr>
    <td>
        Leicestershire County and Rutland
    </td>
    
    <td>
      Rutland and Melton
    </td>
  </tr>
  
  <tr>
    <td>
        Leicestershire County and Rutland
    </td>
    
    <td>
      South Leicestershire
    </td>
  </tr>
  
  <tr>
    <td>
        Leicester City
    </td>
    
    <td>
      Leicester East
    </td>
  </tr>
  
  <tr>
    <td>
        Leicester City
    </td>
    
    <td>
      Leicester South
    </td>
  </tr>
  
  <tr>
    <td>
        Leicester City
    </td>
    
    <td>
      Leicester West
    </td>
  </tr>
  
  <tr>
    <td>
        Northamptonshire Teaching
    </td>
    
    <td>
      Corby
    </td>
  </tr>
  
  <tr>
    <td>
        Northamptonshire Teaching
    </td>
    
    <td>
      Daventry
    </td>
  </tr>
  
  <tr>
    <td>
        Northamptonshire Teaching
    </td>
    
    <td>
      Kettering
    </td>
  </tr>
  
  <tr>
    <td>
        Northamptonshire Teaching
    </td>
    
    <td>
      Northampton North
    </td>
  </tr>
  
  <tr>
    <td>
        Northamptonshire Teaching
    </td>
    
    <td>
      Northampton South
    </td>
  </tr>
  
  <tr>
    <td>
        Northamptonshire Teaching
    </td>
    
    <td>
      South Northamptonshire
    </td>
  </tr>
  
  <tr>
    <td>
        Northamptonshire Teaching
    </td>
    
    <td>
      Wellingborough
    </td>
  </tr>
  
  <tr>
    <td>
        Dudley
    </td>
    
    <td>
      Dudley North
    </td>
  </tr>
  
  <tr>
    <td>
        Dudley
    </td>
    
    <td>
      Dudley South
    </td>
  </tr>
  
  <tr>
    <td>
        Dudley
    </td>
    
    <td>
      Halesowen and Rowley Regis
    </td>
  </tr>
  
  <tr>
    <td>
        Dudley
    </td>
    
    <td>
      Stourbridge
    </td>
  </tr>
  
  <tr>
    <td>
        Dudley
    </td>
    
    <td>
      Wolverhampton South East
    </td>
  </tr>
  
  <tr>
    <td>
        Sandwell
    </td>
    
    <td>
      Halesowen and Rowley Regis
    </td>
  </tr>
  
  <tr>
    <td>
        Sandwell
    </td>
    
    <td>
      Warley
    </td>
  </tr>
  
  <tr>
    <td>
        Sandwell
    </td>
    
    <td>
      West Bromwich East
    </td>
  </tr>
  
  <tr>
    <td>
        Sandwell
    </td>
    
    <td>
      West Bromwich West
    </td>
  </tr>
  
  <tr>
    <td>
        Birmingham East and North
    </td>
    
    <td>
      Birmingham Erdington
    </td>
  </tr>
  
  <tr>
    <td>
        Birmingham East and North
    </td>
    
    <td>
      Birmingham Hodge Hill
    </td>
  </tr>
  
  <tr>
    <td>
        Birmingham East and North
    </td>
    
    <td>
      Birmingham Yardley
    </td>
  </tr>
  
  <tr>
    <td>
        Birmingham East and North
    </td>
    
    <td>
      Sutton Coldfield
    </td>
  </tr>
  
  <tr>
    <td>
        North Staffordshire
    </td>
    
    <td>
      Newcastle-under-Lyme
    </td>
  </tr>
  
  <tr>
    <td>
        North Staffordshire
    </td>
    
    <td>
      Staffordshire Moorlands
    </td>
  </tr>
  
  <tr>
    <td>
        North Staffordshire
    </td>
    
    <td>
      Stoke-on-Trent North
    </td>
  </tr>
  
  <tr>
    <td>
        North Staffordshire
    </td>
    
    <td>
      Stone
    </td>
  </tr>
  
  <tr>
    <td>
        Stoke on Trent
    </td>
    
    <td>
      Staffordshire Moorlands
    </td>
  </tr>
  
  <tr>
    <td>
        Stoke on Trent
    </td>
    
    <td>
      Stoke-on-Trent Central
    </td>
  </tr>
  
  <tr>
    <td>
        Stoke on Trent
    </td>
    
    <td>
      Stoke-on-Trent North
    </td>
  </tr>
  
  <tr>
    <td>
        Stoke on Trent
    </td>
    
    <td>
      Stoke-on-Trent South
    </td>
  </tr>
  
  <tr>
    <td>
        South Staffordshire
    </td>
    
    <td>
      Burton
    </td>
  </tr>
  
  <tr>
    <td>
        South Staffordshire
    </td>
    
    <td>
      Cannock Chase
    </td>
  </tr>
  
  <tr>
    <td>
        South Staffordshire
    </td>
    
    <td>
      Lichfield
    </td>
  </tr>
  
  <tr>
    <td>
        South Staffordshire
    </td>
    
    <td>
      South Staffordshire
    </td>
  </tr>
  
  <tr>
    <td>
        South Staffordshire
    </td>
    
    <td>
      Stafford
    </td>
  </tr>
  
  <tr>
    <td>
        South Staffordshire
    </td>
    
    <td>
      Stone
    </td>
  </tr>
  
  <tr>
    <td>
        South Staffordshire
    </td>
    
    <td>
      Tamworth
    </td>
  </tr>
  
  <tr>
    <td>
        Worcestershire
    </td>
    
    <td>
      Bromsgrove
    </td>
  </tr>
  
  <tr>
    <td>
        Worcestershire
    </td>
    
    <td>
      Mid Worcestershire
    </td>
  </tr>
  
  <tr>
    <td>
        Worcestershire
    </td>
    
    <td>
      Redditch
    </td>
  </tr>
  
  <tr>
    <td>
        Worcestershire
    </td>
    
    <td>
      West Worcestershire
    </td>
  </tr>
  
  <tr>
    <td>
        Worcestershire
    </td>
    
    <td>
      Worcester
    </td>
  </tr>
  
  <tr>
    <td>
        Worcestershire
    </td>
    
    <td>
      Wyre Forest
    </td>
  </tr>
  
  <tr>
    <td>
        Warwickshire
    </td>
    
    <td>
      Kenilworth and Southam
    </td>
  </tr>
  
  <tr>
    <td>
        Warwickshire
    </td>
    
    <td>
      North Warwickshire
    </td>
  </tr>
  
  <tr>
    <td>
        Warwickshire
    </td>
    
    <td>
      Nuneaton
    </td>
  </tr>
  
  <tr>
    <td>
        Warwickshire
    </td>
    
    <td>
      Rugby
    </td>
  </tr>
  
  <tr>
    <td>
        Warwickshire
    </td>
    
    <td>
      Stratford-on-Avon
    </td>
  </tr>
  
  <tr>
    <td>
        Warwickshire
    </td>
    
    <td>
      Warwick and Leamington
    </td>
  </tr>
  
  <tr>
    <td>
        Peterborough
    </td>
    
    <td>
      North West Cambridgeshire
    </td>
  </tr>
  
  <tr>
    <td>
        Peterborough
    </td>
    
    <td>
      Peterborough
    </td>
  </tr>
  
  <tr>
    <td>
        Cambridgeshire
    </td>
    
    <td>
      Cambridge
    </td>
  </tr>
  
  <tr>
    <td>
        Cambridgeshire
    </td>
    
    <td>
      Huntingdon
    </td>
  </tr>
  
  <tr>
    <td>
        Cambridgeshire
    </td>
    
    <td>
      North East Cambridgeshire
    </td>
  </tr>
  
  <tr>
    <td>
        Cambridgeshire
    </td>
    
    <td>
      North West Cambridgeshire
    </td>
  </tr>
  
  <tr>
    <td>
        Cambridgeshire
    </td>
    
    <td>
      South Cambridgeshire
    </td>
  </tr>
  
  <tr>
    <td>
        Cambridgeshire
    </td>
    
    <td>
      South East Cambridgeshire
    </td>
  </tr>
  
  <tr>
    <td>
        Norfolk
    </td>
    
    <td>
      Broadland
    </td>
  </tr>
  
  <tr>
    <td>
        Norfolk
    </td>
    
    <td>
      Mid Norfolk
    </td>
  </tr>
  
  <tr>
    <td>
        Norfolk
    </td>
    
    <td>
      North Norfolk
    </td>
  </tr>
  
  <tr>
    <td>
        Norfolk
    </td>
    
    <td>
      North West Norfolk
    </td>
  </tr>
  
  <tr>
    <td>
        Norfolk
    </td>
    
    <td>
      Norwich North
    </td>
  </tr>
  
  <tr>
    <td>
        Norfolk
    </td>
    
    <td>
      Norwich South
    </td>
  </tr>
  
  <tr>
    <td>
        Norfolk
    </td>
    
    <td>
      South Norfolk
    </td>
  </tr>
  
  <tr>
    <td>
        Norfolk
    </td>
    
    <td>
      South West Norfolk
    </td>
  </tr>
  
  <tr>
    <td>
        Great Yarmouth and Waveney
    </td>
    
    <td>
      Great Yarmouth
    </td>
  </tr>
  
  <tr>
    <td>
        Great Yarmouth and Waveney
    </td>
    
    <td>
      Suffolk Coastal
    </td>
  </tr>
  
  <tr>
    <td>
        Great Yarmouth and Waveney
    </td>
    
    <td>
      Waveney
    </td>
  </tr>
  
  <tr>
    <td>
        Suffolk
    </td>
    
    <td>
      Bury St Edmunds
    </td>
  </tr>
  
  <tr>
    <td>
        Suffolk
    </td>
    
    <td>
      Central Suffolk and North Ipswich
    </td>
  </tr>
  
  <tr>
    <td>
        Suffolk
    </td>
    
    <td>
      Ipswich
    </td>
  </tr>
  
  <tr>
    <td>
        Suffolk
    </td>
    
    <td>
      South Suffolk
    </td>
  </tr>
  
  <tr>
    <td>
        Suffolk
    </td>
    
    <td>
      Suffolk Coastal
    </td>
  </tr>
  
  <tr>
    <td>
        Suffolk
    </td>
    
    <td>
      West Suffolk
    </td>
  </tr>
  
  <tr>
    <td>
        West Essex
    </td>
    
    <td>
      Braintree
    </td>
  </tr>
  
  <tr>
    <td>
        West Essex
    </td>
    
    <td>
      Brentwood and Ongar
    </td>
  </tr>
  
  <tr>
    <td>
        West Essex
    </td>
    
    <td>
      Epping Forest
    </td>
  </tr>
  
  <tr>
    <td>
        West Essex
    </td>
    
    <td>
      Harlow
    </td>
  </tr>
  
  <tr>
    <td>
        West Essex
    </td>
    
    <td>
      Saffron Walden
    </td>
  </tr>
  
  <tr>
    <td>
        North East Essex
    </td>
    
    <td>
      Clacton
    </td>
  </tr>
  
  <tr>
    <td>
        North East Essex
    </td>
    
    <td>
      Colchester
    </td>
  </tr>
  
  <tr>
    <td>
        North East Essex
    </td>
    
    <td>
      Harwich and North Essex
    </td>
  </tr>
  
  <tr>
    <td>
        North East Essex
    </td>
    
    <td>
      Witham
    </td>
  </tr>
  
  <tr>
    <td>
        Mid Essex
    </td>
    
    <td>
      Braintree
    </td>
  </tr>
  
  <tr>
    <td>
        Mid Essex
    </td>
    
    <td>
      Chelmsford
    </td>
  </tr>
  
  <tr>
    <td>
        Mid Essex
    </td>
    
    <td>
      Maldon
    </td>
  </tr>
  
  <tr>
    <td>
        Mid Essex
    </td>
    
    <td>
      Saffron Walden
    </td>
  </tr>
  
  <tr>
    <td>
        Mid Essex
    </td>
    
    <td>
      Witham
    </td>
  </tr>
  
  <tr>
    <td>
        South West Essex
    </td>
    
    <td>
      Basildon and Billericay
    </td>
  </tr>
  
  <tr>
    <td>
        South West Essex
    </td>
    
    <td>
      Brentwood and Ongar
    </td>
  </tr>
  
  <tr>
    <td>
        South West Essex
    </td>
    
    <td>
      Rayleigh and Wickford
    </td>
  </tr>
  
  <tr>
    <td>
        South West Essex
    </td>
    
    <td>
      South Basildon and East Thurrock
    </td>
  </tr>
  
  <tr>
    <td>
        South West Essex
    </td>
    
    <td>
      Thurrock
    </td>
  </tr>
  
  <tr>
    <td>
        Eastern and Coastal Kent
    </td>
    
    <td>
      Ashford
    </td>
  </tr>
  
  <tr>
    <td>
        Eastern and Coastal Kent
    </td>
    
    <td>
      Canterbury
    </td>
  </tr>
  
  <tr>
    <td>
        Eastern and Coastal Kent
    </td>
    
    <td>
      Dover
    </td>
  </tr>
  
  <tr>
    <td>
        Eastern and Coastal Kent
    </td>
    
    <td>
      Faversham and Mid Kent
    </td>
  </tr>
  
  <tr>
    <td>
        Eastern and Coastal Kent
    </td>
    
    <td>
      Folkestone and Hythe
    </td>
  </tr>
  
  <tr>
    <td>
        Eastern and Coastal Kent
    </td>
    
    <td>
      North Thanet
    </td>
  </tr>
  
  <tr>
    <td>
        Eastern and Coastal Kent
    </td>
    
    <td>
      Sittingbourne and Sheppey
    </td>
  </tr>
  
  <tr>
    <td>
        Eastern and Coastal Kent
    </td>
    
    <td>
      South Thanet
    </td>
  </tr>
  
  <tr>
    <td>
        Hampshire
    </td>
    
    <td>
      Aldershot
    </td>
  </tr>
  
  <tr>
    <td>
        Hampshire
    </td>
    
    <td>
      Basingstoke
    </td>
  </tr>
  
  <tr>
    <td>
        Hampshire
    </td>
    
    <td>
      East Hampshire
    </td>
  </tr>
  
  <tr>
    <td>
        Hampshire
    </td>
    
    <td>
      Eastleigh
    </td>
  </tr>
  
  <tr>
    <td>
        Hampshire
    </td>
    
    <td>
      Fareham
    </td>
  </tr>
  
  <tr>
    <td>
        Hampshire
    </td>
    
    <td>
      Gosport
    </td>
  </tr>
  
  <tr>
    <td>
        Hampshire
    </td>
    
    <td>
      Havant
    </td>
  </tr>
  
  <tr>
    <td>
        Hampshire
    </td>
    
    <td>
      Meon Valley
    </td>
  </tr>
  
  <tr>
    <td>
        Hampshire
    </td>
    
    <td>
      New Forest East
    </td>
  </tr>
  
  <tr>
    <td>
        Hampshire
    </td>
    
    <td>
      New Forest West
    </td>
  </tr>
  
  <tr>
    <td>
        Hampshire
    </td>
    
    <td>
      North East Hampshire
    </td>
  </tr>
  
  <tr>
    <td>
        Hampshire
    </td>
    
    <td>
      North West Hampshire
    </td>
  </tr>
  
  <tr>
    <td>
        Hampshire
    </td>
    
    <td>
      Romsey and Southampton North
    </td>
  </tr>
  
  <tr>
    <td>
        Hampshire
    </td>
    
    <td>
      Winchester
    </td>
  </tr>
  
  <tr>
    <td>
        Buckinghamshire
    </td>
    
    <td>
      Aylesbury
    </td>
  </tr>
  
  <tr>
    <td>
        Buckinghamshire
    </td>
    
    <td>
      Beaconsfield
    </td>
  </tr>
  
  <tr>
    <td>
        Buckinghamshire
    </td>
    
    <td>
      Buckingham
    </td>
  </tr>
  
  <tr>
    <td>
        Buckinghamshire
    </td>
    
    <td>
      Chesham and Amersham
    </td>
  </tr>
  
  <tr>
    <td>
        Buckinghamshire
    </td>
    
    <td>
      Henley
    </td>
  </tr>
  
  <tr>
    <td>
        Buckinghamshire
    </td>
    
    <td>
      Wycombe
    </td>
  </tr>
  
  <tr>
    <td>
        Oxfordshire
    </td>
    
    <td>
      Banbury
    </td>
  </tr>
  
  <tr>
    <td>
        Oxfordshire
    </td>
    
    <td>
      Henley
    </td>
  </tr>
  
  <tr>
    <td>
        Oxfordshire
    </td>
    
    <td>
      Oxford East
    </td>
  </tr>
  
  <tr>
    <td>
        Oxfordshire
    </td>
    
    <td>
      Oxford West and Abingdon
    </td>
  </tr>
  
  <tr>
    <td>
        Oxfordshire
    </td>
    
    <td>
      Wantage
    </td>
  </tr>
  
  <tr>
    <td>
        Oxfordshire
    </td>
    
    <td>
      Witney
    </td>
  </tr>
  
  <tr>
    <td>
        Berkshire West
    </td>
    
    <td>
      Bracknell
    </td>
  </tr>
  
  <tr>
    <td>
        Berkshire West
    </td>
    
    <td>
      Maidenhead
    </td>
  </tr>
  
  <tr>
    <td>
        Berkshire West
    </td>
    
    <td>
      Newbury
    </td>
  </tr>
  
  <tr>
    <td>
        Berkshire West
    </td>
    
    <td>
      Reading East
    </td>
  </tr>
  
  <tr>
    <td>
        Berkshire West
    </td>
    
    <td>
      Reading West
    </td>
  </tr>
  
  <tr>
    <td>
        Berkshire West
    </td>
    
    <td>
      Wokingham
    </td>
  </tr>
  
  <tr>
    <td>
        Berkshire East
    </td>
    
    <td>
      Bracknell
    </td>
  </tr>
  
  <tr>
    <td>
        Berkshire East
    </td>
    
    <td>
      Maidenhead
    </td>
  </tr>
  
  <tr>
    <td>
        Berkshire East
    </td>
    
    <td>
      Runnymede and Weybridge
    </td>
  </tr>
  
  <tr>
    <td>
        Berkshire East
    </td>
    
    <td>
      Slough
    </td>
  </tr>
  
  <tr>
    <td>
        Berkshire East
    </td>
    
    <td>
      Windsor
    </td>
  </tr>
  
  <tr>
    <td>
        Gloucestershire
    </td>
    
    <td>
      Cheltenham
    </td>
  </tr>
  
  <tr>
    <td>
        Gloucestershire
    </td>
    
    <td>
      Forest of Dean
    </td>
  </tr>
  
  <tr>
    <td>
        Gloucestershire
    </td>
    
    <td>
      Gloucester
    </td>
  </tr>
  
  <tr>
    <td>
        Gloucestershire
    </td>
    
    <td>
      Stroud
    </td>
  </tr>
  
  <tr>
    <td>
        Gloucestershire
    </td>
    
    <td>
      Tewkesbury
    </td>
  </tr>
  
  <tr>
    <td>
        Gloucestershire
    </td>
    
    <td>
      The Cotswolds
    </td>
  </tr>
  
  <tr>
    <td>
        Bristol
    </td>
    
    <td>
      Bristol East
    </td>
  </tr>
  
  <tr>
    <td>
        Bristol
    </td>
    
    <td>
      Bristol North West
    </td>
  </tr>
  
  <tr>
    <td>
        Bristol
    </td>
    
    <td>
      Bristol South
    </td>
  </tr>
  
  <tr>
    <td>
        Bristol
    </td>
    
    <td>
      Bristol West
    </td>
  </tr>
  
  <tr>
    <td>
        Wiltshire
    </td>
    
    <td>
      Chippenham
    </td>
  </tr>
  
  <tr>
    <td>
        Wiltshire
    </td>
    
    <td>
      Devizes
    </td>
  </tr>
  
  <tr>
    <td>
        Wiltshire
    </td>
    
    <td>
      North Wiltshire
    </td>
  </tr>
  
  <tr>
    <td>
        Wiltshire
    </td>
    
    <td>
      Salisbury
    </td>
  </tr>
  
  <tr>
    <td>
        Wiltshire
    </td>
    
    <td>
      South West Wiltshire
    </td>
  </tr>
  
  <tr>
    <td>
        Somerset
    </td>
    
    <td>
      Bridgwater and West Somerset
    </td>
  </tr>
  
  <tr>
    <td>
        Somerset
    </td>
    
    <td>
      Somerton and Frome
    </td>
  </tr>
  
  <tr>
    <td>
        Somerset
    </td>
    
    <td>
      Taunton Deane
    </td>
  </tr>
  
  <tr>
    <td>
        Somerset
    </td>
    
    <td>
      Wells
    </td>
  </tr>
  
  <tr>
    <td>
        Somerset
    </td>
    
    <td>
      Yeovil
    </td>
  </tr>
  
  <tr>
    <td>
        Dorset
    </td>
    
    <td>
      Christchurch
    </td>
  </tr>
  
  <tr>
    <td>
        Dorset
    </td>
    
    <td>
      Mid Dorset and North Poole
    </td>
  </tr>
  
  <tr>
    <td>
        Dorset
    </td>
    
    <td>
      North Dorset
    </td>
  </tr>
  
  <tr>
    <td>
        Dorset
    </td>
    
    <td>
      South Dorset
    </td>
  </tr>
  
  <tr>
    <td>
        Dorset
    </td>
    
    <td>
      West Dorset
    </td>
  </tr>
  
  <tr>
    <td>
        Bournemouth and Poole Teaching
    </td>
    
    <td>
      Bournemouth East
    </td>
  </tr>
  
  <tr>
    <td>
        Bournemouth and Poole Teaching
    </td>
    
    <td>
      Bournemouth West
    </td>
  </tr>
  
  <tr>
    <td>
        Bournemouth and Poole Teaching
    </td>
    
    <td>
      Mid Dorset and North Poole
    </td>
  </tr>
  
  <tr>
    <td>
        Bournemouth and Poole Teaching
    </td>
    
    <td>
      Poole
    </td>
  </tr>
  
  <tr>
    <td>
        Cornwall and Isles of Scilly
    </td>
    
    <td>
      Camborne and Redruth
    </td>
  </tr>
  
  <tr>
    <td>
        Cornwall and Isles of Scilly
    </td>
    
    <td>
      North Cornwall
    </td>
  </tr>
  
  <tr>
    <td>
        Cornwall and Isles of Scilly
    </td>
    
    <td>
      South East Cornwall
    </td>
  </tr>
  
  <tr>
    <td>
        Cornwall and Isles of Scilly
    </td>
    
    <td>
      St Austell and Newquay
    </td>
  </tr>
  
  <tr>
    <td>
        Cornwall and Isles of Scilly
    </td>
    
    <td>
      St Ives
    </td>
  </tr>
  
  <tr>
    <td>
        Cornwall and Isles of Scilly
    </td>
    
    <td>
      Truro and Falmouth
    </td>
  </tr>
  
  <tr>
    <td>
        Devon
    </td>
    
    <td>
      Central Devon
    </td>
  </tr>
  
  <tr>
    <td>
        Devon
    </td>
    
    <td>
      East Devon
    </td>
  </tr>
  
  <tr>
    <td>
        Devon
    </td>
    
    <td>
      Exeter
    </td>
  </tr>
  
  <tr>
    <td>
        Devon
    </td>
    
    <td>
      Newton Abbot
    </td>
  </tr>
  
  <tr>
    <td>
        Devon
    </td>
    
    <td>
      North Devon
    </td>
  </tr>
  
  <tr>
    <td>
        Devon
    </td>
    
    <td>
      South West Devon
    </td>
  </tr>
  
  <tr>
    <td>
        Devon
    </td>
    
    <td>
      Tiverton and Honiton
    </td>
  </tr>
  
  <tr>
    <td>
        Devon
    </td>
    
    <td>
      Torridge and West Devon
    </td>
  </tr>
  
  <tr>
    <td>
        Devon
    </td>
    
    <td>
      Totnes
    </td>
  </tr>
  
  <tr>
    <td>
        Redcar and Cleveland
    </td>
    
    <td>
      Middlesbrough South and East Cleveland
    </td>
  </tr>
  
  <tr>
    <td>
        Redcar and Cleveland
    </td>
    
    <td>
      Redcar
    </td>
  </tr>
  
  <tr>
    <td>
        Isle of Wight National Health Service
    </td>
    
    <td>
      Isle of Wight
    </td>
  </tr>
  
  <tr>
    <td>
        Bolton Teaching
    </td>
    
    <td>
      Bolton North East
    </td>
  </tr>
  
  <tr>
    <td>
        Bolton Teaching
    </td>
    
    <td>
      Bolton South East
    </td>
  </tr>
  
  <tr>
    <td>
        Bolton Teaching
    </td>
    
    <td>
      Bolton West
    </td>
  </tr>
  
  <tr>
    <td>
        Manchester Teaching
    </td>
    
    <td>
      Blackley and Broughton
    </td>
  </tr>
  
  <tr>
    <td>
        Manchester Teaching
    </td>
    
    <td>
      Manchester Central
    </td>
  </tr>
  
  <tr>
    <td>
        Manchester Teaching
    </td>
    
    <td>
      Manchester Gorton
    </td>
  </tr>
  
  <tr>
    <td>
        Manchester Teaching
    </td>
    
    <td>
      Manchester Withington
    </td>
  </tr>
  
  <tr>
    <td>
        Manchester Teaching
    </td>
    
    <td>
      Wythenshawe and Sale East
    </td>
  </tr>
  
  <tr>
    <td>
        Hertfordshire
    </td>
    
    <td>
      Broxbourne
    </td>
  </tr>
  
  <tr>
    <td>
        Hertfordshire
    </td>
    
    <td>
      Hemel Hempstead
    </td>
  </tr>
  
  <tr>
    <td>
        Hertfordshire
    </td>
    
    <td>
      Hertford and Stortford
    </td>
  </tr>
  
  <tr>
    <td>
        Hertfordshire
    </td>
    
    <td>
      Hertsmere
    </td>
  </tr>
  
  <tr>
    <td>
        Hertfordshire
    </td>
    
    <td>
      Hitchin and Harpenden
    </td>
  </tr>
  
  <tr>
    <td>
        Hertfordshire
    </td>
    
    <td>
      North East Hertfordshire
    </td>
  </tr>
  
  <tr>
    <td>
        Hertfordshire
    </td>
    
    <td>
      South West Hertfordshire
    </td>
  </tr>
  
  <tr>
    <td>
        Hertfordshire
    </td>
    
    <td>
      St Albans
    </td>
  </tr>
  
  <tr>
    <td>
        Hertfordshire
    </td>
    
    <td>
      Stevenage
    </td>
  </tr>
  
  <tr>
    <td>
        Hertfordshire
    </td>
    
    <td>
      Watford
    </td>
  </tr>
  
  <tr>
    <td>
        Hertfordshire
    </td>
    
    <td>
      Welwyn Hatfield
    </td>
  </tr>
  
  <tr>
    <td>
        Solihull
    </td>
    
    <td>
      Meriden
    </td>
  </tr>
  
  <tr>
    <td>
        Solihull
    </td>
    
    <td>
      Solihull
    </td>
  </tr>
  
  <tr>
    <td>
        Northumberland
    </td>
    
    <td>
      Berwick-upon-Tweed
    </td>
  </tr>
  
  <tr>
    <td>
        Northumberland
    </td>
    
    <td>
      Blyth Valley
    </td>
  </tr>
  
  <tr>
    <td>
        Northumberland
    </td>
    
    <td>
      Hexham
    </td>
  </tr>
  
  <tr>
    <td>
        Northumberland
    </td>
    
    <td>
      Wansbeck
    </td>
  </tr>
  
  <tr>
    <td>
        Bexley
    </td>
    
    <td>
      Bexleyheath and Crayford
    </td>
  </tr>
  
  <tr>
    <td>
        Bexley
    </td>
    
    <td>
      Erith and Thamesmead
    </td>
  </tr>
  
  <tr>
    <td>
        Bexley
    </td>
    
    <td>
      Old Bexley and Sidcup
    </td>
  </tr>
  
  <tr>
    <td>
        Torbay
    </td>
    
    <td>
      Torbay
    </td>
  </tr>
  
  <tr>
    <td>
        Torbay
    </td>
    
    <td>
      Totnes
    </td>
  </tr>
  
  <tr>
    <td>
        North East Lincolnshire
    </td>
    
    <td>
      Cleethorpes
    </td>
  </tr>
  
  <tr>
    <td>
        North East Lincolnshire
    </td>
    
    <td>
      Great Grimsby
    </td>
  </tr>
  
  <tr>
    <td>
        Blackburn with Darwen Teaching
    </td>
    
    <td>
      Blackburn
    </td>
  </tr>
  
  <tr>
    <td>
        Blackburn with Darwen Teaching
    </td>
    
    <td>
      Rossendale and Darwen
    </td>
  </tr>
</table>

