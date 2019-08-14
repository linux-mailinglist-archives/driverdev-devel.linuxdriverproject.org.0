Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5A68E049
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 00:05:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD00B844AF;
	Wed, 14 Aug 2019 22:05:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BL0BkJTxBrh5; Wed, 14 Aug 2019 22:05:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6FA7840BF;
	Wed, 14 Aug 2019 22:04:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B8E921BF34B
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 22:04:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B36FB87646
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 22:04:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TaXYPsp8m-cG for <devel@linuxdriverproject.org>;
 Wed, 14 Aug 2019 22:04:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BF6D086849
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2019 22:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yZJZc6bPnymXOyRmv25X7N9D2emSqLB8ZfiOEQ7nToU=; b=ddv6iy3IQteNIqV/iXD9158oZ
 LroheE2bDRFtnRZGMGvT+ILxG1FnK+z2Y8o9E22Jy9CPSoFq5oWWWsrb50iCXzt9yVVVJhobjV6aw
 i0pZ7OO825u8L0btv0Orsvl5X79891J+4KPyJaaYdziN3zk1WapKJuwARQL7ZjfgO/4mO+tR09iEa
 tMw4KBGQcsq8WmX4Mqn9Ib0nluWlvsXBzW9FA9BlKDoFfMhRgYqCwSw2Oalg0c6EGyWEIrVg5BkY5
 Jk6GMTFgfuRf1+fLAT+n0kEHmhlFG0FONX9aPwbqiAJixkpRma6Y7WavtJqzRAV4n+Zr3cJCEKN9+
 JpLMnFeCQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:56662)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hy1Nu-0000L9-Jm; Wed, 14 Aug 2019 23:04:46 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hy1Nl-0000Lf-AN; Wed, 14 Aug 2019 23:04:37 +0100
Date: Wed, 14 Aug 2019 23:04:37 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [PATCH 04/22] media: Move v4l2_fwnode_parse_link from v4l2 to
 driver base
Message-ID: <20190814220437.GJ13294@shell.armlinux.org.uk>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-5-slongerbeam@gmail.com>
 <CAHp75VcOh8bOf_s6t0ehwGtcYn64QFGj303SVvpHrztEOhTRgg@mail.gmail.com>
 <4750b347-b421-6569-600f-0ced8406460e@gmail.com>
 <20190814103054.GI13294@shell.armlinux.org.uk>
 <e0a19469-af9d-d9de-499f-4ffbf04542b3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0a19469-af9d-d9de-499f-4ffbf04542b3@gmail.com>
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Len Brown <lenb@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Hyun Kwon <hyun.kwon@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 14, 2019 at 12:04:41PM -0700, Steve Longerbeam wrote:
> 
> 
> On 8/14/19 3:30 AM, Russell King - ARM Linux admin wrote:
> > On Tue, Aug 06, 2019 at 09:53:41AM -0700, Steve Longerbeam wrote:
> > > The full patchset doesn't seem to be up yet, but see [1] for the cover
> > > letter.
> > Was the entire series copied to the mailing lists, or just selected
> > patches?  I only saw 4, 9, 11 and 13-22 via lakml.
> 
> The whole series was posted to the linux-media ML, see [1]. At the time,
> none of the linux-media ML archives had the whole series.
> 
> > In the absence of the other patches, will this solve imx-media binding
> > the internal subdevs of sensor devices to the CSI2 interface?
> 
> "internal subdevs of sensor devices" ?? That doesn't make any sense.

Sorry, but it makes complete sense when you consider that sensor
devices may have more than one subdev, but there should be only one
that is the "output" to whatever the camera is attached to.  The
other subdevs are internal to the sensor.

subdevs are not purely the remit of SoC drivers.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
