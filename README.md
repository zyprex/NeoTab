# NeoTab

structure of configuration file

```json
{
  "Links":{
    "uncatagories1":[
      {"name":"<b>example1</b>","url":"https://example.com/"},
      {"name":"example2","url":"https://example.com/"},
      {"name":"example3","url":"https://example.com/"},
      {"name":"example4","url":"https://example.com/"},
    ],
    "uncatagories2":[
      {"name":"example1","url":"https://example.com/"},
      {"name":"example2","url":"https://example.com/"},
      {"name":"example3","url":"https://example.com/"},
      {"name":"example4","url":"https://example.com/"},
    ],
  },
  "SearchEngine":{
    "Normal":[
      {"name":"baidu","action":"https://www.baidu.com/s?wd=%s","favicon":"https://www.baidu.com/favicon.ico"},
      {"name":"sogou","action":"http://www.sogou.com/web?query=%s","favicon":"https://www.sogou.com/favicon.ico"},
      {"name":"bing","action":"https://cn.bing.com/search?q=%s","favicon":"https://cn.bing.com/favicon.ico"}
    ],
    "Shopping":[
      {"name":"amazon","action":"https://www.amazon.com/s?k=%s","favicon":"https://www.amazon.com/favicon.ico"}
    ],
    "Translation":[
      {"name":"onelook","action":"https://www.onelook.com/?w=%s","favicon":"https://www.onelook.com/favicon.ico"}
    ]
  },
  "Saved":{
    "history":[{"name":"abc","url":""}],
    "engine":"bing"
  },
  "Miscellaneous":{
    "darkTheme": false,
    "backgroundImage":"",
    "suggestionVendor":"baidu",
    "engineBtnTrigerOnclick":false,
    "engineCompactLayout":true,
    "linksWaterfallLayout":true,
    "linksTitleColorBg":false,
    "linksColumn":2,
    "showEnglishSentence":true,
    "showWeather":true,
    "showTime":true,
    "showDate":true,
    "longTextLimit":40,
    "historyLimit":5,
    "recordHistory":true,
    "colorList": ["#8d8d8d","#7fff00","#1e90ff"],
    "colorList2": ["#343434","#cda0cd"]
  }
}
```

| name                  | type    | value   | description    |
| :---                  | :---    | :----   | :---------     |
|darkTheme              | boolean | false   | apply dark color template |
|suggestionVendor       | string  | "baidu" | web keyword suggestion provider, possible value: 'baidu', 'sogou', 'bing', '360' |
|backgroundImage        | string  | ""      | url or local file url (file://...) |
|engineBtnTrigerOnclick | boolean | false   | submit result directly when you click engine button   |
|engineCompactLayout    | boolean | true    | when 'false', each group engine will take up one line |
|linksWaterfallLayout   | boolean | true    | use waterfall layout |
|linksTitleColorBg      | boolean | false   | use color as background-color for links group title |
|linksColumn            | Int     | 2       | how many column the links occupied |
|showEnglishSentence    | boolean | true    | see https://api.eatrice.top |
|showWeather            | boolean | true    | weather information  |
|showTime               | boolean | true    | 24h time information |
|showDate               | boolean | true    | date information     |
|longTextLimit          | Int     | 40      | long text editor will show if input character over this limit |
|historyLimit           | Int     | 5       | how many history should be saved |
|recordHistory          | boolean | true    | use search history               |
|colorList              | strArr  | ["#8d8d8d","#7fff00","#1e90ff"], | color apply in search engine button |
|colorList2             | strArr  | ["#343434","#cda0cd"]            | color apply in links group title    |


