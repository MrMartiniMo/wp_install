
function wp_install () {
  if [[ -z "$1" ]]; then
    echo "usage: wp_install <install_dir>"
    return
  fi

  TMP=/tmp/$1
  TMP_WORDPRESS=$TMP/wordpress
  LATEST_WORDPRESS=https://wordpress.org/latest.zip

  echo "installing latest wordpress into \"$1\""
  sleep 3

  echo "downloading ..."
  mkdir -p $TMP
  curl -sS $LATEST_WORDPRESS > $TMP/latest.zip

  echo "extracting ..."
  tar -xf $TMP/latest.zip -C $TMP
  mkdir -p $1
  mv $TMP_WORDPRESS/* ./$1

  echo "cleanup ..."
  rm -fr $TMP_WORDPRESS $TMP/latest.zip

  echo "done! :)"
}
