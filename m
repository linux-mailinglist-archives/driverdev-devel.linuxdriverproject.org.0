Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 812171996D5
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 14:52:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D01FE86B31;
	Tue, 31 Mar 2020 12:52:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PohhKWxvnu96; Tue, 31 Mar 2020 12:52:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93753861E3;
	Tue, 31 Mar 2020 12:52:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E43401BF834
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 12:52:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DB74D86A61
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 12:52:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KmMFZf3VRl6M for <devel@linuxdriverproject.org>;
 Tue, 31 Mar 2020 12:52:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E8ED1861E3
 for <devel@driverdev.osuosl.org>; Tue, 31 Mar 2020 12:52:24 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4BB1CB18;
 Tue, 31 Mar 2020 14:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1585659142;
 bh=c14UmhR+VSQy+0YEeVT6dAmWibySUvRjSpEVBUh8h9o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=loJZXkzVDFgHAy1+WDL2NuorSOCZZvZRHaOj+Mm58ctdxjNh1PExDJMCiwOXVF+DK
 xArIrighC6BlxUPY7e2AkLNSo5+qyFE2iNvy4Vr7Neyf93YOcsVDvEI46jX1oyrmox
 1V7tYK7KnRmvInL3NhydHz3JGNFxOc7xlfeDpI1I=
Date: Tue, 31 Mar 2020 15:52:16 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 17/33] media: add SPDX headers on Kconfig and Makefile
 files
Message-ID: <20200331125216.GE4767@pendragon.ideasonboard.com>
References: <cover.1585651678.git.mchehab+huawei@kernel.org>
 <981eea64742859c63d8ab88c24b1b3380ee32dd2.1585651678.git.mchehab+huawei@kernel.org>
 <20200331120608.GB4767@pendragon.ideasonboard.com>
 <20200331122209.GA1627483@kroah.com>
 <20200331123914.GC4767@pendragon.ideasonboard.com>
 <20200331124756.GA1634223@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331124756.GA1634223@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Helen Koike <helen.koike@collabora.com>, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Tue, Mar 31, 2020 at 02:47:56PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Mar 31, 2020 at 03:39:14PM +0300, Laurent Pinchart wrote:
> > On Tue, Mar 31, 2020 at 02:22:09PM +0200, Greg Kroah-Hartman wrote:
> > > On Tue, Mar 31, 2020 at 03:06:08PM +0300, Laurent Pinchart wrote:
> > > > On Tue, Mar 31, 2020 at 01:11:53PM +0200, Mauro Carvalho Chehab wrote:
> > > > > Most of media Kconfig/Makefile files already has SPDX,
> > > > > but there are a few ones still missing. Add it to them.
> > > > 
> > > > I think it's a good idea to state the license of each source file, the
> > > > patch looks fine to me. I've however been thinking about licenses for
> > > > build system files recently, and I'll hijack this thread a bit to ask a
> > > > question :-)
> > > > 
> > > > For a project like the Linux kernel, and especially for subsystems that
> > > > are covered by a single license, the choice is easy, we can apply the
> > > > same license to the build files. However, for a project that contains
> > > > components covered by different licenses (such as, for instance, an LGPL
> > > > library, a GPL application and a BSD plugin), how should the license
> > > > covering the build system files be selected ? I searched a bit for
> > > > guidance on this topic, and couldn't find much.
> > > 
> > > By "default" if there is no license on a file in the kernel tree, it
> > > falls under the GPLv2 license and we should explicity state it, like
> > > this patch does.
> > > 
> > > So this is fine, but if you want to license the build files some other
> > > way, that's good too, but do so when you add them to the tree, not at
> > > some later time when it could cause confusion :)
> > 
> > Thanks for your answer. I was hijacking the thread a little bit, the
> > question wasn't related to the kernel, but in this case to libcamera.
> > We've been wondering how to pick licenses for build files there, and I
> > thought fellow kernel developers may have valuable input on this topic.
> 
> I would make the files the same license as your project overall is to
> make things simpler for everyone involved :)

I would if the project had a single license, but we have GPL, LGPL and
BSD components :-S

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
