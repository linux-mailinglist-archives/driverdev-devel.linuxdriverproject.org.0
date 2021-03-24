Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 757643483E8
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Mar 2021 22:43:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 751A160B0D;
	Wed, 24 Mar 2021 21:43:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6eCpwoBlk1pZ; Wed, 24 Mar 2021 21:43:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4F9160AEE;
	Wed, 24 Mar 2021 21:43:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 495FA1C1162
 for <devel@linuxdriverproject.org>; Wed, 24 Mar 2021 21:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4522140EF9
 for <devel@linuxdriverproject.org>; Wed, 24 Mar 2021 21:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0bQc2ytVMGTS for <devel@linuxdriverproject.org>;
 Wed, 24 Mar 2021 21:43:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A26634010B
 for <devel@driverdev.osuosl.org>; Wed, 24 Mar 2021 21:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=QFgVVgriQ2DVZGqVL0Pa8QfVVvMJAo0S5tQkn+hRDzE=; b=XorqIpX3jcWXGuSxz493ZHVf5N
 BXU4P0rlgR+rvhsPcTCfV7aoMksCzA7/d6a9f6POE6uDL++yl5dE+ld7IBDk3JshsLy2c78ij/ga4
 ksW+sRm1oZGS1uaQy9TYnYgG6wmeCoI6mQ4SEsGQePl5hOLlmPMV14PA5Fv6ZP7Go8N3cAk3RRHlL
 POf5b+j+teXMHlSNN08CtqbK5ohMlgvRG/RoULUHTelfOzigTHDbUZ0FTGoXb6rnAMGU5e83sEbmF
 U0kC00DC4ZM1jmqR6nE+6D/TchMTaFKjYGyXe+wVrblG9TybfPYT/9kyZG2/iSTsAD0fmAcrcpyzb
 B+PJjMzg==;
Received: from [2601:1c0:6280:3f0::3ba4]
 by desiato.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lPBHJ-000FeJ-Pa; Wed, 24 Mar 2021 21:43:03 +0000
Subject: Re: [PATCH] media: atomisp-ov2680: A trivial typo fix
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>, mchehab@kernel.org,
 sakari.ailus@linux.intel.com, gregkh@linuxfoundation.org,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20210324135642.30054-1-unixbhaskar@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <07445fb3-959d-3399-f86b-0ce98d43f731@infradead.org>
Date: Wed, 24 Mar 2021 14:42:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210324135642.30054-1-unixbhaskar@gmail.com>
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

On 3/24/21 6:56 AM, Bhaskar Chowdhury wrote:
> 
> s/miror/mirror/
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

> ---
>  drivers/staging/media/atomisp/i2c/ov2680.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/atomisp/i2c/ov2680.h b/drivers/staging/media/atomisp/i2c/ov2680.h
> index 49920245e064..889395933099 100644
> --- a/drivers/staging/media/atomisp/i2c/ov2680.h
> +++ b/drivers/staging/media/atomisp/i2c/ov2680.h
> @@ -627,7 +627,7 @@ static struct ov2680_reg const ov2680_1296x976_30fps[] = {
>  	{0x5706, 0x0c},
>  	{0x5707, 0x78},
>  	{0x3820, 0xc0},
> -	{0x3821, 0x00}, //miror/flip
> +	{0x3821, 0x00}, //mirror/flip
>  	// {0x5090, 0x0c},
>  	{}
>  };
> --


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
