<nav id="mainmenu">
    <ul>
        <li>
            <a href="<?php echo site_url() ?>"
                <?php echo $page->type == 'home' ? ' class="active"':'' ?>>
                Home
            </a>
        </li>
        <?php foreach($category_menu as $row): ?>
            <li>
            <a href="<?php echo $this->main->permalink(array('project', $row->title));  ?>"
                <?php echo $page->type == strtolower(str_replace(' ', '-', $row->title)) ? ' class="active"':'' ?>>
                <?php echo $row->title ?>
            </a>
            <?php foreach($submenu_category as $row2):
                if($row2->id_category == $row->id)
                {
                ?>
                     <ul>
                        <li><a href="<?php echo $this->main->permalink(array('project', $row->title)).'sub/'.$row2->slug;  ?>"><?php echo $row2->title?></a></li>
                    </ul>
                 <?php
                }
                ?>
            <?php endforeach; ?>
        </li>
        <?php endforeach; ?>
        <li>
            <a href="<?php echo site_url('news') ?>"
                <?php echo $page->type == 'news' ? ' class="active"':'' ?>>
                News
            </a>
        </li>
        <li>
            <a href="<?php echo site_url('about-us') ?>"
                <?php echo $page->type == 'about_us' ? ' class="active"':'' ?>>
                About
            </a>
        </li>
        <li>
            <a href="<?php echo site_url('contact-us') ?>"
                <?php echo $page->type == 'contact_us' ? ' class="active"':'' ?>>
                Contact Us
            </a>
        </li>
    </ul>
</nav>