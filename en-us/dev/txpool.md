# pending transaction solutions

## 1）Inappropriate nonce:
Suggestions:

- Try to reset a appropriate value
- If you have many pending transactions , please wait for earier transactions confirmed.
- metatask--setting-advanced--reset account
- metatask--setting--advanced--Customize transaction nonce :resend transaction with pending tx's nonce and higher gas price.

## low gas price：
- Set a higher gas price and resend

## 3）meta transaction

```
case 1：

invalid meta transaction FeePercent need 0-10000. Found:100001

illegal fee range, it should between 0-10000

solution：

metatask--setting--advanced--Customize transaction nonce :resend transaction with pending tx's nonce and higher gas price.
```

```
case 2：

err: expired meta transaction. current:2083222, need execute before 2075609

meta transation expired，it should be execute before 2075609, and the current height is 2083222；


solution：

metatask--setting--advanced--Customize transaction nonce :resend transaction with pending tx's nonce and higher gas price.
```