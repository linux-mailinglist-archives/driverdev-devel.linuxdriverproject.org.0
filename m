Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8DB342687
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Mar 2021 20:56:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4333783EFA;
	Fri, 19 Mar 2021 19:56:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4b22tk4WNAUo; Fri, 19 Mar 2021 19:56:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7584E83DAF;
	Fri, 19 Mar 2021 19:56:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D3DCF1BF3F6
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 19:56:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C2FD740162
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 19:56:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Improper folded header field made up
 entirely of whitespace (char 20 hex): X-Spam-Report: ...that system
 for details.  Content previ[...]
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1SLh8MgdKVjF for <devel@linuxdriverproject.org>;
 Fri, 19 Mar 2021 19:56:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 058604012F
 for <devel@driverdev.osuosl.org>; Fri, 19 Mar 2021 19:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Type:MIME-Version:
 References:Message-ID:In-Reply-To:Subject:cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=nnFWmARFGJLPv7OxDsJyeioJi7c0cvxA/6JhBnPTXYA=; b=pL0xgcTNEEknMo8DvX6DqCKxMV
 t6G+EGpYE24VKtbCbAe6N8POorbwT5XjxSA1VIB4QDGELm+U7dIbQ5VOg8hSmFPJhNPC40QoN6ZR4
 yfSJv6kfzWjjPyeUQWkSW7iqdTN1pZUxJkUgWENC1xOwXUpzoLlzcg7WCD1C8/SsOnu3gZ2aN7Xrd
 ChphsqZ228swFo0+pwdkZYrn11dIzyw/CA6WH//JpaVBTsdUUGhnpL6ozZdg+gkeGCfv+aDdj/KHa
 5ORyEgE79+AAQKsbaZEKJPXqBv5PRW1K23IMziAXJ8NrkIZJodgzv+Xj5PlrHedQim1o6JGq2Bo2B
 o2HLyJWg==;
Received: from rdunlap (helo=localhost)
 by bombadil.infradead.org with local-esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1lNLEW-001VD0-5z; Fri, 19 Mar 2021 19:56:33 +0000
Date: Fri, 19 Mar 2021 12:56:32 -0700 (PDT)
From: Randy Dunlap <rdunlap@bombadil.infradead.org>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Subject: Re: [PATCH V2] staging: rtl8188eu: Fix couple of typos
In-Reply-To: <20210319193414.10393-1-unixbhaskar@gmail.com>
Message-ID: <5dd2e438-e854-493c-5c8d-18f9121cb82@bombadil.infradead.org>
References: <20210319193414.10393-1-unixbhaskar@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_125632_246823_BE975A8F 
X-CRM114-Status: GOOD (  11.44  )
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



On Sat, 20 Mar 2021, Bhaskar Chowdhury wrote:

>
> s/pasive/passive/
> s/varable/variable/
>
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>


> ---
> Changes from V1:
>  Randy's suggestion incorporated.
>
> drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> index f87dd71934c3..b6ac5b8915b1 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> @@ -37,7 +37,7 @@ int rtw_init_mlme_priv(struct adapter *padapter)
> 	pmlmepriv->pscanned = NULL;
> 	pmlmepriv->fw_state = 0;
> 	pmlmepriv->cur_network.network.InfrastructureMode = Ndis802_11AutoUnknown;
> -	pmlmepriv->scan_mode = SCAN_ACTIVE;/*  1: active, 0: pasive. Maybe someday we should rename this varable to "active_mode" (Jeff) */
> +	pmlmepriv->scan_mode = SCAN_ACTIVE;/*  1: active, 0: passive. Maybe someday we should rename this variable to "active_mode" (Jeff) */
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
