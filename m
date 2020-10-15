Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C8528EC3E
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Oct 2020 06:27:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C7A0F2E60E;
	Thu, 15 Oct 2020 04:27:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bXv5UVYoZCzl; Thu, 15 Oct 2020 04:27:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C950A2E606;
	Thu, 15 Oct 2020 04:26:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E5D231BF31D
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 04:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB31E2E605
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 04:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zLp9u3TBCnoO for <devel@linuxdriverproject.org>;
 Thu, 15 Oct 2020 04:26:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id D501E2E604
 for <devel@driverdev.osuosl.org>; Thu, 15 Oct 2020 04:26:52 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 10so1209711pfp.5
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 21:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iNHVFd5PlmYNkQaZe4PpF7uyhE4h5AcVhJcsViTjG4s=;
 b=mkrqoz3vvDN/NMvvhVzk3DaTdtwjh8PG2ub0JPFYkF6/Jrxiy+XvCBt9WGb5dW+2UF
 UAkFTaLyrwC3kuuKbVrM5QzCHn8l/VZ7D9J2EjjtxFshy3RZTEQVKchrCE1s87LB9QBo
 VdruAwYXBzttt/EvywxQg55de302N6nvGE50UK8+gBub4GiPwmIRTVJ0nVxxwDPrB6tc
 4Wm/AMoN/hUgaVCtpGNHmVKjooRvSsFlzqvtxJhBQT87xGQCroPDJPwJb8yKK+39AOzZ
 JSpBlS7+z8aNWmFwTWuNPyVYI/eEoG/8omjZVJG3BWglDc3GTfdSnY2tzz5HN7t4hGXI
 hY+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iNHVFd5PlmYNkQaZe4PpF7uyhE4h5AcVhJcsViTjG4s=;
 b=IO1UxKusULu+sSGjzUGLue0rZ9B3Md0HXJOfWwNC0rQ7UVfAm0FgYEnOqFA66J/hPq
 Zuny9awpcJCF+fss0D6ZCYI2h6OnhGXlRN+WGht2JixFUovY01NtKiN7V7iVUpMcNoh3
 O4YO0diq4ffrrFU6LwIKFyyW4MomTkQpVS++tcZ14k/iZX3+N97OcViCBKvy1WxVSifp
 fEoHlJPx2IJ5HD5WFwwIvsX4t3X44AqLMjWnixcJBj7CAPsUpvzMvi6gVs/mPtXUbN94
 QrOS5p5kkWkxvvA63e2jIkR0whKuwJ1iF+QNspgDJAHLeIqJ506HUUYMgFLjv5m7u5lp
 JfPA==
X-Gm-Message-State: AOAM533cczhNoQxUWp3V6SBwurdGxs3Bbakog9LSRdzYCx8S3M1lzTXJ
 o6Bof8Q+OUzPZ3CLOIs+vC9GB4R7r80UMM8J
X-Google-Smtp-Source: ABdhPJx+azL3ac6FwTk5uZqWdTaTc/lgmXZS7FZPyYt5I7pOC7d4UxouNE32nRvJZEVgyR4JlJUelg==
X-Received: by 2002:aa7:9a4a:0:b029:155:323e:adae with SMTP id
 x10-20020aa79a4a0000b0290155323eadaemr2407909pfj.70.1602736012489; 
 Wed, 14 Oct 2020 21:26:52 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id e4sm1230371pgg.37.2020.10.14.21.26.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Oct 2020 21:26:52 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Thu, 15 Oct 2020 12:26:28 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v2 1/7] staging: qlge: replace ql_* with qlge_* to avoid
 namespace clashes with other qlogic drivers
Message-ID: <20201015042628.42evgens2z47x3d6@Rk>
References: <20201014104306.63756-1-coiby.xu@gmail.com>
 <20201014104306.63756-2-coiby.xu@gmail.com>
 <20201015010136.GB31835@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015010136.GB31835@f3>
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
Cc: devel@driverdev.osuosl.org,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER" <GR-Linux-NIC-Dev@marvell.com>,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 15, 2020 at 10:01:36AM +0900, Benjamin Poirier wrote:
>On 2020-10-14 18:43 +0800, Coiby Xu wrote:
>> To avoid namespace clashes with other qlogic drivers and also for the
>> sake of naming consistency, use the "qlge_" prefix as suggested in
>> drivers/staging/qlge/TODO.
>>
>> Suggested-by: Benjamin Poirier <benjamin.poirier@gmail.com>
>> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>> ---
>>  drivers/staging/qlge/TODO           |    4 -
>>  drivers/staging/qlge/qlge.h         |  190 ++--
>>  drivers/staging/qlge/qlge_dbg.c     | 1073 ++++++++++++-----------
>>  drivers/staging/qlge/qlge_ethtool.c |  231 ++---
>>  drivers/staging/qlge/qlge_main.c    | 1257 +++++++++++++--------------
>>  drivers/staging/qlge/qlge_mpi.c     |  352 ++++----
>>  6 files changed, 1551 insertions(+), 1556 deletions(-)
>>
>> diff --git a/drivers/staging/qlge/TODO b/drivers/staging/qlge/TODO
>> index f93f7428f5d5..5ac55664c3e2 100644
>> --- a/drivers/staging/qlge/TODO
>> +++ b/drivers/staging/qlge/TODO
>> @@ -28,10 +28,6 @@
>>  * the driver has a habit of using runtime checks where compile time checks are
>>    possible (ex. ql_free_rx_buffers(), ql_alloc_rx_buffers())
>>  * reorder struct members to avoid holes if it doesn't impact performance
>> -* in terms of namespace, the driver uses either qlge_, ql_ (used by
>> -  other qlogic drivers, with clashes, ex: ql_sem_spinlock) or nothing (with
>> -  clashes, ex: struct ob_mac_iocb_req). Rename everything to use the "qlge_"
>> -  prefix.
>
>You only renamed ql -> qlge. The prefix needs to be added where there is
>currently none like the second example of that text.
>
Thank you for reminding me of the second example!

>Besides, the next patch reintroduces the name struct ql_adapter.

Oh, there is still a left-over ql_adapter in qlge.h (I renamed ql->qlge
after initializing the devlink framework earlier but did a git rebase
to make the order of the changes more reasonable). Thank you for the
reminding!

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
