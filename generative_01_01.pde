  PImage img;
  String path = "../generative/gen01/";
  String[] filenames = listFileNames(path);
  String[] layers = listFileNames(path+"/"+filenames[0]);
  int foldercount = filenames.length;
  //int layers = 3;
  //int f = int(random(0, foldercount));

void setup() {
  size(1024, 1024);
  background(255, 204, 0);
}

void draw() {
  background(255, 204, 0);
  for (int folder = 0; folder < foldercount; folder++) {
    sortimage(folder);
    saveFrame(gen+"_####.jpg");
   }
  frameRate(3);
 
}

void sortimage(int folder) {
  String[] layers = listFileNames(path+"/"+filenames[folder]);
  int rnd = int (random(1, (layers.length)+1));
  img = loadImage(path+"/"+filenames[folder]+"/"+("0" + rnd+".png"));
  image(img, 0, 0); 
}

// This function returns all the files in a directory as an array of Strings  
String[] listFileNames(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    String names[] = file.list();
    return names;
  } else {
    // If it's not a directory
    return null;
  }
}
