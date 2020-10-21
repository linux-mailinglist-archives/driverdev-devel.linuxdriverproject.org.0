Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6D8294816
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 08:20:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A26787216;
	Wed, 21 Oct 2020 06:20:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rYCezSM3s-yD; Wed, 21 Oct 2020 06:20:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E92A4871FF;
	Wed, 21 Oct 2020 06:20:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 18EF21BF82C
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 06:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0780D86C51
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 06:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xs0CW3nIdbej for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 06:20:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2269986C46
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 06:20:36 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id a17so622389pju.1
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 23:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oDdHTOY3M9RLd73jSuuTiDnRcpNwd0jVh5REM3abuOc=;
 b=NsvwSMzdZ7wU0dy9p74HVApYFLpZOlJAd1yl0CtEI5TS037ra9cJgnpw/rXsFiH7Ig
 LcW2eMYDEHaXRmzRwivePCm05kXIigsdEJaCEtIhG9i6lWdBhb2Pvrm7aggNod8WFFNY
 PeOtMPUm6pZcUKjc9Ql1y3E1/9qoA2mwL4pOHNjDzjhJ/9ZmU0KCVKkqz0uab6HxwPvg
 IUGxIbD4wxC8Tq9utaF51hou4Ozhy4dWQMVKJZfE3a7S86+Uo7vK0SErFuVddv6Zyrlx
 TiCxGCPNf9zZkk1kq2VV52+JqzAWDvFjWMKu9alsneKCSKMqaBBBOSMDqXPWtGY7gFQ5
 9pXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oDdHTOY3M9RLd73jSuuTiDnRcpNwd0jVh5REM3abuOc=;
 b=Mn8A0F9P62JRHScgsy7FHGO9J8lPqiuE9e3UqonBhI20vETM+gYvPTd24am0h3PLDS
 StuL4+neIAQOnJAIPYANSNU8YrpRO9GMb52sJuS1GDJ/C3qDG3p+YDFRrIt6aNnpeUIH
 rOazfB2S2wTh2/0NdyO18ff8JGIcoDjD7IfRQUi5jowm0hSe2J2Gl2wlpUUtZ+CjLPZZ
 C8cEzI186YMYEuW3pRr1GPgYBRhdF4UqpVDtLjic4J+LyId2dGGgMlYXW8rgspUVjw7p
 7eszecoGhySJkWHXC56Bo+KmA9ZRi749BTMeP5Xp0/M6Oo3X5jUkKq6FYfUikEbLIzfa
 rM8w==
X-Gm-Message-State: AOAM531HcxLOLsP5BgMRADsFJS0rV1nQFv8W2yFlZkGYdHQs5W4vfqUL
 0bATl4gbQdl/8GIA1qx3hNgZj9PsHJ8=
X-Google-Smtp-Source: ABdhPJyxi3hzI15g/UkKlwxieUbHu6WxvQWEQZS7zlV6/QNJcfNKXroTpB2LyBKgg9tjA4tG3C8szQ==
X-Received: by 2002:a17:90a:d341:: with SMTP id
 i1mr1846296pjx.18.1603261235703; 
 Tue, 20 Oct 2020 23:20:35 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id d2sm915229pjx.4.2020.10.20.23.20.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 23:20:35 -0700 (PDT)
Date: Wed, 21 Oct 2020 11:50:30 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/2] staging: kpc2000: kpc_dma: rename show function per
 convention
Message-ID: <20201021062030.GB763329@ubuntu204>
References: <273abf291f47286a702d2a53445e7a6efcf9972b.1603256795.git.mh12gx2825@gmail.com>
 <5d757cf6f97533b48aa471db6efc100acfb8f517.1603256795.git.mh12gx2825@gmail.com>
 <20201021055031.GA975815@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021055031.GA975815@kroah.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 21, 2020 at 07:50:31AM +0200, Greg Kroah-Hartman wrote:
> On Wed, Oct 21, 2020 at 10:40:21AM +0530, Deepak R Varma wrote:
> > Rename show_engine_regs to engine_regs_show as per the convention
> > followed. Issue reported by checkpatch script.
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> >  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> > index 7698e5ef2a7c..b6d1afbd452d 100644
> > --- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> > +++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> > @@ -50,7 +50,7 @@ static void kpc_dma_del_device(struct kpc_dma_device *ldev)
> >  }
> >  
> >  /**********  SysFS Attributes **********/
> > -static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *attr, char *buf)
> > +static ssize_t  engine_regs_show(struct device *dev, struct device_attribute *attr, char *buf)
> >  {
> >  	struct kpc_dma_device *ldev;
> >  	struct platform_device *pldev = to_platform_device(dev);
> > @@ -80,7 +80,7 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
> >  		ldev->desc_completed
> >  	);
> >  }
> > -static DEVICE_ATTR(engine_regs, 0444, show_engine_regs, NULL);
> > +static DEVICE_ATTR(engine_regs, 0444, engine_regs_show, NULL);
> 
> Shouldn't this just be using a DEVICE_ATTR_RO() macro instead?  Make
> that change and the name will be fixed up at the same time.
> 

Thank you for the feedback. I will review what the mentioned macro does
and how it can be implemented. Will send a revised patch with the change
suggested.

> And did checkpatch really complain about this?  What was the actual
> message it produced?

Yes, the WARNING message from checkpatch was:

WARNING: Consider renaming function(s) 'show_engine_regs' to 'engine_regs_show'                     
+#82: FILE: drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c:82:                                     
+}    


> 
> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
