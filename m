Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8E81527F1
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 10:02:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0237B85C97;
	Wed,  5 Feb 2020 09:02:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dQoOUrMjjP6i; Wed,  5 Feb 2020 09:02:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EC3285BEE;
	Wed,  5 Feb 2020 09:02:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 034901BF331
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 09:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ECAD681F17
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 09:02:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VH-0mSTczsym for <devel@linuxdriverproject.org>;
 Wed,  5 Feb 2020 09:02:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A5ACB84173
 for <devel@driverdev.osuosl.org>; Wed,  5 Feb 2020 09:02:12 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 01:02:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,405,1574150400"; d="scan'208";a="231652104"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga003.jf.intel.com with ESMTP; 05 Feb 2020 01:02:07 -0800
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1izGZU-0008Fz-F4; Wed, 05 Feb 2020 11:02:08 +0200
Date: Wed, 5 Feb 2020 11:02:08 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [PATCH v3 02/17] media: v4l2-fwnode: Pass notifier to
 v4l2_async_register_fwnode_subdev()
Message-ID: <20200205090208.GR10400@smile.fi.intel.com>
References: <20200204234918.20425-1-slongerbeam@gmail.com>
 <20200204234918.20425-3-slongerbeam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204234918.20425-3-slongerbeam@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Fontana <rfontana@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 04, 2020 at 03:49:03PM -0800, Steve Longerbeam wrote:
> Instead of allocating a notifier in v4l2_async_register_fwnode_subdev(),
> have the caller provide one. This allows the caller to implement
> notifier ops (bind, unbind).
> 
> The caller is now responsible for first initializing its notifier with a
> call to v4l2_async_notifier_init().

Hint: When creating a list of maintainers use this (or similar) command:

	scripts/get_maintainer.pl --git --git-min-percent=67 ...

P.S. Please, do not add me in Cc list for v4l2 matters.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
