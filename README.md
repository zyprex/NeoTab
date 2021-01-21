# Neo-Tab

Neo Tab is a simple web navigation page which can be customized content as you wish, it less than 25kb.

## Example of Configure File
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
  "darkUI":true,
  "soloUI":false,
  "limHist":55,
  "useHist":true
  "sugVendor":"sogou",
  "seen":"onelook",
  "hist":[]
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

```

## Input Usage

|key[0] | Fn  |
|:------|:----|
| .     | js regex search engines (site:) |
| /     | js regex search links           |
| ?     | js regex search history         |
| !     | js regex search function        |

### Quick Modify Command (prefer edit db.json directly)
create new search engine, if xxx already exist, it will be update

```
.xxx;;GroupName;;http://example.com/?q=%s;;http://cdn.static.example/icon.ico;;http://m.example.com/?q=%s
```

use the "space" class (viz. represent null or void), to delete(d) or read(r) search engine

```
.xxx;; ;;d
.xxx;; ;;r
```

same as links

```
/xxx;;class;;http://example.com/
/xxx;; ;;d
/xxx;; ;;r
```

## Options

|name     |value  |description|
|:---     |:---   |:--------- |
|darkui   |true   | use light or dark ui, can be toggle use '!\_sw\_darkui()' |
|soloui   |false  | use solo ui, the search engin and links will hidden |
|limhist  |55     | how many history should be record |
|usehist  |true   | whether to record history or not |
|winopen  |true   | whether to open new window or not |
|sugvendor|sogou  | use web suggestion api from 7 site |

 __note__ : db.seen memorized last used search engine, you can set it at configure file.

## Extra Function

file transfer service use [file.io](https://www.file.io/) API

qrcode generate use [qrjs2](https://github.com/englishextra/qrjs2) library

## Pro Tips

- you can use file on internet as site's database (db.json)
- input double space auto select first one, ctrl+1\~9 0 select 1\~9 10 suggestion item.
- use '!\_clr\_taxo()' clear all void class
- use '!\_clr\_localStorage()' clear all database and `ctrl+s` save webpage to local,
 them you can launch it from local.

