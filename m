Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 346EB320D5A
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 21:03:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C26E86F4A8
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 20:03:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hoQLll28qSmr for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 20:03:15 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 338F56F4EE; Sun, 21 Feb 2021 20:03:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 649496F47A;
	Sun, 21 Feb 2021 20:02:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDE381BF38B
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:02:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E960185A76
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:02:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vaFeVk_U889c for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 20:02:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F1E1785B12
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 20:02:43 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7FCB6EF;
 Sun, 21 Feb 2021 21:02:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1613937759;
 bh=o2eDVQuJ6yjcFRPIKu9v84KcpaYn/gl029K82U+HOIM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YdOPKjyLq8xdf0OTeyQLgnjwKVOCYKOHnKiieixUnPwgrWv5l2NQObgBijpagtJ0p
 J06nCkSIS5V60pcLfJBRNn34iHJ7slDc+sPMWDex7NITULHQ5FnkLaQrVZNjum6JNM
 RkaDyTd0rfkUBd16SHXqnqTx+CcvYjxmIZvyprEA=
Date: Sun, 21 Feb 2021 22:02:13 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Nikolay Kyx <knv418@gmail.com>
Subject: Re: [PATCH] staging: media: omap4iss: code style - avoid macro
 argument precedence issues
Message-ID: <YDK8RfFUlktIyu7q@pendragon.ideasonboard.com>
References: <20210221195308.1451-1-knv418@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210221195308.1451-1-knv418@gmail.com>
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
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Nikolay,

Thank you for the patch.

On Sun, Feb 21, 2021 at 10:53:08PM +0300, Nikolay Kyx wrote:
> This patch fixes the following checkpatch.pl check:
> 
> CHECK: Macro argument 'i' may be better as '(i)' to avoid precedence issues
> 
> in file iss_regs.h
> 
> Signed-off-by: Nikolay Kyx <knv418@gmail.com>
> ---
> 
> Additionally some style warnings remain valid here and could be fixed by
> another patch.
> 
>  drivers/staging/media/omap4iss/iss_regs.h | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/media/omap4iss/iss_regs.h b/drivers/staging/media/omap4iss/iss_regs.h
> index 09a7375c89ac..cfe0bb075072 100644
> --- a/drivers/staging/media/omap4iss/iss_regs.h
> +++ b/drivers/staging/media/omap4iss/iss_regs.h
> @@ -197,7 +197,7 @@
>  #define CSI2_TIMING_STOP_STATE_COUNTER_IO1_MASK		(0x1fff << 0)
>  #define CSI2_TIMING_STOP_STATE_COUNTER_IO1_SHIFT	0
>  
> -#define CSI2_CTX_CTRL1(i)				(0x70 + (0x20 * i))
> +#define CSI2_CTX_CTRL1(i)				(0x70 + (0x20 * (i)))

This is a good change, as it fixes potential issues, but maybe we could
go one step forward and drop the unneeded parentheses ?

-#define CSI2_CTX_CTRL1(i)				(0x70 + (0x20 * i))
+#define CSI2_CTX_CTRL1(i)				(0x70 + 0x20 * (i))

What do you think ?

>  #define CSI2_CTX_CTRL1_GENERIC				BIT(30)
>  #define CSI2_CTX_CTRL1_TRANSCODE			(0xf << 24)
>  #define CSI2_CTX_CTRL1_FEC_NUMBER_MASK			(0xff << 16)
> @@ -210,7 +210,7 @@
>  #define CSI2_CTX_CTRL1_PING_PONG			BIT(3)
>  #define CSI2_CTX_CTRL1_CTX_EN				BIT(0)
>  
> -#define CSI2_CTX_CTRL2(i)				(0x74 + (0x20 * i))
> +#define CSI2_CTX_CTRL2(i)				(0x74 + (0x20 * (i)))
>  #define CSI2_CTX_CTRL2_FRAME_MASK			(0xffff << 16)
>  #define CSI2_CTX_CTRL2_FRAME_SHIFT			16
>  #define CSI2_CTX_CTRL2_USER_DEF_MAP_SHIFT		13
> @@ -222,19 +222,19 @@
>  #define CSI2_CTX_CTRL2_FORMAT_MASK			(0x3ff << 0)
>  #define CSI2_CTX_CTRL2_FORMAT_SHIFT			0
>  
> -#define CSI2_CTX_DAT_OFST(i)				(0x78 + (0x20 * i))
> +#define CSI2_CTX_DAT_OFST(i)				(0x78 + (0x20 * (i)))
>  #define CSI2_CTX_DAT_OFST_MASK				(0xfff << 5)
>  
> -#define CSI2_CTX_PING_ADDR(i)				(0x7c + (0x20 * i))
> +#define CSI2_CTX_PING_ADDR(i)				(0x7c + (0x20 * (i)))
>  #define CSI2_CTX_PING_ADDR_MASK				0xffffffe0
>  
> -#define CSI2_CTX_PONG_ADDR(i)				(0x80 + (0x20 * i))
> +#define CSI2_CTX_PONG_ADDR(i)				(0x80 + (0x20 * (i)))
>  #define CSI2_CTX_PONG_ADDR_MASK				CSI2_CTX_PING_ADDR_MASK
>  
> -#define CSI2_CTX_IRQENABLE(i)				(0x84 + (0x20 * i))
> -#define CSI2_CTX_IRQSTATUS(i)				(0x88 + (0x20 * i))
> +#define CSI2_CTX_IRQENABLE(i)				(0x84 + (0x20 * (i)))
> +#define CSI2_CTX_IRQSTATUS(i)				(0x88 + (0x20 * (i)))
>  
> -#define CSI2_CTX_CTRL3(i)				(0x8c + (0x20 * i))
> +#define CSI2_CTX_CTRL3(i)				(0x8c + (0x20 * (i)))
>  #define CSI2_CTX_CTRL3_ALPHA_SHIFT			5
>  #define CSI2_CTX_CTRL3_ALPHA_MASK			\
>  		(0x3fff << CSI2_CTX_CTRL3_ALPHA_SHIFT)

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
