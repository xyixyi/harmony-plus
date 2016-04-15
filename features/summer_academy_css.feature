Feature: Summer Academy
    
    As a viewer 
    So that the website feels and looks nice and beautiful
    I want to see a pretty summer academy page
    
Scenario: check summerAcademy content
    Given I am on summer academy page
    And I should see "ABOUT US"
    And I should see "STORIES"
    And I should see "B-Bay"
    And I should see "IDEAL"
    And I should see "Sillicon Valley Business School for Teenagers"
    And I should see "immersive summer program in world renowned university"
    And I should see "UC Berkeley Silicon Valley Business School"
    
Scenario: check photos
    Given I am on summer academy page
    Then I should see the image "summerAcademy/image1.png"
    Then I should see the image "summerAcademy/image2.png"
    Then I should see the image "summerAcademy/image3.png"
    Then I should see the image "summerAcademy/image4.png"
    Then I should see the image "summerAcademy/image5.png"
    Then I should see the image "summerAcademy/image6.png"
    Then I should see the image "summerAcademy/video1.png"
    Then I should see the image "summerAcademy/video2.png"
    Then I should see the image "summerAcademy/video3.png"
    Then I should see the image "summerAcademy/people.png"
    Then I should see the image "summerAcademy/time.png"
    Then I should see the image "summerAcademy/price.png"
    
Scenario: check links
    Given I am on summer academy page
    Then I see the page with video link "Professor Gregory welcomes" to "http://v.qq.com/page/d/n/1/d0189aezsn1.html"
    Then I see the page with video link "Retrospect of UC Berkeley Silicon" to "http://v.qq.com/boke/page/o/4/y/o01872mhz4y.html"
    Then I see the page with video link "Professor Dana Carne's class in Haas School" to "http://v.qq.com/page/d/n/1/d0189aezsn1.html"
    
        