%{
###################################################################################
##                                            __ _      _     _                  ##
##                                           / _(_)    | |   | |                 ##
##                __ _ _   _  ___  ___ _ __ | |_ _  ___| | __| |                 ##
##               / _` | | | |/ _ \/ _ \ '_ \|  _| |/ _ \ |/ _` |                 ##
##              | (_| | |_| |  __/  __/ | | | | | |  __/ | (_| |                 ##
##               \__, |\__,_|\___|\___|_| |_|_| |_|\___|_|\__,_|                 ##
##                  | |                                                          ##
##                  |_|                                                          ##
##                                                                               ##
##                                                                               ##
##              Peripheral-NTM for MPSoC                                         ##
##              Neural Turing Machine for MPSoC                                  ##
##                                                                               ##
###################################################################################

###################################################################################
##                                                                               ##
## Copyright (c) 2020-2024 by the author(s)                                      ##
##                                                                               ##
## Permission is hereby granted, free of charge, to any person obtaining a copy  ##
## of this software and associated documentation files (the "Software"), to deal ##
## in the Software without restriction, including without limitation the rights  ##
## to use, copy, modify, merge, publish, distribute, sublicense, and/or sell     ##
## copies of the Software, and to permit persons to whom the Software is         ##
## furnished to do so, subject to the following conditions:                      ##
##                                                                               ##
## The above copyright notice and this permission notice shall be included in    ##
## all copies or substantial portions of the Software.                           ##
##                                                                               ##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR    ##
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,      ##
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE   ##
## AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER        ##
## LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, ##
## OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN     ##
## THE SOFTWARE.                                                                 ##
##                                                                               ##
## ============================================================================= ##
## Author(s):                                                                    ##
##   Paco Reina Campo <pacoreinacampo@queenfield.tech>                           ##
##                                                                               ##
###################################################################################
%}

% Constants
SIZE_I_IN = 3;
SIZE_J_IN = 3;
LENGTH_IN = 3;

% Signals
DATA_IN_0(:,:,1) = [3.0, 2.0, 2.0; 0.0, 2.0, 0.0; 5.0, 4.0, 1.0];
DATA_IN_0(:,:,2) = [3.0, 2.0, 2.0; 0.0, 2.0, 0.0; 5.0, 4.0, 1.0];
DATA_IN_0(:,:,3) = [3.0, 2.0, 2.0; 0.0, 2.0, 0.0; 5.0, 4.0, 1.0];

DATA_IN_1(:,:,1) = [0.0, 2.0, 0.0; 3.0, 2.0, 2.0; 5.0, 4.0, 1.0];
DATA_IN_1(:,:,2) = [0.0, 2.0, 0.0; 3.0, 2.0, 2.0; 5.0, 4.0, 1.0];
DATA_IN_1(:,:,3) = [0.0, 2.0, 0.0; 3.0, 2.0, 2.0; 5.0, 4.0, 1.0];

MEAN_0 = [11.0, 12.0, 10.0; 11.0, 12.0, 10.0; 11.0, 12.0, 10.0];
MEAN_1 = [12.0, 10.0, 11.0; 12.0, 10.0, 11.0; 12.0, 10.0, 11.0];

DATA_OUT_0 = [ 8.0, 10.0,  8.0; 11.0, 10.0, 10.0; 6.0, 8.0,  9.0];
DATA_OUT_1 = [12.0,  8.0, 11.0;  9.0,  8.0,  9.0; 7.0, 6.0, 10.0];

% DUT
assert(ntm_matrix_deviation(DATA_IN_0, MEAN_0), DATA_OUT_0);
assert(ntm_matrix_deviation(DATA_IN_1, MEAN_1), DATA_OUT_1);
