# Neo-Tab

Neo Tab is a simple web navigation page which can be customized content as you wish

the essential example of configure file

```json
{
  "L":{
    "Link":[
      {"n":"RefSeek","u":"https://www.refseek.com/"}
    ]
  },
  "S":{
    "Dict":[
      {"n":"onelook","s":"https://www.onelook.com/?w=%s"},
      {"n":"iciba","s":"http://www.iciba.com/word?w=%s","i":"http://cdn.iciba.com/www/img/www/favicon.ico"}
    ]
  },
  "M":{
    "hist":[],
    "seen":"onelook"
  },
  "X":{
    "darkUI":true,
    "soloUI":false,
    "sugVendor":"sogou",
    "limHist":55,
    "useHist":true
  }
}
```

parameters abbr:

```
L links
  n name
  u url

S searcher
  n name
  s search
  m mobile compatible search (optional)
  i favicon (optional)

M memo

X options

```

## usage

|key[0] | Fn  |
|:------|:----|
| .     | js regex search engines (site:) |
| /     | js regex search links           |
| ?     | js regex search history         |
| !     | js regex search function        |

### quick mod
create new search engine, if xxx already exist, it will be update

   .xxx;;GroupName;;http://example.com/?q=%s;;http://cdn.static.example/icon.ico;;http://m.example.com/?q=%s

use the "space" class (viz. represent null or void), to delete(d) or read(r) search engine

   .xxx;; ;;d
   .xxx;; ;;r

same as links

   /xxx;;class;;http://example.com/
   /xxx;; ;;d
   /xxx;; ;;r

## options

|name     |value  |description|
|:---     |:---   |:--------- |
|darkUI   |true   | use light or dark UI, can be toggle use '!\_sw\_darkUI()' |
|soloUI   |false  | use solo UI, the search engin and links will hidden |
|sugVendor|sogou  | use web suggestion api from 7 site, use '!\_sw\_sugVendor()' to see possible value |
|limHist  |55     | how many history should be record |
|useHist  |true   | whether to record history or not |
|winOpen  |true   | whether to open new window or not |

 __NOTE__ : db.M.seen memorized last used search engine, you can set it at configure file.

## extra function

file transfer service use file.io API

qrcode generate use qrjs2 library

## pro tips

- you can use file on internet as site's database
- use '!\_clr\_taxo()' clear all void class
- use '!\_clr\_localStorage()' clear all database and save webpage to local,
 them you can launch it from local, no js or css, just one html.

