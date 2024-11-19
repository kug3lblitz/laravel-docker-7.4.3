# updated docker environment for laravel development

## makefile
this is pretty much going to enable shortcuts. You can see the definitions in there. For 'up', you'd run ```make up```

Ex.
docker exec -it <container name> bash #enters shell of container
side note - current version uses alpine, the default shell of which is 'ash', rather than bash.

refer to the makefile for more shortcuts, and expand at your convenience.
Once everything is installed and ready, make sure to update the laravel .env appropriately, and then run your migrations
'make setup' should take care of everything as is for a new project, aside from the database stuff.

now, start the container/build them, and enter the shell of the laravel container.
once we're in the shell, run ``` composer create-project laravel/laravel . ```
To serve the thing, cd into the laravel directory, and run ```php artisan serve --host=0.0.0.0 --port=8000```
The site should now be accessible at localhost:8000, per the mapping in docker-compose.yml

For an existing project that I'm using this for, I ran into a "cache" error. I resolved this by deleting the vendor/ directory,
and also running ```mkdir -p storage/framework/views```, in order to create a missing path required by config/view.php.

Copy over your .env file and update the database params like the following, and you should be able to run migrations:
```
DB_CONNECTION=mysql
DB_HOST=db
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=root
```
