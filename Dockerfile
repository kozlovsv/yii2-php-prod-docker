ARG PHP_BASE_IMAGE_VERSION
FROM yiisoftware/yii2-php:${PHP_BASE_IMAGE_VERSION}
RUN cp "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
    
    

    
