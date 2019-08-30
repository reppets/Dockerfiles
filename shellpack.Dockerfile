FROM ubuntu:bionic

RUN apt update && apt install wget software-properties-common -y && \
	wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb && \
	dpkg -i packages-microsoft-prod.deb && \
	apt update && apt install ash bsh csh elvish fish ksh powershell rc tcsh xonsh zsh -y && \
	apt remove wget software-properties-common -y && apt autoremove -y && apt clean \
	rm packages-microsoft-prod.deb

# TODO add ion-shell oh nash