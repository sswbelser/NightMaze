#READ ME
Sabastian Belser's and Sean Hill's Unity project.

#Live
<a href="https://nightmaze.herokuapp.com" target="_blank">Heroku</a><br>
<a href="https://www.dropbox.com/sh/kfw6z3qoqsw2qcr/AABYp8yzrxoD1jC7KqNwxbela?dl=0" target="_blank">Dropbox Download</a>

#Elevator Pitch
You have slipped into a deep pit with no visible way out. As you turn on your flashlight you find that you are in some sort of maze. It is dark and you hear noises. You have to run. You have to escape! NightMaze is an exciting first person maze runner with the goal of surviving the monsters of the maze and finding the way out. You are trapped in the maze with just a flashlight and a weapon. Can you make it?

#Project Creation Approach
We began NightMaze with a basic understanding of what the Unity Engine had to offer. Our plan was to incorporate the features we knew as quickly as possible and using the remaining time to learn and impliment new, exciting, and more efficient features.<br><br>
The first step we took was to build the maze. We followed tutorials and created a random maze generator and imported a maze into our project. We dimmed the lights in the editor, threw in some spooky music, and started adding in enemies. After hours of playing against the never ending monster spawns we decided to add a spawn limit and a way to escape from the maze.<br><br>
Lastly, we built out the Ruby on Rails web app to hold the web player version of the game; which we ultimately hosted on <a href="https://nightmaze.herokuapp.com" target="_blank">Heroku</a>. This has login/signup functionality, add posts, and various other technologies. However, we would eventually like to ship this game to the App Store and Google Play.<br><br>
With level one finished, we are eager to get back to work and design many more mazes to find your way through!

#Trello Board and User Stories
<a href="https://trello.com/b/2KAmptnM/project-3" target="_blank">Trello Board</a>

#Technologies Used
<ul>
	<li>Unity 3D</li>
	<li>C#</li>
	<li>JavaScript</li>
	<li>Ruby on Rails</li>
	<li>HTML5</li>
	<li>CSS3</li>
	<li>Bootstrap</li>
	<li>Audacity</li>
	<li>BCrypt</li>
	<li>jQuery</li>
	<li>jQuery Validation</li>
	<li>PostgreSQL</li>
	<li>Trello</li>
	<li>GitHub</li>
	<li>Heroku</li>
</ul>

#How to Bootstrap
```$ git clone```<br>
```$ bundle install```<br>
```$ rake db:create```<br>
```$ rails s```