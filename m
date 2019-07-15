Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9663869F0C
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 00:38:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E4C4B87BCA;
	Mon, 15 Jul 2019 22:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z347nGLeDciY; Mon, 15 Jul 2019 22:38:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B449A87B69;
	Mon, 15 Jul 2019 22:38:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4440F1BF36D
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 22:38:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2CE3187B69
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 22:38:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GnIR2iPtqA4P for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 22:38:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0095.hostedemail.com
 [216.40.44.95])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6280E87B59
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 22:38:34 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id B2FA818015CB4
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 22:21:55 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 898708015544;
 Mon, 15 Jul 2019 22:21:52 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1544:1593:1594:1605:1711:1730:1747:1777:1792:1963:2198:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3872:3874:4250:4321:4605:4823:5007:6119:7514:7576:7903:9121:10004:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12683:12740:12760:12895:13439:14096:14097:14181:14659:14721:21080:21324:21433:21451:21627:30030:30046:30054:30064:30091,
 0,
 RBL:172.58.35.237:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:none, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: push41_2d0a2f6b72544
X-Filterd-Recvd-Size: 5512
Received: from XPS-9350 (unknown [172.58.35.237])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Mon, 15 Jul 2019 22:21:49 +0000 (UTC)
Message-ID: <5f8d2f42d770a11e1331605fb3f22df44c74574f.camel@perches.com>
Subject: Re: [PATCH] staging: kpc2000: whitespace and line length cleanup
From: Joe Perches <joe@perches.com>
To: john.hubbard@gmail.com, Dan Carpenter <dan.carpenter@oracle.com>
Date: Mon, 15 Jul 2019 15:21:18 -0700
In-Reply-To: <20190715212123.432-2-jhubbard@nvidia.com>
References: <20190715212123.432-1-jhubbard@nvidia.com>
 <20190715212123.432-2-jhubbard@nvidia.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Vandana BN <bnvandana@gmail.com>,
 Geordan Neukum <gneukum1@gmail.com>, Bharath Vedartham <linux.bhar@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Hubbard <jhubbard@nvidia.com>, LKML <linux-kernel@vger.kernel.org>,
 Simon =?ISO-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2019-07-15 at 14:21 -0700, john.hubbard@gmail.com wrote:
> From: John Hubbard <jhubbard@nvidia.com>
> 
> This commit was created by running indent(1):
>     `indent -linux`
> 
> ...and then applying some manual corrections and
> cleanup afterward, to keep it sane. No functional changes
> were made.

I don't find many of these whitespace changes "better".

Sometimes, it's just fine to have > 80 char lines.

Alignment formatting was OK before this and now has
many odd uses that make reading for a human harder
rather than simpler or easier.

> diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
[]
> @@ -33,9 +33,9 @@ MODULE_LICENSE("GPL");
>  MODULE_AUTHOR("Matt.Sickler@Daktronics.com");
>  
>  struct i2c_device {
> -	unsigned long           smba;
> -	struct i2c_adapter      adapter;
> -	unsigned int            features;
> +	unsigned long		smba;
> +	struct i2c_adapter	adapter;
> +	unsigned int		features;

Here the spaces before the identifier are converted to tab aligned 

>  };
>  
>  /*****************************
> @@ -52,9 +52,9 @@ struct i2c_device {
>  #define SMBHSTDAT0(p)   ((5  * REG_SIZE) + (p)->smba)
>  #define SMBHSTDAT1(p)   ((6  * REG_SIZE) + (p)->smba)
>  #define SMBBLKDAT(p)    ((7  * REG_SIZE) + (p)->smba)
> -#define SMBPEC(p)       ((8  * REG_SIZE) + (p)->smba)   /* ICH3 and later */
> -#define SMBAUXSTS(p)    ((12 * REG_SIZE) + (p)->smba)   /* ICH4 and later */
> -#define SMBAUXCTL(p)    ((13 * REG_SIZE) + (p)->smba)   /* ICH4 and later */
> +#define SMBPEC(p)       ((8  * REG_SIZE) + (p)->smba)	/* ICH3 and later */
> +#define SMBAUXSTS(p)    ((12 * REG_SIZE) + (p)->smba)	/* ICH4 and later */
> +#define SMBAUXCTL(p)    ((13 * REG_SIZE) + (p)->smba)	/* ICH4 and later */

But here the #define value still has spaces but the comment uses tabs.
Why tab align the comments but not the #define value?

> @@ -136,17 +138,21 @@ static int i801_check_pre(struct i2c_device *priv)
[]
>  	status &= STATUS_FLAGS;
>  	if (status) {
> -		//dev_dbg(&priv->adapter.dev, "Clearing status flags (%02x)\n", status);
> +		//dev_dbg(&priv->adapter.dev,
> +		//"Clearing status flags (%02x)\n", status);

This was better before.

An improvement might be to add more macros like:

#define i2c_err(priv, fmt, ...)
	dev_err(&(priv)->adapter.dev, fmt, ##__VA_ARGS__)
#define i2c_dbg(priv, fmt, ...)
	dev_dbg(&(priv)->adapter.dev, fmt, ##__VA_ARGS__)

So all these uses of dev_<level>(&priv->adapter.dev, ...)
become much shorter visually and the line wrapping becomes
rather better.

>  		outb_p(status, SMBHSTSTS(priv));
>  		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
>  		if (status) {
> -			dev_err(&priv->adapter.dev, "Failed clearing status flags (%02x)\n", status);
> +			dev_err(&priv->adapter.dev,
> +				"Failed clearing status flags (%02x)\n",
> +				status);

e.g.:
			i2c_err(priv, "Failed clearing status flags (%02x)\n",
				status);

etc...


[]

> @@ -301,7 +322,8 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
>  			else
>  				smbcmd = I801_BLOCK_LAST;
>  		} else {
> -			if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_READ)
> +			if (command == I2C_SMBUS_I2C_BLOCK_DATA
> +			    && read_write == I2C_SMBUS_READ)

logic continuations should be at EOL.

			if (command == I2C_SMBUS_I2C_BLOCK_DATA &&
			    read_write == I2C_SMBUS_READ)

[]
> @@ -558,13 +614,14 @@ static u32 i801_func(struct i2c_adapter *adapter)
>  		I2C_FUNC_SMBUS_WORD_DATA         | /* _READ_WORD_DATA  _WRITE_WORD_DATA */
>  		I2C_FUNC_SMBUS_BLOCK_DATA        | /* _READ_BLOCK_DATA  _WRITE_BLOCK_DATA */
>  		!I2C_FUNC_SMBUS_I2C_BLOCK        | /* _READ_I2C_BLOCK  _WRITE_I2C_BLOCK */
> -		!I2C_FUNC_SMBUS_EMUL;              /* _QUICK  _BYTE  _BYTE_DATA  _WORD_DATA  _PROC_CALL  _WRITE_BLOCK_DATA  _I2C_BLOCK _PEC */
> +		/* _QUICK  _BYTE  _BYTE_DATA  _WORD_DATA  _PROC_CALL  _WRITE_BLOCK_DATA  _I2C_BLOCK _PEC : */
> +		!I2C_FUNC_SMBUS_EMUL;
>  	return f;
>  }
>  
>  static const struct i2c_algorithm smbus_algorithm = {
> -	.smbus_xfer     = i801_access,
> -	.functionality  = i801_func,
> +	.smbus_xfer = i801_access,
> +	.functionality = i801_func,

Many people prefer the aligned function names.

etc...


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
