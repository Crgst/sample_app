
$ ->
  $('#micropost_content').on('keyup', ->

    num = 140 - $(this).val().length
    if (num >= 0)
      $('.remain').text("残り " + num + " 文字です")
    else
      $('.remain').text((-num) + " 文字オーバーしています")
  )