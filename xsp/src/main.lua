init("0", 1); --以当前应用 Home 键在右边初始化


-- version 2.0

-- 判断是在什么界面
function checkGetDisplay()
  -- 是否在主界面
 x, y = findColorInRegionFuzzy(0xdcbd9c, 95, 1121,43, 1121,43, 0, 0)
if x > -1 then
return 1
end
	
	-- 是否在战斗结束界面
  x, y = findColorInRegionFuzzy(0xfeefbf, 95, 639,624, 639,624, 0, 0)
  if x > -1 then
    return 3
  end
  
  -- 是否在开始观战界面
 x, y = findColorInRegionFuzzy(0x181a18, 95, 61,317, 61,317, 0, 0)
if x > -1 then
return 2
end
  
  
  -- 是否在商品推荐界面 点击(79,662)
  x, y = findColorInRegionFuzzy(0xd22325, 95, 576,504, 576,504, 0, 0)
  if x > -1 then
    return 4
  end
	
	-- 防守成功界面
	x, y = findColorInRegionFuzzy(0xffffff, 95, 736,231, 736,231, 0, 0)
if x > -1 then
return 6
end
x, y = findColorInRegionFuzzy(0x472f28, 95, 634, 162, 634, 162, 0, 0)
if x > -1 then
return 7
end
  
  return 5
  
end

while true do
  mSleep(1000)-- 间歇一秒检测
  
  display = checkGetDisplay()
  sysLog('---display---')
  sysLog(display)
  if display == 1 then
    -- 在主界面，点击开始按钮
    mSleep(50)
    touchDown(1, 1048,663)
    mSleep(50)
    touchUp(1, 1048,663)  
  elseif display == 2 then
    -- 观战界面
    mSleep(50)
    touchDown(1, 841,257)
    mSleep(50)
    touchUp(1, 841,257)  
  elseif display == 3 then
    -- 结束界面，点击确定
    mSleep(50)
    touchDown(1, 639,624)
    mSleep(50)
    touchUp(1, 639,624)  
  elseif display == 4 then
    -- 商品推荐界面 点击(79,662)
    mSleep(50)
    touchDown(1, 79,662)
    mSleep(50)
    touchUp(1, 79,662)  
		elseif display == 6 then
    -- 防守成功界面 点击(642,634)
    mSleep(50)
    touchDown(1, 642,634)
    mSleep(50)
    touchUp(1, 642,634) 
		elseif display == 7 then
    -- 玩家直升界面 点击(642,634)
    mSleep(50)
    touchDown(1, 642,634)
    mSleep(50)
    touchUp(1, 642,634) 
  else
    mSleep(50)
  end
end