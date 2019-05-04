Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C782613AFB
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 17:34:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DBFA686DC5;
	Sat,  4 May 2019 15:34:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0aAQuYGwcBs1; Sat,  4 May 2019 15:34:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D64C86969;
	Sat,  4 May 2019 15:34:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DC9381BF255
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 15:34:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D91B5848F5
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 15:34:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ftsoyllWyKNj for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 15:34:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 33CEB864D7
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 15:34:06 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8943B20644;
 Sat,  4 May 2019 15:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556984046;
 bh=agsAwtVsIz38/b3nNvthW5T/+SquGa1yYvuAfPCINwU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D50Ej+DeZapXpNfc+9EqPjuJJNMjMbAkTVpETMwbCTVSdPyfsbElAZmofjmUFs47L
 yQE/+81IZRvxBaw1vusPB7AvNVE6GmEflAF+vuRnIVyFLP7MKn/5vGgzBh4ReMEFsP
 OXfLg3N4q7aNmu+qRdYr7Rgd4/xjWAwWPFPph6OA=
Date: Sat, 4 May 2019 17:34:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Subject: Re: [RESEND PATCH v6 0/5] Add i.MX8MM OCOTP support
Message-ID: <20190504153403.GA19654@kroah.com>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
 <20190504083939.GA1859@kroah.com>
 <d67c692d-9e4f-9d08-12bc-ab3644fbaa8c@nexus-software.ie>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d67c692d-9e4f-9d08-12bc-ab3644fbaa8c@nexus-software.ie>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, peng.fan@nxp.com,
 abel.vesa@nxp.com, anson.huang@nxp.com, srinivas.kandagatla@linaro.org,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 leonard.crestez@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 04, 2019 at 03:49:05PM +0100, Bryan O'Donoghue wrote:
> On 04/05/2019 09:39, Greg KH wrote:
> > On Fri, May 03, 2019 at 05:53:37PM +0100, Bryan O'Donoghue wrote:
> > > V6 RESEND:
> > > - Adding Greg to sender list. Greg looks like you are the right person to
> > >    apply this.
> > 
> > $ ./scripts/get_maintainer.pl --file drivers/nvmem/imx-ocotp.c
> > Srinivas Kandagatla <srinivas.kandagatla@linaro.org> (maintainer:NVMEM FRAMEWORK)
> > Shawn Guo <shawnguo@kernel.org> (maintainer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> > Sascha Hauer <s.hauer@pengutronix.de> (maintainer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> > Pengutronix Kernel Team <kernel@pengutronix.de> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> > Fabio Estevam <festevam@gmail.com> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> > NXP Linux Team <linux-imx@nxp.com> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> > linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> > linux-kernel@vger.kernel.org (open list)
> > 
> > 
> > Why me???
> > 
> 
> Looked like you were doing the merges to me.

I might do merges, but that does not mean I do the initial
review/acceptance of the patches.  That's up to the real maintainer of
the driver/subsystem.  I do not circumvent them unless something really
odd happens.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
