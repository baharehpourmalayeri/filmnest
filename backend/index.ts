const express = require("express");
const cors = require("cors");

const app = express();
app.use(cors());
app.use(express.json());

const dotenv = require("dotenv"),
  { Client } = require("pg");

dotenv.config();

const client = new Client({
  connectionString: process.env.PGURI,
});

client.connect();

app.get("/genres", async (request, response) => {
  const genres = await client.query("SELECT * FROM genres ORDER BY id");
  return response.status(200).json(genres.rows);
});

app.get("/genre/:id", async (request, response) => {
  const { id } = request.params;
  if (!id) {
    return response.status(400).json({ error: "Id is required" });
  }
  let genre = await client.query("SELECT * FROM genres WHERE id = $1 ", [id]);
  if (genre.rowCount === 0) {
    return response.status(404).json({ error: "Not found!" });
  }
  return response.json(genre.rows[0]);
});

app.get("/films", async (request, response) => {
  const { genre } = request.query;
  if (!genre) {
    return response.status(400).json({ error: "Genre is required" });
  }
  const films = await client.query(
    "select * from films f join films_genres fg on f.id = fg.film_id where genre_id = $1  order by f.id",
    [genre]
  );
  return response.json(films.rows);
});

app.put("/film/like/:id", async (request, response) => {
  const { id } = request.params;
  if (!id) {
    return response.status(400).json({ error: "Id is required" });
  }
  let film = await client.query("SELECT * FROM films WHERE id = $1 ", [id]);
  if (film.rowCount === 0) {
    return response.status(404).json({ error: "Not found!" });
  }
  await client.query("UPDATE films set likes= likes+1 WHERE id= $1 ", [id]);
  return response.status(201).json({ success: true });
});

app.post("/contact", async (request, response) => {
  const { name, email, message } = request.body;
  if (!name || !email || !message) {
    return response.status(400).json({ error: "Fields are required" });
  }
  await client.query(
    "INSERT INTO contact (name, email, message) VALUES ($1, $2, $3)",
    [name, email, message]
  );
  return response.status(201).json({ success: true });
});

app.post("/subscribe", async (request, response) => {
  const { email } = request.body;
  if (!email) {
    return response.status(400).json({ error: "Email is required" });
  }
  await client.query("INSERT INTO subscribe (email) VALUES ($1)", [email]);
  return response.status(201).json({ success: true });
});

app.get("/reviews", async (request, response) => {
  const { filmId } = request.query;
  if (filmId) {
    const reviews = await client.query(
      "SELECT f.id as film_id, f.title as film_title, f.year as filem_year, " +
        "f.image as film_image, f.description as film_description, " +
        "f.likes as film_likes, f.rate as film_rate, r.id as review_id, " +
        "r.title as review_title, r.name as review_name, r.review, r.rate as review_rate " +
        "FROM reviews r join films f on f.id = r.film_id WHERE film_id = $1",
      [filmId]
    );
    return response.status(200).json(reviews.rows);
  } else {
    const reviews = await client.query(
      "SELECT f.id as film_id, f.title as film_title, f.year as filem_year, " +
        "f.image as film_image, f.description as film_description, " +
        "f.likes as film_likes, f.rate as film_rate, r.id as review_id, " +
        "r.title as review_title, r.name as review_name, r.review, r.rate as review_rate " +
        "FROM reviews r join films f on f.id = r.film_id"
    );
    return response.status(200).json(reviews.rows);
  }
});

app.listen(8080, () => {
  console.log("Redo på http://localhost:8080/");
});
