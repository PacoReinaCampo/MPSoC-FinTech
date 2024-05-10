///////////////////////////////////////////////////////////////////////////////////
//                                            __ _      _     _                  //
//                                           / _(_)    | |   | |                 //
//                __ _ _   _  ___  ___ _ __ | |_ _  ___| | __| |                 //
//               / _` | | | |/ _ \/ _ \ '_ \|  _| |/ _ \ |/ _` |                 //
//              | (_| | |_| |  __/  __/ | | | | | |  __/ | (_| |                 //
//               \__, |\__,_|\___|\___|_| |_|_| |_|\___|_|\__,_|                 //
//                  | |                                                          //
//                  |_|                                                          //
//                                                                               //
//                                                                               //
//              Peripheral-NTM for MPSoC                                         //
//              Neural Turing Machine for MPSoC                                  //
//                                                                               //
///////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////
//                                                                               //
// Copyright (c) 2020-2024 by the author(s)                                      //
//                                                                               //
// Permission is hereby granted, free of charge, to any person obtaining a copy  //
// of this software and associated documentation files (the "Software"), to deal //
// in the Software without restriction, including without limitation the rights  //
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell     //
// copies of the Software, and to permit persons to whom the Software is         //
// furnished to do so, subject to the following conditions:                      //
//                                                                               //
// The above copyright notice and this permission notice shall be included in    //
// all copies or substantial portions of the Software.                           //
//                                                                               //
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR    //
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,      //
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE   //
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER        //
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, //
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN     //
// THE SOFTWARE.                                                                 //
//                                                                               //
// ============================================================================= //
// Author(s):                                                                    //
//   Paco Reina Campo <pacoreinacampo@queenfield.tech>                           //
//                                                                               //
///////////////////////////////////////////////////////////////////////////////////

#include <iostream>
#include <vector>

using namespace std;

vector<vector<vector<double>>> ntm_tensor_differentiation(vector<vector<vector<double>>> data_in, double length_i_in, double length_j_in, double length_k_in, int control) {
  double temporal;

  vector<vector<vector<double>>> data_out;

  for (int i = 0; i < data_in[0].size(); i++) {
    vector<vector<double>> matrix;

    for (int j = 0; j < data_in[0].size(); j++) {
      vector<double> vector;

      for (int k = 0; k < data_in[0][0].size(); k++) {
        if (control == 0) {
          if (i == 0) {
            temporal = 0.0;
          } else {
            temporal = (data_in[i][j][k] - data_in[i - 1][j][k]) / length_i_in;
          }
        } else if (control == 1) {
          if (j == 0) {
            temporal = 0.0;
          } else {
            temporal = (data_in[i][j][k] - data_in[i][j - 1][k]) / length_j_in;
          }
        } else {
          if (k == 0) {
            temporal = 0.0;
          } else {
            temporal = (data_in[i][j][k] - data_in[i][j][k - 1]) / length_k_in;
          }
        }
        vector.push_back(temporal);
      }
      matrix.push_back(vector);
    }
    data_out.push_back(matrix);
  }

  return data_out;
}
