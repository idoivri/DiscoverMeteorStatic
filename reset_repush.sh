for d in 'de' 'es' 'fr' 'gr' 'id' 'it' 'ja' 'kr' 'nl' 'pl' 'pt' 'ru' 'zh' 'ro' 'ar' 'da' 'hr' 'ms' 'tr' 'am' 'th' 'uk' 'hi' 'sv' 'hu' 'he' 'bn' 'ta' 'sw' 'lt' 'vi' 'bg' ; do
  heroku repo:reset --app discover-meteor-$d
  git push $d
done
