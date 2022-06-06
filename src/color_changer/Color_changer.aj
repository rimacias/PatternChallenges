package color_changer;

import javafx.scene.layout.StackPane;

public aspect Color_changer {
	pointcut successRed(): call(* *Red(..));
	after(): successRed(){
		Object[] parameterList = thisJoinPoint.getArgs();
		StackPane root = (StackPane) parameterList[0]; 
		root.setStyle("-fx-background-color: #ff0000");
		System.out.println("Cambiado a color rojo");
	}
	pointcut successGreen(): call(* *Green(..));
	after(): successGreen(){
		Object[] parameterList = thisJoinPoint.getArgs();
		StackPane root = (StackPane) parameterList[0]; 
		root.setStyle("-fx-background-color: green;");
		System.out.println("Cambiado a color verde");
	}
		
	
}
