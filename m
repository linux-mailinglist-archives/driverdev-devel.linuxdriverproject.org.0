Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE7311A703
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 10:27:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5E78922B25;
	Wed, 11 Dec 2019 09:27:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QjGffluMUN0k; Wed, 11 Dec 2019 09:27:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9AD5C204AC;
	Wed, 11 Dec 2019 09:27:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E97121BF576
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 09:27:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E659488571
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 09:27:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lGhukbc7lzL8 for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 09:27:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4B0D7884D6
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 09:27:41 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 980B02077B;
 Wed, 11 Dec 2019 09:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576056461;
 bh=SZ1p/tzZLWoJYG4p1TVzXfIjEFfvpydrnQwQH7XA/Ns=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qy272YD3jaqY+ufj34lhxLHZ+CX9q85jsIbpIaKoftxopt6VxLGEygmwrnpv1Sn2F
 wfCRvm7K9UUx6R0hMmOcDQd+DjQn+QNgK6uItyZ6S0m23OaaTz6Bl5rf+QpK2i5v3b
 GOVDh9oEzTzeq4m3w3gObUaROfP0XwSQSKYeQfuU=
Date: Wed, 11 Dec 2019 10:27:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jack Ping CHNG <jack.ping.chng@intel.com>
Subject: Re: [PATCH v2] staging: intel-gwdpa: gswip: Introduce Gigabit
 Ethernet Switch (GSWIP) device driver
Message-ID: <20191211092738.GA505511@kroah.com>
References: <5f85180573a3fb20238d6a340cdd990f140ed6f0.1576054234.git.jack.ping.chng@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5f85180573a3fb20238d6a340cdd990f140ed6f0.1576054234.git.jack.ping.chng@intel.com>
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
Cc: devel@driverdev.osuosl.org, cheol.yong.kim@intel.com,
 andriy.shevchenko@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net,
 Amireddy Mallikarjuna reddy <mallikarjunax.reddy@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 11, 2019 at 04:57:28PM +0800, Jack Ping CHNG wrote:
> This driver enables the Intel's LGM SoC GSWIP block.
> GSWIP is a core module tailored for L2/L3/L4+ data plane and QoS functions.
> It allows CPUs and other accelerators connected to the SoC datapath
> to enqueue and dequeue packets through DMAs.
> Most configuration values are stored in tables such as
> Parsing and Classification Engine tables, Buffer Manager tables and
> Pseudo MAC tables.

Odd line wrapping :(

> Signed-off-by: Jack Ping CHNG <jack.ping.chng@intel.com>
> Signed-off-by: Amireddy Mallikarjuna reddy <mallikarjunax.reddy@linux.intel.com>
> ---
> Changes on v2:
> - Renamed intel-dpa to intel-gwdpa
> - Added intel-gwdpa.txt(Intel Gateway Datapath Architecture)
> - Added TODO (upstream plan)

I don't see a real plan here.

>  drivers/staging/intel-gwdpa/TODO               |  52 ++

Good, a TODO file!  Let's look at it:

> --- /dev/null
> +++ b/drivers/staging/intel-gwdpa/TODO
> @@ -0,0 +1,52 @@
> +Intel gateway datapath architecture framework (gwdpa)
> +=====================================================
> +
> +Drivers for gwdpa
> +-----------------
> +1. drivers/staging/intel-gwdpa/gswip
> +        patch: switch driver (GSWIP)
> +
> +2. drivers/staging/intel-gwdpa/cqm
> +        patch: queue manager (CQM)
> +
> +3. drivers/staging/intel-gwdpa/pp
> +        patch: packet processor (pp)
> +
> +4. drivers/staging/intel-gwdpa/dpm
> +        patch: datapath manager (DPM)
> +        dependencies: GSWIP, CQM, PP
> +
> +5. driver/net/ethernet/intel
> +        patch: ethernet driver
> +        dependencies: DPM
> +
> +6. drivers/staging/intel-gwdpa/dcdp
> +        patch: direct connect datapath (DCDP)
> +        dependencies: DPM
> +
> +7.1 drivers/net/wireless
> +7.2 drivers/net/wan
> +        patch: wireless driver and DSL driver
> +        dependencies: DCDP

I don't understand any of the above at all.  What does it mean?  Why is
it here?

If I can't understand it, how can someone new to the kernel know what
this is for?

> +Upstream plan
> +--------------
> +
> +      GSWIP  CQM  PP  DPM     DCDP
> +        |     |    |   |        |
> +        |     |    |   |        |
> +        V     V    V   V        V
> +        -------------------------------------( drivers/staging/intel-gwdpa/* )
> +                            |  (move to soc folder)
> +                            V
> +                    -------------------------( drivers/soc/intel/gwdpa-*/* )
> +
> +                            Eth driver  Wireless/
> +                                |       WAN driver
> +                                |         |
> +                                V         V
> +                             ----------------( drivers/net/ethernet/intel )
> +                                             ( drivers/net/wireless )
> +                                             ( drivers/net/wan)
> +
> +* Each driver will have a TODO list.

Again, what kind of plan is this?  It's just a "these files need to be
moved to this location" plan?

Why not do that today?

What is keeping this code from being accepted in the "correct" place
today?  And why do you want it in staging?  You know it takes even more
work to do things here, right?  Are you ready to sign up for that work
(hint, you didn't add your names to the MAINTAINER file, so I worry
about that...)

> diff --git a/drivers/staging/intel-gwdpa/gswip/TODO b/drivers/staging/intel-gwdpa/gswip/TODO
> new file mode 100644
> index 000000000000..fa46170c8260
> --- /dev/null
> +++ b/drivers/staging/intel-gwdpa/gswip/TODO
> @@ -0,0 +1,4 @@
> +- Add debugfs for core and mac.

Why is this a requirement for upstream support?  No code functionality
should ever depend on debugfs for working properly, it's just there for
debugging at random times.

> +- Expand APIs for PCE, BM and PMAC tables to support
> +  QoS, OMCI.

What does this mean?

> +- Add ops for core.

What does this mean?

Please provide much better descriptions here of exactly what needs to be
done, that explains why this code needs to go in this part of the kernel
now instead of the "real" part.

As it is, I can not take this patch now.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
