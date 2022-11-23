#! /bin/zsh -

# parse command line options
D=
while getopts d: opt
do
    case "$opt" in
      d)  D="$OPTARG";;
      \?)         # unknown flag
              echo >&2 \
        "usage: $0 -d domain"
        exit 1;;
    esac
done
shift $(expr "${OPTIND}" - 1)

# test that D is set
if [ -z "${D}" ]; then
          echo >&2 \
          "usage: $0 -d domain"
          exit 1
fi

#open google
 /bin/zsh -i -c "web_search google ${D}"
sleep 1
#open bing
 /bin/zsh -i -c "web_search bing ${D}"
sleep 1
#open ddg
 /bin/zsh -i -c "web_search duckduckgo ${D}"
sleep 1
#open github
 /bin/zsh -i -c "web_search github ${D}"
sleep 1
#open baidu
 /bin/zsh -i -c "web_search baidu ${D}"
sleep 1
#open wayback machine
 /bin/zsh -i -c "web_search archive ${D}"
sleep 1
#open shodan
 /bin/zsh -i -c "web_search shodan ${D}"
#ZSH_WEB_SEARCH_ENGINES=(shodan "https://www.shodan.io/search?query=")
