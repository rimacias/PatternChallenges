package color_changer;


import javafx.scene.layout.StackPane;

public aspect Color_changer {
	pointcut successRed(): call(* *Red(..));

	after(): successRed(){
		Object[] parameterList = thisJoinPoint.getArgs();
		StackPane root = (StackPane) parameterList[0];
		root.setStyle("-fx-background-color: red");
		System.out.println("Cambiado a color rojo");
	}

	pointcut successGreen(): call(* *Green(..));

	after(): successGreen(){
		Object[] parameterList = thisJoinPoint.getArgs();
		StackPane root = (StackPane) parameterList[0];
		root.setStyle("-fx-background-color: green;");
		System.out.println("Cambiado a color verde");
	}

	pointcut successBlue(): call(* *Blue(..));

	after(): successBlue(){
		Object[] parameterList = thisJoinPoint.getArgs();
		StackPane root = (StackPane) parameterList[0];
		root.setStyle("-fx-background-color: blue;");
		System.out.println("Cambiado a color azul");
	}

	pointcut successMix(): call(* *Mix(..));

	after(): successMix(){
		Object[] parameterList = thisJoinPoint.getArgs();
		StackPane root = (StackPane) parameterList[0];
		String[] colores = { "#c4fdd2", "#f1fc7f", "#EDFED3", "#79fcce", "#ffdfa9", "#fdb0a7", "#fc83a2" };
		int al = (int) Math.round(Math.random() * (colores.length - 1));
		String color_al = colores[al];
		String s = "-fx-background-color: " + color_al + ";";
		root.setStyle(s);

		
	}

	pointcut successStop(): call(* *Stop(..));

	after(): successStop(){
		Object[] parameterList = thisJoinPoint.getArgs();
		StackPane root = (StackPane) parameterList[0];
		root.setStyle("-fx-background-color: white;");
		System.out.println("Cambiado a color blanco");
	}
}