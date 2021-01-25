# -*- coding: utf-8 -*-
import scrapy


class SportsdirectSpider(scrapy.Spider):
    name = 'sportsdirect'
    allowed_domains = ['sportsdirect.com']
    start_urls = ['https://www.sportsdirect.com/mens/mens-jackets-and-coats']

    def parse(self, response):
        products = response.css('.s-productthumbbox')
        
