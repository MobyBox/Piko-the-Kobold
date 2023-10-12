--hide vanilla model
vanilla_model.PLAYER:setVisible(false)

--Tail movement:
tail_0 = models.model.Body.Tail
tail_1 = models.model.Body.Tail.Tail_2
cloth_0 = models.model.Body.Loincloth
cloth_1 = models.model.RightLeg.Right_Loincloth
cloth_2 = models.model.LeftLeg.Left_Loincloth


events.RENDER:register(function (delta)
    
    time = world.getTime(delta)
    
    cloth_0:setRot(math.sin(math.rad(32.7)+time/8)*3,0,0)
    cloth_1:setRot(math.sin(math.rad(32.7)+time/8)*3,0,0)
    cloth_2:setRot(math.sin(math.rad(32.7)+time/8)*3,0,0)
    
    
    if not player:isSneaking() and not player:isSprinting() then
        --log('yes')
        tail_0:setRot(math.sin(math.rad(32.7)+time/32)*6,math.sin(math.rad(32.7)+time/2)*10,0)
        tail_1:setRot(math.sin(math.rad(65.4)+time/32)*6,math.sin(math.rad(65.4)+time/2)*10,0)
        else
            if player:isSneaking() then
                --log('sneaking')
                if player:isUnderwater() then
                    --log('sneaking underwather')
                    tail_0:setRot(35+math.sin(math.rad(32.7)+time/32)*3,math.sin(math.rad(32.7)+time/2)*10,0)
                    tail_1:setRot(35+math.sin(math.rad(65.4)+time/32)*3,math.sin(math.rad(65.4)+time/2)*10,0)
                    else 
                        if player:isOnGround() then
                        --log('sneaking')
                        tail_0:setRot(35,math.sin(math.rad(32.7)+time/6)*6,0)
                        tail_1:setRot(0,math.sin(math.rad(65.4)+time/6)*6,0)
                        else
                            --log('sneaking on air')
                            tail_0:setRot(math.sin(math.rad(32.7)+time/16)*6,math.sin(math.rad(32.7)+time)*10,0)
                            tail_1:setRot(math.sin(math.rad(65.4)+time/16)*6,math.sin(math.rad(65.4)+time)*10,0)
                    end
                end
            end
            if player:isSprinting() then
                --log('springting')
                if player:isUnderwater() then
                    --log('springting underwather')
                    tail_0:setRot(35+math.sin(math.rad(32.7)+time/32)*3,math.sin(math.rad(32.7)+time/2)*10,0)
                    tail_1:setRot(35+math.sin(math.rad(65.4)+time/32)*3,math.sin(math.rad(65.4)+time/2)*10,0)
                    else 
                        if player:isOnGround() then
                        --log('springting')
                        tail_0:setRot(math.sin(math.rad(32.7)+time/32)*6,math.sin(math.rad(32.7)+time/1.5)*10,0)
                        tail_1:setRot(math.sin(math.rad(65.4)+time/32)*6,math.sin(math.rad(65.4)+time/1.5)*10,0)
                        else
                            --log('springting on air')
                            tail_0:setRot(math.sin(math.rad(32.7)+time/16)*6,math.sin(math.rad(32.7)+time)*10,0)
                            tail_1:setRot(math.sin(math.rad(65.4)+time/16)*6,math.sin(math.rad(65.4)+time)*10,0)
                    end
                end
            end
    end
    
    
end)

