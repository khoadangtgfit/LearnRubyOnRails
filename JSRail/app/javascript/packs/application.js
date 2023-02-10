import Rails from '@rails/ujs';
import Turbolinks from 'turbolinks';
import * as ActiveStorage from '@rails/activestorage';

import '../channels';
import '../controllers';
// import '../styles/index.scss';

Rails.start();
Turbolinks.start();
ActiveStorage.start();
// require.context('@/images', true);
