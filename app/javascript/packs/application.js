import "bootstrap";

import { openNav } from '../components/navbar';
import { closeNav } from '../components/navbar';
if (document.getElementById('mySidenav')){
  openNav();
  closeNav();
}
