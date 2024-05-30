void main() {
  
  List<List<int>> array1= [[21, 32, 43],[48, 65, 62], [75, 58, 99] ];

  List<List<int>> array2= [[11, 12, 93],[48, 54, 56], [17, 86, 49] ];
    
  
  List<List<int>> result= addMatrices(array1, array2);
  
  for (int i = 0; i < result.length; i++) {
    print(result[i]);
  }
}

List<List<int>> addMatrices(List<List<int>> array1, List<List<int>> array2) {
   List<List<int>> result= [[0, 0, 0],[0, 0, 0],[0, 0, 0]];

  for (int i=0; i<3; i++) {
   
    for (int j=0; j<3; j++) {
      
      result[i][j]= array1[i][j] + array2[i][j];
    }
  }

   return result;
}