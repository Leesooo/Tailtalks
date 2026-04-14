-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2026 at 02:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tailtalks_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `breeds`
--

CREATE TABLE `breeds` (
  `id` int(11) NOT NULL,
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
  `life_span` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breeds`
--

INSERT INTO `breeds` (`id`, `animal_type`, `breed_name`, `summary`, `history`, `physical_chars`, `personality`, `health_care`, `image_url`, `about`, `health_tips`, `life_span`) VALUES
(1, 'Dog', 'Golden Retriever', 'The Golden Retriever is a sturdy, muscular dog of medium size, famous for the dense, lustrous coat of gold that gives the breed its name. They are hallmarks of the sporting group and serve excellently as family companions.', 'Developed in the Scottish Highlands in the late 1800s, they were bred by Lord Tweedmouth to be the ultimate retriever for rugged terrain. They are a cross between the yellow Retriever and the now-extinct Tweed Water Spaniel.', NULL, 'Friendly, trustworthy, and kind, they are famously patient with children and social with other pets. Their intelligence makes them highly trainable, though they often retain a playful, puppy-like attitude.', NULL, NULL, NULL, 'These dogs require significant daily exercise to maintain their physical and mental health. Owners should be vigilant about hip and elbow dysplasia, as well as regular ear cleanings common in water-loving breeds.', NULL),
(2, 'Dog', 'French Bulldog', 'The Frenchie is a small but substantial dog with a powerful, muscular body and a smooth coat. They are iconic for their large \"bat ears\" and curious, alert expression that makes them favorites in urban environments.', 'Despite the name, the breed originated in Nottingham, England, as a companion for lace workers. When these workers moved to France, they took their small bulldogs with them, where the breed was further refined.', NULL, 'They are playful, smart, and completely irresistible dogs that thrive on human contact. While they are alert and will bark to announce visitors, they are generally quiet companions that adapt well to apartment living.', NULL, NULL, NULL, 'Due to their flat faces, they are prone to breathing issues and can easily overheat in warm weather. Owners must provide a temperature-controlled environment and avoid over-exertion during walks.', NULL),
(3, 'Dog', 'Shih Tzu', 'The Shih Tzu is a compact, solid dog with a long, flowing double coat that requires dedicated grooming. Known as \"lion dogs,\" they carry themselves with a distinct pride and an affectionate, outgoing nature.', 'The breed is ancient, with roots tracing back to the royal courts of China and Tibet where they were kept as pampered companions. They were highly prized by emperors and were rarely seen outside palace walls.', NULL, 'They are surprisingly sturdy for toy dogs and are known for being exceptionally affectionate with their families. While they are lively and alert, they are primarily house dogs that prefer lounging in laps.', NULL, NULL, NULL, 'Their long hair requires daily brushing to prevent painful mats and tangles from forming. Because of their short snouts and large eyes, they are prone to heat stroke and eye irritations that require monitoring.', NULL),
(4, 'Dog', 'Husky', 'Siberian Huskies are medium-sized working dogs known for their incredible endurance and thick, weather-resistant double coats. They often possess striking blue or multicolored eyes and a wolf-like appearance.', 'Bred by the Chukchi people of Siberia, these dogs were designed to pull heavy sleds over vast, frozen distances. They gained international fame in 1925 during the \"Great Race of Mercy\" to Nome, Alaska.', NULL, 'They are famously vocal, using a wide range of howls and \"talks\" rather than typical barking. While they are friendly and social with people, they possess a high prey drive and a stubborn streak that requires training.', NULL, NULL, NULL, 'Huskies are high-energy dogs that require vigorous daily exercise to prevent boredom and destructive behavior. They are notorious \"escape artists,\" so a very secure, high fence is mandatory for any home.', NULL),
(5, 'Cat', 'Persian', 'The Persian is a glamorous long-haired cat with a sweet, round face and short, snub nose. They are the most popular pedigreed breed in the world, admired for their luxurious coats and dignified, calm presence.', 'Records of these cats date back as far as the 1600s, originating from the high plateaus of Persia and Turkey. They were introduced to Europe by travelers and quickly became favorites of royalty.', NULL, 'Persians are docile, quiet cats that prefer a serene household where they are treated with gentleness. While they enjoy affection, they are not demanding and are content to sit beautifully on a sofa while observing.', NULL, NULL, NULL, 'Daily grooming is essential to keep their long fur from matting, and their flat faces often lead to tear duct issues that require daily cleaning. They are indoor-only cats that thrive in a quiet, stable environment.', NULL),
(6, 'Cat', 'Maine Coon', 'Maine Coons are the \"gentle giants\" of the cat world, known for their massive size, shaggy coats, and tufted ears. They are one of the oldest natural breeds in North America and are perfectly adapted to harsh climates.', 'Originating in Maine, they were originally prized as farm cats for their incredible hunting abilities. While legends suggest they are part raccoon, they are actually descendants of long-haired cats.', NULL, 'They are highly intelligent and often described as \"dog-like\" because they can be trained to fetch and walk on harnesses. Maine Coons are social cats that enjoy being part of the family action.', NULL, NULL, NULL, 'Their thick fur is water-resistant but requires weekly combing to manage shedding and prevent mats. Because of their large size, they are genetically prone to hip dysplasia and heart conditions.', NULL),
(7, 'Cat', 'Siamese', 'Siamese cats are sleek, elegant, and characterized by their striking blue eyes and \"pointed\" color patterns. They are one of the most recognizable breeds in the world, possessing a sophisticated appearance.', 'Once the exclusive property of royal families in Thailand, they were considered sacred guardians of temples. They were first introduced to the Western world in the late 19th century.', NULL, 'Siamese are perhaps the most vocal of all cats, known for their loud, low-pitched \"meezer\" voice used to demand attention. They are extremely social and will follow their owners from room to room.', NULL, NULL, NULL, 'They have short, fine coats that are very easy to maintain with occasional brushing. However, they are prone to dental issues and respiratory problems, so regular vet checkups are essential.', NULL),
(8, 'Cat', 'Bengal', 'Bengals are high-energy cats with a wild appearance, featuring unique leopard-like spots or marbled patterns. They are hybrids of domestic cats and Asian Leopard Cats, resulting in a muscular, athletic breed.', 'The breed was developed in the 1960s by Jean Mill, who sought to create a cat with the look of a wild forest dweller and the temperament of a house pet. They were officially recognized in the 1980s.', NULL, 'They are curious, confident, and highly active cats that need plenty of vertical space like tall cat trees. While they are affectionate, they prefer interactive play over sitting still.', NULL, NULL, NULL, 'They require a high level of mental and physical stimulation to prevent them from becoming bored and mischievous. Many Bengals have a fascination with water and may jump into the shower with their owners.', NULL),
(9, 'Bird', 'Parakeet', 'Parakeets, or Budgerigars, are small, brightly colored parrots that bring life and song to any home. They are among the most popular pet birds worldwide due to their manageable size and charming personalities.', 'Native to the Australian outback, they live in large, nomadic flocks that travel long distances in search of water. They were first brought to Europe in the 1840s.', NULL, 'Parakeets are social birds that can be taught to mimic human speech and perform simple tricks. They enjoy the company of other birds and need plenty of toys to stay mentally engaged.', NULL, NULL, NULL, 'They are sensitive to drafts and strong household odors like non-stick pans or candles, which can be fatal. A diet consisting of high-quality seeds, pellets, and fresh greens is vital for their health.', NULL),
(10, 'Bird', 'Cockatiel', 'Cockatiels are small parrots known for their iconic head crests and bright orange \"blush\" patches on their cheeks. They are the second most popular pet bird, loved for their gentle nature.', 'Like parakeets, cockatiels are native to the semi-arid regions of Australia. They were discovered by early European explorers in the 1700s and have remained a favorite companion bird.', NULL, 'They are generally gentle and affectionate birds that enjoy having their head feathers scratched. While they aren\'t as loud as larger parrots, they are excellent at mimicking whistles and songs.', NULL, NULL, NULL, 'Owners should ensure their cage is large enough for them to stretch their wings fully and provide a variety of perches. They are prone to \"night frights,\" so a small nightlight near their cage can help.', NULL),
(11, 'Bird', 'Macaw', 'Macaws are the majestic giants of the parrot world, featuring vibrant primary colors and exceptionally long tail feathers. They are highly intelligent creatures that require a significant commitment.', 'These birds are native to the tropical rainforests of Central and South America. In the wild, they use their strong beaks to crack hard nuts and spend their days socializing in large flocks.', NULL, 'Macaws are boisterous, playful, and can be extremely loud, making them unsuitable for apartment living. They form deep emotional bonds with their owners and can sense human moods.', NULL, NULL, NULL, 'With incredibly powerful beaks, they need a constant supply of heavy-duty wooden toys to chew on. Their diet must include specific nuts for healthy fats alongside fresh fruits and vegetables.', NULL),
(12, 'Bird', 'Lovebird', 'Lovebirds are small, stocky parrots named for the strong, long-term pair bonds they form with their mates. They pack a large parrot personality into a very small, colorful body.', 'Native to the African continent and Madagascar, most pet lovebirds belong to the Peach-faced species. In the wild, they nest in tree cavities or inside the large communal nests of other birds.', NULL, 'Don\'t let their name fool you; they can be quite feisty and bold when they want something! They are highly intelligent and require a rotating selection of toys to satisfy their natural curiosity.', NULL, NULL, NULL, 'They can be quite territorial and may be aggressive toward other bird species, so they are best kept in pairs or as single pets with lots of human time. Regular wing trims are often necessary.', NULL),
(13, 'Hamster', 'Syrian', 'The Syrian Hamster, often called the \"Golden\" hamster, is the most common species kept as a pet. They are large, slow-moving hamsters that are generally easier for beginners to handle.', 'They were first discovered in the desert regions of Syria in the 1930s. Almost all domestic Syrian hamsters today are descendants of a single mother and her litter found near Aleppo.', NULL, 'They are gentle and easy to tame with regular, gentle handling after they have woken up for the evening. Because they are nocturnal, they are most active at night and may be grumpy if woken during the day.', NULL, NULL, NULL, 'Syrians are strictly solitary animals and must be kept in their own cage to prevent life-threatening fights. They require a large, solid-surface running wheel to prevent spinal injuries.', NULL),
(14, 'Hamster', 'Dwarf', 'Dwarf hamsters, including the Winter White species, are much smaller and faster than their Syrian cousins. They are social animals that can sometimes live in pairs if introduced early.', 'Native to the steppes and semi-deserts of Central Asia, these hamsters are adapted to survive extreme temperature shifts. Their thick fur helps them conserve heat during harsh winters.', NULL, 'They are energetic, quick, and can be a bit more difficult for small children to handle safely. Once tamed, they are curious pets that enjoy exploring tunnels and foraging for hidden seeds.', NULL, NULL, NULL, 'They are highly prone to diabetes, so owners must strictly limit sugary treats like fruit or honey-based snacks. Their cages should have deep bedding to allow for their natural burrowing behaviors.', NULL),
(15, 'Hamster', 'Roborovski', 'The \"Robo\" is the smallest and fastest of all pet hamsters, barely reaching two inches in length. They are sandy-colored with distinct white eyebrows, giving them a perpetually surprised expression.', 'They originate from the arid deserts of Mongolia and Northern China. Their sandy coats provide perfect camouflage, and their large cheek pouches allow them to carry large amounts of seeds.', NULL, 'They are generally considered \"watching pets\" rather than \"handling pets\" because they are too quick for most people to hold safely. However, they are fascinating to observe in their habitats.', NULL, NULL, NULL, 'Because they are so fast and small, they are best kept in large glass aquariums or bins rather than wire cages. They require multiple wheels and hiding spots to satisfy their high energy levels.', NULL),
(16, 'Hamster', 'Chinese', 'Chinese hamsters are unique for their long, slender bodies and prehensile tails that help them climb. They are often mistaken for mice at first glance, but they possess classic hamster features.', 'Native to the deserts and stony plains of Northern China, they were originally used in laboratory research before becoming pets. In the wild, they are expertly adapted to hiding in rocky crevices.', NULL, 'They are known for being very docile and will often \"cling\" to an owner\'s finger with their paws and tail when being held. While shy initially, they become very tame with patient interaction.', NULL, NULL, NULL, 'They are skilled climbers and burrowers, so their habitat should provide both vertical opportunities and deep substrate. They are sensitive to sudden movements and loud noises.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `message` text DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `fullname`, `email`, `breed`, `message`, `submitted_at`) VALUES
(1, 'Nel qs', 'nielrblx25@gmail.com', 'persian cat', 'wasdwasdwasd', '2026-04-10 05:45:00'),
(2, 'Nel qs', 'nielrblx25@gmail.com', 'Shihtzu', 'wadswadasd', '2026-04-10 05:45:27'),
(3, 'Nel qs', 'nielrblx25@gmail.com', 'persian cat', 'hee', '2026-04-10 05:59:09'),
(4, 'Nel qs', 'nielrblx25@gmail.com', '', '', '2026-04-10 06:06:47'),
(5, 'Nel qs', 'nielrblx25@gmail.com', 'persian cat', 'awdaw', '2026-04-10 06:44:17'),
(6, 'Nel qs', 'nielrblx25@gmail.com', 'persian cat', 'sadadadada', '2026-04-10 08:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123'),
(2, 'admin', 'admin123'),
(3, 'admin', '$2y$10$8S3W.Z4W6F0C9.V6fL4A9O6D1R7u5A8f9e2B3c4D5e6F7g8H9i0jK');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(20) DEFAULT NULL,
  `github_username` varchar(100) DEFAULT NULL,
  `favorite_category` varchar(100) DEFAULT 'Dogs & Puppies',
  `bio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `phone`, `github_username`, `favorite_category`, `bio`) VALUES
(1, 'neloskie25', 'nielrblx25@gmail.com', '$2y$10$VApz1sp/SkO0PsCjmNjgM.Fk8XGpTyQz3cQnHICfO/qwYd4eoE572', '2026-03-30 07:10:05', '09937599320', NULL, 'Cats & Kittens', 'sadw'),
(4, 'Lellong', 'mncastillo@tip.edu.ph', '$2y$10$luSrPbkbmhrmMgQyorLbqepvofhA/qA67M1OrPfrZ40xb2.76nSv6', '2026-04-10 07:21:21', '09932567807', NULL, 'Cats & Kittens', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breeds`
--
ALTER TABLE `breeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `breeds`
--
ALTER TABLE `breeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
