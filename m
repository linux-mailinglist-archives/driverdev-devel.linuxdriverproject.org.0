Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D21CE153E
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 11:06:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 81F368639F;
	Wed, 23 Oct 2019 09:06:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qv0J5OxXTjSh; Wed, 23 Oct 2019 09:06:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BED486352;
	Wed, 23 Oct 2019 09:06:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 492471BF5B5
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 09:06:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 460EC875CA
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 09:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ndks73GXQtdE for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 09:06:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp84.ord1d.emailsrvr.com (smtp84.ord1d.emailsrvr.com
 [184.106.54.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A8C048472A
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1571821592;
 bh=OegGS/GRixpjinYAdFnaxb8OEXr2UIj9Qvl4F/12miI=;
 h=Subject:To:From:Date:From;
 b=BXvd9oNTpVecEoseU+lgJdvLtTENOEg+nAXG77Djswpvi9Qkovbkxgsw5u8nND2ih
 onXmzFSvI1PlxN8ilcbq4RqNvd2X0s+E5H+rbok4ifCeDRbTEXKZ0dvVCcYCIyh0WG
 2ccuX3JTanTZoHOwmOKV0j6WHaKbXkzKZwhD2WrA=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp3.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 2B1AD60080; 
 Wed, 23 Oct 2019 05:06:32 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Wed, 23 Oct 2019 05:06:32 -0400
Subject: Re: [PATCH -next] staging: comedi: dt2814: remove set but not used
 variables 'data'
To: YueHaibing <yuehaibing@huawei.com>, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org
References: <20191023074827.33264-1-yuehaibing@huawei.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <39229719-55d4-4a71-f698-95ce491496b4@mev.co.uk>
Date: Wed, 23 Oct 2019 10:06:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023074827.33264-1-yuehaibing@huawei.com>
Content-Language: en-GB
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 23/10/2019 08:48, YueHaibing wrote:
> drivers/staging/comedi/drivers/dt2814.c:193:6:
>   warning: variable data set but not used [-Wunused-but-set-variable]
> 
> It is never used, so can be removed.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>   drivers/staging/comedi/drivers/dt2814.c | 8 ++------
>   1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
> index d2c7157..e7c6787 100644
> --- a/drivers/staging/comedi/drivers/dt2814.c
> +++ b/drivers/staging/comedi/drivers/dt2814.c
> @@ -186,21 +186,17 @@ static int dt2814_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
>   
>   static irqreturn_t dt2814_interrupt(int irq, void *d)
>   {
> -	int lo, hi;
>   	struct comedi_device *dev = d;
>   	struct dt2814_private *devpriv = dev->private;
>   	struct comedi_subdevice *s = dev->read_subdev;
> -	int data;
>   
>   	if (!dev->attached) {
>   		dev_err(dev->class_dev, "spurious interrupt\n");
>   		return IRQ_HANDLED;
>   	}
>   
> -	hi = inb(dev->iobase + DT2814_DATA);
> -	lo = inb(dev->iobase + DT2814_DATA);
> -
> -	data = (hi << 4) | (lo >> 4);
> +	inb(dev->iobase + DT2814_DATA);
> +	inb(dev->iobase + DT2814_DATA);
>   
>   	if (!(--devpriv->ntrig)) {
>   		int i;
> 

Those variables are currently unused due to a bug that I need to fix.


-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
