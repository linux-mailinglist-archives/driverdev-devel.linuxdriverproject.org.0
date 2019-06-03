Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A1232859
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 08:10:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 46D1A8586A;
	Mon,  3 Jun 2019 06:10:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MIsOn6Rh7Yjr; Mon,  3 Jun 2019 06:10:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5231E84ADA;
	Mon,  3 Jun 2019 06:10:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 537691BF369
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 06:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4338D8621D
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 06:10:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O3lhQQ6j7rrw for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 06:10:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 934CC86132
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 06:10:29 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id t5so9638276wmh.3
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 23:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0RCVB0UhfwlSsI+hwGlS0DnajwIQfpTejbTT6PWoEpI=;
 b=UMNScuJpI5Z7NKECMSEw+Tjp9IcgQNY7K/x1TfIib5knNWm6PNiZYpSxytZIyeE6gE
 1rPBb0RcJ+9gTYLsvColleBwjjggWJZbJ9ZDp+Wywh82xXyBpKnciyZ7AvAwABNgO1CV
 X7p78ft0ph7X/W7hogqFJAS9BnWDkUShM/gRSkQSv603SPUoq9kNdBtwzzcvilaQVheO
 OwqABbQGB0xHER+C3oWotMhTUHg1S62+b4z0vhuOzndHFukxsZUGRsIcHg+/m6zmpezX
 /5xuybw8Dp8yY+4pI7+z6KrTLJzMYuMvhLKXzFJa0Z/O+iul+f87tNKCh9b9/JoI93YC
 KyMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0RCVB0UhfwlSsI+hwGlS0DnajwIQfpTejbTT6PWoEpI=;
 b=NRJISwnivUzadvzifzjGUUZI6shp12TzM2cyYYTaacaYBZ2RnMFnbhl5NPqkTzcj6b
 aCEOd4yaDVdDo1lBr+ArQ03hKtobxjnlAYWE6sgQ6bjPCywoQkJB1u6q8uFgQEjD9coD
 /2RzMZ8GRCgsYOJyXLT+Wm84U3CdLEhEoV/yyjX3D7SUv8KX+RFXmlocPeEV/z1/tCli
 7gY4O1A6yGo4fp1fC+pcr0grDfE2lTbE1/fQIKpe63lkM/0SwOOqs7NMgfnP6Sx0IVv3
 P4aP6fRx7gS/8tVKGO9VQd6HJ7xJJ45LQAs5AyziV9MnZBriWPsu/KGJyHi9dam60Nbz
 GxPw==
X-Gm-Message-State: APjAAAVEQaWfP+qAQIhpJvbPER4zaX839+lSDMOXY15hCx/kxVzH3LP+
 SUSSqmc8mBgLvPI7wCCG7jY=
X-Google-Smtp-Source: APXvYqxmv2dl4Iz9vGKwSOgpmnSjL6n9UAqCSY8ne25hU6Mfd78IhnAQMe7dwMBoea9/tOtQ1Fz/nA==
X-Received: by 2002:a05:600c:23d2:: with SMTP id
 p18mr3401885wmb.108.1559542228100; 
 Sun, 02 Jun 2019 23:10:28 -0700 (PDT)
Received: from ?IPv6:2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba?
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id w6sm2897575wro.71.2019.06.02.23.10.27
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 23:10:27 -0700 (PDT)
Subject: Re: [PATCH 1/2] staging: rtl8188eu: remove redundant definition of
 ETH_ALEN
To: Joe Perches <joe@perches.com>, gregkh@linuxfoundation.org
References: <20190602163528.28495-1-straube.linux@gmail.com>
 <9ca0c459d047c72fc459313ad570ecc59cf5d300.camel@perches.com>
From: Michael Straube <straube.linux@gmail.com>
Message-ID: <936cc2d2-e05c-3153-fa66-89ca22b5d755@gmail.com>
Date: Mon, 3 Jun 2019 08:10:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <9ca0c459d047c72fc459313ad570ecc59cf5d300.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019-06-02 22:07, Joe Perches wrote:
> On Sun, 2019-06-02 at 18:35 +0200, Michael Straube wrote:
>> ETH_ALEN is defined in linux/if_ether.h which is included by
>> osdep_service.h, so remove the redundant definition from ieee80211.h.
> []
>> diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
> []
>> @@ -14,7 +14,6 @@
>>   
>>   #define MGMT_QUEUE_NUM 5
>>   
>> -#define ETH_ALEN	6
>>   #define ETH_TYPE_LEN		2
>>   #define PAYLOAD_TYPE_LEN	1
> 
> While you're at it:
> 
> neither ETH_TYPE_LEN nor PAYLOAD_TYPE_LEN appear to be used.
> 
> 

They are removed in the second patch of the series.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
