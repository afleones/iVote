<?php
class candidato
{
	private $pdo;

    public $id_candidato;
    public $numero;
		public $id_programa;
		public $id_tipo_usuario;
    public $foto;

	public function __CONSTRUCT()
	{
		try
		{
			$this->pdo = Database::Conectar();
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Listar()
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT * FROM candidato");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Obtener($id_candidato)
	{
		try
		{
			$stm = $this->pdo->prepare("SELECT * FROM candidato WHERE id_candidato = ?");
			$stm->execute(array($id_candidato));
			return $stm->fetch(PDO::FETCH_OBJ);
		} catch (Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Eliminar($id_candidato)
	{
		try
		{
			$stm = $this->pdo
			            ->prepare("DELETE FROM candidato WHERE id_candidato = ?");

			$stm->execute(array($id_candidato));
		} catch (Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Actualizar($data)
	{
		try
		{
			$sql = "UPDATE candidato SET
									numero          = ?,
									id_organo        = ?,
            			foto        = ?
				    WHERE id_candidato = ?";

			$this->pdo->prepare($sql)
			     ->execute(
				    array(
                        $data->numero,
                        $data->id_organo,
                        $data->foto,
                        $data->id_candidato
					)
				);
		} catch (Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Registrar(candidato $data)
	{
		include "conexion.php";
		$mysqli = getConn();

		$consulta = "SELECT id_rol FROM usuario WHERE identificacion = '$data->id_candidato'";
		$resultado = mysqli_query($mysqli,$consulta);
		$filas =  mysqli_fetch_array($resultado);
		$rolA = $filas["id_rol"];

		if($rolA != 'J' && $rolA != 'A'){
			try{
				$sql = "INSERT INTO candidato (id_candidato,numero,id_organo,foto)
		        VALUES (?, ?, ?, ?)";

			$this->pdo->prepare($sql)
		     ->execute(
				array(
                    $data->id_candidato,
                    $data->numero,
                    $data->id_organo,
                    $data->foto
                )
			);
			}catch (Exception $e){
				die($e->getMessage());
			}
			header('Location: ../view/indexCA.php?c=candidato');
		}else{
			//if()
			echo "<script>";
			echo "alert('El ID ingresado no existe en la base de datos de usuarios');";
			echo "</script>";
			require_once ('salir2.php');
		}
	}

	public function ListarID()
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT identificacion, nombre1, apellido1 FROM usuario WHERE id_rol != 'J' && id_rol != 'A' GROUP BY 1,2,3 ");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function ListarOrgano()
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT * FROM organo");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
#sin utilizar:
	// public function ListarCandidatos()
	// {
	// 	try
	// 	{
	// 		$result = array();
	//
	// 		$stm = $this->pdo->prepare("SELECT codigo FROM usuario
	// 																INNER JOIN tipo_usuario ON
	// 																usuario.id_tipo_usuario =
	// 																tipo_usuario.id_tipo_usuario
	// 																INNER JOIN candidato ON candidato.id_candidato = usuario.codigo
	// 																WHERE usuario.id_tipo_usuario = '$_SESSION["tipouser"]'");
	// 		$stm->execute();
	//
	// 		return $stm->fetchAll(PDO::FETCH_OBJ);
	// 	}
	// 	catch(Exception $e)
	// 	{
	// 		die($e->getMessage());
	// 	}
	// }

	// public function ValidarUsuario(){
	// 	try
	// 	{
	// 		$result = array();
	//
	// 		$stm = $this->pdo->prepare("");
	// 		$stm->execute();
	//
	// 		return $stm->fetchAll(PDO::FETCH_OBJ);
	// 	}
	// 	catch(Exception $e)
	// 	{
	// 		die($e->getMessage());
	// 	}
	// }



}
