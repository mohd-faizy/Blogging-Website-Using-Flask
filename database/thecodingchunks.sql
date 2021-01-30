-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2021 at 10:03 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thecodingchunks`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(100) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Neural Network', 'Models itself after the human brain', 'second-post', 'A neural network is a network or circuit of neurons, or in a modern sense, an artificial neural network, composed of artificial neurons or nodes.Thus a neural network is either a biological neural network, made up of real biological neurons, or an artificial neural network, for solving artificial intelligence (AI) problems. The connections of the biological neuron are modeled as weights. A positive weight reflects an excitatory connection, while negative values mean inhibitory connections. All inputs are modified by a weight and summed. This activity is referred to as a linear combination. Finally, an activation function controls the amplitude of the output. For example, an acceptable range of output is usually between 0 and 1, or it could be ?1 and 1.\r\n\r\nThese artificial networks may be used for predictive modeling, adaptive control and applications where they can be trained via a dataset. Self-learning resulting from experience can occur within networks, which can derive conclusions from a complex and seemingly unrelated set of information.', 'nn-bg.jpg', '2021-01-29 20:00:37'),
(2, ' Transformer Neural Network', 'Sequence-to-Sequence Models\r\n', 'third-post', 'The transformer is a component used in many neural network designs for processing sequential data, such as natural language text, genome sequences, sound signals or time series data. Most applications of transformer neural networks are in the area of natural language processing.\r\n\r\nA transformer neural network can take an input sentence in the form of a sequence of vectors, and converts it into a vector called an encoding, and then decodes it back into another sequence.\r\n\r\nAn important part of the transformer is the attention mechanism. The attention mechanism represents how important other tokens in an input are for the encoding of a given token. For example, in a machine translation model, the attention mechanism allows the transformer to translate words like ‘it’ into a word of the correct gender in French or Spanish by attending to all relevant words in the original sentence.\r\n\r\nCrucially, the attention mechanism allows the transformer to focus on particular words on both the left and right of the current word in order to decide how to translate it. Transformer neural networks replace the earlier recurrent neural network (RNN), long short term memory (LSTM), and gated recurrent (GRU) neural network designs.', 'nlp-bg.png', '2021-01-29 20:02:59'),
(3, 'Evolutionary Algorithms', 'A process or set of rules to be followed in calculations ', 'fourth-post', 'Evolutionary algorithms are an unsupervised learning alternative to neural networks that rely on fitness functions instead of trained nodes for evaluation.\r\n\r\nWith this approach, candidate solutions to an optimization problem are randomly generated and act as individuals interacting with a larger population. A fitness function determines the quality of the solutions the candidates find as they move about in each iteration. The “best fit” individuals are then chosen for reproduction in the next iteration. This generational process is repeated until the algorithm has evolved to find the optimal solution to the problem.\r\n\r\n', 'algo-bg.jpg', '2021-01-29 20:04:05'),
(4, ' Unsupervised Learning', 'Machine learning algorithms to analyze and cluster unlabeled datasets', 'fifth-post', 'Unsupervised learning is a kind of machine learning where a model must look for patterns in a dataset with no labels and with minimal human supervision. This is in contrast to supervised learning techniques, such as classification or regression, where a model is given a training set of inputs and a set of observations, and must learn a mapping from the inputs to the observations. In unsupervised learning, only the inputs are available, and a model must look for interesting patterns in the data.\r\n\r\nAnother name for unsupervised learning is knowledge discovery. Common unsupervised learning techniques include clustering, and dimensionality reduction.', 'usl-bg.png', '2021-01-29 20:04:45'),
(5, 'Supervised Learning', 'Supervised learning is the machine learning task of learning a function that maps an input to an output based on example input-output pairs', 'sixth-post', 'In machine learning and artificial intelligence, supervised learning refers to a class of systems and algorithms that determine a predictive model using data points with known outcomes.  The model is learned by training through an appropriate learning algorithm (such as linear regression, random forests, or neural networks) that typically works through some optimization routine to minimize a loss or error function.\r\n\r\nPut another way, supervised learning is the process of teaching a model by feeding it input data as well as correct output data. This input/output pair is usually referred to as \"labeled data.\" Think of a teacher who, knowing the correct answer, will either reward marks to or take marks from a student based on the correctness of her response to a question. Supervised learning is often used to create machine learning models for two types of problems.\r\n\r\nRegression - The model finds outputs that are real variables (number which can have decimals.) \r\nClassification - The model finds classes in which to place its inputs.', 'sl-bg.png', '2021-01-29 20:05:44'),
(6, 'Transfer learning', 'Solving One Problem & Applying it to a Different ', 'seven-post', 'In transfer learning, the knowledge of an already trained machine learning model is applied to a different but related problem. For example, if you trained a simple classifier to predict whether an image contains a backpack, you could use the knowledge that the model gained during its training to recognize other objects like sunglasses.\r\n\r\nWith transfer learning, we basically try to exploit what has been learned in one task to improve generalization in another. We transfer the weights that a network has learned at \"task A\" to a new \"task B.\"\r\n\r\nknowledge transfer learning\r\n\r\nThe general idea is to use the knowledge a model has learned from a task with a lot of available labeled training data in a new task that doesn\'t have much data. Instead of starting the learning process from scratch, we start with patterns learned from solving a related task.\r\n\r\nTransfer learning is mostly used in computer vision and natural language processing tasks like sentiment analysis due to the huge amount of computational power required.\r\n\r\nTransfer learning isn\'t really a machine learning technique, but can be seen as a \"design methodology\" within the field, for example, active learning. It is also not an exclusive part or study-area of machine learning. Nevertheless, it has become quite popular in combination with neural networks that require huge amounts of data and computational power.', 'ml-bg.jpg', '2021-01-30 18:22:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
