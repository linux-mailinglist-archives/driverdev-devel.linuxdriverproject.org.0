Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CDFA002B
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 12:47:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D5ADB88A6E;
	Wed, 28 Aug 2019 10:47:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gPeYppuL8Ntj; Wed, 28 Aug 2019 10:47:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A91C889D0;
	Wed, 28 Aug 2019 10:47:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 787841BF3D2
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 10:47:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 72C1786C47
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 10:47:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pAcuFUZy8t5h for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 10:47:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7414F86C40
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 10:47:33 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id w67so1749333lff.4
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 03:47:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=y0iC0f2n/zIRNJR2gyQYU5+x6TeYT9E/x6lXjQ1LAII=;
 b=Y/DopKbE04XWgZ1sqC36BFSdMemZZNNu33F3oyB28cc2VqKMzilhNIrxySn7iOJ0EH
 eZ3IvV3zQqMYFxP8uwqkw3HfDOmcS4My7RUsIqHrkcr7xXfSKQPl5lT+3/FDzFs9959+
 P+8eQOXGuoHEpkLT1k3HVXFIAwWP087uX3MVMo58zJnrtgWOYMDUaUqGb/MvTag9s0Su
 Jm/kddZ9JlzadtQpHHjfMQEYJDAjCjlTvO4A0g3//zEESE0xquN+OfMvWs8Oln7UAP6W
 dej5WKBlrPeHE+WraCdUVPxvIFBw39mz1LwnDs8OEflfMFZbFZUbw5BWA4aT8BMfN7VD
 NWjQ==
X-Gm-Message-State: APjAAAUb0Cj3Z0WdCZtkwsdQ/nTn4o2F1I/uaqjqDYZSkTPkis1b4CKD
 WLhUY0UeFuTTXy53kSXFUMg=
X-Google-Smtp-Source: APXvYqxJgfpUo0xrtc8I8RwU+Kanigw3VId26kkDpyLvPjXT52gxRpBZnwpoTYiTb36d1LfGCAdEkw==
X-Received: by 2002:a05:6512:40c:: with SMTP id
 u12mr1667503lfk.67.1566989251620; 
 Wed, 28 Aug 2019 03:47:31 -0700 (PDT)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id d16sm784522lfi.31.2019.08.28.03.47.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Aug 2019 03:47:30 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92)
 (envelope-from <johan@kernel.org>)
 id 1i2vU6-00057l-Ok; Wed, 28 Aug 2019 12:47:27 +0200
Date: Wed, 28 Aug 2019 12:47:26 +0200
From: Johan Hovold <johan@kernel.org>
To: Rui Miguel Silva <rui.silva@linaro.org>
Subject: Re: [PATCH] staging: greybus: fix more header includes
Message-ID: <20190828104726.GE13017@localhost>
References: <20190828102859.13180-1-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828102859.13180-1-rui.silva@linaro.org>
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

On Wed, Aug 28, 2019 at 11:28:59AM +0100, Rui Miguel Silva wrote:
> More headers needed to be fixed when moving greybus out of staging and
> enabling the COMPILE_TEST option.
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> ---
>  include/linux/greybus/operation.h | 1 +
>  include/linux/greybus/svc.h       | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/include/linux/greybus/operation.h b/include/linux/greybus/operation.h
> index 8ca864bba23e..bfbc56d8d863 100644
> --- a/include/linux/greybus/operation.h
> +++ b/include/linux/greybus/operation.h
> @@ -15,6 +15,7 @@
>  #include <linux/types.h>
>  #include <linux/workqueue.h>
>  
> +#include "hd.h"

No need to include hd.h, you only need a forward declaration of struct
gb_host_device.

>  struct gb_operation;
>  
> diff --git a/include/linux/greybus/svc.h b/include/linux/greybus/svc.h
> index 507f8bd4e4c8..11a86504c429 100644
> --- a/include/linux/greybus/svc.h
> +++ b/include/linux/greybus/svc.h
> @@ -12,6 +12,8 @@
>  #include <linux/types.h>
>  #include <linux/device.h>
>  
> +#include "greybus_protocols.h"

Same here, no need to include all the protocol definitions for struct
gb_svc_l2_timer_cfg.

> +
>  #define GB_SVC_CPORT_FLAG_E2EFC		BIT(0)
>  #define GB_SVC_CPORT_FLAG_CSD_N		BIT(1)
>  #define GB_SVC_CPORT_FLAG_CSV_N		BIT(2)

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
