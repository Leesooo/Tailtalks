<?php
$host = getenv('MYSQLHOST');
$user = getenv('MYSQLUSER');
$pass = getenv('MYSQLPASSWORD');
$dbname = getenv('MYSQLDATABASE');
$port = getenv('MYSQLPORT');

$conn = mysqli_connect($host, $user, $pass, $dbname, $port);
if (!$conn) die("Connection failed: " . mysqli_connect_error());

$sql = "
CREATE TABLE IF NOT EXISTS `breeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `animal_type` varchar(50) DEFAULT NULL,
  `breed_name` varchar(100) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `history` text DEFAULT NULL,
  `physical_chars` text DEFAULT NULL,
  `personality` text DEFAULT NULL,
  `health_care` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `health_tips` text DEFAULT NULL,
  `life_span` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `inquiries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `message` text DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(20) DEFAULT NULL,
  `github_username` varchar(100) DEFAULT NULL,
  `favorite_category` varchar(100) DEFAULT 'Dogs & Puppies',
  `bio` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
";

// Run each statement
$statements = array_filter(array_map('trim', explode(';', $sql)));
$errors = [];
$success = 0;
foreach ($statements as $statement) {
    if (!empty($statement)) {
        if (mysqli_query($conn, $statement)) {
            $success++;
        } else {
            $errors[] = mysqli_error($conn);
        }
    }
}

// Insert data
$inserts = [
"INSERT IGNORE INTO `staff` (`id`, `username`, `password`) VALUES (1,'admin','admin123'),(3,'admin','\$2y\$10\$8S3W.Z4W6F0C9.V6fL4A9O6D1R7u5A8f9e2B3c4D5e6F7g8H9i0jK')",
"INSERT IGNORE INTO `users` (`id`,`username`,`email`,`password`,`created_at`,`phone`,`favorite_category`,`bio`) VALUES (1,'neloskie25','nielrblx25@gmail.com','\$2y\$10\$VApz1sp/SkO0PsCjmNjgM.Fk8XGpTyQz3cQnHICfO/qwYd4eoE572','2026-03-30 07:10:05','09937599320','Cats & Kittens','sadw'),(4,'Lellong','mncastillo@tip.edu.ph','\$2y\$10\$luSrPbkbmhrmMgQyorLbqepvofhA/qA67M1OrPfrZ40xb2.76nSv6','2026-04-10 07:21:21','09932567807','Cats & Kittens','')",
"INSERT IGNORE INTO `breeds` (`id`,`animal_type`,`breed_name`,`summary`,`history`,`personality`,`health_tips`) VALUES (1,'Dog','Golden Retriever','The Golden Retriever is a sturdy, muscular dog of medium size, famous for the dense, lustrous coat of gold that gives the breed its name.','Developed in the Scottish Highlands in the late 1800s.','Friendly, trustworthy, and kind.','Requires significant daily exercise.'),(2,'Dog','French Bulldog','The Frenchie is a small but substantial dog with a powerful, muscular body.','Despite the name, the breed originated in Nottingham, England.','Playful, smart, and completely irresistible.','Due to their flat faces, they are prone to breathing issues.'),(3,'Dog','Shih Tzu','The Shih Tzu is a compact, solid dog with a long, flowing double coat.','Roots tracing back to the royal courts of China and Tibet.','Surprisingly sturdy for toy dogs.','Long hair requires daily brushing.'),(4,'Dog','Husky','Siberian Huskies are medium-sized working dogs known for their incredible endurance.','Bred by the Chukchi people of Siberia.','Famously vocal, using a wide range of howls.','High-energy dogs that require vigorous daily exercise.'),(5,'Cat','Persian','The Persian is a glamorous long-haired cat with a sweet, round face.','Records date back as far as the 1600s.','Docile, quiet cats that prefer a serene household.','Daily grooming is essential.'),(6,'Cat','Maine Coon','Maine Coons are the gentle giants of the cat world.','Originating in Maine, originally prized as farm cats.','Highly intelligent and often described as dog-like.','Thick fur requires weekly combing.'),(7,'Cat','Siamese','Siamese cats are sleek, elegant, and characterized by their striking blue eyes.','Once the exclusive property of royal families in Thailand.','Perhaps the most vocal of all cats.','Short, fine coats that are very easy to maintain.'),(8,'Cat','Bengal','Bengals are high-energy cats with a wild appearance.','Developed in the 1960s by Jean Mill.','Curious, confident, and highly active.','Require a high level of mental and physical stimulation.'),(9,'Bird','Parakeet','Parakeets are small, brightly colored parrots.','Native to the Australian outback.','Social birds that can be taught to mimic human speech.','Sensitive to drafts and strong household odors.'),(10,'Bird','Cockatiel','Cockatiels are small parrots known for their iconic head crests.','Native to the semi-arid regions of Australia.','Generally gentle and affectionate birds.','Cage should be large enough to stretch their wings.'),(11,'Bird','Macaw','Macaws are the majestic giants of the parrot world.','Native to the tropical rainforests of Central and South America.','Boisterous, playful, and can be extremely loud.','Need a constant supply of heavy-duty wooden toys.'),(12,'Bird','Lovebird','Lovebirds are small, stocky parrots.','Native to the African continent and Madagascar.','Highly intelligent and require rotating toys.','Best kept in pairs or as single pets.'),(13,'Hamster','Syrian','The Syrian Hamster is the most common species kept as a pet.','First discovered in the desert regions of Syria in the 1930s.','Gentle and easy to tame.','Strictly solitary animals.'),(14,'Hamster','Dwarf','Dwarf hamsters are much smaller and faster than Syrian cousins.','Native to the steppes and semi-deserts of Central Asia.','Energetic, quick, and curious.','Highly prone to diabetes.'),(15,'Hamster','Roborovski','The Robo is the smallest and fastest of all pet hamsters.','Originate from the arid deserts of Mongolia.','Generally considered watching pets.','Best kept in large glass aquariums.'),(16,'Hamster','Chinese','Chinese hamsters are unique for their long, slender bodies.','Native to the deserts and stony plains of Northern China.','Very docile and will cling to an owner finger.','Skilled climbers and burrowers.')",
"INSERT IGNORE INTO `inquiries` (`id`,`fullname`,`email`,`breed`,`message`,`submitted_at`) VALUES (1,'Nel qs','nielrblx25@gmail.com','persian cat','wasdwasdwasd','2026-04-10 05:45:00'),(2,'Nel qs','nielrblx25@gmail.com','Shihtzu','wadswadasd','2026-04-10 05:45:27')"
];

foreach ($inserts as $insert) {
    if (!mysqli_query($conn, $insert)) {
        $errors[] = mysqli_error($conn);
    }
}

echo "<h2>Database Setup Complete!</h2>";
echo "<p>✅ Tables created: $success</p>";
if (!empty($errors)) {
    echo "<p>⚠️ Errors: " . implode('<br>', $errors) . "</p>";
} else {
    echo "<p>✅ All data inserted successfully!</p>";
}
echo "<p><strong>⚠️ IMPORTANT: Delete this file (setup_db.php) from your project after running it!</strong></p>";
echo "<p><a href='/index.php'>Go to Homepage</a></p>";
?>
