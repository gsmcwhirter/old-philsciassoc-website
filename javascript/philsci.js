var philsci =
{
	  show_more: function(article_id)
		  {
			   $("#news_article_"+article_id+"_more").hide();
			   $("#news_article_"+article_id+"_less").show();
			   $("#news_article_"+article_id).show();
		  }
	 ,show_less: function(article_id)
		  {
			   $("#news_article_"+article_id+"_more").show();
			   $("#news_article_"+article_id+"_less").hide();
			   $("#news_article_"+article_id).hide();
		  }
	 ,parse_rels: function()
		  {
			   $("a[href][rel='external']").addClass("external").attr("target","_blank");
			   $("a[href][rel='download']").addClass("download");
			   $("a[href][rel='email']").addClass("email");
		  }
	 ,even_odd_highlights: function()
		  {
			   $(".references>li:odd").addClass("odd");
			   $(".references>li:even").addClass("even");
			   $(".archive_list>li:odd").addClass("odd");
			   $(".archive_list>li:even").addClass("even");
			   //$(".newsletter>li:odd").addClass("odd");
			   //$(".newsletter>li:even").addClass("even");
		  }
	 ,init: function()
	 {
		  this.parse_rels();
		  this.even_odd_highlights();
	 }
}
