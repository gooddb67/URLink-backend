# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dave = User.create(email: "dave@example.com", password: "123456")
lisa = User.create(email: "lisa@example.com", password: "123456")
danielle = User.create(email: "danielle@example.com", password: "123456")
elbin = User.create(email: "elbin@example.com", password: "123456")

science = Topic.create(name: "Science")
javascript = Topic.create(name: "Javascript")
cooking = Topic.create(name: "Cooking")
history = Topic.create(name: "Architecture")
french = Topic.create(name: "French")
screenwriting = Topic.create(name: "Screenwriting")

user_topic1 = UserTopic.create(user_id: 1, topic_id: 2)
user_topic2 = UserTopic.create(user_id: 1, topic_id: 3)

chemistry = Subtopic.create(name: "Chemistry", topic_id: 1)
baking = Subtopic.create(name: "Baking", topic_id: 3)
modern = Subtopic.create(name: "Modern", topic_id: 4)
gothic = Subtopic.create(name: "Gothic", topic_id: 4)
async = Subtopic.create(name: "Async", topic_id: 2)
es6 = Subtopic.create(name: "ES6", topic_id: 2)
libraries = Subtopic.create(name: "Libraries", topic_id: 2)
objects = Subtopic.create(name: "Objects", topic_id: 2)
culture = Subtopic.create(name: "Culture", topic_id: 5)
act = Subtopic.create(name: "Dialogue", topic_id: 6)


es6_note = Note.create(content: "Arrow functions are great!", subtopic_id: 5)
object_note = Note.create(content: "Iteration is fun!", subtopic_id: 7)

fetch_video = Artifact.create(media: "video", url: "https://youtu.be/Oive66jrwBs", subtopic_id: 5, topic_id: 2)
fetch_article = Artifact.create(media: "link", url: "https://davidwalsh.name/fetch", subtopic_id: 5, topic_id: 2)
fetch_image = Artifact.create(media: "image", url: "http://jquery-plugins.net/image/plugin/fetch-windowfetch-javascript-polyfill.png", subtopic_id: 5, topic_id: 2)

fetch_video_comment = Comment.create(content: "need PostData for post requests", artifact_id: 1)
