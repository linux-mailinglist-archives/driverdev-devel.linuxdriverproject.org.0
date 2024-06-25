Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B58289172AB
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2024 22:52:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E5BA400FF;
	Tue, 25 Jun 2024 20:52:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WFinYUefw2HQ; Tue, 25 Jun 2024 20:52:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3239B403C2
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3239B403C2;
	Tue, 25 Jun 2024 20:52:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 01D8E1BF863
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 20:52:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E2E234035A
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 20:52:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KRo3emFbYfDA for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2024 20:52:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::531; helo=mail-ed1-x531.google.com;
 envelope-from=philipp.g.hortmann@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 71A9440348
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71A9440348
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71A9440348
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2024 20:52:21 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-57d0f84b379so898993a12.2
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2024 13:52:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719348739; x=1719953539;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PHRkc9t07SlstseLeIgt/BF9i+oxbwcefEU9UF9cIXw=;
 b=wXY4L8CCxz3KnZaBUSwg9KBpxGVzz38IRmgTbwbOddlhfB6EPk7ExoSKPxxgaKsN35
 iVwsSnR2vR9A5IJrvUPkUYPiTpNio7KBdkCWIqd8lhrIhGOGtRbDwMaAI90qQDz/3v1o
 kVKKHFQmTWDRISfKv3Bm0OjzZHJ0u/9mGyASuimESzt+4csgTbbFbxjayszAbjD2e1eN
 dbXI4WeUXHE6LNWsdxYYpPPILnDrKPPlCGwb1VrAnsWxkSjTXZpbPmm5mwwKbMrLl6Zn
 LY4wftfoIm2aaRMEH1o61Gasj4J37eBdoHcIj60JOcE3cB1l2vFXy/FsGPYkKJ5/4NRY
 +ZIQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUUWObK6Q56Pqmx62qpVTFhQsCLkhp6/AHBgsxHl2DjfQ8pDzO/3J0rI/xT/3LufDtf4Xs2jeVngP4PPWtZRX2tBsG2t9q7Vymy0w==
X-Gm-Message-State: AOJu0Ywewyo23gTZNTX+NxO2PRKTDkrmtCgowWTdPStuyPxwzviW6bG7
 OTdH2yzWbOnrQVUASnQOvZWrA1+/tvp6VMtvecUTQmn6sQZgmpYX
X-Google-Smtp-Source: AGHT+IGJnMiPU6FZQ9JOoLfal1V/WdfxPP5gjVBj6ljb7cVv+CJoVMW8AM6Z0i7Q6QmMjOqdkU49BA==
X-Received: by 2002:a05:6402:40d5:b0:57d:432a:582f with SMTP id
 4fb4d7f45d1cf-57d432a5e3amr8476020a12.1.1719348739093; 
 Tue, 25 Jun 2024 13:52:19 -0700 (PDT)
Received: from [192.168.0.104] (p57935a9b.dip0.t-ipconnect.de. [87.147.90.155])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-57d3056301bsm6349566a12.89.2024.06.25.13.52.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Jun 2024 13:52:18 -0700 (PDT)
Message-ID: <9dc47763-1c44-4283-8692-5e7dce14a0e2@gmail.com>
Date: Tue, 25 Jun 2024 22:52:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] staging: rtl8192e: Fix conflicting types error with
 net_device.
To: Teddy Engel <engel.teddy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oe-kbuild-all@lists.linux.dev, devel@driverdev.osuosl.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20240625163334.11117-1-engel.teddy@gmail.com>
Content-Language: en-US
From: Philipp Hortmann <philipp.g.hortmann@gmail.com>
In-Reply-To: <20240625163334.11117-1-engel.teddy@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1719348739; x=1719953539; darn=driverdev.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PHRkc9t07SlstseLeIgt/BF9i+oxbwcefEU9UF9cIXw=;
 b=TO/cW7t6ElrpfKJEolui6JAerbod4ZWAK6oXyzReLAHAamVlR/KIKfTmD/UErDkx9A
 0aDuL5ZtTEK7FezRqqmA6/72vs0Z1siuAgVFL+6VAqnMHSTRht/eV7/ulVCb3nAVy8nx
 kwOfzqvUjMWLxvNntWMEW3OcXgVFtrvdxL8y63xVTjGbaebSalGxL5dXLVyYPWMsDH75
 1h8SL54mBp5g4yswJoeHs1W3XyMaOFTDKpzLi+KQJY/0+WT5tKqO4pWQHme3e+y/JECY
 uc31KF5X2RaPr8qij5/52jbQj+YTTqDv0OIiS4qh7Frn/poXYuK1EAS5ItHqp3goqyWh
 DleA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=TO/cW7t6
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 6/25/24 18:33, Teddy Engel wrote:
> Add a pre-declaration of struct net_device so the compiler is able to
> use rtl_pci.h / rtl_cam.h.
> 
> Signed-off-by: Teddy Engel <engel.teddy@gmail.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202406250858.L8rJMHQm-lkp@intel.com/
> Fixes: 7dff0b27d9c8 ("staging: rtl8192e: Remove unnecessary pre-declaration of struct net_device")
> ---
> v3: Replace ad-hoc commit id / subject by expected Fixes tag.
> v2: Add commit id / commit subject  under description.
> 
>   drivers/staging/rtl8192e/rtl8192e/rtl_cam.h | 2 ++
>   drivers/staging/rtl8192e/rtl8192e/rtl_pci.h | 2 ++
>   2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_cam.h b/drivers/staging/rtl8192e/rtl8192e/rtl_cam.h
> index 3a5635494385..9deffdf96072 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/rtl_cam.h
> +++ b/drivers/staging/rtl8192e/rtl8192e/rtl_cam.h
> @@ -12,6 +12,8 @@
>   
>   #include <linux/types.h>
>   
> +struct net_device;
> +
>   void rtl92e_cam_reset(struct net_device *dev);
>   void rtl92e_enable_hw_security_config(struct net_device *dev);
>   void rtl92e_set_key(struct net_device *dev, u8 EntryNo, u8 KeyIndex,
> diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_pci.h b/drivers/staging/rtl8192e/rtl8192e/rtl_pci.h
> index c645775b2150..3e39c4835ac8 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/rtl_pci.h
> +++ b/drivers/staging/rtl8192e/rtl8192e/rtl_pci.h
> @@ -13,6 +13,8 @@
>   #include <linux/types.h>
>   #include <linux/pci.h>
>   
> +struct net_device;
> +
>   bool rtl92e_check_adapter(struct pci_dev *pdev, struct net_device *dev);
>   
>   #endif

Tested-by: Philipp Hortmann <philipp.g.hortmann@gmail.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
