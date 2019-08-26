Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6699C95A
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 08:22:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6C48860E0;
	Mon, 26 Aug 2019 06:22:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MNKEIf6oTud5; Mon, 26 Aug 2019 06:22:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 616BC860C5;
	Mon, 26 Aug 2019 06:22:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D03A1BF42D
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 06:22:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 39E9A87A12
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 06:22:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xGdRZTWxaj0Y for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 06:22:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B0337879EF
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 06:22:11 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id bj8so9493653plb.4
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 23:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DFNKLlML8ZG0U6zSvck4G0suOs1+3RpMULNqnE5vfmE=;
 b=HZtqhUVgaaWvXSuMadlnQlfTp0nMMEvpsWVtBYe/NNERsuqqMBdf6Z/CIv7esFkvEq
 VK4itHwOLhgftKByG86oc7HifeQpF5/fpyzukMA2zTvz9xr44gmtJUJDmaufTRocf7+l
 e78E+Tjqq9wAFfTfNdTXVtqZZvD9scAvIVH7IEHt1zXPuKv03+ockt/3ZDVsGYmJ277N
 UED8KhWfCWo7WSSvkKWuIK+IMcX/sKn5ohfxdOBYH3JyKTv2iGcV3nHXU/ZTtRUgAniB
 EJngDM95BxyFQFDehH3Et8Jd06PUX6rsQnT16ZqFUak26ZB/XaWaUUPQMF7d12trj8Ax
 YwEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DFNKLlML8ZG0U6zSvck4G0suOs1+3RpMULNqnE5vfmE=;
 b=poK4iyUGRaqfrierQm3+zAGUGdImvudaFcbfUxgCYP0iecI3aa7pplIaDYzESz3Gu3
 cRvXmQ7m4iaynx5LcRoS+qPhS9QFCwHUbPHu7uXQMnXj7staJfTo3XBIQ/XU0Mx23JWl
 61DtF701wHYksLdwUCzEL+KKLFpEXqWXULMAW46vmBNlGqKYPcUfKJuovTj2aUN9BTT/
 wmuPN/Ltuv5aVTvbJNmqv1ENQxU7YjTo3r9v+P3iBHQJ+EuBF5Gzs/Q6V7wr2CDHshUt
 rLmS+LSqKx4I+b+jkholGA7p/puV7NbqzBEQE97rn79FvF8j9JE3tLWPhrUlFfwANo8o
 5cDg==
X-Gm-Message-State: APjAAAUOkrXcrO251ZvKN14dBAhk+WXhEIYhZUH+FSDRdPl0B27e6igo
 4HuvJ+1e3TgY8GOKSWRjJu12Uw==
X-Google-Smtp-Source: APXvYqw3O24kdVqAku1lk9iqySccxlxqBlpdpGlSV0fOUZdZbeox5M+FlskBtNUYqKT8CggkpjYO0w==
X-Received: by 2002:a17:902:f096:: with SMTP id
 go22mr17762668plb.58.1566800089617; 
 Sun, 25 Aug 2019 23:14:49 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id h197sm10948152pfe.67.2019.08.25.23.14.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Aug 2019 23:14:48 -0700 (PDT)
Date: Mon, 26 Aug 2019 11:44:47 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [greybus-dev] [PATCH 9/9] staging: greybus: move es2 to
 drivers/greybus/
Message-ID: <20190826061447.7oynduw2schwrck4@vireshk-i7>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-10-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825055429.18547-10-gregkh@linuxfoundation.org>
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
> The es2 Greybus host controller has long been stable, so move it out of
> drivers/staging/ to drivers/greybus/
> 
> Cc: Johan Hovold <johan@kernel.org>
> Cc: Alex Elder <elder@kernel.org>
> Cc: greybus-dev@lists.linaro.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/greybus/Kconfig              | 16 ++++++++++++++++
>  drivers/greybus/Makefile             |  7 +++++++
>  drivers/{staging => }/greybus/arpc.h |  0
>  drivers/{staging => }/greybus/es2.c  |  2 +-
>  drivers/staging/greybus/Kconfig      | 11 -----------
>  drivers/staging/greybus/Makefile     |  5 -----
>  6 files changed, 24 insertions(+), 17 deletions(-)
>  rename drivers/{staging => }/greybus/arpc.h (100%)
>  rename drivers/{staging => }/greybus/es2.c (99%)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
