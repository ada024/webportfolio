import 'core/urls.dart' as url;

const _thumbnailUrlPath = 'thumbnails';


String get baseUrl {
  if (_isReleaseBuild()) {
    return url.devUrl;
    return url.prodUrl;
  }
  return url.devUrl;
}

String get blogDataUrl {
  return '$baseUrl/index.json';
}

String projectThumbnailUrl(String filename) {
  return '$baseUrl/$_thumbnailUrlPath/$filename';
}

bool _isReleaseBuild() {
  var isProd = true;
  assert(() {
    isProd = false;
    return true;
  }());
  return isProd;
}
