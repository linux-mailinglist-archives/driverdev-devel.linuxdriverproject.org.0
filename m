Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF331BD3D4
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 06:55:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B58B78692E;
	Wed, 29 Apr 2020 04:55:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vNVyl9MhjClV; Wed, 29 Apr 2020 04:55:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0DC278654E;
	Wed, 29 Apr 2020 04:55:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30BC01BF3A6
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 04:55:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2926788268
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 04:55:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JIB9d1SoVVQg for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 04:55:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 79CC988249
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 04:55:19 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 818D35C03A3;
 Wed, 29 Apr 2020 00:55:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 29 Apr 2020 00:55:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rylan.coffee; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=/qkEJFxQQnd+DohDVJwiAH2Q88T
 56mCRQ/dGzRWSAe0=; b=NquLEErkc+H3mfU66c2KdmdeMbGYLKw8iHHObVYhCx1
 L1FeY0fhdsWfuPUERh5Y/MHfM0QsB2l5Wi4maeLXWwogeCU2q8H8CxzcUldzCNFQ
 ZnFYzdTYxIKEIkNSgln2Qi/IS1FFf0b1FmXbdU1E3oPl4DGh2Euut5LEyC8Ro8SU
 SK8AWX10XObr59hLZ0SHZSO35AJiX60+eaauKJmofi4CAfOnGPqgLl1AXj9R21y7
 24Ono03VnXXNZ0cZ3UZgX5PwuOQZrdLbrVuHVPfPdkQxQH3LCPcypDeEz8WZ0F1o
 Lc6ROSMGhIqK1q+HAng0nbxXdT7cqcM6euBDJk6llFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=/qkEJF
 xQQnd+DohDVJwiAH2Q88T56mCRQ/dGzRWSAe0=; b=HP/TZYcChIkCuJFrXQnDtr
 lpV55mIILTGUQI1glACIz4aeCfSe5TlNzhE++8PnKcfg5YncJVxoSY78i35W84Ga
 71kFJS63X78JlcWu3LC0kfBQjMvVDvq1FpBY20Aq3ZESjjqPxfx9QKfxGMF9sgTM
 MWJcEo9QdblAMoudhGFMor4sIcIUsB6cnIcOQcQFRUsxxhq3JEImGqdTWj3BX9Zp
 qWsF5wohZPSIxQw7UwESKGeB5WvAJgdREkZcqMDmi3G5do4VFK1uYRjuaPJYavTi
 EmuS9UD0r4o/cDlaDLxnz3cm+OM5hrejtkcH7hr7k7ox4AmCk1xWv2YKhlR9CJrA
 ==
X-ME-Sender: <xms:tQipXg3YSOru4BPTrvz6WauC2-nVZa7MGLj5Usf13U1mbXhVmjob5g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedvgdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtjeenucfhrhhomheptfihlhgrnhcu
 ffhmvghllhhouceomhgrihhlsehrhihlrghnrdgtohhffhgvvgeqnecukfhppedutdekrd
 egledrudehkedrkeegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrihhlsehrhihlrghnrdgtohhffhgvvg
X-ME-Proxy: <xmx:tQipXl8TgdFMb0C-6CmjiXZtR0vh-CecGoc_7NLSo-WxF_G0NvpzBg>
 <xmx:tQipXp15-Na2mv-nXVzB139H2NvbcG9jUQjjnWfPV5grRXrBylLd1g>
 <xmx:tQipXg00oQJ5b716J1JJ9RQCc3u2gVYbFyZ0og1bHL2QrWbonUc1dA>
 <xmx:tgipXj699o_t9VAaWyUWLZ-xXj1S1alWTVahOrNjyI5Nu9Jt9Ug4Lw>
Received: from athena (pool-108-49-158-84.bstnma.fios.verizon.net
 [108.49.158.84])
 by mail.messagingengine.com (Postfix) with ESMTPA id A59A83280069;
 Wed, 29 Apr 2020 00:55:17 -0400 (EDT)
Date: Wed, 29 Apr 2020 00:55:16 -0400
From: Rylan Dmello <mail@rylan.coffee>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 1/3] staging: qlge: Remove multi-line dereferences from
 qlge_main.c
Message-ID: <20200429045516.GA2421@athena>
References: <aae9feb569c60758ab09c923c09b600295f4cb32.1588132908.git.mail@rylan.coffee>
 <0dcf9712a49968da1935061de130bc3668e63088.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0dcf9712a49968da1935061de130bc3668e63088.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 28, 2020 at 09:31:10PM -0700, Joe Perches wrote:
> On Wed, 2020-04-29 at 00:04 -0400, Rylan Dmello wrote:
> > Fix checkpatch.pl warnings:
> > 
> >   WARNING: Avoid multiple line dereference - prefer 'qdev->func'
> >   WARNING: Avoid multiple line dereference - prefer 'qdev->flags'
> 
> Assuming you are doing this for exercise:
> 
> It'd be better to unindent all the switch/case
> blocks for the entire function so more functions
> fit on single lines
> 
> 	switch (foo) {
> 	case bar:
> 		{
> 			...;
> 
> should be:
> 
> 	switch (foo) {
> 	case bar: {
> 		...;
> 
> goto exit; might as well be break; and remove
> the exit label too.
>

Thank you - I noticed that clang-format unindented the switch-case blocks, but
wasn't sure whether to include that in this patch set or not.

I will send a V2 patch that unindents these switch-case blocks throughout
the two functions listed here, and also removes the exit label from this
function.

> > Signed-off-by: Rylan Dmello <mail@rylan.coffee>
> > ---
> >  drivers/staging/qlge/qlge_main.c | 9 ++++-----
> >  1 file changed, 4 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> > index d7e4dfafc1a3..10daae025790 100644
> > --- a/drivers/staging/qlge/qlge_main.c
> > +++ b/drivers/staging/qlge/qlge_main.c
> > @@ -396,8 +396,7 @@ static int ql_set_mac_addr_reg(struct ql_adapter *qdev, u8 *addr, u32 type,
> >  			 * the route field to NIC core.
> >  			 */
> >  			cam_output = (CAM_OUT_ROUTE_NIC |
> > -				      (qdev->
> > -				       func << CAM_OUT_FUNC_SHIFT) |
> > +				      (qdev->func << CAM_OUT_FUNC_SHIFT) |
> >  					(0 << CAM_OUT_CQ_ID_SHIFT));
> >  			if (qdev->ndev->features & NETIF_F_HW_VLAN_CTAG_RX)
> >  				cam_output |= CAM_OUT_RV;
> > @@ -3432,9 +3431,9 @@ static int ql_request_irq(struct ql_adapter *qdev)
> >  				     &qdev->rx_ring[0]);
> >  			status =
> >  			    request_irq(pdev->irq, qlge_isr,
> > -					test_bit(QL_MSI_ENABLED,
> > -						 &qdev->
> > -						 flags) ? 0 : IRQF_SHARED,
> > +					test_bit(QL_MSI_ENABLED, &qdev->flags)
> > +						? 0
> > +						: IRQF_SHARED,
> >  					intr_context->name, &qdev->rx_ring[0]);
> >  			if (status)
> >  				goto err_irq;
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
