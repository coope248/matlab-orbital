LL = [3,3.05,3.1,3.15,3.2,3.25,3.3,3.35,3.4,3.45,3.5,4]
f = @(x,y) jacobiCalc([x,y,0,0,0,0],0.0122);
fc = fcontour(f,[-1.5,1.5],'LevelList',LL,'MeshDensity',200);
colorbar
axis square
