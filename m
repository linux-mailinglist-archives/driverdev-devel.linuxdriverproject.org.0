Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6526FDA6F8
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 10:10:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBDFC86CDF;
	Thu, 17 Oct 2019 08:10:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id COTd1xc93V5q; Thu, 17 Oct 2019 08:10:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7196A86CDB;
	Thu, 17 Oct 2019 08:10:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 32EEE1BF362
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 08:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E354885D3
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 08:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZY4sd3Pu-1fX for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 08:10:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C423D885C8
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 08:10:34 +0000 (UTC)
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iL0rg-0005Vf-3w; Thu, 17 Oct 2019 10:10:32 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iL0rd-0005p9-Jl; Thu, 17 Oct 2019 10:10:29 +0200
Date: Thu, 17 Oct 2019 10:10:29 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Rui Miguel Silva <rmfrfs@gmail.com>
Subject: Re: [PATCH v2] media: imx7-mipi-csis: Add a check for
 devm_regulator_get
Message-ID: <20191017081029.q2czy7y5zlbj4ogr@pengutronix.de>
References: <20191015135915.6530-1-hslester96@gmail.com>
 <20191016090628.7l5u4ytdqr2jlasg@pengutronix.de>
 <m336fsst40.fsf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m336fsst40.fsf@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:04:20 up 152 days, 14:22, 99 users,  load average: 0.12, 0.11,
 0.05
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
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
Cc: devel@driverdev.osuosl.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rui,

On 19-10-16 14:43, Rui Miguel Silva wrote:
> Hi Marco,
> On Wed 16 Oct 2019 at 10:06, Marco Felsch wrote:
> > Hi Chuhong,
> >
> > On 19-10-15 21:59, Chuhong Yuan wrote:
> >> devm_regulator_get may return an error but mipi_csis_phy_init misses
> >> a check for it.
> >> This may lead to problems when regulator_set_voltage uses the unchecked
> >> pointer.
> >> This patch adds a check for devm_regulator_get to avoid potential risk.
> >>
> >> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> >> ---
> >> Changes in v2:
> >>   - Add a check in mipi_csis_probe for the modified mipi_csis_phy_init.
> >
> > Did you miss the check for -EPROBE_DEFER?
> >
> 
> I think nothing special is really needed to do in case of
> EPROBE_DEFER, or am I missing something?
> It just return to probe and probe returns also. I just talked
> about it because it was not cover in the original code.

Yes, your are right... I shouldn't comment on anything I read with one
eye. Sorry.

Regards,
  Marco

> ---
> Cheers,
> 	Rui
> 
> >
> > Regards,
> >   Marco
> >
> >>
> >>  drivers/staging/media/imx/imx7-mipi-csis.c | 8 +++++++-
> >>  1 file changed, 7 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> >> index 73d8354e618c..e8a6acaa969e 100644
> >> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> >> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> >> @@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
> >>  static int mipi_csis_phy_init(struct csi_state *state)
> >>  {
> >>  	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
> >> +	if (IS_ERR(state->mipi_phy_regulator))
> >> +		return PTR_ERR(state->mipi_phy_regulator);
> >>
> >>  	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
> >>  				     1000000);
> >> @@ -966,7 +968,10 @@ static int mipi_csis_probe(struct platform_device *pdev)
> >>  		return ret;
> >>  	}
> >>
> >> -	mipi_csis_phy_init(state);
> >> +	ret = mipi_csis_phy_init(state);
> >> +	if (ret < 0)
> >> +		return ret;
> >> +
> >>  	mipi_csis_phy_reset(state);
> >>
> >>  	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >> --
> >> 2.20.1
> >>
> >>
> >>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
