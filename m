Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E3F18EB96
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Mar 2020 19:35:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5050986E49;
	Sun, 22 Mar 2020 18:34:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jr5DmX9w5okZ; Sun, 22 Mar 2020 18:34:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA4B486DCC;
	Sun, 22 Mar 2020 18:34:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D97E01BF31F
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 18:34:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D654285FEF
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 18:34:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6SnAk89yj1Dt for <devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 18:34:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1EC4C85F9A
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 18:34:54 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id e20so11448840ios.12
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 11:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=I96GfMTGq9tUWRXE8nK4GMh5+Rk8r1hA4SJWjtfIz8c=;
 b=rJvUhtoJSZoJZ59xKruwqvuxmnNykSJnrdZl61bfZeAwFcD2KOYValDzc3KdUgDuzo
 Fs84zAqxmx6HmXvBbsccutjeE56+jKXSZVYKNibpIxJghE5tCF6rmWXT4tps1fo4+nJh
 n8PDln4LMaInk0pGEk1GAEPhJ6XUdael/r3ZeLaJtimq6/Q4TxJRU/90wU+WutYNccVl
 8kJVfc3jvWlWUaEfHDmmsVpaqXkml9GKOhxLpBNQ+fXBGbMbT5YpB8K1dCYrUwpB6c21
 aet7+AQPCCjURaqqSSA9ANtEFxfXJb8WcurJBw15kGHaLzCfKR4gu1wZzC8D8jL1Mc9M
 ey6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=I96GfMTGq9tUWRXE8nK4GMh5+Rk8r1hA4SJWjtfIz8c=;
 b=Phony4GfClQXIIIgzG2zqBouMSEpC+T2fM9ACv3qWRX0wmO7eFPMFaX91kdzTQEcQl
 2VCoV0qRUNgRb0DWx4mmpgpAX74Jm6HkyTnntDT2CFnEjQj53dbztnFirQnq1JoDykh8
 fyD6obz8orP+6qbKCt5g6nF6nkgoPqUkqCL9M3sBf4hRV91sd1Q4L2iAA4SZ/Qb4YSoV
 uBOrW/ahVCddmwK+ZNz33glsVSNqOQJraURyryH08YqDpsu59bXaLH/Z945x14ctCgjc
 SqM73Q3txi4zDwJ976WoUX/ww51mbgwomO9zKWv/oOfXBgNGbRPJOv7p6X8rjwc3hmCs
 PY7A==
X-Gm-Message-State: ANhLgQ05L5B7Uk3ClTjtcX3SNgCkxPDcbMCbJRdSHRfGyRXbTNjJRILJ
 4X7cNGq0otDQe8BhFDJ4iH+utA==
X-Google-Smtp-Source: ADFU+vvrk/Ou3tOtIOKEMMAqZ7PMZvdC4HXpfkqhgNXtBlpBKJE3/XcxE4hujRiRTCDop7ZBPLp45g==
X-Received: by 2002:a02:7a07:: with SMTP id a7mr17054094jac.96.1584902093315; 
 Sun, 22 Mar 2020 11:34:53 -0700 (PDT)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id d15sm614598ioe.49.2020.03.22.11.34.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 22 Mar 2020 11:34:52 -0700 (PDT)
Subject: Re: [greybus-dev] [PATCH] staging: greybus: tools: Fix braces {} style
To: Simran Singhal <singhalsimran0@gmail.com>, Johan Hovold
 <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
References: <20200322173045.GA24700@simran-Inspiron-5558>
From: Alex Elder <elder@linaro.org>
Message-ID: <7fc65c6f-1f1d-8f60-faad-e43dda3d0cfa@linaro.org>
Date: Sun, 22 Mar 2020 13:34:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200322173045.GA24700@simran-Inspiron-5558>
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

On 3/22/20 12:30 PM, Simran Singhal wrote:
> This patch fixes the check reported by checkpatch.pl
> for braces {} should be used on all arms of this statement.
> 
> Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>

Looks fine to me.  And I saw no other instances of this in the
Greybus code.  Thanks for the patch.

Reviewed-by: Alex Elder <elder@linaro.org>

> ---
>  drivers/staging/greybus/tools/loopback_test.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> index ba6f905f26fa..d46721502897 100644
> --- a/drivers/staging/greybus/tools/loopback_test.c
> +++ b/drivers/staging/greybus/tools/loopback_test.c
> @@ -801,8 +801,9 @@ static void prepare_devices(struct loopback_test *t)
>  			write_sysfs_val(t->devices[i].sysfs_entry,
>  					"outstanding_operations_max",
>  					t->async_outstanding_operations);
> -		} else
> +		} else {
>  			write_sysfs_val(t->devices[i].sysfs_entry, "async", 0);
> +		}
>  	}
>  }
>  
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
