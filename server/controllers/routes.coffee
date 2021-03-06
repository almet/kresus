banks      = require './banks'
accesses   = require './accesses'
accounts   = require './accounts'
operations = require './operations'
alerts     = require './alerts'
categories = require './categories'
locale     = require './locale'
weboob     = require './weboob'

module.exports =
    'banks':
        get: banks.index
    'bankID': param: banks.loadBank
    'banks/:bankID':
        get: banks.show
        delete: banks.destroy
    'banks/getAccesses/:bankID':
        get: banks.getAccesses
    'banks/getAccounts/:bankID':
        get: banks.getAccounts

    'accesses':
        get: accesses.index
        post: accesses.create
    'bankAccessID': param: accesses.loadBankAccess
    'accesses/:bankAccessID':
        get: accesses.show
        put: accesses.update
        delete: accesses.destroy
    'accesses/getAccounts/:bankAccessID':
        get: accesses.getAccounts

    'accounts':
        get: accounts.index
    'bankAccountID': param: accounts.loadBankAccount
    'accounts/:bankAccountID':
        get: accounts.show
        delete: accounts.destroy
    'accounts/getOperations/:bankAccountID':
        get: accounts.getOperations
    'accounts/retrieveOperations/:bankAccountID':
        get: accounts.retrieveOperations

    'operations':
        get: operations.index
        post: operations.create
    'bankOperationID': param: operations.loadBankOperation
    'operations/:bankOperationID':
        get: operations.show
        put: operations.update
        delete: operations.delete
    'operations/:bankOperationID/file':
        get: operations.file
    'operations/query':
        post: operations.query

    'categoryId': param: categories.loadCategory
    'categories':
        get: categories.index
        post: categories.create
    'categories/:categoryId':
        put: categories.update
        delete: categories.delete

    'alerts':
        get: alerts.index
        post: alerts.create
    'bankAlertID': param: alerts.loadAlert
    'alerts/:bankAlertID':
        get: alerts.show
        put: alerts.update
        delete: alerts.destroy
    'alerts/getForBankAccount/:accountID':
        get: alerts.getForBankAccount

    'locale':
        get: locale.get

    'weboob/update':
        get: weboob.update
    'weboob/status':
        get: weboob.status
