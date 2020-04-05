
# Recipy

Recipy is the first application to offer customized recipes by reducing food waste.
Indeed, Recipy offers its users the opportunity to discover new recipes based on their tastes,
by consuming locally. Finally, the application allows the user not to worry about his weekly shopping
list, because it is directly generated and integrated into the tools of today and tomorrow.

You can find us at [www.recipy.fr](https://production-recipy.herokuapp.com/)
## Installation

#### Docker Compose
* Follow the instruction : [Docker compose](https://docs.docker.com/compose/install/#install-compose)
###### Ubuntu :
* `sudo systemctl start docker`
* `sudo systemctl enable docker`

#### Rbenv
* Follow the instruction : [rbenv](https://github.com/rbenv/rbenv)
* `rbenv install`
* `gem install bundler`
* `bundle`
#### nvm
* Follow the instruction : [nvm](https://github.com/nvm-sh/nvm)
* `nvm use` (If this doesn't work, try installing [ruby-build](https://github.com/rbenv/ruby-build), don't forget to add it to your bash/zsh with [this](https://github.com/nvm-sh/nvm#bash))
* `nvm alias default $(cat .nvmrc)`
* `npm i -g yarn@1.13.0`
* `yarn`

After that you need to ask us the master.key by e-mail or on Discord.

#### PosgreSQL

* ##### [Ubuntu](https://doc.ubuntu-fr.org/postgresql) then `sudo systemctl disable postgresql`
* ##### [Mac OS](https://medium.com/@Umesh_Kafle/postgresql-and-postgis-installation-in-mac-os-87fa98a6814d)
* ##### [Windows](https://youtu.be/uK4-nUZiOH4)

## Start the project

First you need to start all dockers with `docker-compose up -d`

Don't forget to reset the database at the first launch and after each time you pull :

`bundle exec rake db:reset`
`rake db:create`
`rake db:migrate`

Then enter each following command in a different terminal (or in background) at the root of the project:

`./bin/webpack-dev-server` is used for JS, learn more about it [here](https://webpack.js.org/configuration/dev-server/)

`bundle exec sidekiq -t 25` is used for the [mailcatcher](https://www.npmjs.com/package/maildev), you can learn more about it [here](https://github.com/mperham/sidekiq)

`rails s` simply start the server

The mailtrap is available at `http://localhost:8084/#/`

## Troubleshooting

### Rake Aborted

**Problem:** ```rake aborted!
NoMethodError: undefined method `[]' for nil:NilClass```

**Solution:** The master.key is missing in `/config` (Ask us by e-mail or on Discord !)

### Error with Minimagick

**Problem:** Minimagick is missing.

**Solution:** You just need to install the missing package.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Contact

If you have any question, you can contact us at recipyhq@gmail.com
