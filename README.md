# noodle: a mirror for Google

## Demo

You can see a fancy version adding a bit more feature to Google: [http://noodle.z3c.xyz/](http://noodle.z3c.xyz/).


**NOTE: This is only for research and experimental purpose. Please use it properly!**


## Prerequisite

You need a VPS that can connect to Google. You can easily rent one from AWS, Azure, or other Cloud Service Provider.

## Run and Install

### Ubuntu Auto Install

To run on Ubuntu, you should:

1. `git clone https://github.com/XieGuochao/noodle && cd noodle && chmod +x ubuntu.sh`
2. 
- `sudo ./ubuntu.sh` if you do not have a server name.
- `sudo ./ubuntu.sh YOUR_SERVER_NAME` if you have your server name.

Then, your Noodle will be running on your server name under port 80.

### Manual Install

If you want to manually install, you should:

1. `git clone https://github.com/XieGuochao/noodle && cd noodle`
2. Install Nginx.
3. Modify `server_name` and `listen` section on line 2-3 in `template.conf`.
4. Move `template.conf` to your Nginx configuration directory, which is usually `/etc/nginx/conf.d/`
5. Reload Nginx, which is usually `sudo nginx -s reload`.

## Contribute

You can simply fork and PR this project.

If you like it, please STAR it!
