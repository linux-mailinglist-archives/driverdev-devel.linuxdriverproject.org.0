Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7510216ACF6
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 18:18:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5F3C720525;
	Mon, 24 Feb 2020 17:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TW2JX9QyUIyq; Mon, 24 Feb 2020 17:18:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 833FA2050A;
	Mon, 24 Feb 2020 17:18:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B4DA1BF2B1
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 17:18:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 874EE20028
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 17:18:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xTmM+Caw1sC8 for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 17:18:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 12C332001D
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 17:18:32 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id ay11so4321993plb.0
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 09:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gyw3IQoCgUqeHBYgq3kf+BJNZrC8xCDPvwa+Ug1jeIY=;
 b=rxarjv0j6U/0Mn9WePM3dmGAynqBodgb0qcGxwIqrk4TVZWw97sTqpQVtxMP0sFT0S
 KBZwY3S4PVFCTll37uvZ7vy5EJrgHC/O82hs1PPzVsl2OGg4F2qHiMEMmFBZN5wmBKKL
 GDCCq7rqcNqv7zWuNGRZvqt/On3TdqBdZDtRNt9jgINp9+YN8wBEI6JYJfj6FUadIC8+
 TBEJyhq5fgG2byb3XP37tkPBOHdOEBmZiFy7Jrw298f3NpVkfHbkJ+jWXczGd8vpFwXL
 1urlhCWFuMu3jWJEfhVPxC9HDgUCWZjw7BeE6HF61dIhXALyrX0b5+LRyp6KF0FL9V02
 7qsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gyw3IQoCgUqeHBYgq3kf+BJNZrC8xCDPvwa+Ug1jeIY=;
 b=IgqmI6VLSGTblC32CmJH2A4uQa9Y+tjkw5XCBeejl1WNuwChpspSQRP1ajGJbzua8r
 kA9h5YN0Dlx+gxokU+LN2U4HE8/aYovixtSzgf9EwHVnNs7175q+oicFi9EZfFXD+gsg
 AXfL7niZ9MTv2KYIFF366ulwgdBAbxnWBh1sziin2WUIg39hGHUnpTZD7lTmH26VWgUa
 HJJzDoczr9P1Q4O3/ib8H1ZlScgy4qh5q/akj7eQfEUcxxfxJwpPZMaj6nDreDv2KbHN
 mwAZFHeu2zd098R6+oNOe5E/UqmvZxSLppeUG//FTUFpqlo+Cd0nqfPqqkRnCBC0BjAa
 +6Ug==
X-Gm-Message-State: APjAAAUjcV4gw6ymw83QQndoPwJtF3LDc5DlKpM6fOowWZ0xBWMrpSeg
 K+SmpTCZCKlY8VteTlRZrZwzYA==
X-Google-Smtp-Source: APXvYqypr5gvqxegqJ49eFPGEqT53fDvW/SfNn7izliGbOcALtB1GFkm3Wv3PpxGw3FpScvNByib1w==
X-Received: by 2002:a17:90a:c691:: with SMTP id n17mr80171pjt.41.1582564711576; 
 Mon, 24 Feb 2020 09:18:31 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.170])
 by smtp.gmail.com with ESMTPSA id t8sm29369pjy.20.2020.02.24.09.18.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Feb 2020 09:18:30 -0800 (PST)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Mon, 24 Feb 2020 22:48:23 +0530
To: Joe Perches <joe@perches.com>, Manish Chopra <manishc@marvell.com>,
 GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] staging: qlge: emit debug and dump at same level
Message-ID: <20200224171823.GA8240@kaaira-HP-Pavilion-Notebook>
References: <20200224082448.GA6826@kaaira-HP-Pavilion-Notebook>
 <84410699e6acbffca960aa2944e9f5869478b178.camel@perches.com>
 <20200224164721.GA7214@kaaira-HP-Pavilion-Notebook>
 <9f0d39d5972553b86123873294fc9f9566130036.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9f0d39d5972553b86123873294fc9f9566130036.camel@perches.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 24, 2020 at 08:54:43AM -0800, Joe Perches wrote:
> On Mon, 2020-02-24 at 22:17 +0530, Kaaira Gupta wrote:
> > On Mon, Feb 24, 2020 at 05:38:09AM -0800, Joe Perches wrote:
> > > On Mon, 2020-02-24 at 13:54 +0530, Kaaira Gupta wrote:
> > > > Simplify code in ql_mpi_core_to_log() by calling print_hex_dump()
> > > > instead of existing functions so that the debug and dump are
> > > > emitted at the same KERN_<LEVEL>
> > > []
> > > > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> > > []
> > > > @@ -1324,27 +1324,10 @@ void ql_mpi_core_to_log(struct work_struct *work)
> > > >  {
> > > >  	struct ql_adapter *qdev =
> > > >  		container_of(work, struct ql_adapter, mpi_core_to_log.work);
> > > > -	u32 *tmp, count;
> > > > -	int i;
> > > >  
> > > > -	count = sizeof(struct ql_mpi_coredump) / sizeof(u32);
> > > > -	tmp = (u32 *)qdev->mpi_coredump;
> > > > -	netif_printk(qdev, drv, KERN_DEBUG, qdev->ndev,
> > > > -		     "Core is dumping to log file!\n");
> > > 
> > > There is no real need to delete this line.
> > > 
> > > And if you really want to, it'd be better to mention
> > > the removal in the commit message description.
> > > 
> > > As is for this change, there is no "debug" and "dump"
> > > as the commit message description shows, just "dump".
> > 
> > This patch has already been added to the tree,
> 
> What tree is that?
> It's not in -next as of right now.

Its in staging-next right now.
This is the link: https://lore.kernel.org/driverdev-devel/cba75ee4d88afdf118631510ad0f971e42c1a31c.camel@perches.com/

> 
> >  if I amend the commit now
> > using git rebase, won't it affect the upstream as the SHA-1 of the
> > commit and it's children will change?
> 
> You are sending patches not pull requests.
> 
> If it's really in an actual tree that people
> care about, send another patch putting the
> netif_printk back.

I'll submit a patch, but can you please explain me why this function is
still needed when we are already using print_hex_dump()?

> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
