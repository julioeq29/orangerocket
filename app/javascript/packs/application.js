import "bootstrap";
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
// lines for mapbox to work
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

// lines for tag buttons in Category pages to work
import { toggleTagButton } from './tag_button';
// toggleTagButton();
import 'select2/dist/css/select2.css';
import { initSelect2 } from '../components/init_select2';
initSelect2();

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
