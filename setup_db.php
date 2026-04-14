<?php
$host = "monorail.proxy.rlwy.net";
$user = "root";
$pass = "oLIPUFqIVgnLFvaMLPPqWuReumRzpbxd";
$dbname = "railway";
$port = 51206;

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

$statements = array_filter(array_map('trim', explode(';', $sql)));
$success = 0;
$errors = [];
foreach ($statements as $s) {
    if (!empty($s)) {
        if (mysqli_query($conn, $s)) $success++;
        else $errors[] = mysqli_error($conn);
    }
}

$inserts = [
    "INSERT IGNORE INTO `staff` (`id`,`username`,`password`) VALUES (1,'admin','admin123'),(3,'admin','\$2y\$10\$8S3W.Z4W6F0C9.V6fL4A9O6D1R7u5A8f9e2B3c4D5e6F7g8H9i0jK')",
    "INSERT IGNORE INTO `users` (`id`,`username`,`email`,`password`,`created_at`,`phone`,`favorite_category`,`bio`) VALUES (1,'neloskie25','nielrblx25@gmail.com','\$2y\$10\$VApz1sp/SkO0PsCjmNjgM.Fk8XGpTyQz3cQnHICfO/qwYd4eoE572','2026-03-30 07:10:05','09937599320','Cats & Kittens','sadw'),(4,'Lellong','mncastillo@tip.edu.ph','\$2y\$10\$luSrPbkbmhrmMgQyorLbqepvofhA/qA67M1OrPfrZ40xb2.76nSv6','2026-04-10 07:21:21','09932567807','Cats & Kittens','')"
];

foreach ($inserts as $i) {
    if (!mysqli_query($conn, $i)) $errors[] = mysqli_error($conn);
}

echo "<h2>Done!</h2>";
echo "<p>Tables created: $success</p>";
if (!empty($errors)) echo "<p>Errors: " . implode('<br>', $errors) . "</p>";
else echo "<p>All data inserted!</p>";
echo "<p><strong>DELETE this file now!</strong></p>";
echo "<p><a href='/index.php'>Go to Homepage</a></p>";
?>
