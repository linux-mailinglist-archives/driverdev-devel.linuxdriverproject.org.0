Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88876D2011
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 07:37:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A0D772426B;
	Thu, 10 Oct 2019 05:37:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wtI8nzQJO0Qq; Thu, 10 Oct 2019 05:37:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0834C240DF;
	Thu, 10 Oct 2019 05:37:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 967631BF332
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 05:37:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 91167882BD
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 05:37:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YNE-dzQdNneT for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 05:37:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D317A88189
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 05:37:06 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.67,279,1566856800"; d="scan'208";a="322222603"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Oct 2019 07:37:03 +0200
Date: Thu, 10 Oct 2019 07:37:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: qlge: Fix multiple assignments
 warning by splitting the assignement into two each
In-Reply-To: <f9bdcaeccc9dd131f28a64f4b19136d1c92a27e2.camel@perches.com>
Message-ID: <alpine.DEB.2.21.1910100734330.3287@hadrien>
References: <20191009204311.7988-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910092248170.2570@hadrien>
 <f9bdcaeccc9dd131f28a64f4b19136d1c92a27e2.camel@perches.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 GR-Linux-NIC-Dev@marvell.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Wed, 9 Oct 2019, Joe Perches wrote:

> On Wed, 2019-10-09 at 22:48 +0200, Julia Lawall wrote:
> > On Wed, 9 Oct 2019, Jules Irenge wrote:
> > > Fix multiple assignments warning " check
> > >  issued by checkpatch.pl tool:
> > > "CHECK: multiple assignments should be avoided".
> []
> > > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> []
> > > @@ -141,8 +141,10 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
> > >  	u32 *direct_ptr, temp;
> > >  	u32 *indirect_ptr;
> > >
> > > -	xfi_direct_valid = xfi_indirect_valid = 0;
> > > -	xaui_direct_valid = xaui_indirect_valid = 1;
> > > +	xfi_indirect_valid = 0;
> > > +	xfi_direct_valid = xfi_indirect_valid;
> > > +	xaui_indirect_valid = 1;
> > > +	xaui_direct_valid = xaui_indirect_valid
> >
> > Despite checkpatch, I think that the original code was easier to
> > understand.
>
> It'd likely be easier to understand if all the
> <foo>_valid uses were bool and the ql_get_both_serdes
> <foo>_valid arguments were change to bool from
> unsigned int as well.

Indeed, given the names and the values, bool would be much better.

> btw: qlge likely is going to be deleted and not updated.

OK.  Jules, if you want to make this change, you can, but it could be
better to move on to some other driver.

thanks,
julia

>
> ---
>  drivers/staging/qlge/qlge_dbg.c | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> index 7e16066a3527..90ab37d4c49d 100644
> --- a/drivers/staging/qlge/qlge_dbg.c
> +++ b/drivers/staging/qlge/qlge_dbg.c
> @@ -112,7 +112,7 @@ static int ql_read_serdes_reg(struct ql_adapter *qdev, u32 reg, u32 *data)
>
>  static void ql_get_both_serdes(struct ql_adapter *qdev, u32 addr,
>  			u32 *direct_ptr, u32 *indirect_ptr,
> -			unsigned int direct_valid, unsigned int indirect_valid)
> +			bool direct_valid, bool indirect_valid)
>  {
>  	unsigned int status;
>
> @@ -136,14 +136,12 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
>  				struct ql_mpi_coredump *mpi_coredump)
>  {
>  	int status;
> -	unsigned int xfi_direct_valid, xfi_indirect_valid, xaui_direct_valid;
> -	unsigned int xaui_indirect_valid, i;
> +	bool xfi_direct_valid = false, xfi_indirect_valid = false;
> +	bool xaui_direct_valid = true, xaui_indirect_valid = true;
> +	unsigned int i;
>  	u32 *direct_ptr, temp;
>  	u32 *indirect_ptr;
>
> -	xfi_direct_valid = xfi_indirect_valid = 0;
> -	xaui_direct_valid = xaui_indirect_valid = 1;
> -
>  	/* The XAUI needs to be read out per port */
>  	status = ql_read_other_func_serdes_reg(qdev,
>  			XG_SERDES_XAUI_HSS_PCS_START, &temp);
> @@ -152,7 +150,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
>
>  	if ((temp & XG_SERDES_ADDR_XAUI_PWR_DOWN) ==
>  				XG_SERDES_ADDR_XAUI_PWR_DOWN)
> -		xaui_indirect_valid = 0;
> +		xaui_indirect_valid = false;
>
>  	status = ql_read_serdes_reg(qdev, XG_SERDES_XAUI_HSS_PCS_START, &temp);
>
> @@ -161,7 +159,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
>
>  	if ((temp & XG_SERDES_ADDR_XAUI_PWR_DOWN) ==
>  				XG_SERDES_ADDR_XAUI_PWR_DOWN)
> -		xaui_direct_valid = 0;
> +		xaui_direct_valid = false;
>
>  	/*
>  	 * XFI register is shared so only need to read one
> @@ -176,18 +174,18 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
>  		/* now see if i'm NIC 1 or NIC 2 */
>  		if (qdev->func & 1)
>  			/* I'm NIC 2, so the indirect (NIC1) xfi is up. */
> -			xfi_indirect_valid = 1;
> +			xfi_indirect_valid = true;
>  		else
> -			xfi_direct_valid = 1;
> +			xfi_direct_valid = true;
>  	}
>  	if ((temp & XG_SERDES_ADDR_XFI2_PWR_UP) ==
>  					XG_SERDES_ADDR_XFI2_PWR_UP) {
>  		/* now see if i'm NIC 1 or NIC 2 */
>  		if (qdev->func & 1)
>  			/* I'm NIC 2, so the indirect (NIC1) xfi is up. */
> -			xfi_direct_valid = 1;
> +			xfi_direct_valid = true;
>  		else
> -			xfi_indirect_valid = 1;
> +			xfi_indirect_valid = true;
>  	}
>
>  	/* Get XAUI_AN register block. */
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
