Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE0311CCAE
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 13:00:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DB97624B3A;
	Thu, 12 Dec 2019 12:00:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1y2rtf5ELfoM; Thu, 12 Dec 2019 12:00:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8C3D224AFE;
	Thu, 12 Dec 2019 12:00:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA2571BF3EC
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 12:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B166688751
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 12:00:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PAV4fgG5KLHh for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 12:00:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CD465877D1
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 12:00:01 +0000 (UTC)
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ifN8R-00078C-2V; Thu, 12 Dec 2019 12:59:59 +0100
Message-ID: <50977f1c8f17cbc1e3ac4f68d6642f1c3bd01b79.camel@pengutronix.de>
Subject: Re: [PATCH] media: imx7-mipi-csis: Add the missed
 v4l2_async_notifier_cleanup in remove
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Dan Carpenter <dan.carpenter@oracle.com>, Chuhong Yuan
 <hslester96@gmail.com>
Date: Thu, 12 Dec 2019 12:59:55 +0100
In-Reply-To: <20191212115134.GA1895@kadam>
References: <20191209085828.16183-1-hslester96@gmail.com>
 <20191212115134.GA1895@kadam>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: devel@driverdev.osuosl.org
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2019-12-12 at 14:51 +0300, Dan Carpenter wrote:
> On Mon, Dec 09, 2019 at 04:58:28PM +0800, Chuhong Yuan wrote:
> > All drivers in imx call v4l2_async_notifier_cleanup() after unregistering
> > the notifier except this driver.
> > This should be a miss and we need to add the call to fix it.
> > 
> > Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> > ---
> >  drivers/staging/media/imx/imx7-mipi-csis.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> > index 99166afca071..2bfa85bb84e7 100644
> > --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> > +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> > @@ -1105,6 +1105,7 @@ static int mipi_csis_remove(struct platform_device *pdev)
> >  	mipi_csis_debugfs_exit(state);
> >  	v4l2_async_unregister_subdev(&state->mipi_sd);
> >  	v4l2_async_notifier_unregister(&state->subdev_notifier);
> > +	v4l2_async_notifier_cleanup(&state->subdev_notifier);
> >  
> 
> In this case the "state->subdev_notifier" was never initialized or used
> so both v4l2_async_notifier_unregister() and v4l2_async_notifier_cleanup()
> are no-ops.
> 
> We should just delete "subdev_notifier".

I agree with Dan and Hans, the subdev_notifier field and the
v4l2_async_notifier_unregister() call should be removed. Since
this issue was there from the start, the patch can be tagged
as fixing commit 7807063b862b.

regards
Philipp

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
