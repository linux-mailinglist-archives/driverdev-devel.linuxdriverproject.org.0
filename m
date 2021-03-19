Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DD83425B1
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Mar 2021 20:05:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E37EA83AA1;
	Fri, 19 Mar 2021 19:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fa_n9bqWIyCZ; Fri, 19 Mar 2021 19:05:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 359F382FD5;
	Fri, 19 Mar 2021 19:05:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C71AF1BF3F6
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 19:05:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C34096F69C
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 19:05:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Improper folded header field made up
 entirely of whitespace (char 20 hex): X-Spam-Report: ...that system
 for details.  Content previ[...]
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BfZ1J8G60ViR for <devel@linuxdriverproject.org>;
 Fri, 19 Mar 2021 19:05:37 +0000 (UTC)
X-Greylist: delayed 01:04:53 by SQLgrey-1.8.0
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6FACF6F4C1
 for <devel@driverdev.osuosl.org>; Fri, 19 Mar 2021 19:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Type:MIME-Version:
 References:Message-ID:In-Reply-To:Subject:cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=LSQXGOox+uWbTS3r6xWtG4JVC4Hz7vay5Ab5pG8xqOU=; b=zvxadFyayw6l2oXHmu4p3HXkmV
 2wFsSJ4g9o0TXw1xpXnOAq/4wnCm5hxuKaNpKKAogvCvZCUQogvEK9OWy5Of/BboO4nzbbljs3Jai
 OpJZNZKjvQd4L/YDKeGxvszIBYLGpJCAVE3VD9zUqD6iVO6Vi2LkPPOjKUSzg+dMjssowTQUiWbhM
 D2x6mzx4Cg7W++kDb6K+DhPTPsiKk+HD/SV2W46nTpu6i2gQYkKyuYBnXgLNzHiwSGIIK4qXeyd+a
 YwKg+dXgpgCTQ8trZDBajTwpphJqEzGvQyydgL+AcDJsIIbjRdrpwe2os+FIL43IAHNqr0BO/SaRA
 m4Y11RAA==;
Received: from rdunlap (helo=localhost)
 by bombadil.infradead.org with local-esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1lNJQ9-001RKl-Dh; Fri, 19 Mar 2021 18:00:26 +0000
Date: Fri, 19 Mar 2021 11:00:25 -0700 (PDT)
From: Randy Dunlap <rdunlap@bombadil.infradead.org>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Subject: Re: [PATCH] staging: rtl8188eu: Fix a typo
In-Reply-To: <20210319014120.6474-1-unixbhaskar@gmail.com>
Message-ID: <27d89fb-d14-df64-eeb2-f5b788ff294@bombadil.infradead.org>
References: <20210319014120.6474-1-unixbhaskar@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_110025_480629_988CFBCC 
X-CRM114-Status: GOOD (  11.63  )
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
Cc: devel@driverdev.osuosl.org, insafonov@gmail.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, dinghao.liu@zju.edu.cn, yepeilin.cs@gmail.com,
 dan.carpenter@oracle.com, Larry.Finger@lwfinger.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Fri, 19 Mar 2021, Bhaskar Chowdhury wrote:

>
> s/pasive/passive/

Also need to s/varable/variable/


>
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
> ---
> drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> index f87dd71934c3..96d15fca48b0 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> @@ -37,7 +37,7 @@ int rtw_init_mlme_priv(struct adapter *padapter)
> 	pmlmepriv->pscanned = NULL;
> 	pmlmepriv->fw_state = 0;
> 	pmlmepriv->cur_network.network.InfrastructureMode = Ndis802_11AutoUnknown;
> -	pmlmepriv->scan_mode = SCAN_ACTIVE;/*  1: active, 0: pasive. Maybe someday we should rename this varable to "active_mode" (Jeff) */
> +	pmlmepriv->scan_mode = SCAN_ACTIVE;/*  1: active, 0: passive. Maybe someday we should rename this varable to "active_mode" (Jeff) */
>
> 	spin_lock_init(&pmlmepriv->lock);
> 	_rtw_init_queue(&pmlmepriv->free_bss_pool);
> --
> 2.26.2
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
