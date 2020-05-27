Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 134821E3BA8
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 10:15:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 96BF6230E6;
	Wed, 27 May 2020 08:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n7PapJtcNhkc; Wed, 27 May 2020 08:14:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 45A8A20429;
	Wed, 27 May 2020 08:14:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7960F1BF844
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 08:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 75F5087FCF
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 08:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vE3D3nnM+Fvk for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 08:14:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0947487BC2
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 08:14:51 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 591AC21531;
 Wed, 27 May 2020 08:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590567290;
 bh=IZTSfgXKAp7khJeVaJeeGoeqOh2uLETlRAh3tUunzl0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Gxchxf+ou0aFzf7A6ZG7nrSKxgQEQMjbd0GqgggAAS/uwPdZ0L4zI8zi0WEf1O6KG
 1FN69AU8a7q7clS0UE5pm/ifmld7+2cM9mnbRttH9tN5ia71y0PGmF9GLkqy15bjju
 g3F1etKwBRKna3EsiqZECEM95wMU/8ky0iumDwQ8=
Date: Wed, 27 May 2020 10:14:48 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Pascal Terjan <pterjan@google.com>
Subject: Re: [PATCH] staging: rtl8712: Fix IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK
Message-ID: <20200527081448.GA122537@kroah.com>
References: <20200523211247.23262-1-pterjan@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200523211247.23262-1-pterjan@google.com>
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
Cc: devel@driverdev.osuosl.org,
 "Taihsiang Ho \(tai271828\)" <tai271828@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 23, 2020 at 10:12:47PM +0100, Pascal Terjan wrote:
> The value in shared headers was fixed 9 years ago in commit 8d661f1e462d
> ("ieee80211: correct IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK macro") and
> while looking at using shared headers for other duplicated constants
> I noticed this driver uses the old value.
> 
> The macros are also defined twice in this file so I am deleting the
> second definition.
> 
> Signed-off-by: Pascal Terjan <pterjan@google.com>
> Cc: stable <stable@vger.kernel.org>
> ---
>  drivers/staging/rtl8712/wifi.h | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
> index be731f1a2209..91b65731fcaa 100644
> --- a/drivers/staging/rtl8712/wifi.h
> +++ b/drivers/staging/rtl8712/wifi.h
> @@ -440,7 +440,7 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
>  /* block-ack parameters */
>  #define IEEE80211_ADDBA_PARAM_POLICY_MASK 0x0002
>  #define IEEE80211_ADDBA_PARAM_TID_MASK 0x003C
> -#define IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK 0xFFA0
> +#define IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK 0xFFC0
>  #define IEEE80211_DELBA_PARAM_TID_MASK 0xF000
>  #define IEEE80211_DELBA_PARAM_INITIATOR_MASK 0x0800

I'll take this patch, but why can't this code be all deleted such that
the real in-kernel defines are used instead of these duplicated ones?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
