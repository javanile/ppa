# ppa

A PPA repository for my packages:

- [joincap](https://github.com/assafmo/joincap)
- [xioc](https://github.com/assafmo/xioc)
- [SQLiteQueryServer](https://github.com/assafmo/SQLiteQueryServer)

# Usage

```bash
curl -SsL https://javanile.org/ppa/ubuntu/KEY.gpg | sudo apt-key add -
sudo curl -SsL -o /etc/apt/sources.list.d/javanile.list https://javanile.org/ppa/ubuntu/sources.list
sudo apt update
sudo apt install joincap xioc sqlitequeryserver
```

# Sources

- https://assafmo.github.io/2019/05/02/ppa-repo-hosted-on-github.html
- https://makandracards.com/makandra/37763-gpg-extract-private-key-and-import-on-different-machine
- http://blog.jonliv.es/blog/2011/04/26/creating-your-own-signed-apt-repository-and-debian-packages/
- https://medium.com/sqooba/create-your-own-custom-and-authenticated-apt-repository-1e4a4cf0b864
- https://github.com/tagplus5/vscode-ppa
