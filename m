Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB38F2A1D54
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Nov 2020 11:33:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 540DD20495;
	Sun,  1 Nov 2020 10:33:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v3Lycx0H6mKK; Sun,  1 Nov 2020 10:32:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D1A8020369;
	Sun,  1 Nov 2020 10:32:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C97B61BF31D
 for <devel@linuxdriverproject.org>; Sun,  1 Nov 2020 10:32:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C17A420371
 for <devel@linuxdriverproject.org>; Sun,  1 Nov 2020 10:32:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 505Iq+H9EF8A for <devel@linuxdriverproject.org>;
 Sun,  1 Nov 2020 10:32:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by silver.osuosl.org (Postfix) with ESMTPS id BB14820369
 for <devel@driverdev.osuosl.org>; Sun,  1 Nov 2020 10:32:55 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id y184so11628120lfa.12
 for <devel@driverdev.osuosl.org>; Sun, 01 Nov 2020 02:32:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=somia-fi.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XccLLBP9fbRYIFzEXKVSu/gBJa6cdMsyr2qn7Nbznok=;
 b=WwwV+CZl0NVtbCCh/l8XgYPXAFhUHgNsHltaOXJGKtTvTglrbNZbWRtUuEwc0hbGdt
 qsCJSM5z2o+axm2vx0NKfKdx7cu9JsH8ZWbxdiSN1fmmTEiTLdtxcaC7iQ33gcBBGdlb
 Kz7Ua5HmTR1xDMN4qaohI/9TqjGHd0YJ6WDwTBQSwpm4UKTPZLXv3avbi/RJTbpuKgx2
 U41eXekBeFPjVKQdCQW4G93sMykidUcnfcLKXpRXTCQ7bMIFxHfPoQdClUHyXSYrQlTt
 gJt3zKO4ml5cAaoa3b1vk+l6KwQsqOBrhSrz/hN1WumVQoSjzkVtvsHVJn5oBaGZS2y6
 w0Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XccLLBP9fbRYIFzEXKVSu/gBJa6cdMsyr2qn7Nbznok=;
 b=B0NTomlhqWDQPtvXvicqk8CmordQvUTcIOGnHOcX33TsXkPwgcoMAj31BpAy5l/sSQ
 QRhljCiOuiotEAsb5U7Fu3/+OwoOzzVQ7p6Optf5sRopKjVZ3/2DCiT7ipxQiynM/pL/
 4eBmRCob4f7NAq+XaOa3rXYWODHFQGDLcPc8FntybcfsYjIf4Ks8scPhHLuIpipX9rs5
 prdCWMGACU4QALy5ecIoWaJzKZ+Q3SMfkq2edAhgVWtPfhicU6mB+bWHYBXcep3rX7XG
 e9HIRGhWRXfKOmoOfDbIqYJ9Ca9a9whL60Tw2nmGgmCSgJKvA8d4/fKLmhE7DrYjJAwL
 wTmA==
X-Gm-Message-State: AOAM5336VBR3FQFT/xVxIZUYht1Ihqjdo8WgHJ1jUeNyIKbpqOXbI0ut
 K7v3x8lX0WEmk19O1Rv12cEH5g==
X-Google-Smtp-Source: ABdhPJzVLNrNcDLn6wEEouuMkd8Z++tSxcYxH3ylGbIuf4MrUF2yQHmMz/+jFeFirOfZDR+sMtJdjA==
X-Received: by 2002:a19:83c9:: with SMTP id f192mr3746517lfd.148.1604226773613; 
 Sun, 01 Nov 2020 02:32:53 -0800 (PST)
Received: from ubuntu (cable-hki-50dc37-152.dhcp.inet.fi. [80.220.55.152])
 by smtp.gmail.com with ESMTPSA id s7sm1628612ljc.10.2020.11.01.02.32.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Nov 2020 02:32:53 -0800 (PST)
From: Hassan Shahbazi <hassan.shahbazi@somia.fi>
X-Google-Original-From: Hassan Shahbazi <hassan@ninchat.com>
Date: Sun, 1 Nov 2020 12:32:44 +0200
To: Greg KH <greg@kroah.com>
Subject: Re: [PATCH] staging: fbtft: fb_watterott: fix usleep_range is
 preferred over udelay
Message-ID: <20201101103244.GA284952@ubuntu>
References: <20201101002010.278537-1-hassan@ninchat.com>
 <20201101063948.GB432418@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201101063948.GB432418@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Nov 01, 2020 at 07:39:48AM +0100, Greg KH wrote:
> On Sun, Nov 01, 2020 at 02:20:10AM +0200, Hassan Shahbazi wrote:
> > Fix the checkpath.pl issue on fb_watterott.c. write_vmem and
> > write_vmem_8bit functions are within non-atomic context and can
> > safely use usleep_range.
> > see Documentation/timers/timers-howto.txt
> > 
> > Signed-off-by: Hassan Shahbazi <hassan@ninchat.com>
> > ---
> >  drivers/staging/fbtft/fb_watterott.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
> > index 76b25df376b8..afcc86a17995 100644
> > --- a/drivers/staging/fbtft/fb_watterott.c
> > +++ b/drivers/staging/fbtft/fb_watterott.c
> > @@ -84,7 +84,7 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
> >  			par->txbuf.buf, 10 + par->info->fix.line_length);
> >  		if (ret < 0)
> >  			return ret;
> > -		udelay(300);
> > +		usleep_range(300, 310);
> >  	}
> >  
> >  	return 0;
> > @@ -124,7 +124,7 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
> >  			par->txbuf.buf, 10 + par->info->var.xres);
> >  		if (ret < 0)
> >  			return ret;
> > -		udelay(700);
> > +		usleep_range(700, 710);
> 
> How do you know that these ranges are ok?  Are you able to test these
> changes with real hardware?
> 
> thanks,
> 
> greg k-h

No, I don't have the hardware to test with. I just used the current
value as the minimum and added an epsilon to it for the maximum
param.

best, hassan shahbazi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
