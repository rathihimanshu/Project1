<?php ?>
<aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar" style="height: auto;">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <?php echo $this->Html->image('user.png', array('alt' => 'User Images','Class'=>'img-circle')); ?>
            </div>
            <div class="pull-left info">
              <p><?php echo ucfirst($this->Session->read('USERNAME'));?></p>

              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
           <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="active treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>HR</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="active"><a href="<?php echo $this->webroot?>staffs/index"><i class="fa fa-circle-o"></i> Staffs</a></li>
                <li><a href="<?php echo $this->webroot?>users/home"><i class="fa fa-circle-o"></i> Dashboard</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-files-o"></i>
                <span>Settings</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="<?php echo $this->webroot?>companies"><i class="fa fa-circle-o"></i> Company Listing</a></li>
                <li><a href="<?php echo $this->webroot?>locations"><i class="fa fa-circle-o"></i> Location Listing</a></li>
                <li><a href="<?php echo $this->webroot?>leaves"><i class="fa fa-circle-o"></i> Leave Type Listing</a></li>
                <li><a href="<?php echo $this->webroot?>settings"><i class="fa fa-circle-o"></i> Setting Listing</a></li>
              </ul>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-th"></i> <span>Leaves</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
				<?php  $user_id = $this->Session->read('LOGEDID');  
				 if($user_id!=1){
				?>
                <li><a href="<?php echo $this->webroot?>leaves/applyleavestaff"><i class="fa fa-circle-o"></i> Leave Apply</a></li>
                <li><a href="<?php echo $this->webroot?>travels/staff_travel"><i class="fa fa-circle-o"></i> Travel Apply</a></li>
                <li><a href="<?php echo $this->webroot?>leaves/myleave"><i class="fa fa-circle-o"></i> My Leave</a></li>
                <li><a href="<?php echo $this->webroot?>travels/mytravel"><i class="fa fa-circle-o"></i> My Travel</a></li>
                <?php } ?>
                <li><a href="<?php echo $this->webroot?>leaves/leavePolicy"><i class="fa fa-circle-o"></i> Leave Policy Listing</a></li>
                <li><a href="<?php echo $this->webroot?>leaves/leave_exception"><i class="fa fa-circle-o"></i> Staff Leave Listing</a></li>
              </ul>
            </li>
           <!-- <li class="treeview">
              <a href="#">
                <i class="fa fa-pie-chart"></i>
                <span>Settings</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="<?php echo $this->webroot?>leaves/applyleavestaff"><i class="fa fa-circle-o"></i> Leave Apply</a></li>
                <li><a href="<?php echo $this->webroot?>travels/staff_travel"><i class="fa fa-circle-o"></i> Travel Apply</a></li>
                <li><a href="<?php echo $this->webroot?>leaves/leavePolicy"><i class="fa fa-circle-o"></i> Leave Policy Listing</a></li>
                <li><a href="<?php echo $this->webroot?>leaves/leave_exception"><i class="fa fa-circle-o"></i> Staff Leave Listing</a></li>
              </ul>
            </li>-->
            <!--<li class="treeview">
              <a href="#">
                <i class="fa fa-laptop"></i>
                <span>UI Elements</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i> General</a></li>
                <li><a href="pages/UI/icons.html"><i class="fa fa-circle-o"></i> Icons</a></li>
                <li><a href="pages/UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>
                <li><a href="pages/UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>
                <li><a href="pages/UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>
                <li><a href="pages/UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>
              </ul>
            </li>-->
            <!--<li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i> <span>Forms</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i> General Elements</a></li>
                <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Advanced Elements</a></li>
                <li><a href="pages/forms/editors.html"><i class="fa fa-circle-o"></i> Editors</a></li>
              </ul>
            </li>-->
            <!--<li class="treeview">
              <a href="#">
                <i class="fa fa-table"></i> <span>Tables</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="pages/tables/simple.html"><i class="fa fa-circle-o"></i> Simple tables</a></li>
                <li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> Data tables</a></li>
              </ul>
            </li>-->
           <!-- <li>
              <a href="pages/calendar.html">
                <i class="fa fa-calendar"></i> <span>Calendar</span>
                <small class="label pull-right bg-red">3</small>
              </a>
            </li>
            <li>
              <a href="pages/mailbox/mailbox.html">
                <i class="fa fa-envelope"></i> <span>Mailbox</span>
                <small class="label pull-right bg-yellow">12</small>
              </a>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-folder"></i> <span>Examples</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="pages/examples/invoice.html"><i class="fa fa-circle-o"></i> Invoice</a></li>
                <li><a href="pages/examples/login.html"><i class="fa fa-circle-o"></i> Login</a></li>
                <li><a href="pages/examples/register.html"><i class="fa fa-circle-o"></i> Register</a></li>
                <li><a href="pages/examples/lockscreen.html"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
                <li><a href="pages/examples/404.html"><i class="fa fa-circle-o"></i> 404 Error</a></li>
                <li><a href="pages/examples/500.html"><i class="fa fa-circle-o"></i> 500 Error</a></li>
                <li><a href="pages/examples/blank.html"><i class="fa fa-circle-o"></i> Blank Page</a></li>
              </ul>
            </li>-->
           <!-- <li class="treeview">
              <a href="#">
                <i class="fa fa-share"></i> <span>Multilevel</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i> Level One <i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                    <li>
                      <a href="#"><i class="fa fa-circle-o"></i> Level Two <i class="fa fa-angle-left pull-right"></i></a>
                      <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
              </ul>
            </li>-->
            <!--<li><a href="documentation/index.html"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
            <li class="header">LABELS</li>
            <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
            <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
            <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>-->
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
