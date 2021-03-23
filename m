Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A81B345697
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 05:15:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A15940364;
	Tue, 23 Mar 2021 04:15:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r3wkjETKiTnO; Tue, 23 Mar 2021 04:15:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 740B940359;
	Tue, 23 Mar 2021 04:15:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18FE21BF324
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 04:15:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 156A140359
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 04:15:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7QaDEp37Fv-w for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 04:15:15 +0000 (UTC)
X-Greylist: delayed 07:19:58 by SQLgrey-1.8.0
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D172402FE
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 04:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=bKwNbIshUqI8o/JKCn1Ij1dd2vWMlvA0tjzAClAZop8=; b=j6ts8kepkF2rApjXY73Ct9/oY5
 1fTbRTypwOUt55xxUTNxNYizBgY+TduVWuOfrJgHKEIznfN2rc6phBZxpMPlre30P2qLdxwUEFxxq
 Jw6HC6fwkq6bfr+IZtvuAggqSMoyLXUW3kdoMXP3NHHKxDYb7JfpZzVVqfgTbOnYUxjeVUfzlCLou
 1gNaTj0lWalhtdDv2FvuTPeAzGUOPfNB3MiY0IaTaNDSGC6WnPKcsfJGrMQ+o65QKrIwa3x6QUlwI
 JzAg5SenFJiCn4BYb2r5zWKtsaY6BQuhV8kQYqEyZuSIxLzkh15uk1ozcOcy3O60Nf4azUkSVowGr
 UTPkuSZw==;
Received: from [2601:1c0:6280:3f0::3ba4]
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lOYRL-009VuT-E8; Tue, 23 Mar 2021 04:14:54 +0000
Subject: Re: [PATCH] staging: wimax: Mundane typo fixes
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>, gregkh@linuxfoundation.org,
 colin.king@canonical.com, davem@davemloft.net, lee.jones@linaro.org,
 arnd@arndb.de, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20210323010607.3918516-1-unixbhaskar@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <36821877-7a6c-9a15-4e94-cb657ef29dad@infradead.org>
Date: Mon, 22 Mar 2021 21:14:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210323010607.3918516-1-unixbhaskar@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 3/22/21 6:06 PM, Bhaskar Chowdhury wrote:
> 
> s/procesing/processing/
> s/comunication/communication/
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

drivers/staging/wimax/ is in the process of being deleted.

> ---
>  drivers/staging/wimax/i2400m/driver.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/wimax/i2400m/driver.c b/drivers/staging/wimax/i2400m/driver.c
> index f5186458bb3d..162a92682977 100644
> --- a/drivers/staging/wimax/i2400m/driver.c
> +++ b/drivers/staging/wimax/i2400m/driver.c


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
