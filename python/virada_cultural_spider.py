class ViradaCulturalSpider(CrawlSpider):
    name = "virada_cultural"
    start_urls = ["http://www.viradaculturalpaulista.sp.gov.br"]

    def parse(self, response):
