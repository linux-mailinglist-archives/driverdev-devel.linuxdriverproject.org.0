Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE51F25018D
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Aug 2020 17:57:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3A0E520C41;
	Mon, 24 Aug 2020 15:57:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RePV04gNSAFk; Mon, 24 Aug 2020 15:57:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2E188207A9;
	Mon, 24 Aug 2020 15:57:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 012751BF370
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 15:57:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EC6F887ACE
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 15:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T+IhsrY8vdEm for <devel@linuxdriverproject.org>;
 Mon, 24 Aug 2020 15:57:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0095987773
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 15:57:16 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id r15so9211320wrp.13
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 08:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=jrxa6Z8ALzEuFxZJIIcbsGCrFOHRb7EFnZzL1WDCR2k=;
 b=opPN4+DPMKzVCy6OMKWUjwd6nxWILScUWHODyf/FxxKIHaZHJmgu9gNAHiHDefZjVK
 a8QIC+WR6msx3K1bFtaJ9c+2kfl0e3WRYxycw0GcoWkrX+tRn/64NXbb5fHLEeV5Jcyp
 mMvNJxH+7hbx0ZMZb7bmEVZHAzxQlsD6kPPuXJZ+4l0d8tYmn+mjFic2s6eBe/Em1epw
 uokDIPMODQqlMRPYwdvZU+mLLhbMKz5i4Pf70EX9ACqDrAfB2aNU9Ci4sooxdWCFhATK
 QCgAaM/CzfiRU+6NgElaEhz8NPJxlWLip5Yxv/fsI0zH83QFisqnm6TUaXL/xQbNS0nP
 33Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jrxa6Z8ALzEuFxZJIIcbsGCrFOHRb7EFnZzL1WDCR2k=;
 b=Zyri8j6F6BxxeLLkADqsCaQpO1FE9xS7AzlqMgI1oKcjF03UK/jh2WGUs7AgAcYjkY
 14KXZwJAB1oRHzeVj9IgIHzSJ/e+0UQB5RDLYNTSCKrP/Gk3yafeK/c4VSrMcF56VMuo
 f7doRr74Z/EYeN0hc+aD3XRu0tqxNb8lrnXu2flnbadPxL02haT/8h03f/3visRUDbU7
 E8kEyyT7cGLfn+f1Ynovf9uXFCiNQNsysJ5g02qIFZs7PoQUguPTdf2EB8jzrP2A1MEA
 Vqhk47TM/k1CL8e7BwGCvWcYuURsF3xl+t+EDatCIfMjVt/5PDMgHrloibOUNyaHw6XD
 5uQw==
X-Gm-Message-State: AOAM532sBjWuBtZ+61zgMjEzAtYKwqqviJIZst9jehfVddoUvKpqVPFb
 0sWQcIuKigJvgZUSo2T70qI=
X-Google-Smtp-Source: ABdhPJwBrCRzx4/MFP1jzZ8EfYaPyIE/Mi2xyX4LCfw4lUCCf7RghVEjdLaUblX7BAX7khcctHPONw==
X-Received: by 2002:a05:6000:18a:: with SMTP id
 p10mr6001122wrx.33.1598284635511; 
 Mon, 24 Aug 2020 08:57:15 -0700 (PDT)
Received: from medion (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net.
 [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id e2sm16408164wrt.66.2020.08.24.08.57.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Aug 2020 08:57:14 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
X-Google-Original-From: Alex Dewar <alex.dewar@gmx.co.uk>
Date: Mon, 24 Aug 2020 16:57:12 +0100
To: Alex Dewar <alex.dewar90@gmail.com>
Subject: Re: [PATCH] staging: emxx_udc: Fix passing of NULL to
 dma_alloc_coherent()
Message-ID: <20200824155712.4kgxwqiufm2ieboz@medion>
References: <20200824142118.GA223827@mwanda>
 <20200824151920.251446-1-alex.dewar90@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200824151920.251446-1-alex.dewar90@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Saiyam Doshi <saiyamdoshi.in@gmail.com>,
 Magnus Damm <damm+renesas@opensource.se>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 "Javier F. Arias" <jarias.linux@gmail.com>,
 "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
 Simon Horman <horms+renesas@verge.net.au>, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 24, 2020 at 04:19:17PM +0100, Alex Dewar wrote:
> In nbu2ss_eq_queue() memory is allocated with dma_alloc_coherent(),
> though, strangely, NULL is passed as the struct device* argument. Pass
> the UDC's device instead.
> 
> Build-tested on x86 only.
> 
> Fixes: 33aa8d45a4fe ("staging: emxx_udc: Add Emma Mobile USB Gadget driver")
> Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
> ---
> 
> So I *think* this is the right fix, but I don't have the hardware so
> I've only been able to build-test it. My worry is that I could be
> passing in the wrong struct device* here, which would squelch the
> warning without fixing the breakage.
> 
> Can someone cleverer than me tell me if this makes sense?
> 
> - Alex

PS -- I meant to put an RFC in the subject line and an extra tag:
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index 03929b9d3a8b..09e91449c08c 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -2593,7 +2593,7 @@ static int nbu2ss_ep_queue(struct usb_ep *_ep,
>  
>  	if (req->unaligned) {
>  		if (!ep->virt_buf)
> -			ep->virt_buf = dma_alloc_coherent(NULL, PAGE_SIZE,
> +			ep->virt_buf = dma_alloc_coherent(udc->dev, PAGE_SIZE,
>  							  &ep->phys_buf,
>  							  GFP_ATOMIC | GFP_DMA);
>  		if (ep->epnum > 0)  {
> -- 
> 2.28.0
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
