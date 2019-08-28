Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 782CAA02FA
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 15:16:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2DD6F86C4D;
	Wed, 28 Aug 2019 13:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cGvlLUf2ACkS; Wed, 28 Aug 2019 13:16:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 89B3E86BB9;
	Wed, 28 Aug 2019 13:16:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A5CD1BF286
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 13:16:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 97373840B9
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 13:16:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hnb9i52cW8Od for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 13:16:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 15DF586B74
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 13:16:33 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id u29so2130556lfk.7
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 06:16:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8gkg8AyrMQ7zRIAJQTyGmu2XIwtEpflTp13b6P2wFnA=;
 b=adg6bNKHXNaNV+aNTV4PTRbA/vJ/paXGtOxtf0PT1t8pUT4JZKl41W0gPJXlm7Bu/8
 o3QerkR0+T4jHYg7O9ygDSXSyNgXZAJ/e/4oCaYNfuh6zuAgb33ZxARZIOfspjFUNL9C
 A0MBR9vSgrliwdxRzpayT2qxCgfNUEb/6+PDNMqaF618ShPQzlaBTPUeDveDVYSaHeYf
 49L7ySAM6d8TfkePFSz+iuWEHSw4lp++kYKQG9LjEFodRrLKmpTyq+Pw+pFxdUVDLdhN
 5cunaAZqzRfBwyA3zrCkeZlCwXX3BdG3X7KN/oqPE0PQ6wup0oBIYdbTIfGlRh5Hoe1P
 zdCA==
X-Gm-Message-State: APjAAAX7Ceag/t6KlaWFCsq1Bdqv34tfQHs2Zks2jgW9gknONNIX65Xe
 AMdcAep+zWMEUd58qimlqHI=
X-Google-Smtp-Source: APXvYqy9SbKWqCM+LP95NcWikOcdDzVHK9f11OhcPiI7ZYQ/XGenRPoSeL27K+qoM6V6AuJK8vgXQQ==
X-Received: by 2002:ac2:42cc:: with SMTP id n12mr2669705lfl.47.1566998191244; 
 Wed, 28 Aug 2019 06:16:31 -0700 (PDT)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id t66sm598650lje.66.2019.08.28.06.16.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Aug 2019 06:16:30 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92)
 (envelope-from <johan@kernel.org>)
 id 1i2xoI-0005cy-Oa; Wed, 28 Aug 2019 15:16:27 +0200
Date: Wed, 28 Aug 2019 15:16:26 +0200
From: Johan Hovold <johan@kernel.org>
To: Rui Miguel Silva <rui.silva@linaro.org>
Subject: Re: [PATCH v2] staging: greybus: fix more header declarations
Message-ID: <20190828131626.GF13017@localhost>
References: <20190828124825.20800-1-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828124825.20800-1-rui.silva@linaro.org>
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
 Johan Hovold <johan@kernel.org>, greybus-dev@lists.linaro.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 28, 2019 at 01:48:25PM +0100, Rui Miguel Silva wrote:
> More headers needed to be fixed when moving greybus out of staging and
> enabling the COMPILE_TEST option.
> 
> Add forward declarations for the needed structures.
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> ---
> v1->v2:
> Johan Hovold:
>   - use forward declarations instead including all headers

Reviewed-by: Johan Hovold <johan@kernel.org>

>  include/linux/greybus/operation.h | 2 +-
>  include/linux/greybus/svc.h       | 2 ++
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/greybus/operation.h b/include/linux/greybus/operation.h
> index 8ca864bba23e..cb8e4ef45222 100644
> --- a/include/linux/greybus/operation.h
> +++ b/include/linux/greybus/operation.h
> @@ -15,7 +15,7 @@
>  #include <linux/types.h>
>  #include <linux/workqueue.h>
>  
> -
> +struct gb_host_device;
>  struct gb_operation;
>  
>  /* The default amount of time a request is given to complete */
> diff --git a/include/linux/greybus/svc.h b/include/linux/greybus/svc.h
> index 507f8bd4e4c8..5afaf5f06856 100644
> --- a/include/linux/greybus/svc.h
> +++ b/include/linux/greybus/svc.h
> @@ -12,6 +12,8 @@
>  #include <linux/types.h>
>  #include <linux/device.h>
>  
> +struct gb_svc_l2_timer_cfg;
> +
>  #define GB_SVC_CPORT_FLAG_E2EFC		BIT(0)
>  #define GB_SVC_CPORT_FLAG_CSD_N		BIT(1)
>  #define GB_SVC_CPORT_FLAG_CSV_N		BIT(2)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
