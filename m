Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E1D9C91E
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 08:18:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 78F99860CB;
	Mon, 26 Aug 2019 06:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Mnqtt36VtH6; Mon, 26 Aug 2019 06:18:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DEB05860C9;
	Mon, 26 Aug 2019 06:18:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C136A1BF96B
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 06:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B4FF5879EF
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 06:18:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DW9vAtsOw6R2 for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 06:18:34 +0000 (UTC)
X-Greylist: delayed 00:06:34 by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C62B4879DB
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 06:18:34 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id f19so9490614plr.3
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 23:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XXdWl/5I4AMEty6E0BlvbYSkUcbQAuqmZdC08RJD18M=;
 b=jbv6ev8JlZxB9ZIAPq1Si7oAf6zojp/v8OWLfvQ4/jCafQ1UQnfuAqRp+AqlLywcPD
 mS4+vCbHJPqIykvI5npb1D3Z3CYRSmGUqEi7NEUjqCnMqbj52dzgvce9FAR+56I3spBc
 fqjrTuyCJ3QyX3LAdpUvXaPVHo3YsVL8kcR93OXW+3/fdS/UXxjfgAHh41zGgzrOxcGS
 oisNw05yEEXvrhP4o+frYwGHsTDJg5HIcb4+ATb3TMEauwowyIOAf+1MuCOdYos0tepe
 mOETzQTPWhZam2MRCO6fB+p2IOzM/sBL2C8j5d/0d2hRaSTZ9XvoRuVJOoQOAZDCu1i5
 cPQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XXdWl/5I4AMEty6E0BlvbYSkUcbQAuqmZdC08RJD18M=;
 b=p6eqyVQVVdwuhmvwtJLAB9Xktvv60JvcXIh14jpUKppGVZzgZeYLdAdAn8WWVHrdJg
 A/2gZOuivI/ZCEiQgSun5RdGJJT0tmQLhaYa+2qghaGkbsj2RUm+0DjK6/d8B9zEhB9O
 REYxRD3MoBC9EtYXCKNChBFIjH15UT3Ps7OnDxwygPo+L6K1vyieLA4H132HsaQp4SRT
 OcNFtvtUSneCkHcOk96QrQA4vnXZK94IJfBO4FNSk+llY9qP731sv+uOqX551ybTbvzE
 SkGU92+gmGAqf/g6LZUEL5DxKQxOM3Hs5DnQSZ9e5LGAui2V7c5fL8Hqi7J/pGjr3wJw
 TM2w==
X-Gm-Message-State: APjAAAUXI6sc4I3gvRhqBlZAgyrLVC4/YYzy0I6NNf+AUVUhfmuPxwjN
 3SHZI4cC2THE4rnTBKbc41KAUw==
X-Google-Smtp-Source: APXvYqzoYUDpRJUFiNoriejK+QdfOyXNvh5rJkI3pY3J+q+ZnVSlsneboHXqF3lobm90wLJVSkLaHA==
X-Received: by 2002:a17:902:7781:: with SMTP id
 o1mr17216873pll.205.1566799919996; 
 Sun, 25 Aug 2019 23:11:59 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id t189sm10691274pfd.58.2019.08.25.23.11.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Aug 2019 23:11:59 -0700 (PDT)
Date: Mon, 26 Aug 2019 11:41:57 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [greybus-dev] [PATCH 4/9] staging: greybus: manifest: Fix up
 some alignment checkpatch issues
Message-ID: <20190826061157.zpvbmbrqhl5krqcg@vireshk-i7>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-5-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825055429.18547-5-gregkh@linuxfoundation.org>
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
> Cc: Johan Hovold <johan@kernel.org>
> Cc: Alex Elder <elder@kernel.org>
> Cc: greybus-dev@lists.linaro.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/staging/greybus/manifest.c | 39 +++++++++++++++---------------
>  1 file changed, 19 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/staging/greybus/manifest.c b/drivers/staging/greybus/manifest.c
> index 08db49264f2b..4ebbba52b07c 100644
> --- a/drivers/staging/greybus/manifest.c
> +++ b/drivers/staging/greybus/manifest.c
> @@ -104,15 +104,15 @@ static int identify_descriptor(struct gb_interface *intf,
>  	size_t expected_size;
>  
>  	if (size < sizeof(*desc_header)) {
> -		dev_err(&intf->dev, "manifest too small (%zu < %zu)\n",
> -				size, sizeof(*desc_header));
> +		dev_err(&intf->dev, "manifest too small (%zu < %zu)\n", size,
> +			sizeof(*desc_header));
>  		return -EINVAL;		/* Must at least have header */
>  	}

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
