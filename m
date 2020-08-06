Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0202C23DB11
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 16:16:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A1DF81B71;
	Thu,  6 Aug 2020 14:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zt1exM6wlnGD; Thu,  6 Aug 2020 14:16:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DA57881E2;
	Thu,  6 Aug 2020 14:16:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AEFA01BF292
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 14:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A48CA203D3
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 14:16:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a3X9GaBsoTRp for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 14:16:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id 5FF3F203A9
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 14:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=ZGg2qVzn0hLzJGuPtNgIsWGMBLZdqXuiz8IcBFNPWs4=; b=UaC0GNh60hEnWVu1sJAg3Gl+eM
 beqy9kN6ieq1fKLRJUJrKSI8XyqLZ9lNo6HEMu/lqWG1m60+vfuLAqw2dHO52pbIBmjgRLyZgrU+F
 SQpmb8DNXByCxAM/BU8Ts4qO5g1oc73jDBnJmRQLaRLlfuA47MD549OazIOkH6XTKpBR6ePUSnzbn
 a8JkUNrISBLWNrCnK2AgQzNV03hXcc69OahYgHmhy5PFtaiMCXm4JjZaKdXoqoYY0xFtVCQhZ34G4
 bwcUprnSLAGl48jdlJN+tRuXdHj2IwnMxQ6dIC40hXIVeBKgyd7JaOnUmpbVGeXx1UnHPOzUbmGMq
 yIAXkftg==;
Received: from [2601:1c0:6280:3f0::19c2]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3ggn-0005Iu-0j; Thu, 06 Aug 2020 14:16:13 +0000
Subject: Re: [PATCH][next][V2] staging: wfx: fix a handful of spelling mistakes
To: Colin King <colin.king@canonical.com>,
 =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
References: <20200806104701.46123-1-colin.king@canonical.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <1d822037-d8f8-cbac-6df2-fe7296ad4d32@infradead.org>
Date: Thu, 6 Aug 2020 07:16:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200806104701.46123-1-colin.king@canonical.com>
Content-Language: en-US
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/6/20 3:47 AM, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There are various spelling mistakes in comments and error messages.
> Fix these.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
> 
> V2: add in some more fixes as spotted by Randy Dunlap
> 
> ---
>  drivers/staging/wfx/data_rx.c | 2 +-
>  drivers/staging/wfx/data_tx.c | 2 +-
>  drivers/staging/wfx/debug.c   | 6 +++---
>  drivers/staging/wfx/hif_rx.c  | 2 +-
>  drivers/staging/wfx/hif_tx.c  | 4 ++--
>  drivers/staging/wfx/main.c    | 2 +-
>  drivers/staging/wfx/main.h    | 2 +-
>  drivers/staging/wfx/sta.c     | 2 +-
>  8 files changed, 11 insertions(+), 11 deletions(-)

> diff --git a/drivers/staging/wfx/main.c b/drivers/staging/wfx/main.c
> index 11dfa088fc86..4263f912760b 100644
> --- a/drivers/staging/wfx/main.c
> +++ b/drivers/staging/wfx/main.c
> @@ -384,7 +384,7 @@ int wfx_probe(struct wfx_dev *wdev)
>  	err = wfx_sl_init(wdev);
>  	if (err && wdev->hw_caps.capabilities.link_mode == SEC_LINK_ENFORCED) {
>  		dev_err(wdev->dev,
> -			"chip require secure_link, but can't negociate it\n");
> +			"chip require secure_link, but can't negotiate it\n");

			      requires

>  		goto err0;
>  	}

Acked-by: Randy Dunlap <rdunlap@infradead.org>

Thanks.
-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
