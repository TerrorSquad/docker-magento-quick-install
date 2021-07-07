# docker-magento-quick-install

Use this repo to quickly create a working environment for your Magento 2 project.
The idea is to clone this repo and put your magento 2 source code into the src directory.

Below you will find the required steps to set up everything.

## Quick install

- First you need to clone this repo. Use the one-liner below to do it.
    > Change MAGENTO2 to the name of your project

    ```bash
    curl -s https://raw.githubusercontent.com/TerrorSquad/docker-magento-quick-install/main/init.sh | bash -s MAGENTO2 clone
    ```

- Open the directory you just cloned

- Clone your Magento 2 source code into the src directory.

    > It doesn't exist intially. You will create it.

    ```bash
    git clone YOUR_URL_HERE src
    ```

- Copy the provided env.php file

    ```bash
    cp config/env.php src/app/etc
    ```

- Start the docker containers

  ```bash
   bin/up
  ```

- Install composer packages

    ````bash
    bin/composer install
    ````

- Import your database

    ```bash
    bin/mysql-root < dump.sql
    ```

    > We using root user here instead of the regular magento user because many Magento 2 dumps have DEFINER root in them, which prevents regular users from importing.

- Set the default Magento 2 Base URLs

    ```bash
    bin/init-website.sh
    ```

    > This file will simply run the query found in the config/sql/set_default_website.sql
    > Feel free to change the name to whatever you want.
    > Default is magento.test

- Run setup:upgrade

    ```bash
    bin/magento setup:upgrade
    ```

### You should now see your website available at <https://magento.test>

### Notes

There are many helpers scripts in the `bin` directory. Check them out to see what they do.

You should run all scripts from the root repository directory.
Do not enter `bin`.
Simply run `bin/bash` for example for start a bash session inside the php container.

- `bin/start` - brings all containers up
- `bin/stop` - brings all containers down
- `bin/restart` - stops and starts the containers
- `bin/bash` - starts a bash session inside the phpfpm container
- `bin/cli` - allows execution of any command under bash inside the container without entering the container. e.g. `bin/cli php -v`
- `bin/mysql` - starts a mysql session inside the db container
