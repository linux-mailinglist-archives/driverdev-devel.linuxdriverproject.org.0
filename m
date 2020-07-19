Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E65224FE5
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 08:11:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AA6685A5A;
	Sun, 19 Jul 2020 06:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D0LxIAQpyrAi; Sun, 19 Jul 2020 06:11:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 10DD185ACD;
	Sun, 19 Jul 2020 06:11:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF3441BF487
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 06:10:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DC0468774C
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 06:10:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k-jpFx2mI1dS for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 06:10:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3C47D87001
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 06:10:58 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BEAEF2073A;
 Sun, 19 Jul 2020 06:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595139058;
 bh=v+tBQTFsBwAbo1jkBKxGAaOodtQy54tKEIs8raoBUpo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IKwz6zoityKzRAm8cn5VH9j055zpzXNgsntvnyoyaojNiWglYYi4npceclHpdQufy
 e9kDiL99STu2HoX0jJg3PT8d9jrSO7EV9p15kh5wzx1DKGo84iK0eFKQozqgCG4n+u
 PDn/e1wYyoMDWeBFXHFvuzKKj90H2b52KXKVkn0A=
Date: Sun, 19 Jul 2020 08:10:54 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH] drivers: staging: media: atomisp: pci: css_2401_system:
 host: csi_rx.c: fixed a sparse warning by making undeclared symbols static
Message-ID: <20200719081054.7915a8ae@coco.lan>
In-Reply-To: <20200714132350.naekk4zqivpuaedi@pesu-pes-edu>
References: <20200714132350.naekk4zqivpuaedi@pesu-pes-edu>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Tue, 14 Jul 2020 09:23:50 -0400
B K Karthik <bkkarthik@pesu.pes.edu> escreveu:

> changed symbols N_SHORT_PACKET_LUT_ENTRIES, N_LONG_PACKET_ENTRIES,
> N_CSI_RX_FE_CTRL_DLANES, N_CSI_RX_BE_SID_WIDTH to static because they
> were not declared earlier.

This patch is broken:

ERROR: modpost: "N_CSI_RX_FE_CTRL_DLANES" [drivers/staging/media/atomisp/atomisp.ko] undefined!
ERROR: modpost: "N_LONG_PACKET_LUT_ENTRIES" [drivers/staging/media/atomisp/atomisp.ko] undefined!
ERROR: modpost: "N_SHORT_PACKET_LUT_ENTRIES" [drivers/staging/media/atomisp/atomisp.ko] undefined!

Please test your patches before submitting them.

I suspect that the header declaring them weren't included at csi_rx.c.

Regards,
Mauro

> 
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>  .../media/atomisp/pci/css_2401_system/host/csi_rx.c       | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c b/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c
> index 8e661091f7d9..4d2076db1240 100644
> --- a/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c
> +++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c
> @@ -15,26 +15,26 @@
>  
>  #include "system_global.h"
>  
> -const u32 N_SHORT_PACKET_LUT_ENTRIES[N_CSI_RX_BACKEND_ID] = {
> +static const u32 N_SHORT_PACKET_LUT_ENTRIES[N_CSI_RX_BACKEND_ID] = {
>  	4,	/* 4 entries at CSI_RX_BACKEND0_ID*/
>  	4,	/* 4 entries at CSI_RX_BACKEND1_ID*/
>  	4	/* 4 entries at CSI_RX_BACKEND2_ID*/
>  };
>  
> -const u32 N_LONG_PACKET_LUT_ENTRIES[N_CSI_RX_BACKEND_ID] = {
> +static const u32 N_LONG_PACKET_LUT_ENTRIES[N_CSI_RX_BACKEND_ID] = {
>  	8,	/* 8 entries at CSI_RX_BACKEND0_ID*/
>  	4,	/* 4 entries at CSI_RX_BACKEND1_ID*/
>  	4	/* 4 entries at CSI_RX_BACKEND2_ID*/
>  };
>  
> -const u32 N_CSI_RX_FE_CTRL_DLANES[N_CSI_RX_FRONTEND_ID] = {
> +static const u32 N_CSI_RX_FE_CTRL_DLANES[N_CSI_RX_FRONTEND_ID] = {
>  	N_CSI_RX_DLANE_ID,	/* 4 dlanes for CSI_RX_FR0NTEND0_ID */
>  	N_CSI_RX_DLANE_ID,	/* 4 dlanes for CSI_RX_FR0NTEND1_ID */
>  	N_CSI_RX_DLANE_ID	/* 4 dlanes for CSI_RX_FR0NTEND2_ID */
>  };
>  
>  /* sid_width for CSI_RX_BACKEND<N>_ID */
> -const u32 N_CSI_RX_BE_SID_WIDTH[N_CSI_RX_BACKEND_ID] = {
> +static const u32 N_CSI_RX_BE_SID_WIDTH[N_CSI_RX_BACKEND_ID] = {
>  	3,
>  	2,
>  	2



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
