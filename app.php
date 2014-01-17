<?php
 
class Page_Inst extends HttpPage {

  function display() {
    $this->view->display();
    return 1;
  } 
  
}
