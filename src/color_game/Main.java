package color_game;
	
import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.HBox;
import javafx.geometry.Pos;


public class Main extends Application {
	StackPane root = new StackPane();
	Button redBtn = new Button("Red");
	Button greenBtn = new Button("Green");
	Button blueBtn = new Button("Blue");
	Button mixBtn = new Button("Mix it up");
	Button stopBtn = new Button("Stop");
	Boolean keepMixing = false;
	HBox btnContainer = new HBox();
	
	@Override
	public void start(Stage primaryStage) {
		prepare();
		Scene scene = new Scene(root,600,400);
		StackPane.setAlignment(btnContainer,Pos.CENTER);
		scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
		primaryStage.setTitle("COLOR GAME");
		primaryStage.setScene(scene);
		primaryStage.show();

	}
	
	public static void main(String[] args) {
		launch(args);
	}
	private void changeRed(StackPane root) {}
	private void changeGreen(StackPane root) {}
	private void changeBlue(StackPane root) {}
	private void changeMix(StackPane root, boolean b) {}
	private void colorStop(StackPane root) {}
	public void prepare() {
		btnContainer.getChildren().addAll(redBtn,greenBtn,blueBtn,mixBtn,stopBtn);
		btnContainer.setAlignment(Pos.TOP_CENTER);
		root.getChildren().addAll(btnContainer);
		redBtn.setOnAction(new EventHandler<>() {
			@Override
			public void handle(ActionEvent arg0) {
				changeRed(root);
			}				
		});
		blueBtn.setOnAction(new EventHandler<>() {
			@Override
			public void handle(ActionEvent arg0) {
				changeBlue(root);
			}					
		});
		greenBtn.setOnAction(new EventHandler<>() {
			@Override
			public void handle(ActionEvent arg0) {
				changeGreen(root);
			}					
		});
		mixBtn.setOnAction(new EventHandler<>() {
			@Override
			public void handle(ActionEvent arg0) {
				changeMix(root, keepMixing);
			}								
		});
		stopBtn.setOnAction(new EventHandler<>() {
			@Override
			public void handle(ActionEvent arg0) {
				colorStop(root);
			}								
		});
	}
}
