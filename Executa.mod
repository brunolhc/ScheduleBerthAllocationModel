/*********************************************
 * OPL 12.6.0.0 Model
 * Author: User
 * Creation Date: 23/03/2016 at 14:47:25
 *********************************************/
main{
var problema =  new Array(81);
problema[1] = "Test_Case_2B8N64.dat";
/*problema[1] = "Test_Case_2B4N36.dat";
problema[2] = "Test_Case_2B4N43.dat";
problema[3] = "Test_Case_2B4N44.dat";
problema[4] = "Test_Case_2B4N52.dat";
problema[5] = "Test_Case_2B4N54.dat";
problema[6] = "Test_Case_2B4N63.dat";
problema[7] = "Test_Case_2B4N67.dat";
problema[8] = "Test_Case_2B4N272.dat";
problema[9] = "Test_Case_2B4N375.dat";
problema[10] = "Test_Case_2B4N432.dat";
problema[11] = "Test_Case_2B4N678.dat";
problema[12] = "Test_Case_2B4N714.dat";

problema[13] = "Test_Case_2B5N27.dat";
problema[14] = "Test_Case_2B5N32.dat";
problema[15] = "Test_Case_2B5N55.dat";
problema[16] = "Test_Case_2B5N86.dat";
problema[17] = "Test_Case_2B5N354.dat";
problema[18] = "Test_Case_2B5N363.dat";
problema[19] = "Test_Case_2B5N373.dat";
problema[20] = "Test_Case_2B5N772.dat";
problema[21] = "Test_Case_2B5N837.dat";

problema[22] = "Test_Case_2B6N43.dat";
problema[23] = "Test_Case_2B6N53.dat";
problema[24] = "Test_Case_2B6N66.dat";
problema[25] = "Test_Case_2B6N75.dat";
problema[26] = "Test_Case_2B6N235.dat";
problema[27] = "Test_Case_2B6N455.dat";
problema[28] = "Test_Case_2B6N628.dat";

problema[29] = "Test_Case_2B7N73.dat";
problema[30] = "Test_Case_2B7N254.dat";
problema[31] = "Test_Case_2B7N256.dat";
problema[32] = "Test_Case_2B7N346.dat";

problema[33] = "Test_Case_2B8N33.dat";
problema[34] = "Test_Case_2B8N55.dat";
problema[35] = "Test_Case_2B8N64.dat";
problema[36] = "Test_Case_2B8N237.dat";
problema[37] = "Test_Case_2B8N428.dat";

problema[38] = "Test_Case_2B9N476.dat";
problema[39] = "Test_Case_2B9N815.dat";

problema[40] = "Test_Case_2B10N46.dat";*/

/*problema[1] = "Test_Case_3B4N26.dat";
problema[2] = "Test_Case_3B4N34.dat";
problema[3] = "Test_Case_3B4N36.dat";
problema[4] = "Test_Case_3B4N47.dat";
problema[5] = "Test_Case_3B4N55.dat";
problema[6] = "Test_Case_3B4N64.dat";
problema[7] = "Test_Case_3B4N66.dat";
problema[8] = "Test_Case_3B4N72.dat";
problema[9] = "Test_Case_3B4N73.dat";
problema[10] = "Test_Case_3B4N86.dat";
problema[11] = "Test_Case_3B4N433.dat";
problema[12] = "Test_Case_3B4N563.dat";
problema[13] = "Test_Case_3B4N725.dat";
problema[14] = "Test_Case_3B4N832.dat";

problema[15] = "Test_Case_3B5N34.dat";
problema[16] = "Test_Case_3B5N35.dat";
problema[17] = "Test_Case_3B5N45.dat";
problema[18] = "Test_Case_3B5N53.dat";
problema[19] = "Test_Case_3B5N57.dat";
problema[20] = "Test_Case_3B5N478.dat";
problema[21] = "Test_Case_3B5N533.dat";
problema[22] = "Test_Case_3B5N555.dat";
problema[23] = "Test_Case_3B6N22.dat";
problema[24] = "Test_Case_3B6N23.dat";
problema[25] = "Test_Case_3B6N37.dat";
problema[26] = "Test_Case_3B6N47.dat";
problema[27] = "Test_Case_3B6N55.dat";
problema[28] = "Test_Case_3B6N457.dat";
problema[29] = "Test_Case_3B6N536.dat";

problema[30] = "Test_Case_3B7N37.dat";
problema[31] = "Test_Case_3B7N43.dat";
problema[32] = "Test_Case_3B7N45.dat";
problema[33] = "Test_Case_3B7N47.dat";
problema[34] = "Test_Case_3B7N85.dat";
problema[35] = "Test_Case_3B7N645.dat";

problema[36] = "Test_Case_3B8N43.dat";
problema[37] = "Test_Case_3B8N55.dat";
problema[38] = "Test_Case_3B8N735.dat";

problema[39] = "Test_Case_3B9N33.dat";
problema[40] = "Test_Case_3B9N34.dat";

problema[41] = "Test_Case_3B10N33.dat";*/




for (var s = 1; s <= 81; s++) 
{ 

var source = new IloOplModelSource("SMBAP.mod"); 

var cplex = new IloCplex(); 
cplex.tilim = 1800;

var def = new IloOplModelDefinition(source); 

var opl = new IloOplModel(def,cplex); 

var data = new IloOplDataSource(problema[s]); 
opl.addDataSource(data); 
opl.generate(); 
	
if (cplex.solve()){
writeln(s, "obj = ", cplex.getObjValue());
}else {
writeln("No solution");
};
opl.postProcess();			
};

};

