Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB56E19BE91
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 11:28:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9247878DD;
	Thu,  2 Apr 2020 09:28:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xtNuHG56PbNH; Thu,  2 Apr 2020 09:28:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7911187855;
	Thu,  2 Apr 2020 09:28:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 029E71BF32B
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 09:28:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EED5B86D6B
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 09:28:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 34GSsGOZrWT0 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 09:27:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DB31A85B78
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 09:27:59 +0000 (UTC)
Received: from coco.lan (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 549A4206D3;
 Thu,  2 Apr 2020 09:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585819679;
 bh=J7RWyOxaAGre4b4DdTI7i7aOZrxrkooqXFQyOQ4KOsY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=B1DZr68ChWCITpuRnRBqBRzDSD79fRF1eAmBOzvVfh1ZuzY/ux6jiR79aVLi2tOFe
 gjFMQy69GpienXO8q+G6gNoOoriqO9E3NxUHxiqwhL7cG2IRMyrQAJ/3qA81DSw5ur
 lxsFptASA8ewYAjY+LqZyk0fwAo2xOP5axd8ePV8=
Date: Thu, 2 Apr 2020 11:27:47 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 0/4] media Kconfig reorg - part 2
Message-ID: <20200402112747.57dd1cfe@coco.lan>
In-Reply-To: <20200401105949.GB2001@kadam>
References: <cover.1585151701.git.mchehab+huawei@kernel.org>
 <6fadc6ea-8512-03ba-da30-43c64d7562f6@collabora.com>
 <20200401105949.GB2001@kadam>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, "Lad, 
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pavel Machek <pavel@ucw.cz>, devel@driverdev.osuosl.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-samsung-soc@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Tian Shu Qiu <tian.shu.qiu@intel.com>, Yong Zhi <yong.zhi@intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-kbuild@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Helen Koike <helen.koike@collabora.com>, Yong Deng <yong.deng@magewell.com>,
 Chen-Yu Tsai <wens@csie.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, Hyun Kwon <hyun.kwon@xilinx.com>,
 Heungjun Kim <riverful.kim@samsung.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, linux-renesas-soc@vger.kernel.org,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Niklas =?UTF-8?B?U8O2ZGVybHVuZA==?= <niklas.soderlund@ragnatech.se>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Wed, 1 Apr 2020 13:59:49 +0300
Dan Carpenter <dan.carpenter@oracle.com> escreveu:

> On Wed, Mar 25, 2020 at 04:36:31PM -0300, Helen Koike wrote:
> > Hello,
> > 
> > On 3/25/20 1:03 PM, Mauro Carvalho Chehab wrote:  
> > > That's the second part of media Kconfig changes. The entire series is
> > > at:
> > > 
> > > 	https://git.linuxtv.org/mchehab/experimental.git/log/?h=media-kconfig  
> > 
> > I made a quick experiment (using this branch) with someone who works
> > with the kernel for his master degree, but doesn't have much experience in kernel development in general.
> > I asked him to enable Vimc (from default configs, where multimedia starts disabled).  
> 
> The whole config system is really outdated.

Agreed. 

Btw, when compiled against Qt 5.14, "make xconfig" is currently
broken. I'm sending in a few some fixup patches for it.

> It should be that this task was done with a command like "kconfig enable
> vimc".  It would ask necessary questions and pull in the dependencies
> automatically.

Yes. That's something that it is missing for a long time. There were
some efforts to add a SAT solver at the Kernel that could be used for
that, but I dunno what's current status.

> Twenty years ago it made sense to go through the menus and select things
> one by one.  Does anyone really start from defconfig any more?  Surely
> everyone starts with a known working config and just enables specific
> options.

Yeah, that's my feeling too.

> I started to hack together some code to create a kconfig program to
> enable and disable options.  The problem is that all library code
> assumes we want to display menus so it was a lot of work and I gave up.

:-(

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
