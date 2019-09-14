Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAF5B2BC8
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Sep 2019 17:15:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9077E87FF7;
	Sat, 14 Sep 2019 15:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SChim4+CuVj6; Sat, 14 Sep 2019 15:14:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E80A87E37;
	Sat, 14 Sep 2019 15:14:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3663F1BF421
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 15:14:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 32D8B85E60
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 15:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tPa-qU4xBCZn for <devel@linuxdriverproject.org>;
 Sat, 14 Sep 2019 15:14:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2E3D785E47
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 15:14:55 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id r134so24230283lff.12
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 08:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=u2Jr691WU0i7md2pkpE4rxMCd/3y9PfDz8VipZrdHZ8=;
 b=swjgOi4jIz5RzgB0fsz+9fWb28xGtSoVv7CP3TwcBmJLxCDBFlj8f54D/LN7jG3QzY
 MlQKzJl3qyTjdZ9mbtp9Ofw3YJrZMt+PJd8VYZeF3Wj8eHTE8POJG4Lq1G1TBZS5NCYI
 kAbRaF+0HlHPhcY+/34h2Q0W7ipiwDO2u9EPuUjuU7ARuQdEexY//QTAcDi8APeh1BN0
 J09TE+SvO/NAqnEPrSuZzA+OLH9s1QqAGRuLSHjvdwS3qnzVyekcWfcVNF23uPSZs72R
 pALO3FUcEARB18+wkfZRKhLeyhClMu1bfWQeAQd6dwi4zPwQd0dob0JaiM6N+WYVHDwK
 kkeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=u2Jr691WU0i7md2pkpE4rxMCd/3y9PfDz8VipZrdHZ8=;
 b=Ger0mJGgMsS6zG3vQ5wA827RLr75cGreuwVkg5dZJ+4EYEGB1DS3BiMypOE9sIHgVP
 DOix6LM1L+hkUb8z+XeU+BPmtR9imuuf8ZU6FDJOwougxPLB1QamqfWAKWlVvyaGJaP/
 c+OXBqozRzxnuSLX0ifVvqMiiFY8tAQ1ihPgGgJSqA/CqQobqqiluWut2RPZJGW8G3SY
 hC6bUG77CQrRERd+eV4fAVZHhkJ46QD5djQlx1J3hRL5YIbzbpcN7tvlJV5LhtiKGRfK
 utjn9tovoikPw9adj83DUq3a7Q0HACDtnlyizekdKV3TyQWFEGrlBeckqmAboAE/5PHC
 HW8Q==
X-Gm-Message-State: APjAAAXp118AizG31kw8pf3id3TxvXfLaw9kwlj+LZMmMueOjACGxy0e
 Ze7zLOn89EpuqE+xbA//cCs=
X-Google-Smtp-Source: APXvYqzZ3vRMZ5a9QHA5G/h1przDDlsilKdNII8W6MBk+gi7r87YY3ZTYSCJLUcFW5xs0+zhMS9QZw==
X-Received: by 2002:a19:6008:: with SMTP id u8mr30927503lfb.12.1568474092982; 
 Sat, 14 Sep 2019 08:14:52 -0700 (PDT)
Received: from [192.168.0.160] (pppoe.178-66-214-228.dynamic.avangarddsl.ru.
 [178.66.214.228])
 by smtp.gmail.com with ESMTPSA id y22sm7763898lfb.75.2019.09.14.08.14.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 14 Sep 2019 08:14:52 -0700 (PDT)
Subject: Re: [PATCH] staging: r8188eu: replace rtw_malloc() with it's
 definition
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20190908090026.2656-1-insafonov@gmail.com>
 <20190910115932.GB15977@kadam>
From: Ivan Safonov <insafonov@gmail.com>
Message-ID: <47674485-194b-0b09-81ed-5d855284ebd9@gmail.com>
Date: Sat, 14 Sep 2019 18:18:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190910115932.GB15977@kadam>
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
Cc: devel@driverdev.osuosl.org,
 =?UTF-8?Q?Florian_B=c3=bcstgens?= <flbue@gmx.de>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?B?Um9iZXJ0IFfEmWPFgmF3c2tp?= <r.weclawski@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/10/19 2:59 PM, Dan Carpenter wrote:
> On Sun, Sep 08, 2019 at 12:00:26PM +0300, Ivan Safonov wrote >> rtw_malloc prevents the use of kmemdup/kzalloc and others.
>>
>> Signed-off-by: Ivan Safonov <insafonov@gmail.com>
>> ---
>>   drivers/staging/rtl8188eu/core/rtw_ap.c        |  4 ++--
>>   drivers/staging/rtl8188eu/core/rtw_mlme_ext.c  |  2 +-
>>   .../staging/rtl8188eu/include/osdep_service.h  |  3 ---
>>   drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 18 +++++++++---------
>>   drivers/staging/rtl8188eu/os_dep/mlme_linux.c  |  2 +-
>>   .../staging/rtl8188eu/os_dep/osdep_service.c   |  7 +------
>>   6 files changed, 14 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
>> index 51a5b71f8c25..c9c57379b7a2 100644
>> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
>> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
>> @@ -104,7 +104,7 @@ static void update_BCNTIM(struct adapter *padapter)
>>   	}
>>   
>>   	if (remainder_ielen > 0) {
>> -		pbackup_remainder_ie = rtw_malloc(remainder_ielen);
>> +		pbackup_remainder_ie = kmalloc(remainder_ielen, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
>                                                                  ^^^^^^^^^^^^^
> This stuff isn't right.  It really should be checking if spinlocks are
> held or IRQs are disabled.  And the only way to do that is by auditing
> the callers.
I hope to make these changes later as separate independent patches.
This patch do only one thing - remove rtw_malloc().

> 
> (The original rtw_malloc() implementation is buggy nonsense).
> 
> regards,
> dan carpenter
> 

Ivan Safonov.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
