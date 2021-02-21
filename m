Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BFA320A59
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 14:02:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12DFC85D6F;
	Sun, 21 Feb 2021 13:02:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OOnM3MVa4cyM; Sun, 21 Feb 2021 13:02:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8218C85C11;
	Sun, 21 Feb 2021 13:02:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3483F1BF4DA
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:02:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2FE3986FC1
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:02:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ItSABnUxOm19 for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 13:02:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AB9518707C
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 13:02:40 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F028F64F06;
 Sun, 21 Feb 2021 13:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613912559;
 bh=PqaCurbTk7C7PNgYa86YlnmbN9I/E96rikO0Wib/WY8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PyHB26EkP3rIRXTKptOk+uxlSFsP4XnNBH5dIXSFe+OtHZOVU0BYB95jIr+iJLr2Q
 lbuhKWuniwfBkzXZRLWE/IuirpoC+PCtPcq1xKoJDadGA1zYX3uHuWrxV0xL8OgHXp
 r9DCrXuDSXTSQnge75VH/nyNCXG6bW979+EhZkPU=
Date: Sun, 21 Feb 2021 14:02:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lee Gibson <leegib@gmail.com>
Subject: Re: [PATCH] staging: hikey9xx: Fix space tab style warnings
Message-ID: <YDJZ7GTF/8tmJg4x@kroah.com>
References: <20210219143851.83672-1-leegib@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219143851.83672-1-leegib@gmail.com>
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
Cc: mchehab+huawei@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 02:38:51PM +0000, Lee Gibson wrote:
> This patch fixes the checkpatch warnings such as:
> 
> hi6421-spmi-pmic.c:51: WARNING: please, no space before tabs
> 
> Signed-off-by: Lee Gibson <leegib@gmail.com>
> ---
>  drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
> index 4ebcfea9f3bf..626140cb96f2 100644
> --- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
> +++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
> @@ -48,9 +48,9 @@ enum hi6421_spmi_pmic_irq_list {
>  /*
>   * The IRQs are mapped as:
>   *
> - * 	======================  =============   ============	=====
> - *	IRQ			MASK REGISTER 	IRQ REGISTER	BIT
> - * 	======================  =============   ============	=====
> + *	======================  =============   ============	=====
> + *	IRQ			MASK REGISTER	IRQ REGISTER	BIT
> + *	======================  =============   ============	=====
>   *	OTMP			0x0202		0x212		bit 0
>   *	VBUS_CONNECT		0x0202		0x212		bit 1
>   *	VBUS_DISCONNECT		0x0202		0x212		bit 2
> @@ -66,7 +66,7 @@ enum hi6421_spmi_pmic_irq_list {
>   *	SIM0_HPD_F		0x0203		0x213		bit 3
>   *	SIM1_HPD_R		0x0203		0x213		bit 4
>   *	SIM1_HPD_F		0x0203		0x213		bit 5
> - * 	======================  =============   ============	=====
> + *	======================  =============   ============	=====
>   */
>  #define SOC_PMIC_IRQ_MASK_0_ADDR	0x0202
>  #define SOC_PMIC_IRQ0_ADDR		0x0212
> -- 
> 2.25.1

This patch doesn't apply to my staging-testing branch of staging.git
right now, did someone else already make this change recently?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
