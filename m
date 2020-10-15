Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C6928F0AA
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Oct 2020 13:06:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A4F6487629;
	Thu, 15 Oct 2020 11:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UwJA-hExfU8k; Thu, 15 Oct 2020 11:06:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15C3B87407;
	Thu, 15 Oct 2020 11:06:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D7E61BF3E8
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 11:06:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 88F162E620
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 11:06:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Bs38n+YdMSt for <devel@linuxdriverproject.org>;
 Thu, 15 Oct 2020 11:06:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 7E5AE2E645
 for <devel@driverdev.osuosl.org>; Thu, 15 Oct 2020 11:06:12 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id a17so1637265pju.1
 for <devel@driverdev.osuosl.org>; Thu, 15 Oct 2020 04:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3agPMtqAij1qga3Qozc4HBm1uOcDmeRGeVCYjoCjyCc=;
 b=pLOQ8l/K7RgbgufocZ1NX2e0Ob/lMxvs2pThx5xdcjy7ggXY/fm1e+RWG1WbuqJkOE
 f8bmhjW7x9DYWEeuLbn0nX1VhyNcPQH9XgIPweNJT2mTBgRqTa7mWwzkQ8tFtfO3OmQr
 tqavvNlCC+yizHYNa7H4taKHnwHAUHEytGfa9CSr6ZQz9uWmBS4TXLYLQWnPGUWkQSpd
 XCoLRKJIIBrLbxTaQTX7i9qMT4Gvayv8uQUzbTsyy3G3dFHaWWsV5OkbnfOSsi+B1iaH
 VFTJd2/RQaYMMI2bAnITzJcZ+20h5A5lDoxxPBtC8S4zuwe1JtEkyXeXoxXmVISsOh6s
 Tbmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3agPMtqAij1qga3Qozc4HBm1uOcDmeRGeVCYjoCjyCc=;
 b=PdX+ZBKRKADBK5LiWSt4Ag55N8U1McNe0cL6a/mwEj2OWgqyIYP5bXwO2T8YcWMnsy
 V/XIFbxVPVEU9VQRM9suQBTMhVQILrkkaD2tEXCrJlHh1dWn1BTyQ51S5UkNJk1De6b5
 Y0kyRpePg8VxVC0SbI8Feyx0lAkLZdnxUY2yRtdjtJ8CaflLs1g6p+ANTtE9e4mSsvVc
 rBfFJWLBMUXYKk5lQTaMmfAMcMM/Edqj8H4bWuKEgnWeS/VsGBJeqa8gOKrDIGcqyJ8a
 FeyARfSdARTJMWr98rKR/+emf1lQ4rUt/ixU3wXx8Xh3lzM5/NWyhXAF7YDYRwOQQ7RN
 OmCw==
X-Gm-Message-State: AOAM531j8cKmspi1HpS3wkCxmfqa5Z9Z+MKAuRJ5R7PyD/9YWKCi1AqU
 nOql3wDBdFq51rhDyJ3qYGk=
X-Google-Smtp-Source: ABdhPJzWgXIZMNd4WB1mQHIPBb1vFqXu9LmmgWEvLfa6xvXx7x5G6+/sLIRGlqorcO1F8OGG/+w0LA==
X-Received: by 2002:a17:90b:ed3:: with SMTP id
 gz19mr3852073pjb.53.1602759972000; 
 Thu, 15 Oct 2020 04:06:12 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id n203sm3253627pfd.81.2020.10.15.04.06.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Oct 2020 04:06:10 -0700 (PDT)
Date: Thu, 15 Oct 2020 20:06:06 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v1 1/6] staging: qlge: Initialize devlink health dump
 framework for the dlge driver
Message-ID: <20201015110606.GA52981@f3>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-2-coiby.xu@gmail.com>
 <20201010073514.GA14495@f3> <20201010102416.hvbgx3mgyadmu6ui@Rk>
 <20201010134855.GB17351@f3> <20201012112406.6mxta2mapifkbeyw@Rk>
 <20201013003704.GA41031@f3> <20201015033732.qaihehernm2jzoln@Rk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015033732.qaihehernm2jzoln@Rk>
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

On 2020-10-15 11:37 +0800, Coiby Xu wrote:
> On Tue, Oct 13, 2020 at 09:37:04AM +0900, Benjamin Poirier wrote:
> > On 2020-10-12 19:24 +0800, Coiby Xu wrote:
> > [...]
> > > > I think, but didn't check in depth, that in those drivers, the devlink
> > > > device is tied to the pci device and can exist independently of the
> > > > netdev, at least in principle.
> > > >
> > > You are right. Take drivers/net/ethernet/mellanox/mlxsw as an example,
> > > devlink reload would first first unregister_netdev and then
> > > register_netdev but struct devlink stays put. But I have yet to
> > > understand when unregister/register_netdev is needed.
> > 
> > Maybe it can be useful to manually recover if the hardware or driver
> > gets in an erroneous state. I've used `modprobe -r qlge && modprobe
> > qlge` for the same in the past.
> 
> Thank you for providing this user case!
> > 
> > > Do we need to
> > > add "devlink reload" for qlge?
> > 
> > Not for this patchset. That would be a new feature.
> 
> To implement this feature, it seems I need to understand how qlge work
> under the hood. For example, what's the difference between
> qlge_soft_reset_mpi_risc and qlge_hard_reset_mpi_risc? Or should we use
> a brute-force way like do the tasks in qlge_remove and then re-do the
> tasks in qlge_probe?

I don't know. Like I've said before, I'd recommend testing on actual
hardware. I don't have access to it anymore.

> Is a hardware reference manual for qlge device?

I've never gotten access to one.

The only noteworthy thing from Qlogic that I know of is the firmware
update:
http://driverdownloads.qlogic.com/QLogicDriverDownloads_UI/SearchByProduct.aspx?ProductCategory=322&Product=1104&Os=190

It did fix some weird behavior when I applied it so I'd recommend doing
the same if you get an adapter.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
