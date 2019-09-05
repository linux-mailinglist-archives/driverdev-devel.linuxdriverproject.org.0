Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 890D6A9BB8
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 09:25:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AC7B3233A6;
	Thu,  5 Sep 2019 07:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ndAPr+fwqBVr; Thu,  5 Sep 2019 07:25:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7A96023358;
	Thu,  5 Sep 2019 07:25:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6CA351BF3D6
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 07:25:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 667A588572
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 07:25:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hXJTRgRemmsU for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2019 07:25:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 91CDA88363
 for <devel@driverdev.osuosl.org>; Thu,  5 Sep 2019 07:25:36 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id c12so1101180lfh.5
 for <devel@driverdev.osuosl.org>; Thu, 05 Sep 2019 00:25:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WzKYcu+ow4nlDzAihnpp11IJFNrWpQ7yO1/2sHTAIpM=;
 b=qp04F0i4htZdBif1Fa2LvC0lwMl4/DQbiX48+YL8OuhCJNdVL0n3hl/y2BUmiLjGzG
 f77Tv1vYoeHoHkt02c+3b3zWCmUA53bLPm5tcW7nc//aDfl7dzOFilIE1QhGPuhgiUgL
 M2EFHCPnQnIgT7OL+qfvPTafTsFDuHXrI03bCo06BxteHLyt7ysHf8gaV7vxLjV7R96P
 SKKkdlTivu+74/r+T2w2Vgxft0UiNLkbw0u7oIMmYdH+BDeZC352BhI6vJwgEicDAODN
 0LEr6aqxiXbYW7RhOT6ypGfHJD+qBX/r0/FHQ9Uuo4wjnMk4drBIRbMYeljGMKHOXDsG
 xrVw==
X-Gm-Message-State: APjAAAUiyGPazp/A4GsZN2ixKRi82bQzfGRjivE6vsf94gqa+0+lLonr
 j7sx0lalp98JyMOjwwwvvls=
X-Google-Smtp-Source: APXvYqwe3GqiNgKMNJMqteE0llK6NR+GrtVeJQE+oALj1fVSx0lVXrJ4d8Zq5QmxsfepPIf5nxfz9g==
X-Received: by 2002:a19:2207:: with SMTP id i7mr1308567lfi.185.1567668334824; 
 Thu, 05 Sep 2019 00:25:34 -0700 (PDT)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id s21sm212789ljj.22.2019.09.05.00.25.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 00:25:34 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92)
 (envelope-from <johan@kernel.org>)
 id 1i5m92-0007mx-SQ; Thu, 05 Sep 2019 09:25:28 +0200
Date: Thu, 5 Sep 2019 09:25:28 +0200
From: Johan Hovold <johan@kernel.org>
To: Pedro Chinen <ph.u.chinen@gmail.com>
Subject: Re: [PATCH] staging: greybus: loopback_test: remove multiple blank
 lines
Message-ID: <20190905072528.GE1701@localhost>
References: <20190904210547.5288-1-ph.u.chinen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904210547.5288-1-ph.u.chinen@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, lkcamp@lists.libreplanetbr.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 04, 2019 at 09:05:47PM +0000, Pedro Chinen wrote:
> Fix following checkpath warnings in multiple lines:
> CHECK: Please don't use multiple blank lines

Checkpatch reports five instances of this CHECK, please fix them all in
one go.

> Signed-off-by: Pedro Chinen <ph.u.chinen@gmail.com>
> ---
>  drivers/staging/greybus/tools/loopback_test.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> index ba6f905f26fa..1e78c148d7cb 100644
> --- a/drivers/staging/greybus/tools/loopback_test.c
> +++ b/drivers/staging/greybus/tools/loopback_test.c
> @@ -779,7 +779,6 @@ static void prepare_devices(struct loopback_test *t)
>  		if (t->stop_all || device_enabled(t, i))
>  			write_sysfs_val(t->devices[i].sysfs_entry, "type", 0);
>  
> -
>  	for (i = 0; i < t->device_count; i++) {
>  		if (!device_enabled(t, i))
>  			continue;
> @@ -850,7 +849,6 @@ void loopback_run(struct loopback_test *t)
>  	if (ret)
>  		goto err;
>  
> -
>  	get_results(t);
>  
>  	log_results(t);
> @@ -882,7 +880,6 @@ static int sanity_check(struct loopback_test *t)
>  
>  	}
>  
> -
>  	return 0;
>  }

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
