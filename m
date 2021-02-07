Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C4931259C
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 16:56:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1496086B85;
	Sun,  7 Feb 2021 15:56:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z8l3RTThL0hf; Sun,  7 Feb 2021 15:56:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2263D8698C;
	Sun,  7 Feb 2021 15:56:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FB871BF3ED
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 15:55:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6D8332040E
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 15:55:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D8AfUsPU6SsB for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 15:55:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by silver.osuosl.org (Postfix) with ESMTPS id 16B8E203E7
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 15:55:56 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id b3so14252677wrj.5
 for <devel@driverdev.osuosl.org>; Sun, 07 Feb 2021 07:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0E1VUN8G/OPIL1C7pz+2prddbYXUwAAZ8Arf/5v2Sxo=;
 b=vMIUTrFeLDoel4sVmTIRApRDmZ71M9NOPckidtV0kQbsa60TgeTCVTP8+XvKf08J6Z
 Mxh53Ju1lQdKCn4nWaZLEydKj48A5gHf5PtYCvlNrx61KQiBT3RmvhNap8ojPXulH/Tf
 DdJhmN6iTPpO2IvNA4rmklBUAXIShDF1a7hUawi5296M1mdkA9bEB5WjarZMjypG7aTU
 fg9UeG0vJcbSb1aoo79GEtPDQyhcsKxuX37k7EuMOXYudkm6O9ZiCRlyW/cQlntNPmeP
 fs/jufmlq2CigjQs8FVfdVyso5CkvKHWK5zlPzqwr3cAF7wCANsrwz3nMIQ99idM4q2q
 zilA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0E1VUN8G/OPIL1C7pz+2prddbYXUwAAZ8Arf/5v2Sxo=;
 b=TIjZSeKEyiD81QZHD27HxYFEGqXIEQHutUOYZEcoSs9jNHl7ZH6DkeT7WuI+6ZtmHB
 dGyTrahJl2R2peGVfOhZeoe/d4WsrrTsGob8R+uu7Si0qLl7UfMMO4Avov9Y6m1P+Psp
 A2PeJscjpmZTXV+qfyI4fb1kItr+qBQ76f11G55vQL2xIaFgh034V20OPecIpYwPYFO1
 sfwNJxYhrRg9bdvjoaKjEWpIMmK8MAtVEb6YtYo33B7K1FFV8F9+9GH60RCT2keLW0FC
 dMy5Gc+NN29O7X6BHRkR7GhhqXiPFH/vQA2PCH9fwFNAh8KunudcukPg2dFp3R+Hjxqe
 PItw==
X-Gm-Message-State: AOAM530/Mx2AlyE/2cueBCGlEXZg9Nwr/3F63SaTKiBdwWdM6opPZVm7
 Fsb6TwYNvgzkYml/MmcHAxUQrg==
X-Google-Smtp-Source: ABdhPJy43Jj0B/tlzcEUCDcxCpP7sINP1pKCjAj6i62s7+2H6KawmrPgkJAyS7WePYeNO+DZOYUakw==
X-Received: by 2002:a5d:6847:: with SMTP id o7mr15606807wrw.216.1612713354515; 
 Sun, 07 Feb 2021 07:55:54 -0800 (PST)
Received: from kernelvm
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id o12sm22696042wrx.82.2021.02.07.07.55.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 07:55:52 -0800 (PST)
Date: Sun, 7 Feb 2021 15:55:50 +0000
From: Phillip Potter <phil@philpotter.co.uk>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] staging: octeon: convert all uses of strlcpy to
 strscpy in ethernet-mdio.c
Message-ID: <20210207155550.GA88784@kernelvm>
References: <20210207151320.88696-1-phil@philpotter.co.uk>
 <YCAIqrpLLBxZh+47@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCAIqrpLLBxZh+47@kroah.com>
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, linux-kernel@vger.kernel.org,
 chris.packham@alliedtelesis.co.nz, alexander.sverdlin@nokia.com,
 joe@perches.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 07, 2021 at 04:35:06PM +0100, Greg KH wrote:
> On Sun, Feb 07, 2021 at 03:13:20PM +0000, Phillip Potter wrote:
> > Convert three calls to strlcpy inside the cvm_oct_get_drvinfo function
> > to strscpy calls. As return values were not checked for these three
> > calls before, change should be safe as functionality is equivalent.
> > 
> > Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
> > ---
> > 
> > v2: Modified changelog to take account of feedback from Greg KH.
> > 
> >  drivers/staging/octeon/ethernet-mdio.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/octeon/ethernet-mdio.c b/drivers/staging/octeon/ethernet-mdio.c
> > index b0fd083a5bf2..b3049108edc4 100644
> > --- a/drivers/staging/octeon/ethernet-mdio.c
> > +++ b/drivers/staging/octeon/ethernet-mdio.c
> > @@ -21,9 +21,9 @@
> >  static void cvm_oct_get_drvinfo(struct net_device *dev,
> >  				struct ethtool_drvinfo *info)
> >  {
> > -	strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
> > -	strlcpy(info->version, UTS_RELEASE, sizeof(info->version));
> > -	strlcpy(info->bus_info, "Builtin", sizeof(info->bus_info));
> > +	strscpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
> > +	strscpy(info->version, UTS_RELEASE, sizeof(info->version));
> > +	strscpy(info->bus_info, "Builtin", sizeof(info->bus_info));
> >  }
> >  
> >  static int cvm_oct_nway_reset(struct net_device *dev)
> 
> Sorry, this does not apply to my tree, someone already did this
> conversion before you :(
> 
> greg k-h

Thank you anyway, and thank you to you and Joe for your feedback, much
appreciated.

Regards,
Phil
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
