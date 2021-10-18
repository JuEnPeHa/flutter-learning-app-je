class VideoCard {
  String title;
  String duration;
  String views;
  String thumbnail;
  String nameChannel;
  VideoCard(/*String s0, String s1, String s2, String s3, String s4,*/ {this.duration,
      this.nameChannel,
      this.thumbnail,
      this.title,
      this.views});

  String viewsVideo(int views){
    //String viewString = this.views.toString();
    //String value = "";
    String result = "";

    if (views <= 1000){
      String result = views.toString();
      return result;
    } else if (views > 1000 && views <= 10000) {
      result = " ".toString() + (views / 1000).toString() + "K".toString();
      return result;
    } else if (views > 10000 && views <= 100000) {
      result = " ".toString() + (views / 10000).toString() + "M".toString();
      return result;
    }
    return result;
  }
}