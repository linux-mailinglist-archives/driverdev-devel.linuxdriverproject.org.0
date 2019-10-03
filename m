Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A763C9F94
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 15:39:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9C0486A00;
	Thu,  3 Oct 2019 13:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GGPMwjJgXk9j; Thu,  3 Oct 2019 13:39:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76B568699B;
	Thu,  3 Oct 2019 13:39:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52D471BF399
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 13:39:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 439E822B20
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 13:39:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xHksCLPHa4lU for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 13:39:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 9E85F20474
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 13:39:48 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id p10so2534497edq.1
 for <devel@driverdev.osuosl.org>; Thu, 03 Oct 2019 06:39:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=RhaZOkcAwmULT8u7N7kowltYRpwtVwSoOJwHBuJuEoY=;
 b=aDX6XfhSRpIT01/hpcn5aeBwsaiEzENHy8KUbAu//YkaO+sICKCHYgwlZ+srUK6AjI
 yV+F/6UyRcEXcM6LtjIINbVTCubzVcNXTotGm1V0nHRvuXmF1skPt56oEzJHpWbtXzw9
 afrtQHB8Uoy3jeJPsS3zPzSodA8PLVFXrpuBvPZTDhT5mlCSplnjsMXFh92G92Up9X83
 l9uQ+eYbylb1jsD+HnqERb5SYHFHaZFnyfddByf0I6VqRRd7RBRSoA4TjNt68/wZUzLZ
 Mt17J6yaUiktZhIKFiKO0ovyyiDwLx7BWo8Q3yY6YjDZPo+X3j1kYPOIuOBVDVwmbEEx
 aGig==
X-Gm-Message-State: APjAAAWMJIk14zHuK1BnhnfCPYw30AGLVcc3ZXa4QD09mkJ+WCM4Pykg
 sBI5B/GUlLBfSHq3caOXmQQ=
X-Google-Smtp-Source: APXvYqzyiC0cLLXBzdvi0NlDNe67GEOoU0CKLkdTaT+S6oxWh7OVAQM1ybREoGXS2HDQdcobj1lsMg==
X-Received: by 2002:a17:906:944b:: with SMTP id
 z11mr7507866ejx.46.1570109986998; 
 Thu, 03 Oct 2019 06:39:46 -0700 (PDT)
Received: from [10.10.2.174] (bran.ispras.ru. [83.149.199.196])
 by smtp.gmail.com with ESMTPSA id y25sm255019eju.39.2019.10.03.06.39.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Oct 2019 06:39:46 -0700 (PDT)
Subject: Re: [PATCH] staging: wlan-ng: fix uninitialized variable
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20191002174103.1274-1-efremov@linux.com>
 <20191003112649.GR22609@kadam>
From: Denis Efremov <efremov@linux.com>
Message-ID: <c5b92b25-e66c-77b4-3f33-91f7002ef75e@linux.com>
Date: Thu, 3 Oct 2019 16:39:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191003112649.GR22609@kadam>
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
Reply-To: efremov@linux.com
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On 10/3/19 2:26 PM, Dan Carpenter wrote:
> On Wed, Oct 02, 2019 at 08:41:03PM +0300, Denis Efremov wrote:
>> The result variable in prism2_connect() can be used uninitialized on path
>> !channel --> ... --> is_wep --> sme->key --> sme->key_idx >= NUM_WEPKEYS.
>> This patch initializes result with 0.
>>
>> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Denis Efremov <efremov@linux.com>
>> ---
>>  drivers/staging/wlan-ng/cfg80211.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
>> index eee1998c4b18..d426905e187e 100644
>> --- a/drivers/staging/wlan-ng/cfg80211.c
>> +++ b/drivers/staging/wlan-ng/cfg80211.c
>> @@ -441,7 +441,7 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
>>  	int chan = -1;
>>  	int is_wep = (sme->crypto.cipher_group == WLAN_CIPHER_SUITE_WEP40) ||
>>  	    (sme->crypto.cipher_group == WLAN_CIPHER_SUITE_WEP104);
>> -	int result;
>> +	int result = 0;
>>  	int err = 0;
>>  
> 
> I can't see any reason why we should have both "err" and "result".
> Maybe in olden times "result" used to save positive error codes instead
> of negative error codes but now it's just negatives and zero on success.
> There is no reason for the exit label either, we could just return
> directly.
> 
> So could you redo it and get rid of "result" entirely?  Otherwise it
> just causes more bugs like this.
> 

Yes, of course. I will prepare v2.

Thanks,
Denis
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
