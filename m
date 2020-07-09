Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A18A9219EF5
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jul 2020 13:17:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A0B0388446;
	Thu,  9 Jul 2020 11:16:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 04M739GAdste; Thu,  9 Jul 2020 11:16:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26A418836F;
	Thu,  9 Jul 2020 11:16:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3FF6E1BF57C
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 11:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3CAEC88355
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 11:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Q7fkLibYecJ for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 11:16:45 +0000 (UTC)
X-Greylist: delayed 00:08:08 by SQLgrey-1.7.6
Received: from smtp96.ord1c.emailsrvr.com (smtp96.ord1c.emailsrvr.com
 [108.166.43.96])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7864F88338
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 11:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1594292916;
 bh=gPk9fNfbTbvXRdPvMQ3LYB0FbDFKX2auw6+IMKCgJ+s=;
 h=Subject:To:From:Date:From;
 b=C7BHwhOC63KnbglIxb9OhMyeBIS95kkHBmY5o6aFVWvKpU01cyWkB0V3ttdKCACUF
 ZyRSUfMwbFDc1a7lNw8NhB7fWwkxipjEuONfT8gcpVCjScyXVWUrWj+X3DoIsjOKcD
 sEyqwG9Uzl1aQWyhpZO8uKVnodypOb16QEKbu8Tc=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp5.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id DB7A6401DC; 
 Thu,  9 Jul 2020 07:08:35 -0400 (EDT)
Subject: Re: [PATCH] staging: comedi: verify array index is correct before
 using it
To: Dan Carpenter <dan.carpenter@oracle.com>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
References: <20200709102936.GA20875@mwanda>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <23bd2a41-4e65-ae4e-8133-c8ddeebfc6c5@mev.co.uk>
Date: Thu, 9 Jul 2020 12:08:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200709102936.GA20875@mwanda>
Content-Language: en-GB
X-Classification-ID: d1eacce0-20ef-4e4f-b776-e9b236f30707-1-1
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 09/07/2020 11:29, Dan Carpenter wrote:
> This code reads from the array before verifying that "trig" is a valid
> index.  If the index is wildly out of bounds then reading from an
> invalid address could lead to an Oops.
> 
> Fixes: a8c66b684efa ("staging: comedi: addi_apci_1500: rewrite the subdevice support functions")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>   drivers/staging/comedi/drivers/addi_apci_1500.c | 10 +++++++---
>   1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/addi_apci_1500.c b/drivers/staging/comedi/drivers/addi_apci_1500.c
> index 45ad4ba92f94..689acd69a1b9 100644
> --- a/drivers/staging/comedi/drivers/addi_apci_1500.c
> +++ b/drivers/staging/comedi/drivers/addi_apci_1500.c
> @@ -456,9 +456,9 @@ static int apci1500_di_cfg_trig(struct comedi_device *dev,
>   	unsigned int lo_mask = data[5] << shift;
>   	unsigned int chan_mask = hi_mask | lo_mask;
>   	unsigned int old_mask = (1 << shift) - 1;
> -	unsigned int pm = devpriv->pm[trig] & old_mask;
> -	unsigned int pt = devpriv->pt[trig] & old_mask;
> -	unsigned int pp = devpriv->pp[trig] & old_mask;
> +	unsigned int pm;
> +	unsigned int pt;
> +	unsigned int pp;
>   
>   	if (trig > 1) {
>   		dev_dbg(dev->class_dev,
> @@ -471,6 +471,10 @@ static int apci1500_di_cfg_trig(struct comedi_device *dev,
>   		return -EINVAL;
>   	}
>   
> +	pm = devpriv->pm[trig] & old_mask;
> +	pt = devpriv->pt[trig] & old_mask;
> +	pp = devpriv->pp[trig] & old_mask;
> +
>   	switch (data[2]) {
>   	case COMEDI_DIGITAL_TRIG_DISABLE:
>   		/* clear trigger configuration */
> 

Nice catch!

Reviewed-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
