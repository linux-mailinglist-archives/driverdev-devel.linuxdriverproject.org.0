Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0085528A092
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 15:49:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93078868BD;
	Sat, 10 Oct 2020 13:49:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRc57lP_7C_t; Sat, 10 Oct 2020 13:49:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2622D86978;
	Sat, 10 Oct 2020 13:49:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 335C61BF271
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 13:49:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1FC102047D
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 13:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sWamZs95VJlK for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 13:49:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id A273A203E2
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 13:49:01 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id k8so9393247pfk.2
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 06:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kC9TWaG7yp5ewJLHtI5Tz3MDkqf7FFIgPPjwgWQ0j4I=;
 b=V5dlcnRgTj5UdC+szz9bftOxKaNSU7wBlGhTMz6V2WvyjNqR/IdptvTMgaAi08ICdz
 WsxnQQoK8yMMJNTpT8nBHcI0SRPEuAViyK0DU80Syo+U0pKWcTDuMTKv7x7h6RkyCpMA
 /qOCSn0lE8JFcIPr8J3MsxPoB3eBvWSLSdiIxA7gRvQ9sqFOXjwbYJq3OSnhaxJ9eROX
 8zffhikWDK/hY0e/LWGUzLb9cWx8/XDVaXMV7fcOyzOYX7Ssv3llOTknlvGCS9N2N1wp
 LysOcPy3yMhgEkF22ssRV5wfVxR8Gx6qZki4m69us9f0XynPSW3tyJhvGKCQOogpijGi
 Aurg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kC9TWaG7yp5ewJLHtI5Tz3MDkqf7FFIgPPjwgWQ0j4I=;
 b=nbRthIzEHfy+23AehFaI71t2hin/mVhAHTNqpcjLB/RADHqT1xKqk8EDPKIBdVNIut
 kX2K1AVe0KBSMFlqtvDS2dd7cYEC8vHfvNW4qbncGYN5TB1D3vTTDnkZxtir7C0Dip5R
 tes47/87opY5L7DQRJdKKtxZ5jJyiXQTlIJVaq1Xi5gzJHc0TPoLUXjADBDxMD6o1qpe
 y5T0z7yvcSZDP3cmsK39fIpjISUp20oPZzqVckQgctvi9NHeKDn7Y3ind9c/l711AJcB
 PfySLjXFS/lZW43xiggL/U5drmQ6SA/K/6O4ty3bFqPqHCtDf/JDXOCsBTO+e8112o6I
 44vg==
X-Gm-Message-State: AOAM533T55xy3W1piqsuI3vg447vPv2k+qbPuPSpOlGj/fF7qsfFoSLJ
 NjxqvVcoP6LZR88y04PcedA=
X-Google-Smtp-Source: ABdhPJwQBpFJ3ZD+MYSjv81yJ9YaF1Uz9iMqM4xk8zmnBMZtggfc6h8sY59CITsoLlxlamjwS1v8tg==
X-Received: by 2002:a17:90a:8007:: with SMTP id
 b7mr10168719pjn.84.1602337741209; 
 Sat, 10 Oct 2020 06:49:01 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id gl24sm7323884pjb.50.2020.10.10.06.48.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Oct 2020 06:49:00 -0700 (PDT)
Date: Sat, 10 Oct 2020 22:48:55 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v1 1/6] staging: qlge: Initialize devlink health dump
 framework for the dlge driver
Message-ID: <20201010134855.GB17351@f3>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-2-coiby.xu@gmail.com>
 <20201010073514.GA14495@f3> <20201010102416.hvbgx3mgyadmu6ui@Rk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010102416.hvbgx3mgyadmu6ui@Rk>
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

On 2020-10-10 18:24 +0800, Coiby Xu wrote:
> On Sat, Oct 10, 2020 at 04:35:14PM +0900, Benjamin Poirier wrote:
> > On 2020-10-08 19:58 +0800, Coiby Xu wrote:
> > > Initialize devlink health dump framework for the dlge driver so the
> > > coredump could be done via devlink.
> > > 
> > > Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> > > ---
> > >  drivers/staging/qlge/Kconfig        |  1 +
> > >  drivers/staging/qlge/Makefile       |  2 +-
> > >  drivers/staging/qlge/qlge.h         |  9 +++++++
> > >  drivers/staging/qlge/qlge_devlink.c | 38 +++++++++++++++++++++++++++++
> > >  drivers/staging/qlge/qlge_devlink.h |  8 ++++++
> > >  drivers/staging/qlge/qlge_main.c    | 28 +++++++++++++++++++++
> > >  6 files changed, 85 insertions(+), 1 deletion(-)
> > >  create mode 100644 drivers/staging/qlge/qlge_devlink.c
> > >  create mode 100644 drivers/staging/qlge/qlge_devlink.h
> > > 
> > > diff --git a/drivers/staging/qlge/Kconfig b/drivers/staging/qlge/Kconfig
> > > index a3cb25a3ab80..6d831ed67965 100644
> > > --- a/drivers/staging/qlge/Kconfig
> > > +++ b/drivers/staging/qlge/Kconfig
> > > @@ -3,6 +3,7 @@
> > >  config QLGE
> > >  	tristate "QLogic QLGE 10Gb Ethernet Driver Support"
> > >  	depends on ETHERNET && PCI
> > > +	select NET_DEVLINK
> > >  	help
> > >  	This driver supports QLogic ISP8XXX 10Gb Ethernet cards.
> > > 
> > > diff --git a/drivers/staging/qlge/Makefile b/drivers/staging/qlge/Makefile
> > > index 1dc2568e820c..07c1898a512e 100644
> > > --- a/drivers/staging/qlge/Makefile
> > > +++ b/drivers/staging/qlge/Makefile
> > > @@ -5,4 +5,4 @@
> > > 
> > >  obj-$(CONFIG_QLGE) += qlge.o
> > > 
> > > -qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o
> > > +qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o qlge_devlink.o
> > > diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
> > > index b295990e361b..290e754450c5 100644
> > > --- a/drivers/staging/qlge/qlge.h
> > > +++ b/drivers/staging/qlge/qlge.h
> > > @@ -2060,6 +2060,14 @@ struct nic_operations {
> > >  	int (*port_initialize)(struct ql_adapter *qdev);
> > >  };
> > > 
> > > +
> > > +
> > > +struct qlge_devlink {
> > > +        struct ql_adapter *qdev;
> > > +        struct net_device *ndev;
> > 
> > This member should be removed, it is unused throughout the rest of the
> > series. Indeed, it's simple to use qdev->ndev and that's what
> > qlge_reporter_coredump() does.
> 
> It reminds me that I forgot to reply to one of your comments in RFC and
> sorry for that,
> > > +
> > > +
> > > +struct qlge_devlink {
> > > +        struct ql_adapter *qdev;
> > > +        struct net_device *ndev;
> > 
> > I don't have experience implementing devlink callbacks but looking at
> > some other devlink users (mlx4, ionic, ice), all of them use devlink
> > priv space for their main private structure. That would be struct
> > ql_adapter in this case. Is there a good reason to stray from that
> > pattern?

Thanks for getting back to that comment.

> 
> struct ql_adapter which is created via alloc_etherdev_mq is the
> private space of struct net_device so we can't use ql_adapter as the
> the devlink private space simultaneously. Thus struct qlge_devlink is
> required.

Looking at those drivers (mlx4, ionic, ice), the usage of
alloc_etherdev_mq() is not really an obstacle. Definitely, some members
would need to be moved from ql_adapter to qlge_devlink to use that
pattern.

I think, but didn't check in depth, that in those drivers, the devlink
device is tied to the pci device and can exist independently of the
netdev, at least in principle.

In any case, I see now that some other drivers (bnxt, liquidio) have a
pattern similar to what you use so I guess that's acceptable too.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
