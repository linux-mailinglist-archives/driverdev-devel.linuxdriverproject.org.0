Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50343387035
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 May 2021 05:20:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86F3483CE5;
	Tue, 18 May 2021 03:19:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uXOXxzEacbDG; Tue, 18 May 2021 03:19:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE06D83C9B;
	Tue, 18 May 2021 03:19:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A91181BF429
 for <devel@linuxdriverproject.org>; Tue, 18 May 2021 03:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 937E5400AF
 for <devel@linuxdriverproject.org>; Tue, 18 May 2021 03:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tg0wJo1XxjBP for <devel@linuxdriverproject.org>;
 Tue, 18 May 2021 03:19:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from cmccmta1.chinamobile.com (cmccmta1.chinamobile.com
 [221.176.66.79])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4939940200
 for <devel@driverdev.osuosl.org>; Tue, 18 May 2021 03:19:44 +0000 (UTC)
Received: from spf.mail.chinamobile.com (unknown[172.16.121.5]) by
 rmmx-syy-dmz-app03-12003 (RichMail) with SMTP id 2ee360a332359a1-83889;
 Tue, 18 May 2021 11:19:17 +0800 (CST)
X-RM-TRANSID: 2ee360a332359a1-83889
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from [192.168.21.77] (unknown[10.42.68.12])
 by rmsmtp-syy-appsvr03-12003 (RichMail) with SMTP id 2ee360a3322856b-9c9e4;
 Tue, 18 May 2021 11:19:17 +0800 (CST)
X-RM-TRANSID: 2ee360a3322856b-9c9e4
Subject: Re: [PATCH] staging: iio: cdc: ad7746: Fix unnecessary check
 andassignment in ad7746_probe()
To: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
References: <20210517150006.8436-1-tangbin@cmss.chinamobile.com>
 <YKLqtc8cowOxUTid@smtp.gmail.com>
From: tangbin <tangbin@cmss.chinamobile.com>
Message-ID: <5dc07171-f2ce-0a73-205f-603a520306f1@cmss.chinamobile.com>
Date: Tue, 18 May 2021 11:19:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <YKLqtc8cowOxUTid@smtp.gmail.com>
Content-Language: en-US
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, lars@metafoo.de, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 lucas.p.stankus@gmail.com, jic23@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Marcelo:

On 2021/5/18 6:14, Marcelo Schmitt wrote:
> Hi Tang,
>
> The patch looks overall good, though I think it could be split into two
> pieces: one for simplifying ret declaration and another for removing the
> check after device register.
> Despite that, I guess Lucas might already be working on similar changes.
> https://lore.kernel.org/linux-iio/cover.1620766020.git.lucas.p.stankus@gmail.com/

Thanks for your reply, I really don't know someone has send the similar one.

I forget this patch.


> As general advice, I would recommend avoiding using generic words such
> as fix in the subject line. It's often better to say something about the
> nature of what is being done.

OK, got it!

Thanks

Tang Bin

>
> Cc: lucas.p.stankus@gmail.com
>
>
> Best regards,
>
> Marcelo
>
> On 05/17, Tang Bin wrote:
>> In the function ad7746_probe(), the return value of
>> devm_iio_device_register() can be zero or ret, thus it is
>> unnecessary to repeated check here. And delete unused
>> initialized value of 'ret', because it will be assigned by
>> the function i2c_smbus_write_byte_data().
>>
>> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
>> ---
>>   drivers/staging/iio/cdc/ad7746.c | 8 ++------
>>   1 file changed, 2 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
>> index dfd71e99e..d3b6e68df 100644
>> --- a/drivers/staging/iio/cdc/ad7746.c
>> +++ b/drivers/staging/iio/cdc/ad7746.c
>> @@ -680,7 +680,7 @@ static int ad7746_probe(struct i2c_client *client,
>>   	struct ad7746_chip_info *chip;
>>   	struct iio_dev *indio_dev;
>>   	unsigned char regval = 0;
>> -	int ret = 0;
>> +	int ret;
>>   
>>   	indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*chip));
>>   	if (!indio_dev)
>> @@ -730,11 +730,7 @@ static int ad7746_probe(struct i2c_client *client,
>>   	if (ret < 0)
>>   		return ret;
>>   
>> -	ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
>> -	if (ret)
>> -		return ret;
>> -
>> -	return 0;
>> +	return devm_iio_device_register(indio_dev->dev.parent, indio_dev);
>>   }
>>   
>>   static const struct i2c_device_id ad7746_id[] = {
>> -- 
>> 2.20.1.windows.1
>>
>>
>>


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
