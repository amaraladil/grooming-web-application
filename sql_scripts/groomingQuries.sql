/*retrieves dog information per client first name
/*SELECT * FROM dog
INNER JOIN tblclient ON tblclient.clientID = dog.clientID 
WHERE tblclient.firstName = 'Tyler' */

/*Gets the owners pets and all the bookings for owners pets
SELECT dog.dogName, booking.bookingID
FROM tblclient
INNER JOIN dog ON tblclient.clientID = dog.clientID
INNER JOIN booking ON booking.dogID = dog.dogID
where tblclient.clientID = 1;

*/

/*Get by user's id to get pets they own

SELECT tblclient.firstName, dog.dogName FROM dog
INNER JOIN tblclient ON tblclient.clientID = dog.clientID 
WHERE tblclient.clientID = 3

*/

/*Get dog's booking dates
SELECT dog.dogName, booking.bookingID
FROM dog
INNER JOIN booking ON booking.dogID = dog.dogID
where dog.dogID = 3;
*/
