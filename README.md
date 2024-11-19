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

I'm getting a lot of errors trying to get a particular project working, but I guess this is more of a laravel issue than an environment
issue at this point.
