Feature: php-ist 2014 etkinlik bilgilerini kontrol eder
  Bu test etkinligin tarih yer ve konusmaci bilgilerini kontrol eder.

  Background:
    Given I am on homepage

    Scenario: Etkinligin "3rd May 2014" tarihinde olup olmadigini kontrol edelim.
      Then I should see "3rd May 2014"

    Scenario: Konusmacilari test edelim.
      Then I follow "Speakers"
      Then I should see "Mehmet Karcı"
      Then I should see "Osman Üngür"
      Then I should see "Hugo Hamon"
      Then I should see "Mustafa İleri"
      Then I should see "Lemi Orhan Ergin"
      Then I should see "Ramazan Korkmaz"
      Then I should see "Hugo Hamon"
      Then I should see "Alvaro Videla"
      Then I should see "Suat İmamoğlu"
      Then I should not see "Fatih Gürsoy"

  @javascript
  Scenario: Google sayfa testi
    Then I search on google with "php ist"
    Then I should see "php-ist PHP Conference 2014"

    @javascript
  Scenario: Mekan kisminda google maps haritasini kontrol edelim
    Then check maps on venue

