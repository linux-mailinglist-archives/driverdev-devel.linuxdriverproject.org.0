Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B591A6674
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 14:51:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4D347203FF;
	Mon, 13 Apr 2020 12:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qNEKL13qeGBp; Mon, 13 Apr 2020 12:51:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6188020464;
	Mon, 13 Apr 2020 12:51:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5ADC21BF3EB
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:51:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5740F8757D
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:51:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RNBRGiruZc1q for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 12:51:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5355587924
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 12:50:57 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96A9A2073E;
 Mon, 13 Apr 2020 12:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586782257;
 bh=vJVQxIP9f88bxvWbQgUeSmR5vQOrhBhi/wjsmEHyAPE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ftx0Q5HVmSoSZgeK9g1GamKCgDj+Lak/WMucjWZl59u6E8USEJUo0N+9cQLWY5loq
 HGgAhS3Q/1c49/yoTie641/B4aMtq1Y6o+u/mEvDhsIfb8PE3nBS2EFyMyKe+lETSy
 gzWavf4kgcW3+aNCE30JO9CGcJx4QwfVqfUT9ldw=
Date: Mon, 13 Apr 2020 14:50:54 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
Subject: Re: [PATCH 2/2] staging: rtl8192u: Renames variables in setKey
 function
Message-ID: <20200413125054.GB3077651@kroah.com>
References: <20200413030129.861-1-c.cantanheide@gmail.com>
 <20200413030129.861-2-c.cantanheide@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413030129.861-2-c.cantanheide@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org, nishkadg.linux@gmail.com,
 navid.emamdoost@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 13, 2020 at 03:01:29AM +0000, Camylla Goncalves Cantanheide wrote:
> Renames the local variables of the setKey
> function, making them explicit.

Why do this?

> 
> Signed-off-by: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 48 +++++++++++++-------------
>  1 file changed, 24 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 87c02aee3854..cc02c3b1eb91 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -4877,48 +4877,48 @@ void EnableHWSecurityConfig8192(struct net_device *dev)
>  	write_nic_byte(dev, SECR,  SECR_value);
>  }
>  
> -void setKey(struct net_device *dev, u8 entryno, u8 keyindex, u16 keytype,
> -	    u8 *macaddr, u8 defaultkey, u32 *keycontent)
> +void setKey(struct net_device *dev, u8 entry_no, u8 key_idx, u16 key_type,
> +	    u8 *mac_addr, u8 default_key, u32 *key_content)

What was wrong with the original names?  Why add a '_' character for no
good reason?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
