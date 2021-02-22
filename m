Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35369321452
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 11:46:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 626D083925;
	Mon, 22 Feb 2021 10:46:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gDCtwFKNxu8I; Mon, 22 Feb 2021 10:46:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0CE483916;
	Mon, 22 Feb 2021 10:46:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CEBF01BF39D
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 10:46:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C8BB585D61
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 10:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iqLkWUOWDqRX for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 10:46:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp76.ord1d.emailsrvr.com (smtp76.ord1d.emailsrvr.com
 [184.106.54.76])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E98C185D17
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 10:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1613990759;
 bh=MlEdIWr3zQXOMI3lnebQjd7OtiF6wCGdOTLmgA4rsGc=;
 h=Subject:To:From:Date:From;
 b=PGjn8nkSohUk0vz1QYCqr917F38/mIJmKWhfoopUAp0OxGG9jQyAI0+/DJKAGu7UZ
 aKPlOfAb9rR9AYXQjfQE/2HkUmXOV2kiFnnE0Nb3rUzYkCmgrQXm0Va7ru7vbUuF40
 HWPwk0ec8k0aS+YOKymrbveqpRGpL7BXixU6GsaQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1613990759;
 bh=MlEdIWr3zQXOMI3lnebQjd7OtiF6wCGdOTLmgA4rsGc=;
 h=Subject:To:From:Date:From;
 b=KPoeWymt5QWP+kyBa+Qnywi6c/XmJ0zMg4y7OVaYpcEzPo3yEJ4XmdBMdOvAHH8l3
 kEJAaN/GbD8vqMrxoMfdq0st8MfxvfZwmHGvrL45myCZDt6t84Hl8zA+tUWf078jUK
 W4l47+neeqLQ9vJX/tcH75KeGxOIx5+2fRNguHdo=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp18.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 4D249A00AF; 
 Mon, 22 Feb 2021 05:45:58 -0500 (EST)
Subject: Re: [PATCH -next] staging: comedi dt2814: Removed unused variables
To: Fatih Yildirim <yildirim.fatih@gmail.com>, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, grandmaster@al2klimov.de
References: <20210221202855.12442-1-yildirim.fatih@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <b4487d85-0657-5f55-1d4e-21264358c86a@mev.co.uk>
Date: Mon, 22 Feb 2021 10:45:57 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210221202855.12442-1-yildirim.fatih@gmail.com>
Content-Language: en-GB
X-Classification-ID: ccc532c2-53bc-412c-975c-e7b0210c0716-1-1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 21/02/2021 20:28, Fatih Yildirim wrote:
> Removed unused variables.
> 
> Signed-off-by: Fatih Yildirim <yildirim.fatih@gmail.com>
> ---
>  drivers/staging/comedi/drivers/dt2814.c | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
> index bcf4d5444faf..bd329d7b4893 100644
> --- a/drivers/staging/comedi/drivers/dt2814.c
> +++ b/drivers/staging/comedi/drivers/dt2814.c
> @@ -186,21 +186,17 @@ static int dt2814_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
>  
>  static irqreturn_t dt2814_interrupt(int irq, void *d)
>  {
> -	int lo, hi;
>  	struct comedi_device *dev = d;
>  	struct dt2814_private *devpriv = dev->private;
>  	struct comedi_subdevice *s = dev->read_subdev;
> -	int data;
>  
>  	if (!dev->attached) {
>  		dev_err(dev->class_dev, "spurious interrupt\n");
>  		return IRQ_HANDLED;
>  	}
>  
> -	hi = inb(dev->iobase + DT2814_DATA);
> -	lo = inb(dev->iobase + DT2814_DATA);
> -
> -	data = (hi << 4) | (lo >> 4);
> +	inb(dev->iobase + DT2814_DATA);
> +	inb(dev->iobase + DT2814_DATA);
>  
>  	if (!(--devpriv->ntrig)) {
>  		int i;
> @@ -229,7 +225,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
>  	struct dt2814_private *devpriv;
>  	struct comedi_subdevice *s;
>  	int ret;
> -	int i;
>  
>  	ret = comedi_request_region(dev, it->options[0], 0x2);
>  	if (ret)
> @@ -241,8 +236,8 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
>  		dev_err(dev->class_dev, "reset error (fatal)\n");
>  		return -EIO;
>  	}
> -	i = inb(dev->iobase + DT2814_DATA);
> -	i = inb(dev->iobase + DT2814_DATA);
> +	inb(dev->iobase + DT2814_DATA);
> +	inb(dev->iobase + DT2814_DATA);
>  
>  	if (it->options[1]) {
>  		ret = request_irq(it->options[1], dt2814_interrupt, 0,
> 

I've no objection to this patch.  The interrupt handling to support
Comedi asynchronous commands in this driver has always been broken.  I'm
tempted to remove the code for handling asynchronous commands in this
driver altogether for that reason.  (The naive fix of writing the data
to the Comedi buffer is insufficient without an additional check that
the command is running.  The end-of-conversion interrupt occurs
regardless of any command being active.)

Acked-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
