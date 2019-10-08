Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 644EDCFA82
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 14:55:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C5B4D22713;
	Tue,  8 Oct 2019 12:55:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i0LSTkvlcAyz; Tue,  8 Oct 2019 12:55:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 184B0226EA;
	Tue,  8 Oct 2019 12:55:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 657671BF35A
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:55:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6254C860C2
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:55:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C4svP4kY3N14 for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 12:55:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp126.iad3b.emailsrvr.com (smtp126.iad3b.emailsrvr.com
 [146.20.161.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3A50B834BC
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 12:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1570539303;
 bh=WD5/s2dheXRDGjfWisrFDy82XfAadEqTNeFneCDEIY8=;
 h=Subject:To:From:Date:From;
 b=atciDT7G4oUA6v1B8UIV3Ba93eWorp535qaCK/h28ldyWGKacUqxlzD/dni/G6M+g
 ZKZ6CPnxQsVMrti9E6Db7DZrBtk+gYf8/DXNVvbIKgfB8pvpAnBwlrxu7GJwzAy3Q9
 +nNI4Iz6Fs4nJ5vITytHytJ8waffthuCygYjv9fg=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp16.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 3D48AC011C; 
 Tue,  8 Oct 2019 08:55:02 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Tue, 08 Oct 2019 08:55:03 -0400
Subject: Re: [PATCH v2 4/6] staging: comedi: Remove set but not used variable
 'data'
To: zhengbin <zhengbin13@huawei.com>, gregkh@linuxfoundation.org,
 eric@anholt.net, wahrenst@gmx.net, hsweeten@visionengravers.com,
 dan.carpenter@oracle.com, devel@driverdev.osuosl.org
References: <1570520515-2186-1-git-send-email-zhengbin13@huawei.com>
 <1570520515-2186-5-git-send-email-zhengbin13@huawei.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <706c0f36-d616-3562-84c5-f0582d0bcbe9@mev.co.uk>
Date: Tue, 8 Oct 2019 13:55:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1570520515-2186-5-git-send-email-zhengbin13@huawei.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 08/10/2019 08:41, zhengbin wrote:
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/staging/comedi/drivers/dt2814.c: In function dt2814_interrupt:
> drivers/staging/comedi/drivers/dt2814.c:193:6: warning: variable data set but not used [-Wunused-but-set-variable]
> 
> It is not used since commit 7806012e97ed ("staging:
> comedi: refactor dt2814 driver and use module_comedi_driver")
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: zhengbin <zhengbin13@huawei.com>
> ---
>   drivers/staging/comedi/drivers/dt2814.c | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
> index d2c7157..4825168 100644
> --- a/drivers/staging/comedi/drivers/dt2814.c
> +++ b/drivers/staging/comedi/drivers/dt2814.c
> @@ -190,7 +190,6 @@ static irqreturn_t dt2814_interrupt(int irq, void *d)
>   	struct comedi_device *dev = d;
>   	struct dt2814_private *devpriv = dev->private;
>   	struct comedi_subdevice *s = dev->read_subdev;
> -	int data;
> 
>   	if (!dev->attached) {
>   		dev_err(dev->class_dev, "spurious interrupt\n");
> @@ -200,8 +199,6 @@ static irqreturn_t dt2814_interrupt(int irq, void *d)
>   	hi = inb(dev->iobase + DT2814_DATA);
>   	lo = inb(dev->iobase + DT2814_DATA);
> 
> -	data = (hi << 4) | (lo >> 4);
> -
>   	if (!(--devpriv->ntrig)) {
>   		int i;
> 
> --
> 2.7.4
> 

There is something fishy going on there.  The driver ought to be writing 
the data to a buffer.

Can I suggest omitting this patch from the series so I can investigate 
and supply a proper fix?

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
