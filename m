Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B78A803B8
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 03:30:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 50DE620438;
	Sat,  3 Aug 2019 01:30:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0IVtUFZm2eAv; Sat,  3 Aug 2019 01:30:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35BF92043F;
	Sat,  3 Aug 2019 01:30:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F3ED21BF360
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 01:30:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EE0B9864F2
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 01:30:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bHTMG5W-2J3W for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 01:30:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BF19B864EE
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 01:30:35 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id p74so69534960wme.4
 for <devel@driverdev.osuosl.org>; Fri, 02 Aug 2019 18:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ogf+QVoHZtK9iZfwgzb4P/UWGbW9VrBZvDIl55S3hPY=;
 b=KGkroKFjol78GrJj8Z3aHbKWLMrcSiwfex8ESVqf5pCyjcNBYG+ZPXlzN5iCRO4k4S
 j+kWSLfRx1gW9uTsbVilRV/mKw5vnJRnyRovCESrqPj485QPsEXeHmM1ohRfevsYjhl+
 bVqgoWYlnrNbPYUfDRYgNeFptq0zUwF8iaVEaW6Y91hTzIKVEhttusPL7xNJjagJgfPx
 Qmm+hhLcyFpZUGNoAb7uaqmLy2yvIu/dqrpx4BAoA8q5ZPCHBLZqpQBELIiFi0jGG2Yl
 HbTxR+5W2mtoj7+ef493cG+HiMMsq/Ot47bUXyCg3DdLbc7lKcrFA4E477Jh3bin1LxM
 lI3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ogf+QVoHZtK9iZfwgzb4P/UWGbW9VrBZvDIl55S3hPY=;
 b=J2bLfH2ik9ePf8Z1YaVrFNVwVGBR88m1zoCYwuFEvhi+E+wvF1FCT2Jat0m3tiUJRk
 ZwYWTstAXnfN1n5/tdA6U4eNq0IQOyXJCM28UDkTKRbqUCC6IsMzwpYQ9lZaHKdMRZkd
 LptH5BbLxoD6Yc00jlfob5NMWkuPBnONcDVaZR5ARFr2DYI4nsX/d7mvjlUZssizXogk
 5uNa3uLURB76nudjycXJi4jSOyXuLeZOhg82hwFNXndk5AhrolMQ17mp5cv5587bnAWZ
 omkoxLD5HYfFYRo7cDSKBWLMXGveaeSLCMA4rBwxG1V9rMAOIf84c4XjhB68lnAMI7jl
 Q+gA==
X-Gm-Message-State: APjAAAUhP3HVP66SXpgiNTe7p9Jw9PPCCigrDasQdlZi8Q8wUcZWE2Lq
 qUEC5147+R00igOLBvT/7Hk=
X-Google-Smtp-Source: APXvYqxqjFQJ9s+K2nHgDoEAg28+wlCsmvPhcNE3ueZNH5NsBPgHWuzjZM3lffnaX7s2DnS6f/1HMQ==
X-Received: by 2002:a1c:e108:: with SMTP id y8mr6269283wmg.65.1564795833805;
 Fri, 02 Aug 2019 18:30:33 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id c4sm62233010wrt.86.2019.08.02.18.30.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 18:30:33 -0700 (PDT)
Date: Fri, 2 Aug 2019 18:30:31 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH] net: mdio-octeon: Fix build error and Kconfig warning
Message-ID: <20190803013031.GA76252@archlinux-threadripper>
References: <20190731.094150.851749535529247096.davem@davemloft.net>
 <20190731185023.20954-1-natechancellor@gmail.com>
 <20190802.181132.1425585873361511856.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802.181132.1425585873361511856.davem@davemloft.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kernel-build-reports@lists.linaro.org, gregkh@linuxfoundation.org,
 willy@infradead.org, broonie@kernel.org, linux-next@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 02, 2019 at 06:11:32PM -0700, David Miller wrote:
> From: Nathan Chancellor <natechancellor@gmail.com>
> Date: Wed, 31 Jul 2019 11:50:24 -0700
> 
> > arm allyesconfig warns:
> > 
> > WARNING: unmet direct dependencies detected for MDIO_OCTEON
> >   Depends on [n]: NETDEVICES [=y] && MDIO_DEVICE [=y] && MDIO_BUS [=y]
> > && 64BIT && HAS_IOMEM [=y] && OF_MDIO [=y]
> >   Selected by [y]:
> >   - OCTEON_ETHERNET [=y] && STAGING [=y] && (CAVIUM_OCTEON_SOC &&
> > NETDEVICES [=y] || COMPILE_TEST [=y])
> > 
> > and errors:
> > 
> > In file included from ../drivers/net/phy/mdio-octeon.c:14:
> > ../drivers/net/phy/mdio-octeon.c: In function 'octeon_mdiobus_probe':
> > ../drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration of
> > function 'writeq'; did you mean 'writeb'?
> 
> The proper way to fix this is to include either
> 
> 	linux/io-64-nonatomic-hi-lo.h
> 
> or
> 
> 	linux/io-64-nonatomic-lo-hi.h
> 
> whichever is appropriate.

Hmmmm, is that not what I did?

Although I did not know about io-64-nonatomic-hi-lo.h. What is the
difference and which one is needed here?

There is apparently another failure when OF_MDIO is not set, I guess I
can try to look into that as well and respin into a series if
necessary.

Cheers,
Nathan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
