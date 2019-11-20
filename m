Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEF4103DB2
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 15:49:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A993E86D15;
	Wed, 20 Nov 2019 14:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n0UxwO4E2oj8; Wed, 20 Nov 2019 14:49:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 510B486C93;
	Wed, 20 Nov 2019 14:49:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC0351BF82F
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 14:49:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B6E6320454
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 14:49:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XXJC+Gy-0bWB for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 14:49:44 +0000 (UTC)
X-Greylist: delayed 00:05:50 by SQLgrey-1.7.6
Received: from smtp.domeneshop.no (smtp.domeneshop.no [194.63.252.55])
 by silver.osuosl.org (Postfix) with ESMTPS id B034D20020
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 14:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds201810;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RazfukX+mfulswAwCO+uVfKNQyeNJjTPuAJGNFDskdQ=; b=A/AgZIvtK1bk5djc/nM2d6Eh7+
 wvPBnxO8tvdtphrOstY3CIbL5vcFYACKDAUb9+g25vZ/FDJhoB2wlGdBj4cSBOc68u6folDOF9VC7
 6vF95DSpDywRuO2BNtYIpfY2dYkksAdl3LawCj9qPsxv9Siz9MYpwKdKSQrCWqyYfyD9CXUHHGHy5
 ocKeOIcWuxYxrQCak79ze7JsE2JWL3m4jogjc+Y7XwVTHtLCrv/3suw++ELwsH6BVrPR00rdPk2vm
 J+5NijQ5ibthMOc6XHAnugqnHzUcbANpZE7vZPahkBpNKKD73Bb6tVsEYBp/T+C3+gKVh+36LeNDx
 bFJT9MCw==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:53371
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1iXRCy-0001hm-3L; Wed, 20 Nov 2019 15:43:52 +0100
Subject: Re: [PATCH v1 3/5] fbtft: Drop useless #ifdef CONFIG_OF and dead code
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 Nishad Kamdar <nishadkamdar@gmail.com>, devel@driverdev.osuosl.org
References: <20191120095716.26628-1-andriy.shevchenko@linux.intel.com>
 <20191120095716.26628-3-andriy.shevchenko@linux.intel.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <37435de0-873d-d20c-ac66-420ba91356fd@tronnes.org>
Date: Wed, 20 Nov 2019 15:43:47 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191120095716.26628-3-andriy.shevchenko@linux.intel.com>
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



Den 20.11.2019 10.57, skrev Andy Shevchenko:
> First of all there is no need to guard GPIO request by CONFIG_OF.
> It works for everybody independently on resource provider. While here,
> rename the function to reflect the above.
> 
> Moreover, since we have a global dependency to OF, the rest of
> conditional compilation is no-op, i.e. it's always be true.
> 
> Due to above drop useless #ifdef CONFIG_OF and therefore dead code.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/staging/fbtft/fbtft-core.c | 19 ++-----------------
>  1 file changed, 2 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c

<snip>

> @@ -1184,17 +1176,10 @@ static struct fbtft_platform_data *fbtft_probe_dt(struct device *dev)
>  		pdata->display.backlight = 1;
>  	if (of_find_property(node, "init", NULL))
>  		pdata->display.fbtftops.init_display = fbtft_init_display_dt;
> -	pdata->display.fbtftops.request_gpios = fbtft_request_gpios_dt;
> +	pdata->display.fbtftops.request_gpios = fbtft_request_gpios;

You can ditch the .request_gpios callback and call fbtft_request_gpios()
directly in fbtft_register_framebuffer(). That will make it safe to drop
the OF dependency, otherwise .request_gpios will be NULL in the non-DT
case. This is one of the bugs that follwed the gpio refactoring.

You can also ditch the .request_gpios_match callback if you want, it
isn't called anymore (it is set in fb_agm1264k-fl).

Noralf.

>  
>  	return pdata;
>  }
> -#else
> -static struct fbtft_platform_data *fbtft_probe_dt(struct device *dev)
> -{
> -	dev_err(dev, "Missing platform data\n");
> -	return ERR_PTR(-EINVAL);
> -}
> -#endif
>  
>  /**
>   * fbtft_probe_common() - Generic device probe() helper function
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
