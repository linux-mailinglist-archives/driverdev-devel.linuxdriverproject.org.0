Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E25D83436F5
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 04:02:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C379830C5;
	Mon, 22 Mar 2021 03:02:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ikq6bZQh-w7g; Mon, 22 Mar 2021 03:02:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8700F83033;
	Mon, 22 Mar 2021 03:01:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 562AF1BF299
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 03:01:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5271A4029B
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 03:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sv8dTOSQ6w46 for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 03:01:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C4DC40299
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 03:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=AbUtbbw+++6dvKZRwYZxzd/vcNNKSLCJwxvZNKR2U74=; b=fjcPpKY3kVLV8XG8xhpuH1l5Ut
 PobnVEpAd9gENsqJHY9hP1v2vwzP67y7Fyp0DOfUfqsIgJrBuD3j17ohl5xaI1ehGbK8n0mJ3dn0I
 hK3rAq/cnlvFr2KTFfYt535gAHR/47jAuJbdF4CPMaMmxEuEdF9P2ozXeiOsKwEW0AKoxsTzAu/Ei
 DZFSUa5vvEZdRevc8bVXHelAirpbauCrGZszeWktGOQucWZUNMNd5ef487vu9tJhHQ0TEbW1ozP7Y
 su8Q8theLQbgiHySN+i0AJt9Sy4mv8AAev5Y3FdA84zRIL1d1ZVnmtLs1RYVF6f8euN0pRijnvdOr
 wpbqaung==;
Received: from [2601:1c0:6280:3f0::3ba4]
 by desiato.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lOAp3-00AjrX-DI; Mon, 22 Mar 2021 03:01:42 +0000
Subject: Re: [PATCH] media: Fix a typo
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>, mchehab@kernel.org,
 sakari.ailus@linux.intel.com, gregkh@linuxfoundation.org,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20210322022431.3992890-1-unixbhaskar@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <0124fc9c-6d96-e9ce-8c69-7362871fdecf@infradead.org>
Date: Sun, 21 Mar 2021 20:01:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210322022431.3992890-1-unixbhaskar@gmail.com>
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

On 3/21/21 7:24 PM, Bhaskar Chowdhury wrote:
> 
> s/Sysytem/System/
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

> ---
>  drivers/staging/media/atomisp/i2c/gc2235.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/atomisp/i2c/gc2235.h b/drivers/staging/media/atomisp/i2c/gc2235.h
> index 68252b8f516d..ba5db1230033 100644
> --- a/drivers/staging/media/atomisp/i2c/gc2235.h
> +++ b/drivers/staging/media/atomisp/i2c/gc2235.h
> @@ -218,7 +218,7 @@ static struct gc2235_reg const gc2235_stream_off[] = {
>  };
> 
>  static struct gc2235_reg const gc2235_init_settings[] = {
> -	/* Sysytem */
> +	/* System */
>  	{ GC2235_8BIT, 0xfe, 0x80 },
>  	{ GC2235_8BIT, 0xfe, 0x80 },
>  	{ GC2235_8BIT, 0xfe, 0x80 },
> --


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
