<?php
use Behat\MinkExtension\Context\MinkContext;

class FeatureContext extends MinkContext
{
    /**
     * @Then /^I search on google with "([^"]*)"$/
     */
    public function iSearchOnGoogleWith($arg1)
    {
        $this->getSession()->visit('http://www.google.com.tr');
        $page = $this->getSession()->getPage();
        $page->find('css', 'input[type=text]')->setValue($arg1);
        $page->find('css', 'button')->click();
        $this->getSession()->wait(500);
    }

    /**
     * @Then /^check maps on venue$/
     */
    public function checkMapsOnVenue()
    {
        $page = $this->getSession()->getPage();
        $page->findLink('Venue')->click();
        $this->assertElementOnPage('html body div div#schedule.section section#venue.section div.inner div.content div#map_canvas div.gm-style');
    }

}