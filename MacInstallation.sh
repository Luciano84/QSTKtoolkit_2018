# Created on Jan 12, 2018
# @contact: luciano2023@gmail.com
# @summary: 2018 version of Mac Installation script for Homebrew, QSTK and its dependencies
# You will need to fix the code of the examples as described in https://github.com/QuantSoftware/QuantSoftwareToolkit/issues/73

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Python"
brew install python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
pip2 install --upgrade pip setuptools

echo "Adding additional repositories to brew"
brew tap samueljohn/python
brew tap homebrew/core

echo "virtualenv"
pip2 install virtualenv
pip2 install nose
pip2 install pyparsing
pip2 install python-dateutil

echo "Installing gcc which includes gfortran"
brew install gcc

echo "Installing numpy, scipy, matplotlib"
brew install numpy
brew install scipy
pip2 install matplotlib

echo "Create QSTK directory"
mkdir ~/QSTK
cd ~/QSTK

echo "Install pandas, scikits"
pip2 install pandas==0.7.3
pip2 install scikits.statsmodels
pip2 install scikit-learn

echo "Install QSTK"
pip2 install QSTK
