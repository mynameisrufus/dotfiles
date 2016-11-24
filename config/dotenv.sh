dotenv()
{
  re="[A-Z]=[^/]"

  exportenv() {
    if [[ $a =~ $re ]]; then export $a; fi
  }

	loadenv()
	{
    cat $1 | while read a; do exportenv $a; done
	}

	if [ -e .env ]; then
		loadenv .env
    "${@:1}"
	fi
}
