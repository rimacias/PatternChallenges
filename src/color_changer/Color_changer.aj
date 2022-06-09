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
		String[] colores = { "orange", "yellow", "pink", "chocolate", "violet", "cyan", "grey" };
		int al = (int) Math.round(Math.random() * (colores.length - 1));
		String color_al = colores[al];
		String s = "-fx-background-color: " + color_al + ";";
		root.setStyle(s);
		System.out.println("Cambiado a color " + color_al);


		
	}

	pointcut successStop(): call(* *Stop(..));

	after(): successStop(){
		Object[] parameterList = thisJoinPoint.getArgs();
		StackPane root = (StackPane) parameterList[0];
		root.setStyle("-fx-background-color: white;");
		System.out.println("Cambiado a color blanco");
	}
}