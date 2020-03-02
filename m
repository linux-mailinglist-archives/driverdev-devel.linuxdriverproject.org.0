Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FAA1752EC
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 05:56:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C18F87774;
	Mon,  2 Mar 2020 04:56:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SQotzE0Llp1m; Mon,  2 Mar 2020 04:56:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFF6186D52;
	Mon,  2 Mar 2020 04:56:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 25F0B1BF2EF
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 04:56:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1FAF486DEE
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 04:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 43+xHrAEylld for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 04:56:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E3B486C1D
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 04:56:20 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id h8so4792076pgs.9
 for <devel@driverdev.osuosl.org>; Sun, 01 Mar 2020 20:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:to:cc:subject:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7vBk8y9meWPdR0TaZ2HBNwrP3tbXHLzf6XFkZda6pg8=;
 b=omKcPtV0r+XUG1uxD/08V+0T0im1T3iDalejiL/uwZSOlkRhCDMQjLAv2MmM5Nm8B5
 m9XWOcW8FFLLjxHRoOJI5ny2a8FuSld+adUyGgf5MekFT5Wffdb4k8xAnYutGi2fwVPk
 oNYveMMx7WK67qsNfDgJQoe4FNVeKat/s/pQ0cs7z42M3ARiIIUqGSZogAeG0PJlyju5
 Rx82cucgZaS4vUpzijZT4Ax3xlecGTOQT1zSzWK2mI5pPpia+9RWunBdeFgJoTgBI+vv
 zxz+4+4/hRMD6L4MH/+dYBvbLldyB/tGkb73RpckojFDB4uW8XZn4K0/+H7/X1cUrgYN
 +r5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7vBk8y9meWPdR0TaZ2HBNwrP3tbXHLzf6XFkZda6pg8=;
 b=jaod1qVH4yUvFYhOXBlHb2Qj72c4b/aVl01OjFV/f6T1KNEt9Ala5VWQRZHWksRLgJ
 P0Odk7+QbGx1VJf/EOI3Mvl5mGsPOGC6rJR6uBXWc9i8ZQeQE0a/cgOZjFqjUvO87/fn
 KyBrdvVVcQnpoGQdz/rCyFFzDvhjXPpEyyI0dhcTuAdn92bMFG0xwBxNnfUMRcHZY11J
 u2td3ahqCAwRJpojnnpg2GCGdyyNG9anrpF4j5pa3/O7g1h3ivmTrcHDNr7Ea/nbKI2T
 Ow5gbkc9yyt1Dhb2iAweyDKhzo14HC8ZBlF1ZyqrdlzBkHzXdUpfpGjuf4NOiKxp7abs
 F9xA==
X-Gm-Message-State: APjAAAUvjnnXH2d64EQVauo1yLJqRPFkHrw14a9e60FEt9E4ftUL7QCi
 8kMTOqbRJgSu5Ba9cm4NlA2jU//kdrVtTQ==
X-Google-Smtp-Source: APXvYqxg7tJs5gZlN3V8QpXCeLgmA97RQ6zpxzKzcAqKNEflCUunLpOfaljr5eyptxa3Z38O8IG0vA==
X-Received: by 2002:a63:9143:: with SMTP id l64mr17020637pge.75.1583124979563; 
 Sun, 01 Mar 2020 20:56:19 -0800 (PST)
Received: from SARKAR ([49.207.56.215])
 by smtp.gmail.com with ESMTPSA id i5sm10884393pfg.40.2020.03.01.20.56.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 20:56:18 -0800 (PST)
Message-ID: <5e5c91f2.1c69fb81.25aee.deaf@mx.google.com>
X-Google-Original-Message-ID: <20200302045612.GA10725@rohitsarkar5398@gmail.com>
Date: Mon, 2 Mar 2020 10:26:12 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v3] staging: iio: update TODO
References: <5e5a6fbd.1c69fb81.f08c3.4cf0@mx.google.com>
 <20200301114922.6117def9@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301114922.6117def9@archlinux>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: linux-iio@vger.kernel.org, grekh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Mar 01, 2020 at 11:49:22AM +0000, Jonathan Cameron wrote:
> On Sat, 29 Feb 2020 19:35:45 +0530
> Rohit Sarkar <rohitsarkar5398@gmail.com> wrote:
> 
> > Since there are no uses of the old GPIO API, remove the item from
> > the TODO.
> > 
> > Changelog
> > v3: Remove new items added.
> > v2: Add work item mentioned by Alexandru in
> > https://marc.info/?l=linux-iio&m=158261515624212&w=2
> Change log belongs below the --- as we don't want this info in the
> git history. I've tidied up and applied to the togreg branch of iio.git
> (pushed out as testing for the autobuilders to play with it).
Will keep that in mind, Thanks!
> Thanks,
> 
> Jonathan
> 
> > 
> > Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
> > ---
> >  drivers/staging/iio/TODO | 8 +-------
> >  1 file changed, 1 insertion(+), 7 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/TODO b/drivers/staging/iio/TODO
> > index 1b8ebf2c1b69..4d469016a13a 100644
> > --- a/drivers/staging/iio/TODO
> > +++ b/drivers/staging/iio/TODO
> > @@ -1,10 +1,4 @@
> > -2018-04-15
> > -
> > -All affected drivers:
> > -Convert all uses of the old GPIO API from <linux/gpio.h> to the
> > -GPIO descriptor API in <linux/gpio/consumer.h> and look up GPIO
> > -lines from device tree, ACPI or board files, board files should
> > -use <linux/gpio/machine.h>.
> > +2020-02-25
> >  
> >  
> >  ADI Drivers:
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
