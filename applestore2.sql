SELECT * FROM applestore.applestore2;

/* QUESTION 1: Which are the different genres? */

SELECT DISTINCT prime_genre
FROM applestore2;

SELECT COUNT(*)
FROM prime_genre;
/* answer 1: The different Genre in this table are: Games, productivity, weather, shopping, reference,Finance, MUsic, Utilities, Travel, Social Networking, Sport, Business, Health & fitness, Entertainment, Photo & Vedio, Navigation, Education, Lifestyle, Food & Drink, News, Book, Medical, Catalogs. */

/* Question 2. Which is the genre with more apps rated?*/ 
SELECT prime_genre, SUM(rating_count_tot) AS total_ratings
FROM applestore2
GROUP BY prime_genre
ORDER BY total_ratings DESC
LIMIT 1;
/*Answer: Games is the genre with max apps rated*/

/* QUESTION 3:Which is the genre with more apps? */ /* Answer: Games have max app*/
SELECT prime_genre, count(*) AS total_apps
FROM applestore2
GROUP BY prime_genre
ORDER BY total_apps DESC
LIMIT 1;

/* QUESTION 4:Which is the one with less? */ /* Answer: Catalogs have minimum app*/
SELECT prime_genre, count(*) AS total_apps
FROM applestore2
GROUP BY prime_genre
ORDER BY total_apps ASC
LIMIT 1;

/* QUESTION 5:Take the 10 apps most rated. */ /* Answer: Facebook,Instagram,Clash of Clans, Temple Run, Pandora- Music & Radio, Pinterest, Bible, Candy Crush Saga, Spotify Music, Angry Birds*/
SELECT track_name, rating_count_tot
FROM applestore2
ORDER BY rating_count_tot DESC
LIMIT 10;

/* Question 6. Take the 10 apps best rated by users.*/ /* Answer: LINE Moments - Capture Your Fun Moments, Cafe Story - Play Cooking & Farming Game,Grumpy Cat's Worst Game Ever, Fitness Sync for Fitbit to Apple Health, 'Stickman Base Jumper 2',Dungeons of Chaos UNITY EDITION,'DELISH KITCHEN - ????????????????????????????????????',????????????IV:????????????, LINE RUSH !, Able Black*/
SELECT track_name, user_rating
FROM applestore2
ORDER BY user_rating DESC
LIMIT 10;

/* QUESTION 7:Take a look on the data you retrieved in the question 5. Give some insights. */ /* Answer: as per the rating count, Facebook is most popular app, then Instagram  & Clash of Clans. It shows majority of users like these apps that's why they use them most.*/
/* QUESTION 8:Take a look on the data you retrieved in the question 6. Give some insights. */ /* Answer: The user rating shows that the users of all these apps are highly satisfied with their content and everything and the user have positive experience with these apps.*/
/* QUESTION 9:Now compare the data from questions 5 and 6. What do you see?*/ /* Answer: The rating count shows number of users who use these apps and give rating for these Apps. But many users don't give rating too. So with this we can guess the popularity of App but we can not get the extact number of users from this and does all the users are satisfied with these app or not.
 on the other hand, the user rating shows that the users who use these apps are highly satisfied with their content and everything and the user have positive experience with these apps. But these rating can be given by few users only so with this we can not guess how many of people are using these Apps. But are valuable for assessing the popularity and reception of an App.*/
/* QUESTION 10:How could you take the top 3 regarding the user ratings but also the number of votes? */ /* Answer: Head Soccer, Plants vs. Zombies, Sniper 3D Assassin: Shoot to Kill Gun Game are the top 3 regarding the user ratings but also the number of votes*/
SELECT track_name, user_rating, rating_count_tot
FROM applestore2
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/* QUESTION 11:Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */
/* average user rating and total rating vs. price*/ /* conclusion: Majority of people care about price they like to use free Apps, but few don't bother about price ( Might be those people are either rich or they need that app for business purpose etc). But the rating of App is not related with price. Rating depends on their satisfaction level with the App.*/
SELECT track_name, AVG(user_rating) AS avg_rating, SUM(rating_count_tot) AS total_ratings, price
FROM applestore2
GROUP BY track_name, price
ORDER BY avg_rating DESC,total_ratings DESC, price DESC;



