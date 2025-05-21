{
  programs.nixvim.plugins.startup = {
    enable = true;

    colors = {
      background = "#ffffff";
      foldedSection = "#ffffff";
    };

    sections = {
      header = {
        type = "text";
        oldfilesDirectory = false;
        align = "center";
        foldSection = false;
        title = "Header";
        margin = 5;
        content = [
          "```````````.```.```.``.``.``.`.`..`.`.`.`.`.`..`..`.``.`..`.`..`.`....`....."
          "`````````.``.```.````````..,.`````.`.```.`.`.`..`..`.......`..`..`.`....`..."
          "`````.``.```.`.``..`.` .gMMMHH,``````.`.``.`.``.``..`.``.`..`..`....`....`.."
          "`..`.`.`.`..`.`.`.`.`.`` ?=udHH;```.``.`..`.`.....`..`............`...`....."
          "``.``.```.```.``.```.````.WMMMYWgKWa+...```.`.``.`.`....`.`..`.............."
          "`.``.`..`.`..`.`.`..`.``(h+#YHgNMNgMNMMMHG, .`.`....`..`...................."
          ".`..``.`.`.`.`..`.`.`..`d}?~_~1V9XMBCOXCHMm?T-.``.`........................."
          "``.`..`.`.`.`.``.`.`.``.(>2.+(;>?+zv+<<<?HB3;;Tge.`..`.....................("
          "..`.`..`...`........`..`.?++z11+1zzzzzzyzOzOz++jWNm,...`.................(JO"
          ".`...`.......`..`........`(zttOlzzOwwXXWStzOwXWXMMyWmZW&.-............(&z<<?"
          ".`......`..................-?OXkXkXXXXwXkXXUWQHBXXHMMkXMMMNaJ-xzIzO(J<z(1>~_"
          "..`..`........................._?TUWpfpWkkkXWWk#WHUYY`=.._?THMMCJOXI_JXZ>(<-"
          "...................................._?UWY7?77<_..._(-<1zz>++z+!(Zv=!?!! ```."
          "...................._-(----__ __..--(dWD......_(J7!```__.!!~~.    ``...`````"
          "................_-(??++<<<~~_:~_(jWSwkUUWm&_(?! ` _:~~.......```..___.``.``."
          ".___....__`..._~_~<<~_(_<(_~~~iurOwwOwuXHHMHn. `  _~__~~_... ``...~_.. ```.."
          "```.``.`.``.``.````  ``````-.A0OwrwVZXWWWHHHMMm,....~:__~~..`` .._:~ `````.."
        ];
        highlight = "Statement";
        defaultColor = "";
        oldfilesAmount = 0;
      };

      body = {
        type = "mapping";
        oldfilesDirectory = false;
        align = "center";
        foldSection = false;
        title = "Menu";
        margin = 5;
        content = [
          [
            " Find File"
            "Telescope find_files"
            "ff"
          ]
          [
            "󰍉 Find Word"
            "Telescope live_grep"
            "fr"
          ]
          [
            " Recent Files"
            "Telescope oldfiles"
            "fg"
          ]
          [
            " File Browser"
            "Telescope file_browser"
            "fe"
          ]
          [
            "󰧑 SecondBrain"
            "edit ~/projects/personal/SecondBrain"
            "sb"
          ]
        ];
        highlight = "string";
        defaultColor = "";
        oldfilesAmount = 0;
      };
    };

    options = {
      paddings = [
        1
        3
      ];
    };

    parts = [
      "header"
      "body"
    ];
  };
}
