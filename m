Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F65822F85
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 10:57:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F90885427;
	Mon, 20 May 2019 08:57:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YzuL5JCo6pkm; Mon, 20 May 2019 08:57:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C450E8531D;
	Mon, 20 May 2019 08:57:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E3CC71BF83A
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DFFF487368
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CH8ZuHIsqwfy for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 08:57:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8957A8735E
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:57:11 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9A56204FD;
 Mon, 20 May 2019 08:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558342631;
 bh=sqBRBNYx88jBR4CAFDwy0bVCEpQ/bWh2PM+rtQzV+Uo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kBghcluu904iLZDgDasB1qWGsD1n65j6ly4K7EwC5tyFIyy9xsPyVKKMgaRPTbANg
 u0OP6z70K/Dh/64Rdj4KSaIr3Rno1yrKWcaa3CjB8tG0sXsz74M0usmQVngvW68VRb
 ghI/2JiwB78f+zmRVRji3Fnpx619EVvlYF81WW0A=
Date: Mon, 20 May 2019 10:57:09 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [Patch v2] staging: rtl8723bs: hal: odm_HWConfig: odm_HWConfig:
 Unneeded variable: "result". Return "HAL_STATUS_SUCCESS"
Message-ID: <20190520085709.GE19183@kroah.com>
References: <20190519172723.GA9329@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190519172723.GA9329@hari-Inspiron-1545>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 19, 2019 at 10:57:24PM +0530, Hariprasad Kelam wrote:
> This patch fixes below warnings reported by coccicheck
> 
> drivers/staging/rtl8723bs/hal/odm_HWConfig.c:501:4-10: Unneeded
> variable: "result". Return "HAL_STATUS_SUCCESS" on line 526
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> -----
> Changes in v2:
>   - fixed typo in commit message
> ---
> 
> ---
>  drivers/staging/rtl8723bs/hal/odm_HWConfig.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
> index d802a1f..4711c65 100644
> --- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
> +++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
> @@ -498,8 +498,6 @@ HAL_STATUS ODM_ConfigBBWithHeaderFile(
>  
>  HAL_STATUS ODM_ConfigMACWithHeaderFile(PDM_ODM_T pDM_Odm)
>  {
> -	u8 result = HAL_STATUS_SUCCESS;
> -
>  	ODM_RT_TRACE(
>  		pDM_Odm,
>  		ODM_COMP_INIT,
> @@ -523,5 +521,5 @@ HAL_STATUS ODM_ConfigMACWithHeaderFile(PDM_ODM_T pDM_Odm)
>  
>  	READ_AND_CONFIG(8723B, _MAC_REG);
>  
> -	return result;
> +	return HAL_STATUS_SUCCESS;
>  }

This whole function should really be reduced to just one line (the trace
stuff is not needed), and as this can not fail, it should not be
returning a value.

And if it can be one line, then why is it a function at all?  It's only
called in one place.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
