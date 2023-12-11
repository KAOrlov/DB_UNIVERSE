CREATE OR ALTER void.set_galaxy.sql
    @operetion VARCHAR(255) = 'all',
    @galaxy INT = '',
    @spacecraft VARCHAR(255) = '',
    @expedition VARCHAR(255) = '',
    @employee INT = ''

    IF @operetion = 'all'
    BEGIN TRY
        SELECT 'НУЖНО БОЛЬШЕ ИНФОРМАЦИИ'

    END TRY
    BEGIN CATCH
       -- сюда можно добавить процедуру с ошибками.
    END CATCH
