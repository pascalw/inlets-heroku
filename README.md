# Inlets on Heroku

Deploy an [Inlets](https://docs.inlets.dev/) proxy to Heroku in a few simple steps:

1. Create a [Heroku](https://heroku.com) account and configure the Heroku CLI

2. Install the Inlets CLI (`curl -sLS https://get.inlets.dev | sh` or `brew install inlets`)

3. Clone this repo:

   ```sh
   git clone https://github.com/pascalw/inlets-heroku.git
   ```

4. Deploy the app to Heroku:

   ```sh
   ./deploy.sh [heroku app-name]
   ```

5. Connect the Inlets client:

   ```sh
   ./inlets-client.sh http://localhost:8080
   ```

Great success! You will now be able to access `localhost:8080` from `https://[heroku-app-name].herokuapp.com`.