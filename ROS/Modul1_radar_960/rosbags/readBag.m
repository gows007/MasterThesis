
bagName = '2017-07-25-16-28-24.bag';
bag = rosbag(bagName);
bagSelect = select(bag,'Topic','/feuerwerr_siso_demo/FeuerRadarRaw');

msgs = readMessages(bagSelect,2);