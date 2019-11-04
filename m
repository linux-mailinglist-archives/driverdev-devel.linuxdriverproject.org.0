Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3523EE4EB
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 17:42:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C642C89682;
	Mon,  4 Nov 2019 16:42:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0_P7PunPyHKU; Mon,  4 Nov 2019 16:42:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C43A895F1;
	Mon,  4 Nov 2019 16:42:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D3561BF4D6
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 16:42:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 19A9E8A4FE
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 16:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C6+0zT2gI1g6 for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 16:42:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2BB1F8A4FA
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 16:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sHehTGcVoX2o9hizOaow9QsBaYLM8i35tX23WVyF6H4=; b=HG1hjyBfZkWV9J95TsPA1owdqx
 jMpZh4dVKajkKUfxqltYYhJ5EFvydqJWB0Co+19lgFtFwT9TVVkhTOLrRlLjYf1o53lPFzEPrrGr6
 ujgMEDt4UprxGPMRU3d7FxittQcP0shp2+dOv1IR6LqpnddJY93iu8Zc/DaBRyb/ty0s=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iRfQf-00057J-Bt; Mon, 04 Nov 2019 17:42:09 +0100
Date: Mon, 4 Nov 2019 17:42:09 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v1] staging: intel-dpa: gswip: Introduce Gigabit Ethernet
 Switch (GSWIP) device driver
Message-ID: <20191104164209.GC16970@lunn.ch>
References: <03832ecb6a34876ef26a24910816f22694c0e325.1572863013.git.jack.ping.chng@intel.com>
 <20191104122009.GA2126921@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104122009.GA2126921@kroah.com>
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
Cc: devel@driverdev.osuosl.org, cheol.yong.kim@intel.com,
 Jack Ping CHNG <jack.ping.chng@intel.com>, andriy.shevchenko@intel.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 mallikarjunax.reddy@linux.intel.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 04, 2019 at 01:20:09PM +0100, Greg KH wrote:
> On Mon, Nov 04, 2019 at 07:22:20PM +0800, Jack Ping CHNG wrote:
> > This driver enables the Intel's LGM SoC GSWIP block.
> > GSWIP is a core module tailored for L2/L3/L4+ data plane and QoS functions.
> > It allows CPUs and other accelerators connected to the SoC datapath
> > to enqueue and dequeue packets through DMAs.
> > Most configuration values are stored in tables such as
> > Parsing and Classification Engine tables, Buffer Manager tables and
> > Pseudo MAC tables.
> 
> Why is this being submitted to staging?  What is wrong with the "real"
> part of the kernel for this?

Or even, what is wrong with the current driver?
drivers/net/dsa/lantiq_gswip.c?

Jack, your patch does not seem to of made it to any of the lists. So i
cannot comment on it contents. If this is a switch driver, please
ensure you Cc: the usual suspects for switch drivers.

       Andrew
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
