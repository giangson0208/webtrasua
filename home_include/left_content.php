
 <div id="danhmucsp">
					<div class="center">
					<h4>LOẠI TRÀ SỮA</h4>
					<?php 
					   $sql="select * from danhmuc where dequi=17";
					   $result=mysql_query($sql);
					?>
						<ul>
						<?php 
						   while($row=mysql_fetch_array($result))
						   {
						?>
							<li><a href="index.php?madm=<?php echo $row['madm'] ?>"><?php echo $row["tendm"];?></a></li>
							<?php } ?>
							
							
						</ul>
					</div><!-- End .center -->
				</div>	<!-- End .menu-left -->
				
				<div id="phukien">
					<div class="center">
						<h4 style="font-size : 14px;"> BÁNH TRÁNG MIỆNG</h4>
						<?php 
					   $sql="select * from danhmuc where dequi=22";
					   $result=mysql_query($sql);
					?>
						<ul>
						<?php 
						   while($row=mysql_fetch_array($result))
						   {
						?>
							<li><a href="index.php?madm=<?php echo $row['madm'] ?>"><?php echo $row["tendm"];?></a></li>
							<?php } ?>
							
						</ul>
					</div><!-- End .center -->
				</div><!-- End .phukien -->	
				
				<div id="quangcao1">
					<div class="center" style="margin-bottom: 20px">
						<a href="#"> <img src="img/trasuatoco.png" alt="" title="" width="200" height="350"> </a>
					</div>
					<div class="center">	 
						<a href="#"> <img src="img/quangcao2.jpg" alt="" title="" width="200" height="350"> </a>
					</div><!-- End .center -->
				</div><!-- End .quangcao1 -->