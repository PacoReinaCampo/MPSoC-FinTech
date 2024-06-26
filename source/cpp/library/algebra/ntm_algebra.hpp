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

double ntm_scalar_multiplication(vector<double>);
double ntm_scalar_summation(vector<double>);

double ntm_dot_product(vector<double>, vector<double>);
vector<double> ntm_vector_convolution(vector<double>, vector<double>);
double ntm_vector_cosine_similarity(vector<double>, vector<double>);
double ntm_vector_module(vector<double>);
vector<double> ntm_vector_multiplication(vector<vector<double>>);
vector<double> ntm_vector_summation(vector<vector<double>>);
vector<double> ntm_vector_differentiation(vector<double>, double);
vector<double> ntm_vector_integration(vector<double>, double);
vector<double> ntm_vector_softmax(vector<double>);

vector<vector<double>> ntm_matrix_convolution(vector<vector<double>>, vector<vector<double>>);
vector<vector<double>> ntm_matrix_inverse(vector<vector<double>>);
vector<vector<double>> ntm_matrix_multiplication(vector<vector<vector<double>>>);
vector<vector<double>> ntm_matrix_product(vector<vector<double>>, vector<vector<double>>);
vector<vector<double>> ntm_matrix_summation(vector<vector<vector<double>>>);
vector<vector<double>> ntm_matrix_transpose(vector<vector<double>>);
vector<vector<double>> ntm_matrix_vector_convolution(vector<vector<double>>, vector<double>);
vector<vector<double>> ntm_matrix_vector_product(vector<vector<double>>, vector<double>);
vector<vector<double>> ntm_transpose_vector_product(vector<double>, vector<double>);
vector<vector<double>> ntm_matrix_differentiation(vector<vector<double>>, double, double, int);
vector<vector<double>> ntm_matrix_integration(vector<vector<double>>, double);
vector<vector<double>> ntm_matrix_softmax(vector<vector<double>>);

vector<vector<vector<double>>> ntm_tensor_convolution(vector<vector<vector<double>>>, vector<vector<vector<double>>>);
vector<vector<vector<double>>> ntm_tensor_inverse(vector<vector<vector<double>>>);
vector<vector<vector<double>>> ntm_tensor_matrix_convolution(vector<vector<vector<double>>>, vector<vector<double>>);
vector<vector<vector<double>>> ntm_tensor_matrix_product(vector<vector<vector<double>>>, vector<vector<double>>);
vector<vector<vector<double>>> ntm_tensor_multiplication(vector<vector<vector<double>>>);
vector<vector<vector<double>>> ntm_tensor_product(vector<vector<vector<double>>>, vector<vector<vector<double>>>);
vector<vector<vector<double>>> ntm_tensor_summation(vector<vector<vector<double>>>);
vector<vector<vector<double>>> ntm_tensor_transpose(vector<vector<vector<double>>>);
vector<vector<vector<double>>> ntm_tensor_differentiation(vector<vector<vector<double>>>, double, double, double, int);
vector<vector<vector<double>>> ntm_tensor_integration(vector<vector<vector<double>>>, double);
vector<vector<vector<double>>> ntm_tensor_softmax(vector<vector<vector<double>>>);
