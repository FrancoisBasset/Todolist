<?php

$connection = new PDO("mysql:dbname=todolist;host=172.17.0.2", "root", "root");

?>

<h1>Todo List</h1>

<table border="3">
	<?php

	foreach ($connection->query("select * from tasks") as $row) {?>
        <tr>
        	<td><?php echo $row['task_id']; ?></td>
        	<td><?php echo $row['task_description']; ?></td>
        	<td><?php if ($row['task_is_done']) { echo "Fait"; } else { echo "Non Fait"; } ?></td>        

    	</td><?php
    }

	?>
</table>