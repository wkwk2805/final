<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html style="min-height: 458.156px;"><head>
  <!-- Standard Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

<link rel="image_src" type="image/jpeg" href="/images/logo.png">

<!-- Site Properities -->
<meta name="generator" content="DocPad v6.79.4">
<title>API | Semantic UI</title>

<meta name="description" content="API allows elements to trigger actions on a server">
<meta name="keywords" content="html5, ui, library, framework, javascript">
  
  <script id="twitter-wjs" src="https://platform.twitter.com/widgets.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script src="/javascript/library/detect.min.js"></script>
  <script src="/javascript/library/jquery.min.js"></script>
  <script src="/javascript/library/clipboard.min.js"></script>
  <script src="/javascript/library/cookie.min.js"></script>
  <script src="/javascript/library/easing.min.js"></script>
  <script src="/javascript/library/highlight.min.js"></script>
  <script src="/javascript/library/history.min.js"></script>
  <script src="/javascript/library/state.js"></script>
  <script src="/javascript/library/tablesort.min.js"></script>
  <script src="/javascript/library/underscore.min.js"></script>





<script src="/dist/semantic.min.js"></script>



<script src="/javascript/docs.js"></script>

  
<link rel="stylesheet" type="text/css" class="ui" href="/dist/semantic.min.css">




<link rel="stylesheet" type="text/css" href="/stylesheets/docs.css">
<link rel="stylesheet" type="text/css" href="/stylesheets/rtl.css">





  
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-44039803-2', 'auto');
  ga('send', 'pageview');
</script>

  
<script type="text/javascript">
  window.liveSettings = {
    api_key    : '9ede3015b9f84c1aabc81ab839c55d74',
    parse_attr : [
      'data-title',
      'data-content'
    ],
    detectlang   : false,
    autocollect  : true,
    ignore_tags  : ['i', 'code', 'pre'],
    parse_attr   : ['data-title', 'data-content', 'data-text'],
    ignore_class : ['code', 'anchor']
  };
</script>
<script type="text/javascript" src="//cdn.transifex.com/live.js"></script><style type="text/css">.txlive {display: none;}
</style>


<script type="text/javascript" src="https://cdn.transifex.com/9ede3015b9f84c1aabc81ab839c55d74/latest/manifest.jsonp"></script><script id="_bsa_srv-CVAIKK7I_0" type="text/javascript" src="https://srv.buysellads.com/ads/CVAIKK7I.json?callback=_bsa_go&amp;segment=placement:semanticuicom"></script><script id="_carbonads_projs" type="text/javascript" src="//srv.carbonads.net/ads/CKYIKK7M.json?segment=placement:semanticuicom&amp;callback=_carbonads_go"></script><script type="text/javascript" charset="utf-8" async="" src="https://platform.twitter.com/js/button.3ebb4253c7cb2cc3c9eaac42044fc82c.js"></script></head>
<body id="example" class="api pushable" ontouchstart="">
  
  <div class="ui vertical inverted sidebar menu left" id="toc">
  








<div class="item">
  <a class="ui logo icon image" href="/">
    <img src="/images/logo.png">
  </a>
  <a href="/"><b>UI Docs</b></a>
</div>
<a class="item" href="/introduction/getting-started.html">
  <b>Getting Started</b>
</a>
<a class="item" href="/introduction/new.html">
  <b>New in 2.4</b>
</a>
<div class="item">
  <div class="header">Introduction</div>
  <div class="menu">
    
      <a class="item" href="/introduction/integrations.html">
        Integrations
      </a>
    
      <a class="item" href="/introduction/build-tools.html">
        Build Tools
      </a>
    
      <a class="item" href="/introduction/advanced-usage.html">
        Recipes
      </a>
    
      <a class="item" href="/introduction/glossary.html">
        Glossary
      </a>
    
  </div>
</div>
<div class="item">
  <div class="header">Usage</div>
  <div class="menu">
    
      <a class="item" href="/usage/theming.html">
        Theming
      </a>
    
      <a class="item" href="/usage/layout.html">
        Layouts
      </a>
    
  </div>
</div>
<div class="item">
  <div class=" header">Globals</div>
  <div class="menu">
    
      <a class="item" href="/globals/reset.html">
        Reset
        
      </a>
    
      <a class="item" href="/globals/site.html">
        Site
        
      </a>
    
  </div>
</div>
<div class="item">
  <div class=" header">Elements</div>
  <div class="menu">
    
      <a class="item" href="/elements/button.html">
        Button
        
      </a>
    
      <a class="item" href="/elements/container.html">
        Container
        
      </a>
    
      <a class="item" href="/elements/divider.html">
        Divider
        
      </a>
    
      <a class="item" href="/elements/flag.html">
        Flag
        
      </a>
    
      <a class="item" href="/elements/header.html">
        Header
        
      </a>
    
      <a class="item" href="/elements/icon.html">
        Icon
        
      </a>
    
      <a class="item" href="/elements/image.html">
        Image
        
      </a>
    
      <a class="item" href="/elements/input.html">
        Input
        
      </a>
    
      <a class="item" href="/elements/label.html">
        Label
        
      </a>
    
      <a class="item" href="/elements/list.html">
        List
        
      </a>
    
      <a class="item" href="/elements/loader.html">
        Loader
        
      </a>
    
      <a class="item" href="/elements/placeholder.html">
        Placeholder
        
      </a>
    
      <a class="item" href="/elements/rail.html">
        Rail
        
      </a>
    
      <a class="item" href="/elements/reveal.html">
        Reveal
        
      </a>
    
      <a class="item" href="/elements/segment.html">
        Segment
        
      </a>
    
      <a class="item" href="/elements/step.html">
        Step
        
      </a>
    
  </div>
</div>
<div class="item">
  <div class=" header">Collections</div>
  <div class="menu">
    
      <a class="item" href="/collections/breadcrumb.html">
        Breadcrumb
        
      </a>
    
      <a class="item" href="/collections/form.html">
        Form
        
      </a>
    
      <a class="item" href="/collections/grid.html">
        Grid
        
      </a>
    
      <a class="item" href="/collections/menu.html">
        Menu
        
      </a>
    
      <a class="item" href="/collections/message.html">
        Message
        
      </a>
    
      <a class="item" href="/collections/table.html">
        Table
        
      </a>
    
  </div>
</div>
<div class="item">
  <div class=" header">Views</div>
  <div class="menu">
    
      <a class="item" href="/views/advertisement.html">
        Advertisement
        
      </a>
    
      <a class="item" href="/views/card.html">
        Card
        
      </a>
    
      <a class="item" href="/views/comment.html">
        Comment
        
      </a>
    
      <a class="item" href="/views/feed.html">
        Feed
        
      </a>
    
      <a class="item" href="/views/item.html">
        Item
        
      </a>
    
      <a class="item" href="/views/statistic.html">
        Statistic
        
      </a>
    
  </div>
</div>
<div class="item">
  <div class=" header">Modules</div>
  <div class="menu">
    
      <a class="item" href="/modules/accordion.html">
        Accordion
        
      </a>
  
      <a class="item" href="/modules/checkbox.html">
        Checkbox
        
      </a>
  
      <a class="item" href="/modules/dimmer.html">
        Dimmer
        
      </a>
  
      <a class="item" href="/modules/dropdown.html">
        Dropdown
        
      </a>
  
      <a class="item" href="/modules/embed.html">
        Embed
        
      </a>
  
      <a class="item" href="/modules/modal.html">
        Modal
        
      </a>
  
      <a class="item" href="/modules/popup.html">
        Popup
        
      </a>
  
      <a class="item" href="/modules/progress.html">
        Progress
        
      </a>
  
      <a class="item" href="/modules/rating.html">
        Rating
        
      </a>
  
      <a class="item" href="/modules/search.html">
        Search
        
      </a>
  
      <a class="item" href="/modules/shape.html">
        Shape
        
      </a>
  
      <a class="item" href="/modules/sidebar.html">
        Sidebar
        
      </a>
  
      <a class="item" href="/modules/sticky.html">
        Sticky
        
      </a>
  
      <a class="item" href="/modules/tab.html">
        Tab
        
      </a>
  
      <a class="item" href="/modules/transition.html">
        Transition
        
      </a>
  
  </div>
</div>
<div class="item">
  <div class="active  header">Behaviors</div>
  <div class="menu">
    
      <a class="active item" href="/behaviors/api.html">
        API
        
      </a>
    
      <a class="item" href="/behaviors/form.html">
        Form Validation
        
      </a>
    
      <a class="item" href="/behaviors/visibility.html">
        Visibility
        
      </a>
    
  </div>
</div>

</div>

<div class="ui black big launch right attached fixed button">
  <i class="content icon"></i>
  <span class="text">Menu</span>
</div>
  




<div class="ui fixed inverted main menu">
  <div class="ui container">
    <a class="launch icon item">
      <i class="content icon"></i>
    </a>
    
      <div class="item">
        API
      </div>
    
    <div class="right menu">
      
      <div class="vertically fitted borderless item">
        <iframe class="github" src="//ghbtns.com/github-btn.html?user=semantic-org&amp;repo=semantic-ui&amp;type=watch&amp;count=true" allowtransparency="true" frameborder="0" scrolling="0" width="100" height="20"></iframe>
      </div>
      
      <!--
      <div class="item">
        <div class="ui hidden right aligned search input" id="search">
          <div class="ui transparent icon input">
            <input class="prompt" type="text" placeholder="Search...">
            <i class="inverted search link icon" data-content="Search UI"></i>
          </div>
          <div class="results"></div>
        </div>
      </div>
      -->
    </div>
  </div>
</div>

  <div class="pusher">
    <div class="full height">
      <div class="toc">
        <div class="ui vertical inverted menu">
          








<div class="item">
  <a class="ui logo icon image" href="/">
    <img src="/images/logo.png">
  </a>
  <a href="/"><b>UI Docs</b></a>
</div>
<a class="item" href="/introduction/getting-started.html">
  <b>Getting Started</b>
</a>
<a class="item" href="/introduction/new.html">
  <b>New in 2.4</b>
</a>
<div class="item">
  <div class="header">Introduction</div>
  <div class="menu">
    
      <a class="item" href="/introduction/integrations.html">
        Integrations
      </a>
    
      <a class="item" href="/introduction/build-tools.html">
        Build Tools
      </a>
    
      <a class="item" href="/introduction/advanced-usage.html">
        Recipes
      </a>
    
      <a class="item" href="/introduction/glossary.html">
        Glossary
      </a>
    
  </div>
</div>
<div class="item">
  <div class="header">Usage</div>
  <div class="menu">
    
      <a class="item" href="/usage/theming.html">
        Theming
      </a>
    
      <a class="item" href="/usage/layout.html">
        Layouts
      </a>
    
  </div>
</div>
<div class="item">
  <div class=" header">Globals</div>
  <div class="menu">
    
      <a class="item" href="/globals/reset.html">
        Reset
        
      </a>
    
      <a class="item" href="/globals/site.html">
        Site
        
      </a>
    
  </div>
</div>
<div class="item">
  <div class=" header">Elements</div>
  <div class="menu">
    
      <a class="item" href="/elements/button.html">
        Button
        
      </a>
    
      <a class="item" href="/elements/container.html">
        Container
        
      </a>
    
      <a class="item" href="/elements/divider.html">
        Divider
        
      </a>
    
      <a class="item" href="/elements/flag.html">
        Flag
        
      </a>
    
      <a class="item" href="/elements/header.html">
        Header
        
      </a>
    
      <a class="item" href="/elements/icon.html">
        Icon
        
      </a>
    
      <a class="item" href="/elements/image.html">
        Image
        
      </a>
    
      <a class="item" href="/elements/input.html">
        Input
        
      </a>
    
      <a class="item" href="/elements/label.html">
        Label
        
      </a>
    
      <a class="item" href="/elements/list.html">
        List
        
      </a>
    
      <a class="item" href="/elements/loader.html">
        Loader
        
      </a>
    
      <a class="item" href="/elements/placeholder.html">
        Placeholder
        
      </a>
    
      <a class="item" href="/elements/rail.html">
        Rail
        
      </a>
    
      <a class="item" href="/elements/reveal.html">
        Reveal
        
      </a>
    
      <a class="item" href="/elements/segment.html">
        Segment
        
      </a>
    
      <a class="item" href="/elements/step.html">
        Step
        
      </a>
    
  </div>
</div>
<div class="item">
  <div class=" header">Collections</div>
  <div class="menu">
    
      <a class="item" href="/collections/breadcrumb.html">
        Breadcrumb
        
      </a>
    
      <a class="item" href="/collections/form.html">
        Form
        
      </a>
    
      <a class="item" href="/collections/grid.html">
        Grid
        
      </a>
    
      <a class="item" href="/collections/menu.html">
        Menu
        
      </a>
    
      <a class="item" href="/collections/message.html">
        Message
        
      </a>
    
      <a class="item" href="/collections/table.html">
        Table
        
      </a>
    
  </div>
</div>
<div class="item">
  <div class=" header">Views</div>
  <div class="menu">
    
      <a class="item" href="/views/advertisement.html">
        Advertisement
        
      </a>
    
      <a class="item" href="/views/card.html">
        Card
        
      </a>
    
      <a class="item" href="/views/comment.html">
        Comment
        
      </a>
    
      <a class="item" href="/views/feed.html">
        Feed
        
      </a>
    
      <a class="item" href="/views/item.html">
        Item
        
      </a>
    
      <a class="item" href="/views/statistic.html">
        Statistic
        
      </a>
    
  </div>
</div>
<div class="item">
  <div class=" header">Modules</div>
  <div class="menu">
    
      <a class="item" href="/modules/accordion.html">
        Accordion
        
      </a>
  
      <a class="item" href="/modules/checkbox.html">
        Checkbox
        
      </a>
  
      <a class="item" href="/modules/dimmer.html">
        Dimmer
        
      </a>
  
      <a class="item" href="/modules/dropdown.html">
        Dropdown
        
      </a>
  
      <a class="item" href="/modules/embed.html">
        Embed
        
      </a>
  
      <a class="item" href="/modules/modal.html">
        Modal
        
      </a>
  
      <a class="item" href="/modules/popup.html">
        Popup
        
      </a>
  
      <a class="item" href="/modules/progress.html">
        Progress
        
      </a>
  
      <a class="item" href="/modules/rating.html">
        Rating
        
      </a>
  
      <a class="item" href="/modules/search.html">
        Search
        
      </a>
  
      <a class="item" href="/modules/shape.html">
        Shape
        
      </a>
  
      <a class="item" href="/modules/sidebar.html">
        Sidebar
        
      </a>
  
      <a class="item" href="/modules/sticky.html">
        Sticky
        
      </a>
  
      <a class="item" href="/modules/tab.html">
        Tab
        
      </a>
  
      <a class="item" href="/modules/transition.html">
        Transition
        
      </a>
  
  </div>
</div>
<div class="item">
  <div class="active  header">Behaviors</div>
  <div class="menu">
    
      <a class="active item" href="/behaviors/api.html">
        API
        
      </a>
    
      <a class="item" href="/behaviors/form.html">
        Form Validation
        
      </a>
    
      <a class="item" href="/behaviors/visibility.html">
        Visibility
        
      </a>
    
  </div>
</div>

        </div>
      </div>
      <div class="article">
        <script src="/javascript/library/serialize-object.js"></script>
<script src="/javascript/api.js"></script>



<div class="ui masthead vertical tab segment">
  <div class="ui container">
    <div class="introduction">

      <h1 class="ui header">
        API
        
        <div class="sub header">
          
          <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" class="twitter-share-button twitter-share-button-rendered twitter-tweet-button" style="position: static; visibility: visible; width: 60px; height: 20px;" title="Twitter Tweet Button" src="https://platform.twitter.com/widgets/tweet_button.9e36650065da04ebaceb904a35d79d9c.en.html#dnt=false&amp;id=twitter-widget-0&amp;lang=en&amp;original_referer=https%3A%2F%2Fsemantic-ui.com%2Fbehaviors%2Fapi.html%23%2Fbehaviors&amp;size=m&amp;text=Semantic%20UI%20is%20a%20next%20generation%20UI%20framework&amp;time=1537425857763&amp;type=share&amp;url=http%3A%2F%2Fsemantic-ui.com&amp;via=semanticui" data-url="http://semantic-ui.com"></iframe>
          <script type="text/javascript">
          window.twttr=(function(d,s,id){var t,js,fjs=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return}js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);return window.twttr||(t={_e:[],ready:function(f){t._e.push(f)}})}(document,"script","twitter-wjs"));
          </script>
          <iframe class="github" src="//ghbtns.com/github-btn.html?user=semantic-org&amp;repo=semantic-ui&amp;type=watch&amp;count=true" allowtransparency="true" frameborder="0" scrolling="0" width="100" height="20"></iframe>
          
          API allows elements to trigger actions on a server
        </div>
      </h1>

      <div class="ui hidden divider"></div>

      <div class="ui right floated main menu">
        <a class="bug popup icon item" data-content="Edit This Page" href="https://github.com/Semantic-Org/Semantic-UI-Docs/edit/master/server/documents/behaviors/api.html.eco">
          <i class="edit icon"></i>
        </a>
        
        <a class="github popup icon item" data-content="View project on GitHub" href="https://github.com/Semantic-Org/Semantic-UI">
          <i class="alternate github icon"></i>
        </a>
      </div>
      <div class="ui right floated main menu">
        <a class="music popup icon item" data-content="Play Music">
          <i class="music icon"></i>
        </a>
        <div class="ui language dropdown right floating icon item" id="languages" data-content="Select Language">
          <i class="world icon"></i>
          <div class="menu">
            <div class="header">Select Language</div>
            <div class="ui icon search input">
              <i class="search icon"></i>
              <input type="text" placeholder="Search languages...">
            </div>
            <div class="scrolling menu">
  <div class="item" data-percent="100" data-value="en" data-english="English">
    <span class="description">English</span>
    English
  </div>
  <div class="item" data-percent="94" data-value="da" data-english="Danish">
    <span class="description">dansk</span>
    Danish
  </div>
  <div class="item" data-percent="94" data-value="es" data-english="Spanish">
    <span class="description">Español</span>
    Spanish
  </div>
  <div class="item" data-percent="34" data-value="zh" data-english="Chinese">
    <span class="description">简体中文</span>
    Chinese
  </div>
  <div class="item" data-percent="54" data-value="zh_TW" data-english="Chinese (Taiwan)">
    <span class="description">中文 (臺灣)</span>
    Chinese (Taiwan)
  </div>
  <div class="item" data-percent="79" data-value="fa" data-english="Persian">
    <span class="description">پارسی</span>
    Persian
  </div>
  <div class="item" data-percent="41" data-value="fr" data-english="French">
    <span class="description">Français</span>
    French
  </div>
  <div class="item" data-percent="37" data-value="el" data-english="Greek">
    <span class="description">ελληνικά</span>
    Greek
  </div>
  <div class="item" data-percent="37" data-value="ru" data-english="Russian">
    <span class="description">Русский</span>
    Russian
  </div>
  <div class="item" data-percent="36" data-value="de" data-english="German">
    <span class="description">Deutsch</span>
    German
  </div>
  <div class="item" data-percent="23" data-value="it" data-english="Italian">
    <span class="description">Italiano</span>
    Italian
  </div>
  <div class="item" data-percent="21" data-value="nl" data-english="Dutch">
    <span class="description">Nederlands</span>
    Dutch
  </div>
  <div class="item" data-percent="19" data-value="pt_BR" data-english="Portuguese">
    <span class="description">Português(BR)</span>
    Portuguese
  </div>
  <div class="item" data-percent="17" data-value="id" data-english="Indonesian">
    <span class="description">Indonesian</span>
    Indonesian
  </div>
  <div class="item" data-percent="12" data-value="lt" data-english="Lithuanian">
    <span class="description">Lietuvių</span>
    Lithuanian
  </div>
  <div class="item" data-percent="11" data-value="tr" data-english="Turkish">
    <span class="description">Türkçe</span>
    Turkish
  </div>
  <div class="item" data-percent="10" data-value="kr" data-english="Korean">
    <span class="description">한국어</span>
    Korean
  </div>
  <div class="item" data-percent="7" data-value="ar" data-english="Arabic">
    <span class="description">العربية</span>
    Arabic
  </div>
  <div class="item" data-percent="6" data-value="hu" data-english="Hungarian">
    <span class="description">Magyar</span>
    Hungarian
  </div>
  <div class="item" data-percent="6" data-value="vi" data-english="Vietnamese">
    <span class="description">tiếng Việt</span>
    Vietnamese
  </div>
  <div class="item" data-percent="5" data-value="sv" data-english="Swedish">
    <span class="description">svenska</span>
    Swedish
  </div>
  <div class="item" data-precent="4" data-value="pl" data-english="Polish">
    <span class="description">polski</span>
    Polish
  </div>
  <div class="item" data-percent="6" data-value="ja" data-english="Japanese">
    <span class="description">日本語</span>
    Japanese
  </div>
  <div class="item" data-percent="0" data-value="ro" data-english="Romanian">
    <span class="description">românește</span>
    Romanian
  </div>
</div>

          </div>
        </div>
      </div>

      
      
      
    </div>
    <div class="advertisement">
      
      <script async="" type="text/javascript" src="//cdn.carbonads.com/carbon.js?zoneid=1673&amp;serve=C6AILKT&amp;placement=semanticuicom" id="_carbonads_js"></script><div id="carbonads"><span><span class="carbon-wrap"><a href="//srv.carbonads.net/ads/click/x/GTND42QICABD653EC6ALYKQMCKSIC23UC67D4Z3JCW7I5K7LCVAIKK3KC6BIC27WCV7I6K3EHJNCLSIZ?segment=placement:semanticuicom;" class="carbon-img" target="_blank" rel="noopener"><img src="https://cdn4.buysellads.net/uu/1/3386/1525189943-38523.png" alt="" border="0" height="100" width="130" style="max-width: 130px;"></a><a href="//srv.carbonads.net/ads/click/x/GTND42QICABD653EC6ALYKQMCKSIC23UC67D4Z3JCW7I5K7LCVAIKK3KC6BIC27WCV7I6K3EHJNCLSIZ?segment=placement:semanticuicom;" class="carbon-text" target="_blank" rel="noopener">Limited time offer: Get 10 free Adobe Stock images.</a></span><a href="http://carbonads.net/?utm_source=semanticuicom&amp;utm_medium=ad_via_link&amp;utm_campaign=in_unit&amp;utm_term=carbon" class="carbon-poweredby" target="_blank" rel="noopener">ads via Carbon</a></span></div>
      
    </div>
    
    
    
    
    
      
        
      
        
      
        
      
        
      
      <div class="ui four item stackable tabs menu">
        
          <a class="item" data-tab="overview">Overview</a>
          
        
          <a class="item active" data-tab="usage">Usage</a>
          
        
          <a class="item" data-tab="behaviors">Behaviors</a>
          
        
          <a class="item" data-tab="settings">Settings</a>
          
        
      </div>
    
  </div>
</div>

  <script src="//m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
  <div class="bsa-cpc"></div>
  <script>
    (function(){
      if(typeof _bsa !== 'undefined' && _bsa) {
      _bsa.init('default', 'CVAIKK7I', 'placement:semanticuicom', {
        target: '.bsa-cpc',
        align: 'horizontal',
        disable_css: 'true'
      });
        }
    })();
  </script>
  <div class="ui vertical beg transition hidden segment">
    <i class="large red delete link icon"></i>
    <div class="ui red header">
      <i class="disabled warning sign icon"></i>
      <div class="content">
        Want to Support Open Source? Whitelist Your Ad-Blocker.
        <div class="sub header">
          We promise to not show more than one small ad per page. Dont worry, hiding this message will make sure you won't get nagged again.
        </div>
      </div>
    </div>
  </div>



<div class="main ui container">
  <div class="ui intro tab" data-tab="overview">

    <div class="test example">
      <h4 class="ui header">Integrates Seamlessly with UI</h4><i class="fitted icon code"></i><a class="anchor" id="integrates-seamlessly-with-ui"></a>
      <p>API is designed to make the process of integrating data sources to UI components seamless, <a href="#api-state-management">tying API request state</a> to UI states automatically.</p>
      <p>For example adding an API behavior to an <a href="/elements/input.html"><code>input</code></a> will occur <code>oninput</code>, while a <a href="/elements/button.html"><code>button</code></a>, will query the server <code>onclick</code>.</p>
      <div class="ui icon input">
        <i class="search icon"></i>
        <input type="text" placeholder="Type here...">
      </div>
      <div class="ui hidden divider"></div>
      <div class="ui primary button">Click Me</div>
      <div class="ui disabled button">Disabled</div>
    </div>

    <div class="no example">
      <h4 class="ui header">Preserve Templated URLs</h4><i class="fitted icon code"></i><a class="anchor" id="preserve-templated-urls"></a>
      <p>API helps you decouple URLs from your code. Use named API actions like <code>get followers</code> instead of URLs like <code>http://foo.com/get/1.0/followers.json</code> in your code.</p>
      <div class="ignored code" data-type="javascript">
      $('.button')
        .api({
          action: 'get followers'
        })
      ;
      </div>
      <p>Centrally manage your entire API making sure you aren't caught modifying urls across your codebase. Define your endpoints using an <a href="#api-actions">intuitive templating system</a> that <a href="#passing-data">automatically passes data</a> found in your UI.</p>
      <div class="ignored code" data-type="javascript">
        $.fn.api.settings.api = {
          'get followers' : '/followers/{id}?results={count}',
          'create user'   : '/create',
          'add user'      : '/add/{id}',
          'search'        : '/query/{query}/{/sort}'
        };
      </div>
    </div>

    <div class="no example">
      <h4 class="ui header">HTTP 200 is Not Success</h4><i class="fitted icon code"></i><a class="anchor" id="http-200-is-not-success"></a>
      <p>Parse your JSON for <code>success</code> conditions before callbacks fire, making sure server errors caught correctly, still trigger error conditions in your front end code.</p>
      <div class="ignored code">
        // Responses without this status will trigger error conditions
        $.fn.api.settings.successTest = function(response) {
          return response.status == 'OK';
        }
      </div>
    </div>

    <div class="no example">
      <h4 class="ui header">Translate APIs on the Fly</h4><i class="fitted icon code"></i><a class="anchor" id="translate-apis-on-the-fly"></a>
      <p>Using a third party API that uses some unruly code? Not a problem! API lets you <a href="/introduction/new.html#translates-any-api">modify an APIs raw JSON response</a> before it is consumed by your code.</p>
    </div>

    <div class="no example">
      <h4 class="ui header">Tools for Third-Party Integrations &amp; Mocking</h4><i class="fitted icon code"></i><a class="anchor" id="tools-for-third-party-integrations--mocking"></a>
      <p>New powerful callbacks like <a href="#fulfilling-responses"><code>response</code></a> and <a href="#using-custom-backends"><code>responseAsync</code></a> let you asynchronously mock responses and trigger the same callbacks as your API.</p>
    </div>


  </div>

  <div class="ui intro tab active" data-tab="usage">
    <div class="fixed column">
      <div class="demo content ui sticky fixed top" style="width: 300px !important; height: 458.156px !important; margin-top: 30px; left: 1024px;">
        <h4 class="ui sub header">API Example</h4>
        <div class="ui fluid card">
          <div class="image">
            <img src="/images/avatar2/large/patrick.png">
          </div>
          <div class="content">
            <a class="header">Patrick Russel</a>
            <div class="description">Patrick lives in San Francisco, and studies french literature.</div>
          </div>
          <div class="ui bottom attached follow button" data-id="22">Follow</div>
        </div>
      </div>
    </div>
    <div class="examples"><div class="ui dividing right rail"><div class="ui sticky"><h4 class="ui header">Api</h4><div class="ui vertical following fluid accordion text menu"><div class="item active"><a class="active title"><i class="dropdown icon"></i> <b>Creating an API</b></a><div class="active content menu"><a class="item active" href="#api-actions">API Actions</a><a class="item" href="#required-parameters">Required Parameters</a><a class="item" href="#optional-parameters">Optional Parameters</a><a class="item" href="#creating-your-api">Creating your API</a><a class="item" href="#using-urls">Using URLs</a></div></div><div class="item"><a class="title"><i class="dropdown icon"></i> <b>Querying API Actions</b></a><div class="content menu"><a class="item" href="#attaching-api-events">Attaching API Events</a><a class="item" href="#specifying-dom-events">Specifying DOM Events</a><a class="item" href="#calling-immediately">Calling Immediately</a></div></div><div class="item"><a class="title"><i class="dropdown icon"></i> <b>Setting-up Requests</b></a><div class="content menu"><a class="item" href="#routing-data-to-urls">Routing Data to URLs</a><a class="item" href="#1-automatically-routed-url-variables">1. Automatically Routed URL Variables</a><a class="item" href="#2-url-variables-specified-in-data-attributes">2. URL Variables Specified in Data Attributes</a><a class="item" href="#3-settings-specified-in-javascript">3. Settings Specified in Javascript</a><a class="item" href="#4-settings-returned-from-beforesend">4. Settings Returned from beforeSend</a></div></div><div class="item"><a class="title"><i class="dropdown icon"></i> <b>Adjusting Requests</b></a><div class="content menu"><a class="item" href="#modifying-xhr">Modifying XHR</a><a class="item" href="#disabling-requests">Disabling Requests</a><a class="item" href="#cancelling-requests">Cancelling Requests</a></div></div><div class="item"><a class="title"><i class="dropdown icon"></i> <b>Passing Data</b></a><div class="content menu"><a class="item" href="#1-routed-form-data">1. Routed Form Data</a><a class="item" href="#structured-data-example">Structured Data Example</a><a class="item" href="#2-data-routed-in-javascript">2. Data Routed in Javascript</a><a class="item" href="#3-data-added-in-beforesend">3. Data Added in beforeSend</a></div></div><div class="item"><a class="title"><i class="dropdown icon"></i> <b>Server Responses</b></a><div class="content menu"><a class="item" href="#response-callbacks">Response Callbacks</a><a class="item" href="#determining-json-success">Determining JSON Success</a><a class="item" href="#modifying-response-json">Modifying Response JSON</a></div></div><div class="item"><a class="title"><i class="dropdown icon"></i> <b>Controlling State</b></a><div class="content menu"><a class="item" href="#ui-state">UI State</a><a class="item" href="#text-state">Text State</a></div></div><div class="item"><a class="title"><i class="dropdown icon"></i> <b>Advanced Use</b></a><div class="content menu"><a class="item" href="#fulfilling-responses">Fulfilling Responses</a><a class="item" href="#using-custom-backends">Using Custom Backends</a></div></div></div></div></div>

      <h2 class="ui dividing header">Creating an API<a class="anchor" id="creating-an-api"></a></h2>

      <div class="no example">
        <h4 class="ui header">API Actions</h4><i class="fitted icon code"></i><a class="anchor" id="api-actions"></a>
        <p><b>API</b> works by defining a set of server actions which interface elements can query. Actions are usually represented by short phrases, things like <code>save profile</code>, or <code>get followers</code> which correspond to a templated URL resource on the server.</p>
        <p>URL variables specified in actions are substituted at run-time allowing individual components to query different URLs.</p>
        <p>URLs listed in your API can include <b>required parameters</b> and <b>optional parameters</b> which may be adjusted for each call.</p>
      </div>
      <div class="no example">
        <h4 class="ui header">Required Parameters</h4><i class="fitted icon code"></i><a class="anchor" id="required-parameters"></a>
        <div class="ui large bulleted list">
          <div class="item">Uses format <code>{variable}</code></div>
          <div class="item"><b>Will abort the request</b> if they cannot be found.</div>
        </div>
        <div class="ui existing segment"><pre><code class="code javascript"><span class="comment">/* Two required variables */</span>
$.fn.api.settings.api = {
  <span class="string">'get followers'</span> : <span class="string">'/followers/{id}?results={count}'</span>
};</code></pre></div>
      </div>
      <div class="no example">
        <h4 class="ui header">Optional Parameters</h4><i class="fitted icon code"></i><a class="anchor" id="optional-parameters"></a>
        <div class="ui large bulleted list">
          <div class="item">Uses format <code>{/variable}</code></div>
          <div class="item">Will <b>not</b> abort the request if they cannot be found.</div>
          <div class="item"><b>Will be removed</b> from the URL automatically if not available.</div>
          <div class="item">Any preceding slash before an optional parameter will be removed from the URL, allowing you to include them in resource paths.</div>
        </div>
        <div class="ui existing segment"><pre><code class="code javascript"><span class="comment">/* One required, one optional variable */</span>
$.fn.api.settings.api = {
  <span class="string">'get followers'</span> : <span class="string">'/followers/{id}/{/sort}'</span>
};</code></pre></div>
      </div>

      <div class="no example">
        <h4 class="ui header">Creating your API</h4><i class="fitted icon code"></i><a class="anchor" id="creating-your-api"></a>
        <p>You should define your endpoints <b>once in your application</b>. Usually this is done in a central configuration file included on each page.</p>
        <p>These named API endpoints are stored globally in <code>$.fn.api.settings.api</code>.</p>
        <p>Keeping your endpoints defined in one place makes sure when you update your application you will only need to update a single location with new URLs.</p>
        <div class="ui existing segment"><pre><code class="code javascript"><span class="comment">/* Define API endpoints once globally */</span>
$.fn.api.settings.api = {
  <span class="string">'get followers'</span> : <span class="string">'/followers/{id}?results={count}'</span>,
  <span class="string">'create user'</span>   : <span class="string">'/create'</span>,
  <span class="string">'add user'</span>      : <span class="string">'/add/{id}'</span>,
  <span class="string">'follow user'</span>   : <span class="string">'/follow/{id}'</span>,
  <span class="string">'search'</span>        : <span class="string">'/search/?query={value}'</span>
};</code></pre></div>
      </div>

      <div class="no example">
        <h4 class="ui header">Using URLs</h4><i class="fitted icon code"></i><a class="anchor" id="using-urls"></a>
        <p>Named API actions are not required to use API, you can also manually specify the URL for a request and use the same templating:</p>
        <div class="ui existing segment"><pre><code class="code javascript">$(<span class="string">'.search.button'</span>)
  .api({
    url: <span class="string">'http://www.google.com?q={value}'</span>
  })
;</code></pre></div>
      </div>

      <h2 class="ui dividing header">Querying API Actions<a class="anchor" id="querying-api-actions"></a></h2>

      <div class="no example">
        <div class="ui info message">
          <p>The following examples work best while viewing <code>console</code> logs in your web console.</p>
        </div>
        <i class="fitted icon code"></i><h4 class="ui header">Attaching API Events</h4><a class="anchor" id="attaching-api-events"></a>

        <p>API events are triggered by attaching named actions to elements on your page. These actions look up named endpoints in your API translating templated values from your element for each call.</p>

        <p>Any element can have an API action attached directly to it. By default the action will occur on the most appropriate event for the type of element. For example a button will call your server <code>onclick</code>, an input <code>oninput</code>, or a form <code>onsubmit</code>.</p>

        <p>API actions and data can be specified in Javascript on initialization:</p>
        <div class="ui existing segment"><pre><code class="code xml"><span class="tag">&lt;<span class="title">div</span> <span class="attribute">class</span>=<span class="value">"ui follow button"</span>&gt;</span>
  Follow
<span class="tag">&lt;/<span class="title">div</span>&gt;</span></code></pre></div>
        <div class="ui existing segment"><pre><code class="evaluated code bash">// translates <span class="string">'/follow/{id}'</span> to <span class="string">'follow/22'</span>
$(<span class="string">'.follow.button'</span>)
  .api({
    action: <span class="string">'follow user'</span>,
    urlData: {
      id: <span class="number">22</span>
    }
  })
;</code></pre></div>
        <div class="ui horizontal divider">Or</div>

        <p>API actions and data can also be specified in metadata:</p>
        <div class="ui existing segment"><pre><code class="code xml"><span class="tag">&lt;<span class="title">div</span> <span class="attribute">class</span>=<span class="value">"ui follow button"</span> <span class="attribute">data-action</span>=<span class="value">"follow user"</span> <span class="attribute">data-id</span>=<span class="value">"22"</span>&gt;</span>
  Follow
<span class="tag">&lt;/<span class="title">div</span>&gt;</span></code></pre></div>
        <div class="ui existing segment"><pre><code class="code javascript"><span class="comment">// also calls '/follow/22'</span>
$(<span class="string">'.follow.button'</span>)
  .api()
;</code></pre></div>
      </div>

      <div class="no example">
        <h4 class="ui header">Specifying DOM Events</h4><i class="fitted icon code"></i><a class="anchor" id="specifying-dom-events"></a>
        <p>If you need to override what action an API event occurs on you can use the <code>on</code> parameter.</p>
        <div class="ui message">
          API requests for the following demos have been faked using API's <code>response</code> setting to avoid rate throttling from public APIs. No actual data is returned.
        </div>
        <a class="ui black pointing below ignored label">Run Code</a><div class="ui existing segment"><pre><code class="code javascript">$(<span class="string">'.follow.button'</span>)
  .api({
    action: <span class="string">'follow user'</span>,
    on: <span class="string">'mouseenter'</span>
  })
;</code></pre></div>
      </div>

      <div class="no example">
        <h4 class="ui header">Calling Immediately</h4><i class="fitted icon code"></i><a class="anchor" id="calling-immediately"></a>
        <p>If you require API action to occur immediately use <code>on: 'now'</code>. This will still trigger the same state updates to the invoked element, but will occur immediately.</p>
        <p>
        </p><a class="ui black pointing below ignored label">Run Code</a><div class="ui existing segment"><pre><code class="code javascript">$(<span class="string">'.follow.button'</span>)
  .api({
    action: <span class="string">'follow user'</span>,
    on: <span class="string">'now'</span>
  })
;</code></pre></div>
        <p>Keep in mind passing a new settings object will destroy the previous instance, and all its settings and events. If you want to preserve the previous instance, you can trigger a new request with the <code>query</code> behavior.</p>
        <a class="ui black pointing below ignored label">Run Code</a><div class="ui existing segment"><pre><code class="code javascript"><span class="comment">// set-up API button with events</span>
$(<span class="string">'.follow.button'</span>)
  .api({
    action: <span class="string">'follow user'</span>
  })
;
<span class="comment">// do an immediate query</span>
$(<span class="string">'.follow.button'</span>)
  .api(<span class="string">'query'</span>)
;</code></pre></div>
      </div>

      <h2 class="ui dividing header">Setting-up Requests<a class="anchor" id="setting-up-requests"></a></h2>

      <div class="no example">
        <h4 class="ui header">Routing Data to URLs</h4><i class="fitted icon code"></i><a class="anchor" id="routing-data-to-urls"></a>
        <p>If your API URLs include templated variables they will be replaced during your request by one of four possible ways, listed in of inheritance.</p>
        <p>All parameters used in a URL are encoded using <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/encodeURIComponent" target="_blank"><code>encodeURIComponent</code></a> by default, to prevent from malicious strings from affecting your query. To disable this feature you can set <a href="#settings"><code>encodeParameters: false</code></a>.
      </p></div>

      <div class="no routed example">
        <h4 class="ui header">1. Automatically Routed URL Variables</h4><i class="fitted icon code"></i><a class="anchor" id="1-automatically-routed-url-variables"></a>
        <p>Some special values will be automatically replaced if specified in URL actions.</p>
        <table class="ui definition table">
          <thead>
            <tr>
              <th>Variable</th>
              <th>Description</th>
              <th>Available for</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>text</td>
              <td>current text value of element</td>
              <td>All elements</td>
            </tr>
            <tr>
              <td>value</td>
              <td>current input value of element</td>
              <td>Input elements</td>
            </tr>
          </tbody>
        </table>
        <div class="ui existing segment"><pre><code class="code xml"><span class="tag">&lt;<span class="title">div</span> <span class="attribute">class</span>=<span class="value">"ui search icon input"</span>&gt;</span>
  <span class="tag">&lt;<span class="title">i</span> <span class="attribute">class</span>=<span class="value">"search icon"</span>&gt;</span><span class="tag">&lt;/<span class="title">i</span>&gt;</span>
  <span class="tag">&lt;<span class="title">input</span> <span class="attribute">type</span>=<span class="value">"text"</span> <span class="attribute">class</span>=<span class="value">"search"</span>&gt;</span>
<span class="tag">&lt;/<span class="title">div</span>&gt;</span></code></pre></div><div class="ui search icon input">
            <i class="search icon"></i>
            <input type="text" class="search">
          </div>
        <div class="ui existing segment"><pre><code class="evaluated code javascript">$.fn.api.settings.api.search = <span class="string">'/search/?query={value}'</span>;
 $(<span class="string">'.routed.example .search input'</span>)
  .api({
    action       : <span class="string">'search'</span>,
    stateContext : <span class="string">'.ui.input'</span>
  })
;</code></pre></div>
      </div>

      <div class="no example">
        <h4 class="ui header">2. URL Variables Specified in Data Attributes</h4><i class="fitted icon code"></i><a class="anchor" id="2-url-variables-specified-in-data-attributes"></a>
        <p>You can include URL values as HTML5 metadata attributes.</p>
        <p>This is often the easiest way to include unique URL data for each triggering element. For example, many follow buttons will trigger the same endpoint, but each will have its own user id.</p>
        <div class="ui ignored large warning message">
          Only variables specified in your API's URL will be searched for in metadata.
        </div>
        <div class="ui existing segment"><pre><code class="code xml"><span class="tag">&lt;<span class="title">div</span> <span class="attribute">class</span>=<span class="value">"ui button"</span> <span class="attribute">data-id</span>=<span class="value">"11"</span>&gt;</span>
  Follow Sally
<span class="tag">&lt;/<span class="title">div</span>&gt;</span>
<span class="tag">&lt;<span class="title">div</span> <span class="attribute">class</span>=<span class="value">"ui button"</span> <span class="attribute">data-id</span>=<span class="value">"22"</span>&gt;</span>
  Follow Jenny
<span class="tag">&lt;/<span class="title">div</span>&gt;</span></code></pre></div>
        <div class="ui existing segment"><pre><code class="code javascript"><span class="comment">// requests different URLs for each button</span>
$(<span class="string">'.follow.button'</span>)
  .api({
    action: <span class="string">'follow user'</span>
  })
;</code></pre></div>
      </div>

      <div class="no example">
        <h4 class="ui header">3. Settings Specified in Javascript</h4><i class="fitted icon code"></i><a class="anchor" id="3-settings-specified-in-javascript"></a>
        <p>URL variables and GET/POST data can be specified at run-time in the Javascript object.</p>
        <div class="ui existing segment"><pre><code class="code javascript">$(<span class="string">'.follow.button'</span>)
  .api({
    action : <span class="string">'follow user'</span>,
    method : <span class="string">'POST'</span>,
    <span class="comment">// Substituted into URL</span>
    urlData: {
      id: <span class="number">22</span>
    },
    <span class="comment">// passed via POST</span>
    data: {
      name: <span class="string">'Joe Henderson'</span>
    }
  })
;</code></pre></div>
      </div>

      <div class="no example">
        <h4 class="ui header">4. Settings Returned from beforeSend</h4><i class="fitted icon code"></i><a class="anchor" id="4-settings-returned-from-beforesend"></a>
        <p>All run settings, not just URL data, can be adjusted in a special callback <code>beforeSend</code> which occurs before the API request is sent.</p>
        <div class="ui info message">
          An additional callback <code>beforeXHR</code> lets you modify the XHR object before sending. This is different than beforeSend which is used <b>to modify settings</b> before send.
        </div>
        <div class="ui existing segment"><pre><code class="code javascript">$(<span class="string">'.follow.button'</span>)
  .api({
    action: <span class="string">'follow user'</span>,
    beforeSend: <span class="function"><span class="keyword">function</span>(<span class="params">settings</span>) </span>{
      settings.urlData = {
        id: <span class="number">22</span>
      };
      <span class="keyword">return</span> settings;
    }
    beforeXHR: <span class="function"><span class="keyword">function</span>(<span class="params">xhr</span>) </span>{
      <span class="comment">// adjust XHR with additional headers</span>
      xhr.setRequestHeader (<span class="string">'Authorization'</span>, <span class="string">'Basic XXXXXX'</span>);
      <span class="keyword">return</span> xhr;
    }
  })
;</code></pre></div>
      </div>

      <h2 class="ui dividing header">Adjusting Requests<a class="anchor" id="adjusting-requests"></a></h2>

      <div class="no example">
        <h4 class="ui header">Modifying XHR</h4><i class="fitted icon code"></i><a class="anchor" id="modifying-xhr"></a>
        <p>An additional callback <code>beforeXHR</code> lets you modify the XHR object before sending. This is useful for adjusting properties of the XHR request like modifying headers, before sending a request.</p>
        <div class="ui existing segment"><pre><code class="code javascript">$(<span class="string">'.follow.button'</span>)
  .api({
    action: <span class="string">'follow user'</span>,
    beforeXHR: <span class="function"><span class="keyword">function</span>(<span class="params">xhr</span>) </span>{
      <span class="comment">// adjust XHR with additional headers</span>
      xhr.setRequestHeader (<span class="string">'Authorization'</span>, <span class="string">'Basic XXXXXX'</span>);
      <span class="keyword">return</span> xhr;
    }
  })
;</code></pre></div>
      </div>

      <div class="no disabled example">
        <h4 class="ui header">Disabling Requests</h4><i class="fitted icon code"></i><a class="anchor" id="disabling-requests"></a>
        <p>As a convenience, API will automatically prevent requests from occurring on elements that are currently disabled.</p>
        <div class="ui disabled button">Disabled</div>
        <div class="ui existing segment"><pre><code class="evaluated code javascript"><span class="comment">// this will never occur</span>
$(<span class="string">'.disabled.button'</span>)
  .api({
    action: <span class="string">'follow user'</span>
  })
;</code></pre></div>
      </div>

      <div class="no example">
        <h4 class="ui header">Cancelling Requests</h4><i class="fitted icon code"></i><a class="anchor" id="cancelling-requests"></a>
        <p>BeforeSend can also be used to check for special conditions for a request to be made. If the <code>beforeSend</code> callback returns false, the request will be cancelled.</p>
        <a class="ui black pointing below ignored label">Run Code</a><div class="ui existing segment"><pre><code class="code javascript"><span class="comment">// set somewhere in your code</span>
<span class="built_in">window</span>.isLoggedIn = <span class="literal">false</span>;
 $(<span class="string">'.follow.button'</span>)
  .api({
    action: <span class="string">'follow user'</span>,
    beforeSend: <span class="function"><span class="keyword">function</span>(<span class="params">settings</span>) </span>{
      <span class="comment">// cancel request</span>
      <span class="keyword">if</span>(!isLoggedIn) {
        $(<span class="keyword">this</span>).state(<span class="string">'flash text'</span>, <span class="string">'Requires Login!'</span>);
        <span class="keyword">return</span> <span class="literal">false</span>;
      }
    }
  })
;</code></pre></div>
      </div>

      <h2 class="ui dividing header">Passing Data<a class="anchor" id="passing-data"></a></h2>

      <div class="example">
        <h4 class="ui header">1. Routed Form Data</h4><i class="fitted icon code"></i><a class="anchor" id="1-routed-form-data"></a>
        <p>When you use the <code>serializeForm</code> setting or attach API events on a form, API will automatically include the closest form in data sent to the server.</p>
        <p>Structured form data is beneficial over <a href="https://api.jquery.com/serialize/">jQuery's serialize</a> for several reasons:</p>
        <ul class="ui large list">
          <li><a href="https://github.com/macek/jquery-serialize-object" target="_blank">Serialize Object</a> correctly converts structured form names like <code>name="name[first]"</code> into nested object literals.</li>
          <li>Structured form data can be modified in Javascript in <code>beforeSend</code>.</li>
          <li>Form data will automatically be converted to their Javascript equivalents, for instance, checkboxes will be converted to <code>boolean</code> values.</li>
        </ul>
        <div class="ui ignored warning message">
          Structured form data requires including <a href="https://github.com/macek/jquery-serialize-object" target="_blank">macek's serialize object.</a>
        </div>
      </div>
      <div class="example">
        <h4 class="ui header">Structured Data Example</h4><i class="fitted icon code"></i><a class="anchor" id="structured-data-example"></a>
        <p>The following form shows some of the advantages of structured form data mentioned above.</p>
        <form class="ui form">
          <div class="two fields">
            <div class="field">
              <label>Name</label>
              <div class="two fields">
                <div class="field">
                  <input type="text" name="name[first]" placeholder="First Name">
                </div>
                <div class="field">
                  <input type="text" name="name[last]" placeholder="Last Name">
                </div>
              </div>
            </div>
            <div class="field">
              <label>Gender</label>
              <div class="ui selection dropdown" tabindex="0">
                <input type="hidden" name="gender">
                <div class="default text">Gender</div>
                <i class="dropdown icon"></i>
                <div class="menu" tabindex="-1">
                  <div class="item" data-value="male">Male</div>
                  <div class="item" data-value="female">Female</div>
                </div>
              </div>
            </div>
          </div>
          <div class="two fields">
            <div class="required field">
              <label>Username</label>
              <div class="ui icon input">
                <input type="text" name="username" placeholder="Username">
                <i class="user icon"></i>
              </div>
            </div>
            <div class="required field">
              <label>Password</label>
              <div class="ui icon input">
                <input type="password" name="password">
                <i class="lock icon"></i>
              </div>
            </div>
          </div>
          <div class="ui submit button">Submit</div>
        </form>
        <div class="ui existing segment"><pre><code class="evaluated code javascript">$(<span class="string">'form .submit.button'</span>)
  .api({
    action: <span class="string">'create user'</span>,
    serializeForm: <span class="literal">true</span>,
    data: {
      foo: <span class="string">'baz'</span>
    },
    beforeSend: <span class="function"><span class="keyword">function</span>(<span class="params">settings</span>) </span>{
      <span class="comment">// form data is editable in before send</span>
      <span class="keyword">if</span>(settings.data.username == <span class="string">''</span>) {
        settings.data.username = <span class="string">'New User'</span>;
      }
      <span class="comment">// open console to inspect object</span>
      <span class="built_in">console</span>.log(settings.data);
      <span class="keyword">return</span> settings;
    }
  })
;</code></pre></div>
      </div>


      <div class="no example">
        <h4 class="ui header">2. Data Routed in Javascript</h4><i class="fitted icon code"></i><a class="anchor" id="2-data-routed-in-javascript"></a>
        <p>Server data can be specified directly when initializing an API requests.</p>
        <div class="ui existing segment"><pre><code class="code javascript">$(<span class="string">'.form .submit'</span>)
  .api({
    data: {
      session: <span class="number">22</span>,
      name: <span class="string">'Baz'</span>
    }
  })
;</code></pre></div>
      </div>

      <div class="no example">
        <h4 class="ui header">3. Data Added in beforeSend</h4><i class="fitted icon code"></i><a class="anchor" id="3-data-added-in-beforesend"></a>
        <p>POST or GET data can be specified using a special callback <code>beforeSend</code>, which can be used to retrieve data before sending a request.</p>
        <div class="ui existing segment"><pre><code class="code javascript">$(<span class="string">'.form .submit'</span>)
  .api({
    action: <span class="string">'create user'</span>,
    serializeForm: <span class="literal">true</span>,
    <span class="comment">// arbitrary POST/GET same across all requests</span>
    data: {
      session: <span class="number">22</span>
    },
    <span class="comment">// modify data PER element in callback</span>
    beforeSend: <span class="function"><span class="keyword">function</span>(<span class="params">settings</span>) </span>{
      <span class="comment">// cancel request if no id</span>
      <span class="keyword">if</span>(!$(<span class="keyword">this</span>).data(<span class="string">'id'</span>)) {
        <span class="keyword">return</span> <span class="literal">false</span>;
      }
      settings.data.userID = $(<span class="keyword">this</span>).data(<span class="string">'id'</span>);
      <span class="keyword">return</span> settings;
    }
  })
;</code></pre></div>
      </div>

      <h2 class="ui dividing header">Server Responses<a class="anchor" id="server-responses"></a></h2>

      <div class="no example">
        <h4 class="ui header">Response Callbacks</h4><i class="fitted icon code"></i><a class="anchor" id="response-callbacks"></a>
        <p>Successful responses from the server will trigger <code>onSuccess</code>, invalid results <code>onFailure</code>.</p><p>
        </p><p><code>onError</code> will only trigger on <a href="https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest">XHR</a> errors, but not on invalid JSON responses.</p>
        <p>You can use the <code>onResponse</code> callback to adjust the JSON response before being parsed against a success test.
        </p><div class="ui existing segment"><pre><code class="code javascript">$(<span class="string">'.follow.button'</span>)
  .api({
    onResponse: <span class="function"><span class="keyword">function</span>(<span class="params">response</span>) </span>{
      <span class="comment">// make some adjustments to response</span>
      <span class="keyword">return</span> response;
    },
    successTest: <span class="function"><span class="keyword">function</span>(<span class="params">response</span>) </span>{
      <span class="comment">// test whether a JSON response is valid</span>
      <span class="keyword">return</span> response.success || <span class="literal">false</span>;
    },
    onComplete: <span class="function"><span class="keyword">function</span>(<span class="params">response</span>) </span>{
      <span class="comment">// always called after XHR complete</span>
    },
    onSuccess: <span class="function"><span class="keyword">function</span>(<span class="params">response</span>) </span>{
      <span class="comment">// valid response and response.success = true</span>
    },
    onFailure: <span class="function"><span class="keyword">function</span>(<span class="params">response</span>) </span>{
      <span class="comment">// request failed, or valid response but response.success = false</span>
    },
    onError: <span class="function"><span class="keyword">function</span>(<span class="params">errorMessage</span>) </span>{
      <span class="comment">// invalid response</span>
    },
    onAbort: <span class="function"><span class="keyword">function</span>(<span class="params">errorMessage</span>) </span>{
      <span class="comment">// navigated to a new page, CORS issue, or user canceled request</span>
    }
  })
;</code></pre></div>
      </div>

      <div class="no example">
        <h4 class="ui header">Determining JSON Success</h4><i class="fitted icon code"></i><a class="anchor" id="determining-json-success"></a>
        <p>API has special success conditions for JSON responses. Instead of providing success and failure callbacks based on the HTTP response of the request, a request is considered successful only if the server's response tells you the action was successful. The response is passed to a validation test <code>successTest</code> which can be used to check the JSON for a valid response.</p>
        <p>For example, you might expect all successful JSON responses to return a top level property signifying the success of the response:</p><p>
        </p><div class="ui ignored info message">
          You can use the <code>onResponse</code> callback to modify a server's response by returning a new translated response value before it is parsed by a success test.
        </div>
        <div class="ui existing segment"><div class="ui attached top label"><span class="title">Example Server Response</span><em>json</em></div><pre><code class="code javascript">{
  <span class="string">"success"</span>: <span class="literal">true</span>,
  <span class="string">"message"</span>: <span class="string">"We've retrieved your data from the server"</span>
  <span class="string">"data"</span>: {
    <span class="comment">// payload here</span>
  }
}</code></pre></div>
        <p>You can specify a success test to check for this <code>success</code> value. This most likely will be set globally for all API requests.</p>
        <div class="ui existing segment"><pre><code class="code javascript">$.fn.api.settings.successTest = <span class="function"><span class="keyword">function</span>(<span class="params">response</span>) </span>{
  <span class="keyword">if</span>(response &amp;&amp; response.success) {
    <span class="keyword">return</span> response.success;
  }
  <span class="keyword">return</span> <span class="literal">false</span>;
};</code></pre></div>
      </div>

      <div class="no response example">
        <h4 class="ui header">Modifying Response JSON</h4><i class="fitted icon code"></i><a class="anchor" id="modifying-response-json"></a>
        <p>Since version 2.0, API includes an <code>onResponse</code> callback which lets you adjust a server's response before a response is validated, allowing you to transform your response before other callbacks fire. This is useful for situations where an API response cannot be modified, but you need the response to conform with a required JSON structure.</p>
        <div class="ui search category">
          <div class="ui left icon input">
            <input class="prompt" type="text" placeholder="Search GitHub" autocomplete="off">
            <i class="github icon"></i>
          </div>
        <div class="results"></div></div>
        <div class="ui existing segment"><pre><code class="code javascript">$(<span class="string">'.ui.search'</span>)
  .search({
    type          : <span class="string">'category'</span>,
    minCharacters : <span class="number">3</span>,
    apiSettings   : {
      url        : <span class="string">'//api.github.com/search/repositories?q={query}'</span>,
      onResponse : <span class="function"><span class="keyword">function</span>(<span class="params">githubResponse</span>) </span>{
        <span class="keyword">var</span>
          response = {
            results : {}
          }
        ;
        <span class="keyword">if</span>(!githubResponse || !githubResponse.items) {
          <span class="keyword">return</span>;
        }
        <span class="comment">// translate GitHub API response to work with search</span>
        $.each(githubResponse.items, <span class="function"><span class="keyword">function</span>(<span class="params">index, item</span>) </span>{
          <span class="keyword">var</span>
            language   = item.language || <span class="string">'Unknown'</span>,
            maxResults = <span class="number">8</span>
          ;
          <span class="keyword">if</span>(index &gt;= maxResults) {
            <span class="keyword">return</span> <span class="literal">false</span>;
          }
          <span class="comment">// create new language category</span>
          <span class="keyword">if</span>(response.results[language] === <span class="literal">undefined</span>) {
            response.results[language] = {
              name    : language,
              results : []
            };
          }
          <span class="comment">// add result to category</span>
          response.results[language].results.push({
            title       : item.name,
            description : item.description,
            url         : item.html_url
          });
        });
        <span class="keyword">return</span> response;
      }
    }
  })
;</code></pre></div>
      </div>

      <h2 class="ui dividing header">Controlling State<a class="anchor" id="controlling-state"></a></h2>

      <div class="no example">
        <h4 class="ui header">UI State</h4><i class="fitted icon code"></i><a class="anchor" id="ui-state"></a>

        <p>API will automatically add class names for <code>loading</code> and <code>error</code>. This will let you trigger different UI states automatically as an API call progresses.</p>

        <p>If you need a different element than the triggering API element to receive state class names, you can specify a different selector using <code>settings.stateContext</code>.</p>
        <p>Using <code>stateContext</code> allows you to easily do things like trigger a loading state on a form when a submit button is pressed.</p>

        <h5 class="ui header">States Included in API Module</h5>
        <table class="ui definition celled table">
          <thead>
            <tr>
              <th>State</th>
              <th class="six wide">Description</th>
              <th>API event</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>loading</td>
              <td>Indicates a user needs to wait</td>
              <td>XHR has initialized</td>
            </tr>
            <tr>
              <td>error</td>
              <td>Indicates an error has occurred</td>
              <td>XHR Request returns error (does not trigger onAbort caused by page change, or if successTest fails). Stays visible for <code>settings.errorDuration</code></td>
            </tr>
            <tr>
              <td>disabled</td>
              <td>prevents API action</td>
              <td>none</td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="no example">
        <h4 class="ui header">Text State</h4><i class="fitted icon code"></i><a class="anchor" id="text-state"></a>
        <p>Initializing an API action with the state module gives you more granular control over UI states, like setting an activated or de-activated state and the ability to adjust text values for each state:</p>

     <!--    <p>
          For additional examples of the possibilities available with state behaviors check the <a href="#">state module documentation</a>
        </p> -->

        <a class="ui black pointing below ignored label">Run Code</a><div class="ui existing segment"><pre><code class="code javascript">$(<span class="string">'.follow.button'</span>)
  .api({
    action: <span class="string">'follow user'</span>
  })
  .state({
    onActivate: <span class="function"><span class="keyword">function</span>(<span class="params"></span>) </span>{
      $(<span class="keyword">this</span>).state(<span class="string">'flash text'</span>);
    },
    text: {
      inactive   : <span class="string">'Follow'</span>,
      active     : <span class="string">'Followed'</span>,
      deactivate : <span class="string">'Unfollow'</span>,
      flash      : <span class="string">'Added follower!'</span>
    }
  })
;</code></pre></div>
        <h5 class="ui header">States Included in State Module</h5>
        <table class="ui definition celled table">
          <thead>
            <tr>
              <th>State</th>
              <th>Description</th>
              <th>Occurs on</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>inactive</td>
              <td>Default state</td>
              <td></td>
            </tr>
            <tr>
              <td>active</td>
              <td>Selected state</td>
              <td>Toggled on succesful API request</td>
            </tr>
            <tr>
              <td>activate</td>
              <td>Explains activating action</td>
              <td>On hover if inactive</td>
            </tr>
            <tr>
              <td>deactivate</td>
              <td>Explains deactivating action</td>
              <td>On hover if active</td>
            </tr>
            <tr>
              <td>hover</td>
              <td>Explains interaction</td>
              <td>On hover in all states, overrides activate/deactivate</td>
            </tr>
            <tr>
              <td>disabled</td>
              <td>Indicates element cannot be interacted</td>
              <td>Triggered programatically. Blocks API requests.</td>
            </tr>
            <tr>
              <td>flash</td>
              <td>Text-only state used to display a temporary message</td>
              <td>Triggered programatically</td>
            </tr>
            <tr>
              <td>success</td>
              <td>Indicates user action was a success</td>
              <td>Triggered programatically</td>
            </tr>
            <tr>
              <td>warning</td>
              <td>Indicates there was an issue with a user action</td>
              <td>Triggered programatically</td>
            </tr>
          </tbody>
        </table>
      </div>

      <h2 class="ui dividing header">Advanced Use<a class="anchor" id="advanced-use"></a></h2>

        <div class="no sync mocked example">
          <h4 class="ui header">Fulfilling Responses</h4><i class="fitted icon code"></i><a class="anchor" id="fulfilling-responses"></a>
          <p>Since version 2.0, API includes two new parameter <code>response</code> and <code>responseAsync</code> which allows you to specify a Javascript object or a function for returning an API response. (These were previously <code>mockResponse</code> and <code>mockResponseAsync</code>.)</p>
          <a class="ui black pointing below ignored label">Run Code</a><div class="ui existing segment"><pre><code class="code javascript">$(<span class="string">'.sync.mocked .button'</span>)
  .api({
    response: {
      success: <span class="literal">true</span>
    }
  })
  .state({
    text: {
      inactive   : <span class="string">'Off'</span>,
      active     : <span class="string">'On'</span>
    }
  })
;</code></pre></div>
          <div class="ui toggle button">
            Off
          </div>
        </div>

        <div class="no async mocked example">
          <h4 class="ui header">Using Custom Backends</h4><i class="fitted icon code"></i><a class="anchor" id="using-custom-backends"></a>
          <p>Using <code>responseAsync</code> you can specify a function which can execute your API request. This allows for you to use custom backends or wrappers outside of <code>$.ajax</code> for integrating API requests.</p>
          <a class="ui black pointing below ignored label">Run Code</a><div class="ui existing segment"><pre><code class="code javascript">$(<span class="string">'.async.mocked .button'</span>)
  .api({
    responseAsync: <span class="function"><span class="keyword">function</span>(<span class="params">settings, callback</span>) </span>{
      <span class="keyword">var</span> response = {
        success: <span class="literal">true</span>
      };
      <span class="comment">// do any asynchronous task here</span>
      setTimeout(<span class="function"><span class="keyword">function</span>(<span class="params"></span>) </span>{
        callback(response);
      }, <span class="number">500</span>);
    }
  })
  .state({
    text: {
      inactive   : <span class="string">'Off'</span>,
      active     : <span class="string">'On'</span>
    }
  })
;</code></pre></div>
          <div class="ui toggle button">
            Off
          </div>
        </div>
      </div>

  </div>

  <div class="ui tab" data-tab="behaviors">

    <h2 class="ui dividing header">Behavior<a class="anchor" id="behavior"></a></h2>

    <p>All the following behaviors can be called using the syntax:</p>
    <div class="ui existing segment"><pre><code class="code javascript">$(<span class="string">'.your.element'</span>)
  .api(<span class="string">'behavior name'</span>, argumentOne, argumentTwo)
;</code></pre></div>

    <table class="ui definition celled sortable table segment">
      <thead>
        <tr><th>Behavior</th>
        <th>Description</th>
      </tr></thead>
      <tbody>
        <tr>
          <td>query</td>
          <td>Execute query using existing API settings</td>
        </tr>
        <tr>
          <td>add url data(url, data)</td>
          <td>Adds data to existing templated url and returns full url string</td>
        </tr>
        <tr>
          <td>get request</td>
          <td>Gets promise for current API request</td>
        </tr>
        <tr>
          <td>abort</td>
          <td>Aborts current API request</td>
        </tr>
        <tr>
          <td>reset</td>
          <td>Removes loading and error state from element</td>
        </tr>
        <tr>
          <td>was cancelled</td>
          <td>Returns whether last request was cancelled</td>
        </tr>
        <tr>
          <td>was failure</td>
          <td>Returns whether last request was failure</td>
        </tr>
        <tr>
          <td>was successful</td>
          <td>Returns whether last request was successful</td>
        </tr>
        <tr>
          <td>was complete</td>
          <td>Returns whether last request was completed</td>
        </tr>
        <tr>
          <td>is disabled</td>
          <td>Returns whether element is disabled</td>
        </tr>
        <tr>
          <td>is mocked</td>
          <td>Returns whether element response is mocked</td>
        </tr>
        <tr>
          <td>is loading</td>
          <td>Returns whether element is loading</td>
        </tr>
        <tr>
          <td>set loading</td>
          <td>Sets loading state to element</td>
        </tr>
        <tr>
          <td>set error</td>
          <td>Sets error state to element</td>
        </tr>
        <tr>
          <td>remove loading</td>
          <td>Removes loading state to element</td>
        </tr>
        <tr>
          <td>remove error</td>
          <td>Removes error state to element</td>
        </tr>
        <tr>
          <td>get event</td>
          <td>Gets event that API request will occur on</td>
        </tr>
        <tr>
          <td>get url encoded value(value)</td>
          <td>Returns <code>encodeURIComponent</code> value only if value passsed is not already encoded
        </td></tr>
        <tr>
          <td>read cached response(url)</td>
          <td>Reads a locally cached response for a URL</td>
        </tr>
        <tr>
          <td>write cached response(url, response)</td>
          <td>Writes a cached response for a URL</td>
        </tr>
        <tr>
          <td>create cache</td>
          <td>Creates new cache, removing all locally cached URLs</td>
        </tr>
        <tr>
          <td>destroy</td>
          <td>Removes API settings from the page and all events</td>
        </tr>
      </tbody>
    </table>


  </div>


  <div class="ui tab" data-tab="settings">
    <h2 class="ui dividing header">
      API
    <a class="anchor" id="api"></a></h2>

    <h4 class="ui header">
      AJAX
    </h4>
    <div class="ui info message">
      You can pass in any standard <a href="http://api.jquery.com/jquery.ajax/">jQuery AJAX setting</a> like <code>timeout</code> or <code>contentType</code> to API's settings and it will be automatically passed to the request's AJAX call.
    </div>

    <h4 class="ui header">
      API
    </h4>
    <table class="ui sortable celled definition table">
      <thead>
        <tr><th class="three wide"></th>
        <th class="three wide">Default</th>
        <th>Description</th>
      </tr></thead>
      <tbody>
        <tr>
          <td>on</td>
          <td>auto</td>
          <td>When API event should occur</td>
        </tr>
        <tr>
          <td>cache</td>
          <td>true</td>
          <td>Can be set to 'local' to cache <b>successful</b> returned AJAX responses when using a JSON API. This helps avoid server roundtrips when API endpoints will return the same results when accessed repeatedly. Setting to <code>false</code>, will add cache busting parameters to the URL.</td>
        </tr>
        <tr>
          <td>stateContext</td>
          <td>this</td>
          <td>UI state will be applied to this element, defaults to triggering element.</td>
        </tr>
        <tr>
          <td>encodeParameters</td>
          <td>true</td>
          <td>Whether to encode parameters with <code>encodeURIComponent</code> before adding into url string</td>
        </tr>
        <tr>
          <td>defaultData</td>
          <td>true</td>
          <td>Whether to automatically include default data like {value} and {text}</td>
        </tr>
        <tr>
          <td>serializeForm</td>
          <td>false</td>
          <td>Whether to serialize closest form and include in request</td>
        </tr>
        <tr>
          <td>throttle</td>
          <td>
            0
          </td>
          <td>How long to wait when a request is made before triggering request, useful for rate limiting <code>oninput</code></td>
        </tr>
        <tr>
          <td>throttleFirstRequest</td>
          <td>
            true
          </td>
          <td>When set to false will not delay the first request made, when no others are queued</td>
        </tr>
        <tr>
          <td>interruptRequests</td>
          <td>
            false
          </td>
          <td>Whether an API request can occur while another request is still pending</td>
        </tr>
        <tr>
          <td>loadingDuration</td>
          <td>0</td>
          <td>Minimum duration to show loading indication</td>
        </tr>
        <tr>
          <td>hideError</td>
          <td>auto</td>
          <td>The default <code>auto</code> will automatically remove error state after error duration, unless the element is a <code>form</code></td>
        </tr>
        <tr>
          <td>errorDuration</td>
          <td>2000</td>
          <td>Setting to <code>true</code>, will not remove error. Setting to a duration in milliseconds to show error state after request error.</td>
        </tr>
      </tbody>
    </table>

    <h4 class="ui header">
      Request Settings
    </h4>
    <table class="ui sortable celled definition table">
      <thead>
        <tr><th class="three wide"></th>
        <th class="three wide">Default</th>
        <th>Description</th>
        <th>Possible Values</th>
      </tr></thead>
      <tbody>
        <tr>
          <td>action</td>
          <td>false</td>
          <td>Named API action for query, originally specified in $.fn.settings.api</td>
          <td>String or false</td>
        </tr>
        <tr>
          <td>url</td>
          <td>false</td>
          <td>Templated URL for query, will override specified action</td>
          <td>String or false</td>
        </tr>
        <tr>
          <td>urlData</td>
          <td>false</td>
          <td>Variables to use for replacement</td>
          <td></td>
        </tr>
        <tr>
          <td>response</td>
          <td>false</td>
          <td>Can be set to a Javascript object which will be returned automatically instead of requesting JSON from server </td>
          <td>{} or false</td>
        </tr>
        <tr>
          <td>responseAsync(settings, callback)</td>
          <td>false</td>
          <td>When specified, this function can be used to retrieve content from a server and return it asynchronously <b>instead of</b> a standard AJAX call. The callback function should return the server response.</td>
          <td>function or false</td>
        </tr>
        <tr>
          <td>mockResponse</td>
          <td>false</td>
          <td>Alias of <code>response</code></td>
          <td></td>
        </tr>
        <tr>
          <td>mockResponseAsync</td>
          <td>false</td>
          <td>Alias of <code>responseAsync</code></td>
          <td></td>
        </tr>
        <tr>
          <td>method</td>
          <td>get</td>
          <td>Method for transmitting request to server</td>
          <td>Any valid http method</td>
        </tr>
        <tr>
          <td>dataType</td>
          <td>JSON</td>
          <td>Expected data type of response </td>
          <td>xml, json, jsonp, script, html, text</td>
        </tr>
        <tr>
          <td>data</td>
          <td>{}</td>
          <td>POST/GET Data to Send with Request</td>
          <td></td>
        </tr>
      </tbody>
    </table>

    <h4 class="ui header">
      Callbacks
    </h4>

    <table class="ui sortable celled definition table">
      <thead>
        <tr><th class="three wide"></th>
        <th class="three wide">Context</th>
        <th>Description</th>
      </tr></thead>
      <tbody>
        <tr>
          <td>beforeSend(settings)</td>
          <td>initialized element</td>
          <td>Allows modifying settings before request, or cancelling request</td>
        </tr>
        <tr>
          <td>beforeXHR(xhrObject)</td>
          <td></td>
          <td>Allows modifying XHR object for request</td>
        </tr>
        <tr>
          <td>onRequest(promise, xhr)</td>
          <td>state context</td>
          <td>Callback that occurs when request is made. Receives both the API success promise and the XHR request promise.</td>
        </tr>
        <tr>
          <td>onResponse(response)</td>
          <td>state context</td>
          <td>Allows modifying the server's response before parsed by other callbacks to determine API event success</td>
        </tr>
        <tr>
          <td>successTest(response)</td>
          <td></td>
          <td>Determines whether completed JSON response should be <a href="#determining-json-success">treated as successful</a>
          </td>
        </tr>
        <tr>
          <td>onSuccess(response, element, xhr)</td>
          <td>state context</td>
          <td>Callback after successful response, JSON response must pass <code>successTest</code></td>
        </tr>
        <tr>
          <td>onComplete(response, element, xhr)</td>
          <td>state context</td>
          <td>Callback on request complete regardless of conditions</td>
        </tr>
        <tr>
          <td>onFailure(response, element)</td>
          <td>state context</td>
          <td>Callback on failed response, or JSON response that fails <code>successTest</code></td>
        </tr>
        <tr>
          <td>onError(errorMessage, element, xhr)</td>
          <td>state context</td>
          <td>Callback on server error from returned status code, or XHR failure.</td>
        </tr>
        <tr>
          <td>onAbort(errorMessage, element, xhr)</td>
          <td>state context</td>
          <td>Callback on abort caused by user clicking a link or manually cancelling request.</td>
        </tr>
      </tbody>
    </table>

    <h2 class="ui dividing header">
      Module
    <a class="anchor" id="module"></a></h2>

    <p>These settings are native to all modules, and define how the component ties content to DOM attributes, and debugging settings for the module.</p>

    <table class="ui sortable celled definition table">
      <thead>
        <tr><th></th>
        <th class="six wide">Default</th>
        <th>Description</th>
      </tr></thead>
      <tbody>
        <tr>
          <td>name</td>
          <td>API</td>
          <td>Name used in log statements</td>
        </tr>
        <tr>
          <td>namespace</td>
          <td>api</td>
          <td>Event namespace. Makes sure module teardown does not effect other events attached to an element.</td>
        </tr>
        <tr>
          <td>regExp</td>
          <td>
            <div class="ui existing segment"><pre><code class="code javascript">regExp  : {
  required: <span class="regexp">/\{\$*[A-z0-9]+\}/g</span>,
  optional: <span class="regexp">/\{\/\$*[A-z0-9]+\}/g</span>,
}</code></pre></div>
          </td>
          <td>Regular expressions used for template matching</td>
        </tr>
        <tr>
          <td>selector</td>
          <td>
            <div class="ui existing segment"><pre><code class="code less"><span class="tag">selector</span>: {
  <span class="attribute">disabled </span>: <span class="string">'.disabled'</span>,
  <span class="attribute">form     </span>: <span class="string">'form'</span>
}</code></pre></div>
          </td>
          <td>Selectors used to find parts of a module</td>
        </tr>
        <tr>
          <td>className</td>
          <td>
            <div class="ui existing segment"><pre><code class="code less"><span class="tag">className</span>: {
  <span class="attribute">loading </span>: <span class="string">'loading'</span>,
  <span class="attribute">error   </span>: <span class="string">'error'</span>
}</code></pre></div>
          </td>
          <td>Class names used to determine element state</td>
        </tr>
        <tr>
          <td>metadata</td>
          <td>
            <div class="ui existing segment"><pre><code class="code less"><span class="tag">metadata</span>: {
  <span class="attribute">action  </span>: <span class="string">'action'</span>,
  <span class="attribute">url     </span>: <span class="string">'url'</span>
}</code></pre></div>
          </td>
          <td>Metadata used to store XHR and response promise</td>
        </tr>
        <tr>
          <td>silent</td>
          <td>False</td>
          <td>Silences all console output including error messages, regardless of other debug settings.</td>
        </tr>
        <tr>
          <td>debug</td>
          <td>false</td>
          <td>Debug output to console</td>
        </tr>
        <tr>
          <td>performance</td>
          <td>true</td>
          <td>Show <code>console.table</code> output with performance metrics</td>
        </tr>
        <tr>
          <td>verbose</td>
          <td>false</td>
          <td>Debug output includes all internal behaviors</td>
        </tr>
        <tr>
          <td>errors</td>
          <td colspan="2">
            <div class="ui existing segment"><pre><code class="code less"><span class="comment">// errors</span>
<span class="tag">error</span> : {
  <span class="attribute">beforeSend        </span>: <span class="string">'The before send function has aborted the request'</span>,
  <span class="attribute">error             </span>: <span class="string">'There was an error with your request'</span>,
  <span class="attribute">exitConditions    </span>: <span class="string">'API Request Aborted. Exit conditions met'</span>,
  <span class="attribute">JSONParse         </span>: <span class="string">'JSON could not be parsed during error handling'</span>,
  <span class="attribute">legacyParameters  </span>: <span class="string">'You are using legacy API success callback names'</span>,
  <span class="attribute">missingAction     </span>: <span class="string">'API action used but no url was defined'</span>,
  <span class="attribute">missingSerialize  </span>: <span class="string">'Required dependency jquery-serialize-object missing, using basic serialize'</span>,
  <span class="attribute">missingURL        </span>: <span class="string">'No URL specified for API event'</span>,
  <span class="attribute">noReturnedValue   </span>: <span class="string">'The beforeSend callback must return a settings object, beforeSend ignored.'</span>,
  <span class="attribute">parseError        </span>: <span class="string">'There was an error parsing your request'</span>,
  <span class="attribute">requiredParameter </span>: <span class="string">'Missing a required URL parameter: '</span>,
  <span class="attribute">statusMessage     </span>: <span class="string">'Server gave an error: '</span>,
  <span class="attribute">timeout           </span>: <span class="string">'Your request timed out'</span>
}</code></pre></div>
          </td>
        </tr>
      </tbody>
    </table>
  </div>

</div>
        <div class="ui  vertical footer segment">
  <div class="ui center aligned container">
    <div class="ui stackable grid">
      <div class="three wide column">
        <h4 class="ui header">Community</h4>
        <div class="ui link list">
          <a class="item" href="https://www.transifex.com/organization/semantic-org/" target="_blank">Help Translate</a>
          <a class="item" href="https://github.com/Semantic-Org/Semantic-UI/issues" target="_blank">Submit an Issue</a>
          <a class="item" href="https://gitter.im/Semantic-Org/Semantic-UI" target="_blank">Join our Chat</a>
          <a class="item" href="/cla.html" target="_blank">CLA</a>
        </div>
      </div>
      <div class="three wide column">
        <h4 class="ui header">Network</h4>
        <div class="ui link list">
          <a class="item" href="https://github.com/Semantic-Org/Semantic-UI" target="_blank">GitHub Repo</a>
          <a class="item" href="http://forums.semantic-ui.com" target="_blank">User Forums</a>
          <a class="item" href="http://1.semantic-ui.com">1.x Docs</a>
          <a class="item" href="http://legacy.semantic-ui.com">0.x Docs</a>
        </div>
      </div>
      <div class="seven wide right floated column">
        <h4 class="ui header">Help Preserve This Project</h4>
        <p> Support for the continued development of Semantic UI comes directly from the community.</p>
        <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
          <input type="hidden" name="cmd" value="_s-xclick">
          <input type="hidden" name="hosted_button_id" value="7ZAF2Q8DBZAQL">
          <button type="submit" class="ui large teal button">Donate Today</button>
        </form>
      </div>
    </div>
    <div class="ui section divider"></div>
    <img src="/images/logo.png" class="ui centered mini image">
    <div class="ui horizontal small divided link list">
      <a class="item" href="http://semantic-ui.mit-license.org/" target="_blank">Free &amp; Open Source (MIT)</a>
    </div>
  </div>
</div>

      </div>
    </div>
  </div>
  <div class="ui basic language modal">
  <i class="close icon"></i>
  <div class="header">The <span class="name"></span> Translation Needs Your Help</div>
  <div class="image content">
    <div class="middle aligned image">
      <i class="world icon"></i>
    </div>
    <div class="description">
      <p>This translation is only <b><span class="complete"></span>%</b> complete!</p>
      <div class="ui inverted indicating progress">
        <div class="bar"></div>
      </div>
      <p>We need your help to make Semantic available to  people who speak your language.</p>
      <p>Our translation tools are easy to use and allow you to translate text without having to leave the site.
      </p>
    </div>
  </div>
  <div class="actions">
    <div class="ui inverted cancel button">No Thanks</div>
    <a href="https://github.com/Semantic-Org/Semantic-UI/wiki/Translating-Semantic-UI-Docs" target="_blank" class="ui inverted approve teal button">
      <i class="mail icon"></i>
      Help Translate
    </a>
  </div>
</div>

<div class="ui basic chinese modal">
  <i class="close icon"></i>
  <div class="header">Would you like to visit the mirror site?</div>
  <div class="image content">
    <div class="middle aligned image">
      <i class="question icon"></i>
    </div>
    <div class="description">
      <p>Semantic is available at <a href="http://www.semantic-ui.cn">semantic-ui.cn</a> a mirror site hosted inside China. This should make browsing much faster for those visiting from mainland China.
      </p>
    </div>
  </div>
  <div class="actions">
    <div class="ui inverted red cancel button">No Thanks</div>
    <a href="http://www.semantic-ui.cn" class="ui inverted green approve button">
      <i class="mail icon"></i>
      Yes, take me to the mirror
    </a>
  </div>
</div>
  <div class="ui demo page dimmer">
  <div class="content">
    <div class="center">
      <h2 class="ui inverted icon header">
        <i class="mail icon"></i>
        Dimmer Message
        <div class="sub header">Dimmer sub-header</div>
      </h2>
    </div>
  </div>
</div>
  <script>
window.less = {
  async        : true,
  environment  : 'production',
  fileAsync    : false,
  onReady      : false,
  useFileCache : true
};
</script>

<script src="/javascript/library/less.min.js"></script>




<iframe scrolling="no" frameborder="0" allowtransparency="true" src="https://platform.twitter.com/widgets/widget_iframe.9e36650065da04ebaceb904a35d79d9c.html?origin=https%3A%2F%2Fsemantic-ui.com&amp;settingsEndpoint=https%3A%2F%2Fsyndication.twitter.com%2Fsettings" title="Twitter settings iframe" style="display: none;"></iframe><iframe id="rufous-sandbox" scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen="true" style="position: absolute; visibility: hidden; display: none; width: 0px; height: 0px; padding: 0px; border: none;" title="Twitter analytics iframe"></iframe></body></html>
</body>
</html>