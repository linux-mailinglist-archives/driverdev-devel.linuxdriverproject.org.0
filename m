Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FA6CB0CB
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 23:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2E5B3231AB;
	Thu,  3 Oct 2019 21:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aSXh66zWOYUY; Thu,  3 Oct 2019 21:06:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A0E87230FE;
	Thu,  3 Oct 2019 21:05:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DFAFA1BF383
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 21:05:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DB5CF882DB
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 21:05:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gT6Xs7zZsRtk for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 21:05:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3B82F882AF
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 21:05:57 +0000 (UTC)
Received: from mail-pl1-f197.google.com ([209.85.214.197])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <connor.kuehl@canonical.com>) id 1iG8IN-0001uV-6v
 for devel@driverdev.osuosl.org; Thu, 03 Oct 2019 21:05:55 +0000
Received: by mail-pl1-f197.google.com with SMTP id g7so2513697plo.5
 for <devel@driverdev.osuosl.org>; Thu, 03 Oct 2019 14:05:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pPlZt26qb0wHIw5ND/7Lf7nkXVZUbxI2YbcdOEBwCa4=;
 b=pZeB/l0mS8Aps8QkxOWmKd1WsyRgyfr87dUtxMA52fn4s/Qm6CxkaEAQzqAAlw+rr7
 UpV1ui5hjNoQGOtBsajjzoSb3OC1nWVAjXe06NGNuxgLBK421P2ColF8f0pSPSDLi3e2
 0mOWsXvePG3drA9UEaK8VwL4/nGYY6lYBcI9Puj+H848Oe4n4jrb6iYyq65j+k5GyqaB
 ezogvd+V2QvT7WIpPb+AhnL0h0wCc5R/RwNJo0ZNvhmnmSC0p/Di4QujR6w2Q7QZ8c1c
 C6bRjInZo4mWi3KVOySef7qbKjnaQdCp1nbHn+jczj+2bs3HlYUPvAh2JDp38pdYei2P
 Vhyw==
X-Gm-Message-State: APjAAAXU2nvldV0JfiH2TeSa4e2xt/hBx6tcgRRLhEt+0pbRdCcy53I9
 9l1MLMM4252lgqQOe4JpPbRQnzCVUV5Ri/tJ1NdmcCenr6DtLfv7Ivc1Ljzj4wzgq9SKrv64LDp
 7tQ+eP2OLOmNq25FsolTAE6bMjsLw1YqFI71kutg=
X-Received: by 2002:a63:161b:: with SMTP id w27mr11299789pgl.38.1570136753865; 
 Thu, 03 Oct 2019 14:05:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz1vA2sZlC3AuL9ZEpvvNi1p+Y6bOBTKrE3e5foppaeS60K7VOI7xCsNMrU/KlIn8K2gJr2UQ==
X-Received: by 2002:a63:161b:: with SMTP id w27mr11299756pgl.38.1570136753514; 
 Thu, 03 Oct 2019 14:05:53 -0700 (PDT)
Received: from [192.168.0.179] (c-71-63-171-240.hsd1.or.comcast.net.
 [71.63.171.240])
 by smtp.gmail.com with ESMTPSA id s1sm3781165pjs.31.2019.10.03.14.05.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 03 Oct 2019 14:05:52 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8188eu: fix null dereference when kzalloc
 fails
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20190927214415.899-1-connor.kuehl@canonical.com>
 <20191001131122.GC22609@kadam>
From: Connor Kuehl <connor.kuehl@canonical.com>
Message-ID: <ac882530-4197-7813-ca24-49738eebb0c8@canonical.com>
Date: Thu, 3 Oct 2019 14:05:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001131122.GC22609@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 10/1/19 6:11 AM, Dan Carpenter wrote:
> 
> There is another one earlier in the function as well.
> 
> drivers/staging/rtl8188eu/os_dep/usb_intf.c
>     336
>     337          pnetdev = rtw_init_netdev(padapter);
>     338          if (!pnetdev)
>     339                  goto free_adapter;
>     340          SET_NETDEV_DEV(pnetdev, dvobj_to_dev(dvobj));
>     341          padapter = rtw_netdev_priv(pnetdev);
>     342
>     343          if (padapter->registrypriv.monitor_enable) {
>     344                  pmondev = rtl88eu_mon_init();
>     345                  if (!pmondev)
>     346                          netdev_warn(pnetdev, "Failed to initialize monitor interface");
> 
> goto free_adapter.
> 
>     347                  padapter->pmondev = pmondev;
>     348          }
>     349
>     350          padapter->HalData = kzalloc(sizeof(struct hal_data_8188e), GFP_KERNEL);
>     351          if (!padapter->HalData)
>     352                  DBG_88E("cant not alloc memory for HAL DATA\n");
>     353
> 
>>   	padapter->HalData = kzalloc(sizeof(struct hal_data_8188e), GFP_KERNEL);
>> -	if (!padapter->HalData)
>> -		DBG_88E("cant not alloc memory for HAL DATA\n");
>> +	if (!padapter->HalData) {
>> +		DBG_88E("Failed to allocate memory for HAL data\n");
> 
> Remove this debug printk.
> 
>> +		goto free_adapter;
>> +	}

Hi Dan,

Sorry for such a late response! By the time I saw the e-mail with your 
feedback I also saw another e-mail saying this patch was accepted into a 
staging-linus tree. I'll address your comments in a separate patch.

Thank you,

Connor

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
