%modelfile = "./my_model_220_3.h5";
%net = importKerasNetwork(modelfile);

if ~exist('my_model_250_3','dir')
    unzip('my_model_250_3.zip')
end


if ~exist('my_model_250_4','dir')
    unzip('my_model_250_4.zip')
end
iden_modelFolder = './my_model_250_3';
classify_modelFolder = './my_model_250_4';

%classNames = {'crack', 'non-crack'};
iden_net = importTensorFlowNetwork(iden_modelFolder,'OutputLayerType','classification','Classes','auto'); 
%lgraph = importTensorFlowLayers(modelFolder,'OutputLayerType','classification');
classify_net = importTensorFlowNetwork(classify_modelFolder,"OutputLayerType","classification","Classes",'auto');