<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Chamada</title>
</head>
<body>
	<center>
		<!--<form method="post">
			CHK1<input type="text" name="array[]"><br>
			CHK2<input type="text" name="array[]"><br>
			CHK3<input type="text" name="array[]"><br>
			CHK4<input type="text" name="array[]"><br>
			CHK5<input type="text" name="array[]"><br>
			CHK6<input type="text" name="array[]"><br>
			CHK7<input type="text" name="array[]"><br>
			CHK8<input type="text" name="array[]"><br>
			CHK9<input type="text" name="array[]"><br>	
			<br><br><input type="submit" name="confirmar" value="Concluir">
		</form>
		<br>
		<br>
		<br>
		<br>		
		<form method="post">
			<table>
				<tr>
				<td>
				Treinamentos:
				</td>
				<td class="menu">
				<nobr><input type="checkbox" name="ckbTreinamentos[]" value="I"> Internet</nobr>
				</td>
				<td class="menu">
				<nobr><input type="checkbox" name="ckbTreinamentos[]" value="U"> URA</nobr>
				</td>
				<td class="menu">
				<nobr><input type="checkbox" name="ckbTreinamentos[]" value="P"> POS</nobr>
				</td>
				<td class="menu">
				<nobr><input type="checkbox" name="ckbTreinamentos[]" value="T"> TEF</nobr>
				</td>
				<td class="menu">
				<nobr><input type="checkbox" name="ckbTreinamentos[]" value="C"> Celular</nobr>
				</td>
				<td class="menu">
				<nobr><input type="checkbox" name="ckbTreinamentos[]" value="F"> Fechamentos</nobr>
				</td>
				<td>
				<br><input type="submit" name="pois_e" value="Testar">
				</td>
				</tr>
			</table>
		</form>-->
		<form method='post'>
			Qual desses alunos faltou hj?<br>
			<?php
		$host = "localhost";
		$user = "root";
		$pass = "";
		$db = "testechamada";
		
		$con = mysqli_connect($host, $user, $pass, $db) or die(mysqli_error($con));
	
		$buscaAlunos = "SELECT nome FROM alunos";
			
		$query = mysqli_query($con, $buscaAlunos);
			
		$total = mysqli_num_rows($query);
		
			$array = null;
			
		while($obj = mysqli_fetch_row($query)){
			
			$array .= $obj[0].'|';
			//echo $array;
			
			
		}
			//echo $array;
			$explodido = explode('|', $array, -1);			
			
			for($x=0; $x<$total; $x++){								
					echo $explodido[$x];
					echo "<input type='hidden' name='valor[$x]' value='0'/>";
					echo "<input type='checkbox' name='valor[$x]' value='1'/>";						
					echo "<br>";													
			}
			
			?>			
			
			<!--<input type='checkbox' name='checkboxvar[]' value='André Lucas'>André Lucas<br>
			<input type='checkbox' name='checkboxvar[]' value='Ariane ...'>Ariane ...<br>
			<input type='checkbox' name='checkboxvar[]' value='Evair Alkmim'>Evair Alkmim<br>-->
			<br><br><input type='submit' class='buttons' name="" value="Mostrar"> 
		</form><br><br>	
	</center>
	<?php 
		//echo $_POST['valor'];;
	/*	
	
		$_POST['falta'] = ( isset($_POST['checkboxvar']) ) ? true : false;
		//$_POST['car']  = ( isset($_POST['car']) )  ? true : null;

		# Visualizando os dados
		var_dump($_POST['falta']);
	
		//if (isset($_POST['checkboxvar'])) 
		//{
		//	var_dump($_POST['checkboxvar']); 
		//} *
		
		
	
		$host = "localhost";
		$user = "root";
		$pass = "";
		$db = "testechamada";
		
		$con = mysqli_connect($host, $user, $pass, $db) or die(mysqli_error($con));
	
		$buscaAlunos = "SELECT * FROM alunos";
		$query = mysqli_query($con, $buscaAlunos);
		$values = mysqli_fetch_assoc($query);
		
	
		
		$final_value1 ="";
	
		if(isset($_POST['confirmar'])){
			
			$arrayCHK_values = $_POST['array'];
			
			$sql = "INSERT INTO chamada (cod_aluno) VALUES"; 
			
			foreach($arrayCHK_values as $final_value){
				$sql .= " ($final_value),";
			}
			$sql = substr($sql, 0, -1);
			
			//mysqli_query($con, $sql);
			
			echo $sql; } */ ?>
		
		<?php
	
			 if (isset($_POST['valor'])) {   				
					$qt = count($_POST['valor']);
					$k = 1; 
					$comp = null;
					$sql = "INSERT INTO chamada (presente) VALUES";
				 
					foreach ($_POST['valor'] as $treinamento){             
						
						$sql .= " ($treinamento),";
						
						$v = "";
						
						if($k < $qt) {
							
							$v = ", ";
							
						}
						
						$comp .= $treinamento.$v;
						$k++;
					}
				
					echo "<center> $comp </center>";
				 	$sql = substr($sql, 0, -1);
			
					mysqli_query($con, $sql);

					//echo $sql;
				
				} else {
				
					$comp = null;
				
				} 
	
			/* $sql = "INSERT INTO chamada (presente) VALUES"; 
			
			foreach($arrayCHK_values as $final_value){
				$sql .= " ($final_value),";
			}
			$sql = substr($sql, 0, -1);
			
			//mysqli_query($con, $sql);
			
			echo $sql; */
	
			?>
	<?php
			/* $sql = "INSERT INTO chamada (presente) VALUES ('$final_value1')";
			
			mysqli_query($con, $sql); */
			
			
			/* <?php $sql_insere_chamada_array = "INSERT INTO chamada (id_turma, id_professor, data_chamada, id_aluno, presenca) VALUES";								
				
				
						foreach ($_POST['alunos']  as $cod_aluno => $atributo) {
							
   							$cod_aluno = $atributo['codigo'];
							$presente = $atributo['status'];
							
						
						// Para cada elemento de $usuários, faça:
						/*foreach($alunos as $aluno => $status) {
							$cod_aluno = $aluno;
							$presente = $status;*/							
						  
							// Monta a parte consulta de cada usuário
							/* $sql_insere_chamada_array .= " ('$cod_turma', '$cod_professor', '$data_hoje', '{$cod_aluno}', '{$presente}'),";						  
						}
				
						// Tira o último caractere (vírgula extra)					
						$sql_insere_chamada_array = substr($sql_insere_chamada_array, 0, -1);
				
						// Executa a consulta
						mysqli_query($conexao, $sql_insere_chamada_array) or die(mysqli_error($conexao));
	?> */
	
		?>
</body>
</html>