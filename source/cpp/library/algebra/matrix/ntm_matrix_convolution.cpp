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

#include <cassert>
#include <iostream>
#include <vector>

using namespace std;

vector<vector<double>> ntm_matrix_convolution(vector<vector<double>> data_a_in, vector<vector<double>> data_b_in) {
  vector<vector<double>> data_out;

  for (int i = 0; i < data_a_in.size(); i++) {
    vector<double> vector;

    for (int j = 0; j < data_b_in[0].size(); j++) {
      double temporal = 0.0;

      for (int m = 0; m < i + 1; m++) {
        for (int n = 0; n < j + 1; n++) {
          temporal += data_a_in[m][n] * data_b_in[i - m][j - n];
        }
      }
      vector.push_back(temporal);
    }
    data_out.push_back(vector);
  }

  return data_out;
}

int main() {
  vector<vector<double>> data_a_in{
      {1.0, 2.0, 3.0},
      {4.0, 2.0, 6.0},
      {3.0, 4.0, 1.0}};
  vector<vector<double>> data_b_in{
      {1.0, 3.0, 3.0},
      {7.0, 6.0, 2.0},
      {3.0, 4.0, 2.0}};

  vector<vector<double>> data_out{
      {1.0, 5.0, 12.0},
      {11.0, 34.0, 59.0},
      {34.0, 61.0, 103.0}};

  assert(ntm_matrix_convolution(data_a_in, data_b_in) == data_out);

  return 0;
}
