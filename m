Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8849E69EEA
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 00:26:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7064786E1D;
	Mon, 15 Jul 2019 22:26:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 52h2Fif6Rfhc; Mon, 15 Jul 2019 22:26:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D2B2186B67;
	Mon, 15 Jul 2019 22:26:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E6891BF36D
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 22:26:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 716A386B2D
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 22:26:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SlntBjaau7V3 for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 22:26:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hqemgate15.nvidia.com (hqemgate15.nvidia.com [216.228.121.64])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5F41B86B17
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 22:26:23 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d2cfd940000>; Mon, 15 Jul 2019 15:26:29 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 15 Jul 2019 15:26:22 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 15 Jul 2019 15:26:22 -0700
Received: from [10.110.48.28] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 15 Jul
 2019 22:26:22 +0000
Subject: Re: [PATCH] staging: kpc2000: whitespace and line length cleanup
To: Joe Perches <joe@perches.com>, <john.hubbard@gmail.com>, Dan Carpenter
 <dan.carpenter@oracle.com>
References: <20190715212123.432-1-jhubbard@nvidia.com>
 <20190715212123.432-2-jhubbard@nvidia.com>
 <5f8d2f42d770a11e1331605fb3f22df44c74574f.camel@perches.com>
From: John Hubbard <jhubbard@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <3d92b1b1-d081-05ce-e3c0-d53b402ac1dd@nvidia.com>
Date: Mon, 15 Jul 2019 15:26:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <5f8d2f42d770a11e1331605fb3f22df44c74574f.camel@perches.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563229589; bh=VhfAhDigsAoeg/2LiHpNpWBsD9bL/uYZC97vzOG2uAw=;
 h=X-PGP-Universal:Subject:To:CC:References:From:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=LBBVhB2j2B9xTxCT0DnPeN2BPjQ6AvTszJQKZ2iCha43BcK9U603AkG6ORJALVYpe
 rcMqSwH3NBPSE/1/OQyaSOQzNHCbIlHmA+W/Wq2oRy0DKJ+q3YYQ/ir4QxmI4LPpju
 cTpopg3tBZse4vx2Ld1QkvyOAyTYh9/BL+E28cPdZ8KU/VR1NF8rTco6PozOwJhPrN
 czWlWr4PWa6U3LZVj6vzCGkNafeuXtnKNMLPfEVoSi5HWRnswT7y4uEjR34UtjLHPe
 irePVNNU9MGOWUfIzp0Am0GaZ64Wv5iNHeAIc6vTHa/Ynkn6bV8NCstcdk+57+DE0S
 JRkyEemL5YfxA==
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
Cc: devel@driverdev.osuosl.org, Bharath Vedartham <linux.bhar@gmail.com>,
 Geordan Neukum <gneukum1@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?Q?Simon_Sandstr=c3=b6m?= <simon@nikanor.nu>,
 LKML <linux-kernel@vger.kernel.org>, Vandana BN <bnvandana@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/15/19 3:21 PM, Joe Perches wrote:
> On Mon, 2019-07-15 at 14:21 -0700, john.hubbard@gmail.com wrote:
>> From: John Hubbard <jhubbard@nvidia.com>
>>
>> This commit was created by running indent(1):
>>     `indent -linux`
>>
>> ...and then applying some manual corrections and
>> cleanup afterward, to keep it sane. No functional changes
>> were made.
> 
> I don't find many of these whitespace changes "better".
> 
> Sometimes, it's just fine to have > 80 char lines.

Definitely agree! :)

> 
> Alignment formatting was OK before this and now has
> many odd uses that make reading for a human harder
> rather than simpler or easier.

OK, I'll accept that. I attempted to pick something that fit
on the screen [much!] better, without making it less readable, but if
people feel that it is a net "worse", then let's just drop
the patch, no problem.

> 
>> diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
> []
>> @@ -33,9 +33,9 @@ MODULE_LICENSE("GPL");
>>  MODULE_AUTHOR("Matt.Sickler@Daktronics.com");
>>  
>>  struct i2c_device {
>> -	unsigned long           smba;
>> -	struct i2c_adapter      adapter;
>> -	unsigned int            features;
>> +	unsigned long		smba;
>> +	struct i2c_adapter	adapter;
>> +	unsigned int		features;
> 
> Here the spaces before the identifier are converted to tab aligned 
> 
>>  };
>>  
>>  /*****************************
>> @@ -52,9 +52,9 @@ struct i2c_device {
>>  #define SMBHSTDAT0(p)   ((5  * REG_SIZE) + (p)->smba)
>>  #define SMBHSTDAT1(p)   ((6  * REG_SIZE) + (p)->smba)
>>  #define SMBBLKDAT(p)    ((7  * REG_SIZE) + (p)->smba)
>> -#define SMBPEC(p)       ((8  * REG_SIZE) + (p)->smba)   /* ICH3 and later */
>> -#define SMBAUXSTS(p)    ((12 * REG_SIZE) + (p)->smba)   /* ICH4 and later */
>> -#define SMBAUXCTL(p)    ((13 * REG_SIZE) + (p)->smba)   /* ICH4 and later */
>> +#define SMBPEC(p)       ((8  * REG_SIZE) + (p)->smba)	/* ICH3 and later */
>> +#define SMBAUXSTS(p)    ((12 * REG_SIZE) + (p)->smba)	/* ICH4 and later */
>> +#define SMBAUXCTL(p)    ((13 * REG_SIZE) + (p)->smba)	/* ICH4 and later */
> 
> But here the #define value still has spaces but the comment uses tabs.
> Why tab align the comments but not the #define value?
> 
>> @@ -136,17 +138,21 @@ static int i801_check_pre(struct i2c_device *priv)
> []
>>  	status &= STATUS_FLAGS;
>>  	if (status) {
>> -		//dev_dbg(&priv->adapter.dev, "Clearing status flags (%02x)\n", status);
>> +		//dev_dbg(&priv->adapter.dev,
>> +		//"Clearing status flags (%02x)\n", status);
> 
> This was better before.
> 
> An improvement might be to add more macros like:
> 
> #define i2c_err(priv, fmt, ...)
> 	dev_err(&(priv)->adapter.dev, fmt, ##__VA_ARGS__)
> #define i2c_dbg(priv, fmt, ...)
> 	dev_dbg(&(priv)->adapter.dev, fmt, ##__VA_ARGS__)
> 
> So all these uses of dev_<level>(&priv->adapter.dev, ...)
> become much shorter visually and the line wrapping becomes
> rather better.
> 
>>  		outb_p(status, SMBHSTSTS(priv));
>>  		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
>>  		if (status) {
>> -			dev_err(&priv->adapter.dev, "Failed clearing status flags (%02x)\n", status);
>> +			dev_err(&priv->adapter.dev,
>> +				"Failed clearing status flags (%02x)\n",
>> +				status);
> 
> e.g.:
> 			i2c_err(priv, "Failed clearing status flags (%02x)\n",
> 				status);
> 
> etc...
> 
> 
> []
> 
>> @@ -301,7 +322,8 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
>>  			else
>>  				smbcmd = I801_BLOCK_LAST;
>>  		} else {
>> -			if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_READ)
>> +			if (command == I2C_SMBUS_I2C_BLOCK_DATA
>> +			    && read_write == I2C_SMBUS_READ)
> 
> logic continuations should be at EOL.
> 
> 			if (command == I2C_SMBUS_I2C_BLOCK_DATA &&
> 			    read_write == I2C_SMBUS_READ)
> 
> []
>> @@ -558,13 +614,14 @@ static u32 i801_func(struct i2c_adapter *adapter)
>>  		I2C_FUNC_SMBUS_WORD_DATA         | /* _READ_WORD_DATA  _WRITE_WORD_DATA */
>>  		I2C_FUNC_SMBUS_BLOCK_DATA        | /* _READ_BLOCK_DATA  _WRITE_BLOCK_DATA */
>>  		!I2C_FUNC_SMBUS_I2C_BLOCK        | /* _READ_I2C_BLOCK  _WRITE_I2C_BLOCK */
>> -		!I2C_FUNC_SMBUS_EMUL;              /* _QUICK  _BYTE  _BYTE_DATA  _WORD_DATA  _PROC_CALL  _WRITE_BLOCK_DATA  _I2C_BLOCK _PEC */
>> +		/* _QUICK  _BYTE  _BYTE_DATA  _WORD_DATA  _PROC_CALL  _WRITE_BLOCK_DATA  _I2C_BLOCK _PEC : */
>> +		!I2C_FUNC_SMBUS_EMUL;
>>  	return f;
>>  }
>>  
>>  static const struct i2c_algorithm smbus_algorithm = {
>> -	.smbus_xfer     = i801_access,
>> -	.functionality  = i801_func,
>> +	.smbus_xfer = i801_access,
>> +	.functionality = i801_func,
> 
> Many people prefer the aligned function names.
> 
> etc...
> 

Sure. Opinions differ on that, I was guessing that the `indent -linux` option
was the majority, but that could be wrong.


thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
