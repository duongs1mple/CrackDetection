%cLayer = lgraph.Layers(end);
%cLayer.Classes = classNames;
%lgraph = replaceLayer(lgraph,'ClassificationLayer_activation_1',cLayer);
%net = assembleNetwork(lgraph);

im = imread('accept217070.jpg');
im_in = double(im) /255.0;
prob = predict(iden_net, im_in);
%fprintf (prob);

crack_types = ["Large crack", "Serious crack", "Small crack"];

if prob <=0.5
    fprintf('Crack\n');
   classify_prob = predict(classify_net, im_in);
    [value, argmax] = max(classify_prob);
    %fprintf(argmax);
    fprintf(crack_types(argmax));
else
    fprintf('Non-crack')
end
