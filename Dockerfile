FROM ubuntu:22.04
RUN apt-get update && apt-get install -y locales wget \
	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN wget -O - https://raw.githubusercontent.com/WEGA-project/wega/feat-ubuntu-2022-installer/install-ubuntu-2022.sh| bash
CMD ["bash"]
