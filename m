Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D94A1741FB
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Feb 2020 23:27:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6631988252;
	Fri, 28 Feb 2020 22:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q8gqlJ2O7R+i; Fri, 28 Feb 2020 22:27:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C0E1C88137;
	Fri, 28 Feb 2020 22:27:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4B65A1BF370
 for <devel@linuxdriverproject.org>; Fri, 28 Feb 2020 22:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4774086B7B
 for <devel@linuxdriverproject.org>; Fri, 28 Feb 2020 22:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EuY0wqda3Mwb for <devel@linuxdriverproject.org>;
 Fri, 28 Feb 2020 22:27:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 88AA586B74
 for <devel@driverdev.osuosl.org>; Fri, 28 Feb 2020 22:27:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 14:27:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,497,1574150400"; d="scan'208";a="227683345"
Received: from jkalwas-mobl.ger.corp.intel.com (HELO mara.localdomain)
 ([10.249.154.47])
 by orsmga007.jf.intel.com with ESMTP; 28 Feb 2020 14:27:16 -0800
Received: from sailus by mara.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@linux.intel.com>)
 id 1j7o6B-0000Ha-Ij; Sat, 29 Feb 2020 00:27:13 +0200
Date: Sat, 29 Feb 2020 00:27:10 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [RESEND PATCH v3 02/17] media: v4l2-fwnode: Pass notifier to
 v4l2_async_register_fwnode_subdev()
Message-ID: <20200228222710.GA1068@mara.localdomain>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
 <20200215194136.10131-3-slongerbeam@gmail.com>
 <20200225150721.GO5379@paasikivi.fi.intel.com>
 <c9b232d6-07c9-d13d-18aa-3e1e640aadc2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c9b232d6-07c9-d13d-18aa-3e1e640aadc2@gmail.com>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Steve,

Btw. I think probably a smaller list of recipients would be just fine on the
next version.

On Fri, Feb 28, 2020 at 10:16:06AM -0800, Steve Longerbeam wrote:
> Hi Sakari,
> =

> On 2/25/20 7:07 AM, Sakari Ailus wrote:
> > Hi Steve,
> > =

> > On Sat, Feb 15, 2020 at 11:41:21AM -0800, Steve Longerbeam wrote:
> > > Instead of allocating a notifier in v4l2_async_register_fwnode_subdev=
(),
> > > have the caller provide one. This allows the caller to implement
> > > notifier ops (bind, unbind).
> > > =

> > > The caller is now responsible for first initializing its notifier wit=
h a
> > > call to v4l2_async_notifier_init().
> > > =

> > > Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> > Instead of improving v4l2_async_register_fwnode_subdev(), could you con=
vert
> > the users (IMX driver in this case) to call the preferred APIs instead?=
 As
> > the lines below show, v4l2_async_register_fwnode_subdev() has only two
> > users left --- the other one of which is the IMX driver. After converti=
ng
> > these two, we could just remove this API.
> > =

> > See e.g. drivers/media/pci/intel/ipu3/ipu3-cio2.c and
> > drivers/media/platform/omap3isp/isp.c for examples.
> =

> Shouldn't v4l2_async_notifier_add_fwnode_remote_subdev() check for the
> availability of the remote before adding it to the notifier's asd list, as
> in:
> =

> diff --git a/drivers/media/v4l2-core/v4l2-async.c
> b/drivers/media/v4l2-core/v4l2-async.c
> index 8bde33c21ce4..b48ed68c6c6c 100644
> --- a/drivers/media/v4l2-core/v4l2-async.c
> +++ b/drivers/media/v4l2-core/v4l2-async.c
> @@ -615,7 +615,7 @@ v4l2_async_notifier_add_fwnode_remote_subdev(struct
> v4l2_async_notifier *notif,
> =A0=A0=A0=A0=A0=A0=A0 int ret;
> =

> =A0=A0=A0=A0=A0=A0=A0 remote =3D fwnode_graph_get_remote_port_parent(endp=
oint);
> -=A0=A0=A0=A0=A0=A0 if (!remote)
> +=A0=A0=A0=A0=A0=A0 if (!remote || !fwnode_device_is_available(remote))
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -ENOTCONN;
> =

> =A0=A0=A0=A0=A0=A0=A0 asd->match_type =3D V4L2_ASYNC_MATCH_FWNODE;
> =

> =

> Otherwise we are back to the problem that the notifier will never complete
> because the remote's driver is not probed.

fwnode_graph_get_endpoint_by_id() only gives you endpoints that belong to an
enabled device (unless requested otherwise). So the there's need to check
the same in v4l2-fwnode.c.

-- =

Regards,

Sakari Ailus
sakari.ailus@linux.intel.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
