Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E372513F7
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 10:15:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7726B8577A;
	Tue, 25 Aug 2020 08:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I2dQ8iHq-jso; Tue, 25 Aug 2020 08:15:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2786285C92;
	Tue, 25 Aug 2020 08:15:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B3E61BF2C1
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 08:15:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1570A20131
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 08:15:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W2g8IFhUEwuc for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 08:15:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 768762001E
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 08:15:03 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id x7so5705786wro.3
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 01:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fCMhYRJmjkYiKHZv5M9E4fwHUfNifLkPhD+twyPnjk8=;
 b=PmDZwmz/MeYnNaxx634n/X2V9xw4jBokuKq3G9Cymy+g8c25WRZi9y9Dt0sYltwoLj
 rfXvOeghHR2ar1bXcVTbSDIa6gZt19jSb5F6pyMM3XPnP/Pf+lRj5siFbW4Lyo4eUGGg
 u4lCIRzS13c/cp77o+pDAdycl01PenDOecNgaLrtL4j2Nr3m50ytRhyw4IK2jOkjkCqD
 h+HADUFO3wFFJtzG6+7F1Gfhx6tPzeWEYpmLaXSebSkzhKIUyw/V62kWOhEfZ8zI8tiF
 vnM+JUMmVfHKEc7KPfwaXphrA7P4eaUfbKqKvOtGFeXJJCYM7Hc8VEKBlEN1McplTPO5
 wvfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fCMhYRJmjkYiKHZv5M9E4fwHUfNifLkPhD+twyPnjk8=;
 b=UICC1s9p0N5s1o2uSXYpm4iclx/IOdmvgOU7pmhChUzPmK76fxEwdxVAIajnYw9if3
 DTIpuOJ+C1yM+E/8yl3QdWzJyxjgJDY1dWm9Z2gBo47+s7QT99AsjGbmp3tOLQvo14vz
 3Bj0M7cvWCWehIpRLZjN5FxBZ7a+05TwK+YMDe3qulO++1Dh1LayIRAjEYkmpePl0F9J
 sC4R49yoQbEu8niyJ7iIX+ooHwwSb1OKzurEOStcPe7k0786pi5POnyZRnhRnQTwcmEU
 9pwlxhye0GSfkD9Vi1G3ona8tSvXopUXIQA49ce/DVggjF6ckhHQOKRmIBzK74tM0QhB
 ij2w==
X-Gm-Message-State: AOAM531wp1Xk8imAmL2/Vjqb/Y9F5tX1486Mjdh/4c+yII5/YZ0fRhGs
 oli3yQkxAQNa1pKdd8sOxtg=
X-Google-Smtp-Source: ABdhPJx/HZbjSGWiAMZDR8byiF2se8q102htS9s8NywuAX8BwxBr4+FOSWXB9/ZHj8ZWtL6kI4/uJA==
X-Received: by 2002:a5d:6885:: with SMTP id h5mr5689661wru.358.1598343301615; 
 Tue, 25 Aug 2020 01:15:01 -0700 (PDT)
Received: from lenovo-laptop
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id v67sm4395205wma.46.2020.08.25.01.15.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 01:15:00 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
X-Google-Original-From: Alex Dewar <alex.dewar@gmx.co.uk>
Date: Tue, 25 Aug 2020 09:14:59 +0100
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: emxx_udc: Fix passing of NULL to
 dma_alloc_coherent()
Message-ID: <20200825081459.qfvswtep5fkaqai2@lenovo-laptop>
References: <20200824142118.GA223827@mwanda>
 <20200824151920.251446-1-alex.dewar90@gmail.com>
 <20200824155712.4kgxwqiufm2ieboz@medion>
 <20200825073713.GR1793@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200825073713.GR1793@kadam>
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
 Magnus Damm <damm+renesas@opensource.se>, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, "Javier F. Arias" <jarias.linux@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
 Simon Horman <horms+renesas@verge.net.au>, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 25, 2020 at 10:37:13AM +0300, Dan Carpenter wrote:
> On Mon, Aug 24, 2020 at 04:57:12PM +0100, Alex Dewar wrote:
> > On Mon, Aug 24, 2020 at 04:19:17PM +0100, Alex Dewar wrote:
> > > In nbu2ss_eq_queue() memory is allocated with dma_alloc_coherent(),
> > > though, strangely, NULL is passed as the struct device* argument. Pass
> > > the UDC's device instead.
> 
> I think passing NULL was always wrong, but it used to not cause an Oops.
> This was changed a year or two ago.
> 
> > > 
> > > Build-tested on x86 only.
> > > 
> > > Fixes: 33aa8d45a4fe ("staging: emxx_udc: Add Emma Mobile USB Gadget driver")
> > > Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
> > > ---
> > > 
> > > So I *think* this is the right fix, but I don't have the hardware so
> > > I've only been able to build-test it. My worry is that I could be
> > > passing in the wrong struct device* here, which would squelch the
> > > warning without fixing the breakage.
> > > 
> > > Can someone cleverer than me tell me if this makes sense?
> > > 
> > > - Alex
> > 
> > PS -- I meant to put an RFC in the subject line and an extra tag:
> > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > 
> 
> I don't know which dev pointer we're supposed to pass...  It would be
> good to find someone to test the patch but if not then applying your
> patch is reasonable.
> 
> But could you search through the file and update the rest as well.
> The dma_free_coherent() needs to be updated and there was a second
> dma_alloc_coherent() in the bug report.
> 
> regards,
> dan carpenter
> 

I can only find the one instance of dma_alloc_coherent(). Was it by any
chance a different warning about the same call....?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
