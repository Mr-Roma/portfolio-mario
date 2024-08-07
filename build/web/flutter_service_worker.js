'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "3b9b74fc3c674b0e7f743d7c940001d1",
"assets/AssetManifest.bin.json": "ce90a501481064234e8c80fb04729818",
"assets/AssetManifest.json": "493232cf86fffc5d8511248b97cad70f",
"assets/assets/files/cv.pdf": "3e689725db88269246aee47077cfbb73",
"assets/assets/icons/dot.png": "23443bd73d1e4bc2932b625b6d057d1f",
"assets/assets/icons/dw_icon.png": "f9c7b851b77582f5108110f6530eb59d",
"assets/assets/icons/exit_icon.png": "bc2bd28e92334cbb641c4648c631261f",
"assets/assets/icons/fb.png": "40e05e52e686d7696e834937c05fa4b8",
"assets/assets/icons/file.png": "599999def7d9b09f5cbf62b545201019",
"assets/assets/icons/github.png": "c730c18a8f9100207385e383e138751e",
"assets/assets/icons/image.png": "4b786597732558348a2661b9765ffe8c",
"assets/assets/icons/linkedin.png": "53f76755094d57bbeaa69af177eebd5f",
"assets/assets/icons/menu_mobile.png": "7cd3d1d3f3523400d94f83c844579eae",
"assets/assets/icons/porto.png": "f4e5237f64d8582ac68cba7d1194c311",
"assets/assets/icons/separator.png": "24abdd9072c4a0d61617a7708ff62332",
"assets/assets/icons/skill.png": "2f504c1d29c075d283ca55e9f27c3859",
"assets/assets/icons/wa.png": "a33c0c00a8e68c52b23c88e9d2d4e7d4",
"assets/assets/icons/workexperience.png": "f65eaf782c79b435c2f0a591db3c4b89",
"assets/assets/icons/x.png": "33c06a44c92402b1d7e79dff2bb4cc32",
"assets/assets/icons/youtube.png": "5fd4900afe119729b87f56a6f29fe29c",
"assets/assets/images/appbar_logo.png": "58ff19ed7880b85c6ddd26ed25132376",
"assets/assets/images/bg.png": "cc7ed6aa7c8e10be2e34b6c28ca6c305",
"assets/assets/images/cal.png": "9bd81d9c6a2c3c80725424eb4ca023cd",
"assets/assets/images/camera.png": "79dcd007fafca9e72a367719df254d38",
"assets/assets/images/cci.png": "6844687b153d9a5a5b543b4299013752",
"assets/assets/images/coding1.png": "e4f76aefe60a969d47032d4a2916fa15",
"assets/assets/images/coding2.png": "b046af029a91260296de7a2ee05ed04e",
"assets/assets/images/coding3.png": "9f243efbf4f4ded542c311f26d10ce80",
"assets/assets/images/coding_challenge.png": "570faebe32239a4a0914c91a71fce9c6",
"assets/assets/images/container.png": "d243c447aca0cd9500e0874800499cf5",
"assets/assets/images/gdsc.png": "7e69f0d9555aa15da4db035393abbcac",
"assets/assets/images/gulamu.png": "d758183caee7980d24e0379778907c3a",
"assets/assets/images/gulamu1.png": "5b5b5a2d1456346d903f327e03c11032",
"assets/assets/images/gulamu2.png": "2e69aa548b0144fc97fd01756182b173",
"assets/assets/images/gulamu3.png": "065be01caa14c5977eff31e17b650a4b",
"assets/assets/images/gulamu4.png": "5b88513358b5bd7b9a1631c71a11e08a",
"assets/assets/images/gulamu5.png": "41f56c8c0b1f8ff807fbe28325a58aa2",
"assets/assets/images/histel.png": "cc5f404e8d93484aec26c08daa772368",
"assets/assets/images/histel1.png": "3ed4e1e773d6e6c5656d17001c9d7aa2",
"assets/assets/images/histel2.png": "46140640d206a40c4a219a4b35813721",
"assets/assets/images/histel3.png": "0e64865da251fed9d8bb1403b9b2cd52",
"assets/assets/images/histel4.png": "0aa713e75f0e86821d613d984221d785",
"assets/assets/images/histel5.png": "7c10e2c69ffee9335580a0a159d053c3",
"assets/assets/images/histel6.png": "03a94f94d3628551cb70e8b877e7aa85",
"assets/assets/images/influencer.png": "2df9f6fea5387eaaaad7a707c5a1d6c0",
"assets/assets/images/informatics.png": "94230006fee94aac99099d3b3be26dca",
"assets/assets/images/mar.png": "43e5468eb752a77a2c7d99604f23b423",
"assets/assets/images/mobile_skils.png": "a0b68bb1f0058fd828a44e9e347b2f02",
"assets/assets/images/motion_lab.png": "f552b09a7f190517de9857f6ebfe7bd5",
"assets/assets/images/my_portfolio.png": "780df0b206661b41d8235086c2162f60",
"assets/assets/images/profile.png": "10ad2f651a667728bbab82c85de13764",
"assets/assets/images/profile_mobile.png": "6f57e82dee3ca1636914720394133db4",
"assets/assets/images/rio.png": "23d998ace8dc41fd7383c042208f60a0",
"assets/assets/images/roma.png": "00891009bfdbd3a7d3ae72a277a27c2b",
"assets/assets/images/romario.png": "2d4a8e6d4b3d747363e0ec2b4f7f31c3",
"assets/assets/images/skill_set.png": "b67a0e58d29d8e3922c363be73797ae9",
"assets/assets/images/terminal1.png": "66305a4a7def1812b1a1b0a80f0ae0c2",
"assets/assets/images/terminal2.png": "02be6339bab650b7a9566aabc884dc5a",
"assets/assets/images/terminal3.png": "d64dbac3f871d656d5fa6445ac23599c",
"assets/assets/images/terminal4.png": "a5ad62b70de7a70518b72d642eb93590",
"assets/assets/images/terminal5.png": "2e5f04feda7b23ffe8f7d9f0d5e05f2c",
"assets/assets/images/terminal6.png": "a940a21fd8e9acc22df2706963d81d42",
"assets/assets/images/tv.png": "917d91f0206f093fbe3b83877bd275e7",
"assets/assets/images/umaamerika.png": "9af8954baa04f0621c77d3e3c6c1622b",
"assets/assets/images/x_bod.png": "0b0057f9875b2537e67746bdf07a6357",
"assets/assets/images/youtube.png": "194373ef228f1665cf80a87e01aafa35",
"assets/assets/music/1.mp3": "7cbe7b6380bf848627deac200cdde0f9",
"assets/assets/music/2.mp3": "92a9bc2b0d9d305bdd1f286988d44d13",
"assets/assets/music/3.mp3": "a5451bfae3be54c90f5a16b20ab1cde6",
"assets/assets/music/4.mp3": "7c3beb515fcdffb2e626c2fefcbbd543",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "6c561740805161e4a213dff66f19d509",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/model_viewer_plus/assets/model-viewer.min.js": "4226392bee9372f20a688343e51e7b54",
"assets/packages/model_viewer_plus/assets/template.html": "8de94ff19fee64be3edffddb412ab63c",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "f571b34961c68c515b99a9ce2a240339",
"/": "f571b34961c68c515b99a9ce2a240339",
"main.dart.js": "c1927bf9fcc06d928439646a778b30c1",
"manifest.json": "40e725daac40887ab405d5e6d2eb9def",
"version.json": "57ed18734f8671db98629366b8469d4b"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
