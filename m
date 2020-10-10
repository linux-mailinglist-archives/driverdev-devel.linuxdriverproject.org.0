Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B1028A087
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 15:22:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 202C08756B;
	Sat, 10 Oct 2020 13:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UkK+xbDsCtQo; Sat, 10 Oct 2020 13:22:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 942CD877DC;
	Sat, 10 Oct 2020 13:22:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 407401BF271
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 13:22:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3CD16877DC
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 13:22:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BzxfNG9483Gh for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 13:22:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BA50D8756B
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 13:22:36 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 132so2765374pfz.5
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 06:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iPYmzILO99gWQ7KmTRCw8HqpXWlZMMEv9MgwDntuYfI=;
 b=Gw8bu7YbCE7B1Uazh09OPacu+3M9+9er0UlkwZG3KBiuR21iWSsVfiPxnmhBVUj5Ka
 bUH4RJPVe3EXtdlNv9f9Ymiaafh0Rb0A32U1Z2Vvcm1I7R/4rNqNwzzz6II3xe42bA+R
 jnEKchK2eQOmusHphedK8luW/CNukfLM3YDJ7XTcFDJVbh/rohI80LmVzkUBhKFzKCAr
 cHbxY0P8x9gQZ+XzrGNQK8QXlw7ujPRC/LOZMnMqpT97op87oRjecDtToQ2HoOyB01TH
 1zGe/hWa77lcPqdUmpdWemQ0XypVB5x8pNpsRcW5eHDelCOnGrc7F03lgKSeo6dZJwL2
 n+2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iPYmzILO99gWQ7KmTRCw8HqpXWlZMMEv9MgwDntuYfI=;
 b=qDqY+9nnD+3OT/blFXW/t9IzdoNpuatfI2KrW15iro6CZEz28eb8B85whUyyykcLTO
 cw1RbSQsuMW5UdbUnaXCyR/6sxlTjulVWf/REsHWfl8TrbX9dTzbIMtWP/gjbjR+XUdD
 Gd/FZSRdxckIHPkrDG5ANtqfySkhpcIxk/iq9vatolu1/X8xKQ5totk5ZshmFdqTgjAt
 BHOTLKIY1NuBj7VphxANkjJR5X6y3yFHg3HnfJ2NCZCpV1WAD3laDFWb1c4ukxGPNY9+
 q67iVzcxG988MkM/uL4O9GttTJ6iZLFfWXUw8Q7j1XIEevy5CzhI1eA40yhC5X1zLRAP
 Q8Pg==
X-Gm-Message-State: AOAM530eHuBlkaSuAgTvQ8psjaruqruvkKmGj+If2NlvbQMlH6/vxRbb
 FVIyUePjSd4bZOJBl876T9o=
X-Google-Smtp-Source: ABdhPJyibHMnihiC0574sNDxXNrOcHiaAMIMFa3z4Ekl5pG/R2BSC8trht8IPOHPY1KSgB3OhyKv7A==
X-Received: by 2002:a17:90a:dd46:: with SMTP id
 u6mr10740023pjv.67.1602336156275; 
 Sat, 10 Oct 2020 06:22:36 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id in6sm14805090pjb.42.2020.10.10.06.22.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Oct 2020 06:22:35 -0700 (PDT)
Date: Sat, 10 Oct 2020 22:22:30 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v1 2/6] staging: qlge: coredump via devlink health reporter
Message-ID: <20201010132230.GA17351@f3>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-3-coiby.xu@gmail.com>
 <20201010074809.GB14495@f3> <20201010100258.px2go6nugsfbwoq7@Rk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010100258.px2go6nugsfbwoq7@Rk>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-10-10 18:02 +0800, Coiby Xu wrote:
[...]
> > > +	do {                                                           \
> > > +		err = fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
> > > +		if (err) {					       \
> > > +			kvfree(dump);                                  \
> > > +			return err;				       \
> > > +		}                                                      \
> > > +	} while (0)
> > > +
> > > +static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
> > > +				  struct devlink_fmsg *fmsg, void *priv_ctx,
> > > +				  struct netlink_ext_ack *extack)
> > > +{
> > > +	int err = 0;
> > > +
> > > +	struct qlge_devlink *dev = devlink_health_reporter_priv(reporter);
> > 
> > Please name this variable ql_devlink, like in qlge_probe().
> 
> I happened to find the following text in drivers/staging/qlge/TODO
> > * in terms of namespace, the driver uses either qlge_, ql_ (used by
> >  other qlogic drivers, with clashes, ex: ql_sem_spinlock) or nothing (with
> >  clashes, ex: struct ob_mac_iocb_req). Rename everything to use the "qlge_"
> >  prefix.

This comment applies to global identifiers, not local variables.

> 
> So I will adopt qlge_ instead. Besides I prefer qlge_dl to ql_devlink.

Up to you but personally, I think ql_devlink is better. In any case,
"dev" is too general and often used for struct net_device pointers
instead.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
