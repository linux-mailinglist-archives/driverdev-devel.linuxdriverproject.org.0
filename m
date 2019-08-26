Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA849C906
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 08:12:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EBE95860E0;
	Mon, 26 Aug 2019 06:12:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oGkZQERlvWd4; Mon, 26 Aug 2019 06:12:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9DABE860C4;
	Mon, 26 Aug 2019 06:12:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3DB201BF42D
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 06:12:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 35AB38517C
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 06:12:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aq8nIcQDw731 for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 06:12:50 +0000 (UTC)
X-Greylist: delayed 00:21:27 by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CFDD586ADD
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 06:12:50 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id y200so3412364pfb.6
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 23:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DvsJ6EXOfQy8viwASBJ8g0n3qm0G5rmq/MMogh3criM=;
 b=RuAZGv3syoZI9rmONxZGxWuycwQ7c+GoUjWFHPGEcyXfngduW+pnagJhm07OwrHED5
 BHSJznyzG4eluRx+1lb6mSiWlnMXmC8DBB1NrMpDpOIo7mqfrjEvl8STPPRTD0c2yBIX
 a/EuzaZA4vT6I5nbM9EFewegks2u8lNgysOlIb7W7Ciq4J4V5+33wsgbCUgS4ntwkR68
 cubBpL/iTGfQGq8lzv81Y3WqavoMfc0jJUXBJP37noiR1vKfr+8PbxsyXymFgBqDQxQp
 JlOxyyxa088C+L6bQ/yGSDH3KSycqAuh7zWCdi6seBcP2JWSzx5SZrFJQmnC2Xgegx36
 hiMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DvsJ6EXOfQy8viwASBJ8g0n3qm0G5rmq/MMogh3criM=;
 b=klXE5sHeMnuttp5bWRpgy2gswAUksdL35vk6yTNsiLj1Ya/KdGur9MffUoSLJpIQm1
 3HEcte5odOJS9xBh89XIEx81DhuWsrzTZ792gqW3PR0MuD4Cq1iteIP1FcBDle+/LYY6
 ++2hRkbGaz/V7S3Wb9SUvhtMgfXWtbbFWqmG0z0tOzPKpYhmUsDURvK7Eg+F4r7yJP57
 /UhypzEn4dalvnY1ycGrdBFk4BZzNRXyRXk5DdQFXOHj5b7z5SR0wJrAzmBVRI6NKqP8
 B3m3jSgyWsUFbqqQigMtbamN4NeucmAn3dFQQssm0SC4PLRGeWyBFA723zuiYzg4Ixz3
 qUBQ==
X-Gm-Message-State: APjAAAUyFHCU7UScuznZ6xWH2AI6jQAGdORLAhhebkrizHokW9dg71GH
 uTFP56/Ul719+W+akNL0jqIfjzO3//k=
X-Google-Smtp-Source: APXvYqwtlXSI25+XX1DTZ+KVKX1tQjMTjHeyedgEYej4K24WlFsnqkbZlM+vldAx6tACcs6bwx8/jg==
X-Received: by 2002:aa7:9e0a:: with SMTP id y10mr18197049pfq.93.1566799970382; 
 Sun, 25 Aug 2019 23:12:50 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id br18sm10747731pjb.20.2019.08.25.23.12.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Aug 2019 23:12:49 -0700 (PDT)
Date: Mon, 26 Aug 2019 11:42:48 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [greybus-dev] [PATCH 6/9] staging: greybus: loopback: Fix up
 some alignment checkpatch issues
Message-ID: <20190826061248.emfuj2wcpwtaizr6@vireshk-i7>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-7-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825055429.18547-7-gregkh@linuxfoundation.org>
User-Agent: NeoMutt/20180716-391-311a52
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org, elder@kernel.org,
 johan@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 25-08-19, 07:54, Greg Kroah-Hartman wrote:
> Some function prototypes do not match the expected alignment formatting
> so fix that up so that checkpatch is happy.
> 
> Cc: "Bryan O'Donoghue" <pure.logic@nexus-software.ie>
> Cc: Johan Hovold <johan@kernel.org>
> Cc: Alex Elder <elder@kernel.org>
> Cc: greybus-dev@lists.linaro.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/staging/greybus/loopback.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
> index 48d85ebe404a..b0ab0eed5c18 100644
> --- a/drivers/staging/greybus/loopback.c
> +++ b/drivers/staging/greybus/loopback.c
> @@ -882,7 +882,7 @@ static int gb_loopback_fn(void *data)
>  				gb->type = 0;
>  				gb->send_count = 0;
>  				sysfs_notify(&gb->dev->kobj,  NULL,
> -						"iteration_count");
> +					     "iteration_count");
>  				dev_dbg(&bundle->dev, "load test complete\n");
>  			} else {
>  				dev_dbg(&bundle->dev,
> @@ -1054,7 +1054,7 @@ static int gb_loopback_probe(struct gb_bundle *bundle,
>  
>  	/* Allocate kfifo */
>  	if (kfifo_alloc(&gb->kfifo_lat, kfifo_depth * sizeof(u32),
> -			  GFP_KERNEL)) {
> +			GFP_KERNEL)) {
>  		retval = -ENOMEM;
>  		goto out_conn;
>  	}

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
