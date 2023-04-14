package com.example.test2;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    public TextView txtName;
    public EditText editName;
    public Button btnSubmit;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        editName = findViewById(R.id.editTxtName);
        txtName = findViewById(R.id.txtName);
        btnSubmit = findViewById(R.id.btnSubmit);

        txtName.setText(null);



        btnSubmit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String name = editName.getText().toString();
                if (name.isEmpty())
                    txtName.setText("Please enter your name");
                txtName.setText("Hi, " + name + ", Welcome.");
            }
        });



    }
}