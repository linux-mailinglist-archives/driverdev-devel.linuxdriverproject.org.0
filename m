Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0840623BD28
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Aug 2020 17:24:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 839BB84D2E;
	Tue,  4 Aug 2020 15:24:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hm1G63qwxwGr; Tue,  4 Aug 2020 15:24:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76ED284D11;
	Tue,  4 Aug 2020 15:24:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 217DF1BF5A0
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 15:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1E02A84D11
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 15:24:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Euw3B5x6Ive for <devel@linuxdriverproject.org>;
 Tue,  4 Aug 2020 15:24:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 40D7884BDF
 for <devel@driverdev.osuosl.org>; Tue,  4 Aug 2020 15:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=9M0NhBPiWl9Cg/GhWcaL3HQWjufxxCJ8q9QO6yVZY4M=; b=IJDY5Hq3j9s4Gqc0cB2+iKkEvF
 osld14x9t5cskLdZYDgZ/eIELVLd3PaqA9P60Bxk3yVexNEPgKsU/E8EFG15ubpLG7RTGKIuep0HE
 YuEYQ78aDAiU1LIZzeosyRdeIeUHEsslthcqZXmu9jxTrNbu0D+imO7vIvAkTHDr0b8S+NTYXI49t
 7TaR1CKjEo/ovGUoCNuguDoQlbewYoFWQzN2hmrvJ5D3JWUpzHEjQos1TeEbXx0/bYEPrLqi85bqj
 MnXfy/vSkqSRPzUTMkn51oTKdsJfVrhsz9aKeC891tibukaWZd/y4AdjhnbfoCKOfhLnGGE7fJlHQ
 RWrx4gtw==;
Received: from [2601:1c0:6280:3f0::19c2]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2yny-0008FM-Ik; Tue, 04 Aug 2020 15:24:43 +0000
Subject: Re: [PATCH] staging: wfx: fixed misspelled word in comment
To: Aditya Bansal <adbansal99@gmail.com>, gregkh@linuxfoundation.org
References: <20200804145816.GA3823@aditya>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <bc993561-e494-d6b5-fc73-eb56cb496d75@infradead.org>
Date: Tue, 4 Aug 2020 08:24:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200804145816.GA3823@aditya>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/4/20 7:58 AM, Aditya Bansal wrote:
> From: Aditya Bansal <adbansal99@gmail.com>
> 
> Subject: [PATCH] fixed typo in driver/staging/wfx/hif_tx.c file
> 
> Correct the spelling of function
> 
> Signed-off-by: Aditya Bansal <adbansal99@gmail.com>
> ---
> 
> diff --git a/drivers/staging/wfx/hif_tx.c b/drivers/staging/wfx/hif_tx.c
> index 5110f9b93762..6a485fa5b72b 100644
> --- a/drivers/staging/wfx/hif_tx.c
> +++ b/drivers/staging/wfx/hif_tx.c
> @@ -125,7 +125,7 @@ int wfx_cmd_send(struct wfx_dev *wdev, struct hif_msg *request,
>  
>  // This function is special. After HIF_REQ_ID_SHUT_DOWN, chip won't reply to any
>  // request anymore. We need to slightly hack struct wfx_hif_cmd for that job. Be
> -// carefull to only call this funcion during device unregister.
> +// carefull to only call this function during device unregister.

      careful

>  int hif_shutdown(struct wfx_dev *wdev)
>  {
>  	int ret;


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
