Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C878D16E994
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Feb 2020 16:07:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB351868D8;
	Tue, 25 Feb 2020 15:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C1XMdBdigFB8; Tue, 25 Feb 2020 15:07:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A9C228682C;
	Tue, 25 Feb 2020 15:07:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D62C81BF578
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 15:07:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D0E3485F93
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 15:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yq4mxzNrZ904 for <devel@linuxdriverproject.org>;
 Tue, 25 Feb 2020 15:07:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9F09C854DF
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 15:07:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 07:07:46 -0800
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="284693145"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 07:07:22 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 39A9D2089D; Tue, 25 Feb 2020 17:07:21 +0200 (EET)
Date: Tue, 25 Feb 2020 17:07:21 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [RESEND PATCH v3 02/17] media: v4l2-fwnode: Pass notifier to
 v4l2_async_register_fwnode_subdev()
Message-ID: <20200225150721.GO5379@paasikivi.fi.intel.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
 <20200215194136.10131-3-slongerbeam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200215194136.10131-3-slongerbeam@gmail.com>
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

Hi Steve,

On Sat, Feb 15, 2020 at 11:41:21AM -0800, Steve Longerbeam wrote:
> Instead of allocating a notifier in v4l2_async_register_fwnode_subdev(),
> have the caller provide one. This allows the caller to implement
> notifier ops (bind, unbind).
> 
> The caller is now responsible for first initializing its notifier with a
> call to v4l2_async_notifier_init().
> 
> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>

Instead of improving v4l2_async_register_fwnode_subdev(), could you convert
the users (IMX driver in this case) to call the preferred APIs instead? As
the lines below show, v4l2_async_register_fwnode_subdev() has only two
users left --- the other one of which is the IMX driver. After converting
these two, we could just remove this API.

See e.g. drivers/media/pci/intel/ipu3/ipu3-cio2.c and
drivers/media/platform/omap3isp/isp.c for examples.

> ---
> Changes in v3:
> - added the missing calls to unregister/cleanup the new subdev notifiers.
>   Reported by Rui Silva.
> ---
>  drivers/media/platform/video-mux.c         |  8 +++++++-
>  drivers/media/v4l2-core/v4l2-fwnode.c      | 11 +----------
>  drivers/staging/media/imx/imx6-mipi-csi2.c |  7 ++++++-
>  drivers/staging/media/imx/imx7-media-csi.c |  7 ++++++-
>  drivers/staging/media/imx/imx7-mipi-csis.c |  9 ++++++++-
>  include/media/v4l2-fwnode.h                | 12 ++++++++----
>  6 files changed, 36 insertions(+), 18 deletions(-)

-- 
Kind regards,

Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
