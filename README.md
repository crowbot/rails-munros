A super simple example site to use for a debugging exercise.

To import the data you need to:

* Clone the repo
* `bundle install`
* Create a database in postgres
* Edit `config/database.yml` to give access to the database you created
* Migrate the database - `bundle exec rake db:migrate`
* Download `munros-data.sql` from here: https://gist.github.com/mhl/a88a77b850ca0f5c9d65cc907a2d884f
* Import that data with: `bundle exec rails dbconsole < munros-data.sql`
* Run the server with: `bundle exec rails s`
* Visiting http://localhost:3000 should list the 4000ft plus
  Munros.
