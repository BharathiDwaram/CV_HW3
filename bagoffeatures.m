setDir  = fullfile(toolboxdir('/Users/dwaramswarnabharathi/Desktop/CV/Assignment3/imageSet'));
imgSets = imageSet(setDir,'recursive');

trainingSets = partition(imgSets,2);
bag = bagOfFeatures(trainingSets,'Verbose',false);

img = read(imgSets(1),1);
featureVector = encode(bag,img);

setDir  = fullfile(toolboxdir('/Users/dwaramswarnabharathi/Desktop/CV/Assignment3/imageSet'));
imds = imageDatastore(setDir,'IncludeSubfolders',true,'LabelSource',...
    'foldernames');

extractor = @exampleBagOfFeaturesExtractor;
bag = bagOfFeatures(imds,'CustomExtractor',extractor)
