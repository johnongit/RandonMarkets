# Information

Nodered need to be customized to be used the bot. Settings.json has two specifics parameters:

* Enable persistent storage
```json
contextStorage: {
    default: {
        module:"localfilesystem"
    }
},
```
* Enable external npm module (for 'crypto' package)
```json
functionExternalModules: true,
```


# Install

Clone the repository

Build the docker image 
> docker build -t nodered-randomarkets .

Run the following command in order to start the container from
> docker run -p 1880:1880 -v randomarkets:/data -d --name random-markets nodered-randomarkets

***OR***

Get the image from docker hub and run it
> docker run -p 1880:1880 -v randomarkets:/data -d --name random-markets johnonchain/nodered-randomarkets:latest


In your web browser, access to nodered app `http://127.0.0.1:1880`:
* Copy the workflow.json content
* On nodered, import the content (ctrl+i and past the content).

The dashboard is available at `http://127.0.0.1:1880/ui/`

# Configure

Create an API key on lnmarkets ``https://lnmarkets.com/user/api``
The bot must be configured via the *credentials* box with the following parameters:
* Lnmarkets API Key
* Lnmarkets API secret
* Lnmarkets passphrase
* URI : https://api.lnmarkets.com (mainnet) or https://testnet.api.lnmarkets.com (testnet)