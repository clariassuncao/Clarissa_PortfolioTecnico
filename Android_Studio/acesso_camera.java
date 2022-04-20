package com.example.acesso_camera;

import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.View;
import android.widget.ImageView;

public class MainActivity extends AppCompatActivity {
    ImageView imagem;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        getSupportActionBar().hide();
        imagem = findViewById(R.id.iv); //R representa a pasta 'res'

        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.CAMERA) != // se a permissão for diferente
                PackageManager.PERMISSION_GRANTED) { // de 'permissao concedida
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.CAMERA}, 0 ); //peça permissão e o 0 é o numero da permissão

        }

    }
    public void tiraFoto(View blabla){
        Intent i = new Intent(MediaStore.ACTION_IMAGE_CAPTURE); //muda a tela para a camera e tira foto
        startActivityForResult(i, 1); //esperando um resultado, no caso a foto
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if(requestCode == 1 && resultCode == RESULT_OK){
            Bundle extras = data.getExtras();
            Bitmap foto = (Bitmap) extras.get("data");
            imagem.setImageBitmap(foto);
        }
    }
}
