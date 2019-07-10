Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5AE6445C
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jul 2019 11:27:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E27886A02;
	Wed, 10 Jul 2019 09:27:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OuRrl7KA0A7C; Wed, 10 Jul 2019 09:27:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E01DC869D3;
	Wed, 10 Jul 2019 09:27:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C5251BF317
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 09:27:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 59AED2043D
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 09:27:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ywPEMVAgoPou for <devel@linuxdriverproject.org>;
 Wed, 10 Jul 2019 09:27:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from anchovy2.45ru.net.au (anchovy2.45ru.net.au [203.30.46.146])
 by silver.osuosl.org (Postfix) with ESMTPS id A52C41FEDF
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 09:27:46 +0000 (UTC)
Received: (qmail 14591 invoked by uid 5089); 10 Jul 2019 09:27:43 -0000
Received: by simscan 1.2.0 ppid: 14516, pid: 14517, t: 0.0683s
 scanners: regex: 1.2.0 attach: 1.2.0 clamav: 0.88.3/m:40/d:1950
Received: from unknown (HELO ?192.168.0.128?)
 (preid@electromag.com.au@203.59.235.95)
 by anchovy3.45ru.net.au with ESMTPA; 10 Jul 2019 09:27:42 -0000
Subject: Re: BUG: Staging: fbtft: Switch to the gpio descriptor interface
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Nishad Kamdar <nishadkamdar@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 thomas.petazzoni@free-electrons.com, devel@driverdev.osuosl.org,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <3ca02376-631b-d159-7070-7c50403126de@electromag.com.au>
 <907baecff15308988f44220fcb13b28cba742df2.camel@suse.de>
From: Phil Reid <preid@electromag.com.au>
Message-ID: <34678cc1-7d65-813a-c037-cfae4d2728f6@electromag.com.au>
Date: Wed, 10 Jul 2019 17:27:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <907baecff15308988f44220fcb13b28cba742df2.camel@suse.de>
Content-Language: en-AU
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 10/07/2019 17:05, Nicolas Saenz Julienne wrote:
> On Wed, 2019-07-10 at 16:31 +0800, Phil Reid wrote:
>> G'day Nishad,
>>
>> I'm just wondering if the commit
>> c440eee1a7a1d0f "Staging: fbtft: Switch to the gpio descriptor interface"
>> was tested on anything.
>>
>> I've had to apply the following patch to get my display functioning again.
>>
>> in particular the devm_gpiod_get_index using dev->driver->name for the gpio
>> lookup seems
>> wrong.
> 
> FYI We've seen the same issue this week in opensuse's bugzilla and was testing
> something very similar to the patch below. Phil do you plan on submitting your
> fix?
> 

Yes I can submit a patch tomorrow.

I just wasn't sure if it was working for anyone.



> 
>> Also I've had to invert the polarity of the reset-gpios in the DT file for the
>> display to function.
>>
>> this code:
>> 	gpiod_set_value_cansleep(par->gpio.reset, 0);
>> 	usleep_range(20, 40);
>> 	gpiod_set_value_cansleep(par->gpio.reset, 1);
>>
>> could be read as deasserting the reset line and then asserting it.
>> So I've had to specify and active high reset line in the DT.
>>
>> Regards
>> Phil
>>
>>
>>
>>
>>
>> diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-
>> core.c
>> index 9b07bad..6fe7cb5 100644
>> --- a/drivers/staging/fbtft/fbtft-core.c
>> +++ b/drivers/staging/fbtft/fbtft-core.c
>> @@ -79,18 +79,16 @@ static int fbtft_request_one_gpio(struct fbtft_par *par,
>>    	struct device_node *node = dev->of_node;
>>    	int ret = 0;
>>
>> -	if (of_find_property(node, name, NULL)) {
>> -		*gpiop = devm_gpiod_get_index(dev, dev->driver->name, index,
>> -					      GPIOD_OUT_HIGH);
>> -		if (IS_ERR(*gpiop)) {
>> -			ret = PTR_ERR(*gpiop);
>> -			dev_err(dev,
>> -				"Failed to request %s GPIO:%d\n", name, ret);
>> -			return ret;
>> -		}
>> -		fbtft_par_dbg(DEBUG_REQUEST_GPIOS, par, "%s: '%s' GPIO\n",
>> -			      __func__, name);
>> +	*gpiop = devm_gpiod_get_index_optional(dev, name, index,
>> +				      GPIOD_OUT_HIGH);
>> +	if (IS_ERR(*gpiop)) {
>> +		ret = PTR_ERR(*gpiop);
>> +		dev_err(dev,
>> +			"Failed to request %s GPIO: (%d)\n", name, ret);
>> +		return ret;
>>    	}
>> +	fbtft_par_dbg(DEBUG_REQUEST_GPIOS, par, "%s: '%s' GPIO\n",
>> +		      __func__, name);
>>
>>    	return ret;
>>    }
>> @@ -103,34 +101,34 @@ static int fbtft_request_gpios_dt(struct fbtft_par *par)
>>    	if (!par->info->device->of_node)
>>    		return -EINVAL;
>>
>> -	ret = fbtft_request_one_gpio(par, "reset-gpios", 0, &par->gpio.reset);
>> +	ret = fbtft_request_one_gpio(par, "reset", 0, &par->gpio.reset);
>>    	if (ret)
>>    		return ret;
>> -	ret = fbtft_request_one_gpio(par, "dc-gpios", 0, &par->gpio.dc);
>> +	ret = fbtft_request_one_gpio(par, "dc", 0, &par->gpio.dc);
>>    	if (ret)
>>    		return ret;
>> -	ret = fbtft_request_one_gpio(par, "rd-gpios", 0, &par->gpio.rd);
>> +	ret = fbtft_request_one_gpio(par, "rd", 0, &par->gpio.rd);
>>    	if (ret)
>>    		return ret;
>> -	ret = fbtft_request_one_gpio(par, "wr-gpios", 0, &par->gpio.wr);
>> +	ret = fbtft_request_one_gpio(par, "wr", 0, &par->gpio.wr);
>>    	if (ret)
>>    		return ret;
>> -	ret = fbtft_request_one_gpio(par, "cs-gpios", 0, &par->gpio.cs);
>> +	ret = fbtft_request_one_gpio(par, "cs", 0, &par->gpio.cs);
>>    	if (ret)
>>    		return ret;
>> -	ret = fbtft_request_one_gpio(par, "latch-gpios", 0, &par->gpio.latch);
>> +	ret = fbtft_request_one_gpio(par, "latch", 0, &par->gpio.latch);
>>    	if (ret)
>>    		return ret;
>>    	for (i = 0; i < 16; i++) {
>> -		ret = fbtft_request_one_gpio(par, "db-gpios", i,
>> +		ret = fbtft_request_one_gpio(par, "db", i,
>>    					     &par->gpio.db[i]);
>>    		if (ret)
>>    			return ret;
>> -		ret = fbtft_request_one_gpio(par, "led-gpios", i,
>> +		ret = fbtft_request_one_gpio(par, "led", i,
>>    					     &par->gpio.led[i]);
>>    		if (ret)
>>    			return ret;
>> -		ret = fbtft_request_one_gpio(par, "aux-gpios", i,
>> +		ret = fbtft_request_one_gpio(par, "aux", i,
>>    					     &par->gpio.aux[i]);
>>    		if (ret)
>>    			return ret;
>>
>>
>>


-- 
Regards
Phil Reid
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
