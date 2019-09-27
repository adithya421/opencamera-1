  
# Open Camera    
 Open Camera é um plugin flutter, escrito em Dart, muito leve, agradável e intuitivo, que adiciona ao seu aplicativo a capacidade de tirar fotos e gravar vídeos.  
     
## Comece a usar É muito facil utilizar o plugin o **Open Camera** em seu projeto, ele foi pensado para ser simples e de fácil implementação. Para sistemas **Android** a versão do mínima do SDK é 24 e **IOS** versão mínima é 9.3  
## Instalação A instalação do plugin na sua aplicação é muito simples, adicione no seu arquivo **pubspec.yaml** a referência do plugin **OpenCamera**.  
  
 dependencies:      open_camera:    
        git:    
          url: 'https://github.com/openponce/opencamera.git'    
      flutter:    
        sdk: flutter  
    
##  Android  
No arquivo **AndroidManifest.xml** adicione as seguintes permissões.  
```  
<uses-permission android:name="android.permission.INTERNET" /> <uses-permission    
  android:name="android.permission.CAMERA"    
android:required="true" /> <uses-permission    
  android:name="android.permission.RECORD_AUDIO"    
android:required="true" /> <uses-permission    
  android:name="android.permission.READ_EXTERNAL_STORAGE"    
android:required="true" /> <uses-permission    
  android:name="android.permission.WRITE_EXTERNAL_STORAGE"    
  android:required="true" />  
```  
##  IOS  
No IOS é necessário editar os seguintes arquivos.  
  
**Arquivo PodFile**  
Altere o seguinte cometário no arquivo PodFile, o arquivo está na pasta **ios/PodFile** do seu projeto.  
```  
platform :ios, '9.3'  
```  
*A versão miníma da plataforma é 9.3*  
  
**Arquivo Info.plist**  
No arquivo **Info.plist** adicione as seguintes pemissões.  
O arquivo está em **ios/Runner/Info.plist** no seu projeto.  
  
```
<key>NSCameraUsageDescription</key>
<string>Can I use the camera please?</string>    
<key>NSMicrophoneUsageDescription</key>
<string>Can I use the mic please?</string>    
<key>NSPhotoLibraryAddUsageDescription</key>    
<string>Camera App would like to save photos from the app to your gallery</string>    
<key>NSPhotoLibraryUsageDescription</key>    
<string>Camera App would like to access your photo gallery for uploading images to the app</string>    
<key>NSAppTransportSecurity</key>    
<dict>    
	 <key>NSAllowsArbitraryLoads</key>    
	 <true/>    
</dict>
```
    
