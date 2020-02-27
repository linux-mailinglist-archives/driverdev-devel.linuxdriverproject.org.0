Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 725401711C7
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Feb 2020 08:51:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D0A33221FF;
	Thu, 27 Feb 2020 07:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wGwx1L8G9ijz; Thu, 27 Feb 2020 07:51:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3DDB4203A8;
	Thu, 27 Feb 2020 07:51:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E92BD1BF4DB
 for <devel@linuxdriverproject.org>; Thu, 27 Feb 2020 07:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E61AE87D57
 for <devel@linuxdriverproject.org>; Thu, 27 Feb 2020 07:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7CyXhmrtZmuB for <devel@linuxdriverproject.org>;
 Thu, 27 Feb 2020 07:51:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 61E9E87D56
 for <devel@driverdev.osuosl.org>; Thu, 27 Feb 2020 07:51:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 23:51:04 -0800
X-IronPort-AV: E=Sophos;i="5.70,491,1574150400"; d="scan'208";a="285249023"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 23:51:00 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id C5F30209DF; Thu, 27 Feb 2020 09:50:58 +0200 (EET)
Date: Thu, 27 Feb 2020 09:50:58 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [RESEND PATCH v3 02/17] media: v4l2-fwnode: Pass notifier to
 v4l2_async_register_fwnode_subdev()
Message-ID: <20200227075058.GD5379@paasikivi.fi.intel.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
 <20200215194136.10131-3-slongerbeam@gmail.com>
 <20200225150721.GO5379@paasikivi.fi.intel.com>
 <33258045-b708-1390-06e0-fde224296dfb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33258045-b708-1390-06e0-fde224296dfb@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 26, 2020 at 03:50:04PM -0800, Steve Longerbeam wrote:
> Hi Sakari,
> 
> Thanks for the feedback.
> 
> 
> On 2/25/20 7:07 AM, Sakari Ailus wrote:
> > Hi Steve,
> > 
> > On Sat, Feb 15, 2020 at 11:41:21AM -0800, Steve Longerbeam wrote:
> > > Instead of allocating a notifier in v4l2_async_register_fwnode_subdev(),
> > > have the caller provide one. This allows the caller to implement
> > > notifier ops (bind, unbind).
> > > 
> > > The caller is now responsible for first initializing its notifier with a
> > > call to v4l2_async_notifier_init().
> > > 
> > > Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> > Instead of improving v4l2_async_register_fwnode_subdev(), could you convert
> > the users (IMX driver in this case) to call the preferred APIs instead?
> 
> I presume you mean using v4l2_async_notifier_add_fwnode_remote_subdev(). Ok,
> I'll convert to use that API.

Thanks, Steve!

-- 
Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
