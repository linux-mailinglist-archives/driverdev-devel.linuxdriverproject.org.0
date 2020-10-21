Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5877A29506A
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 18:09:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1B858862E4;
	Wed, 21 Oct 2020 16:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wiIIR4dMkgRk; Wed, 21 Oct 2020 16:09:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6735085D92;
	Wed, 21 Oct 2020 16:09:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D48E01BF3D0
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 16:09:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CBCD22E6F1
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 16:09:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Kzxs6sQUyiG for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 16:09:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by silver.osuosl.org (Postfix) with ESMTPS id 54DA72FBEF
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 07:53:52 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.77,400,1596492000"; d="scan'208";a="473616714"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 09:53:49 +0200
Date: Wed, 21 Oct 2020 09:53:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: kpc2000: Use BIT macro
 instead of bit masking
In-Reply-To: <06567509e751655184f4f6aed7570c963b608797.1603248985.git.mh12gx2825@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010210953280.8475@hadrien>
References: <bce6824343f7a10919be5130b5a6276ed186701c.1603248984.git.mh12gx2825@gmail.com>
 <06567509e751655184f4f6aed7570c963b608797.1603248985.git.mh12gx2825@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
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
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Wed, 21 Oct 2020, Deepak R Varma wrote:

> Replace bit masking by BIT macro. This resolves checkpatch issue

Replace bit masking by the BIT macro. This resolves the checkpatch issue

> "CHECK: Prefer using the BIT macro"
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc2000/dma_common_defs.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
> index 8bc78be3c259..613c4898f65e 100644
> --- a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
> +++ b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
> @@ -8,13 +8,13 @@
>  #define KPC_DMA_ENGINE_SIZE         0x0100
>  #define ENGINE_CAP_PRESENT_MASK     0x1
>
> -#define KPC_DMA_CARD_IRQ_ENABLE                 (1 << 0)
> -#define KPC_DMA_CARD_IRQ_ACTIVE                 (1 << 1)
> -#define KPC_DMA_CARD_IRQ_PENDING                (1 << 2)
> -#define KPC_DMA_CARD_IRQ_MSI                    (1 << 3)
> -#define KPC_DMA_CARD_USER_INTERRUPT_MODE        (1 << 4)
> -#define KPC_DMA_CARD_USER_INTERRUPT_ACTIVE      (1 << 5)
> -#define KPC_DMA_CARD_IRQ_MSIX_MODE              (1 << 6)
> +#define KPC_DMA_CARD_IRQ_ENABLE                 BIT(0)
> +#define KPC_DMA_CARD_IRQ_ACTIVE                 BIT(1)
> +#define KPC_DMA_CARD_IRQ_PENDING                BIT(2)
> +#define KPC_DMA_CARD_IRQ_MSI                    BIT(3)
> +#define KPC_DMA_CARD_USER_INTERRUPT_MODE        BIT(4)
> +#define KPC_DMA_CARD_USER_INTERRUPT_ACTIVE      BIT(5)
> +#define KPC_DMA_CARD_IRQ_MSIX_MODE              BIT(6)
>  #define KPC_DMA_CARD_MAX_PAYLOAD_SIZE_MASK      0x0700
>  #define KPC_DMA_CARD_MAX_READ_REQUEST_SIZE_MASK 0x7000
>  #define KPC_DMA_CARD_S2C_INTERRUPT_STATUS_MASK  0x00FF0000
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/06567509e751655184f4f6aed7570c963b608797.1603248985.git.mh12gx2825%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
