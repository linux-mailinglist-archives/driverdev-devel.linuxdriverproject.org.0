Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6415D8A02
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 09:42:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E4C2F86D90;
	Wed, 16 Oct 2019 07:42:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BqW-sNYbtoeW; Wed, 16 Oct 2019 07:42:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C752865B0;
	Wed, 16 Oct 2019 07:42:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 05FB91BF386
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 07:42:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F11022043C
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 07:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BVe6y4taVycB for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 07:42:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E73FA2040A
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 07:42:16 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id f14so8654970pgi.9
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 00:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=THg5AIRpzEMlPPt8spygiynKMTygfSswC7awShDdMxU=;
 b=LobMO/1OtmSkqdhcKBbbKNeFpMIP4hoHsRV4p1VCHldVwZ2SRicw5VVUb6sNSwKbnq
 VByBnG30mUKPa/sgQ5CddllExySAv+bvMVNglTtD02F6r/aDtsrzrTAgwHu3zs7ZLp8f
 Ox3OUs2ZqdmEiLFIbVVhkh42diPZLCX/I+lrtQrwBYWJhpU3cQBLQYIv9Cz3rptDcT5m
 fYV0Fsei2nCyxuIJ9V8Vlq6W5+zaQ0Y33nz2ONgz3gKrXj61WzD2nGF8Po5T2ka0L5Nm
 Qq13EyOESKDZy6N8pv7QrCTbJTovR+g3W19r+3CyBaK8dvnlZiGju/7rWMIqhQDXchV1
 ulew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=THg5AIRpzEMlPPt8spygiynKMTygfSswC7awShDdMxU=;
 b=OgHOsSrromvC6B9Yv9fVsvfJ90U3xWBzF2IeMFxxQMZx7sTsFBVV+liOt0TRj/rfb2
 6cv8uBjUp5vDWOHqPQEHluBJ848jSvbYtXRSpqg06gkwigA0ptnyVc46JwERHtsmeTmV
 Mf12S+zjkR0ZXQ9zDD1mBbHrxJEvlHJNlElwymZ5kuSzhgOInfKyfxIER+D+hm7VHNx9
 98YUwPQklZ1SjRK/87yjtOPUUTtjpbhdhFPRBTTE/i3Y89k8v9iVtW+44pXqWdcsuBoD
 MWBNzW5I3cQXrjxIAY3hGsUxWwdKOC3khlEpVV9sThr9Qj9kqsmqPRSHoUZme92rlmd5
 J6NA==
X-Gm-Message-State: APjAAAVUJlDxh6AuZu19yK8SLu85keNIfpGpb8JJglnP0Xt4dId+RKgu
 xwet/dp6I3KYELW0fY09Pao=
X-Google-Smtp-Source: APXvYqzIecCR/3jU0SEKcTA9DhO74LXXfPo/HAnU2KYPgcgmmYd6QrNsRetxpjZrJLuPuTrJuFZDMQ==
X-Received: by 2002:a63:f453:: with SMTP id p19mr41882831pgk.433.1571211736414; 
 Wed, 16 Oct 2019 00:42:16 -0700 (PDT)
Received: from whale ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id ce16sm2148561pjb.29.2019.10.16.00.42.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:42:15 -0700 (PDT)
Date: Wed, 16 Oct 2019 00:42:13 -0700
From: "<Chandra Annamaneni>" <chandra627@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/5] KPC2000: kpc2000_spi.c: Fix style issues (line length)
Message-ID: <20191016074213.GB19148@whale>
References: <20191011055155.4985-1-chandra627@gmail.com>
 <20191011063219.GA986093@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011063219.GA986093@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, michael.scheiderer@fau.de,
 fabian.krueger@fau.de, linux-kernel@vger.kernel.org, simon@nikanor.nu,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 11, 2019 at 08:32:19AM +0200, Greg KH wrote:
> On Thu, Oct 10, 2019 at 10:51:51PM -0700, Chandra Annamaneni wrote:
> > Resoved: "WARNING: line over 80 characters" from checkpatch.pl
> 
> Please put "staging:" in your subject line, makes it easier to sort and
> handle.  It should look something like:
> 	staging: kpc2000_spi: fix line length issues
> 
> Looks a lot cleaner, right?
> 
> > 
> > Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
> > ---
> >  drivers/staging/kpc2000/kpc2000_spi.c | 20 ++++++++++----------
> >  1 file changed, 10 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
> > index 3be33c450cab..81d79b116ce0 100644
> > --- a/drivers/staging/kpc2000/kpc2000_spi.c
> > +++ b/drivers/staging/kpc2000/kpc2000_spi.c
> > @@ -30,19 +30,19 @@
> >  #include "kpc.h"
> >  
> >  static struct mtd_partition p2kr0_spi0_parts[] = {
> > -	{ .name = "SLOT_0",	.size = 7798784,		.offset = 0,                },
> > -	{ .name = "SLOT_1",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
> > -	{ .name = "SLOT_2",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
> > -	{ .name = "SLOT_3",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
> > -	{ .name = "CS0_EXTRA",	.size = MTDPART_SIZ_FULL,	.offset = MTDPART_OFS_NXTBLK},
> > +	{ .name = "SLOT_0",  .size = 7798784,  .offset = 0,                },
> > +	{ .name = "SLOT_1",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
> > +	{ .name = "SLOT_2",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
> > +	{ .name = "SLOT_3",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
> > +	{ .name = "CS0_EXTRA",  .size = MTDPART_SIZ_FULL,  .offset = MTDPART_OFS_NXTBLK},
> 
> Why did you pick 2 spaces here as a random choice of padding?  That's
> very odd, please don't.
> 
> Either leave this alone (as it lines everything up nicely), or only use
> one space.  I would suggest just leaving it alone.
> 
> thanks,
> 
> greg k-h

I am going to leave it as is at your and Dan C's suggestion. 

Thanks!
Chandra

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
