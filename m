Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13234C2328
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Sep 2019 16:25:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 723C5864DA;
	Mon, 30 Sep 2019 14:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jz7ai84-THpS; Mon, 30 Sep 2019 14:25:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDCAA86447;
	Mon, 30 Sep 2019 14:25:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC7EF1BF4E3
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 14:25:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A959820390
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 14:25:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NM2ZYgpm1Xcc for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 14:25:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 96F9A20104
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 14:25:46 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id h33so8799097edh.12
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 07:25:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=OpLZCxVJpBgsNbMjEaZfq3+E0DlE1NH8zVCBJHO9OVs=;
 b=F73HPcz1uucw1+KnKNlluKdu27aW0sqhvR64FYGAzDNKd1ne2QvtOx2yMFUfAuQv1M
 7edb3MmtTHktSzl3AcUuXud3nJR0nrghYtIUzJI1bDip1hoUQfExwmjiPxmIuaErzqEK
 Xtbh6yiuQkbvZ4eFeVhfufjW9QYMc6kvmw6qD1n9Lbo7HKawKVlkxmvguNf1Nd8UuvJf
 AFi/yeyN5JoCZTdXf7C3k7Age5zC6JCFb8e6TYmoy+UGLUsntw5bfHv5hJ+RT1WkUYwD
 tnTlmQzipwRyWwkVj52NXmIjWwQmEZ3GT5wzjy6Z1TUbMlRq0RBx1avVzBgiFTFFuzC/
 b4yw==
X-Gm-Message-State: APjAAAXod11P8DWD210NbcIPE9uV1fEqwTgA/Bhriw/GcriTZziY+HvB
 aNZIKjGDjPAHGpRLHcfEeu1rvNgp
X-Google-Smtp-Source: APXvYqwpxhHy2gun3EIxWoTehrjW4QdbA9X0fp1k2JMKaG57RiLYZFUHvA44EtXZdKvFBSaSgKIdEQ==
X-Received: by 2002:a50:9e26:: with SMTP id z35mr19911245ede.265.1569853545116; 
 Mon, 30 Sep 2019 07:25:45 -0700 (PDT)
Received: from [10.10.2.174] (bran.ispras.ru. [83.149.199.196])
 by smtp.gmail.com with ESMTPSA id rl4sm1390000ejb.27.2019.09.30.07.25.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Sep 2019 07:25:44 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
To: David Laight <David.Laight@ACULAB.COM>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
References: <20190930110141.29271-1-efremov@linux.com>
 <37b195b700394e95aa8329afc9f60431@AcuMS.aculab.com>
From: Denis Efremov <efremov@linux.com>
Message-ID: <e4051dcb-10dc-ff17-ec0b-6f51dccdb5bf@linux.com>
Date: Mon, 30 Sep 2019 17:25:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <37b195b700394e95aa8329afc9f60431@AcuMS.aculab.com>
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
Cc: Jes Sorensen <jes.sorensen@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>,
 Dmitry Vyukov <dvyukov@google.com>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/30/19 4:18 PM, David Laight wrote:
> From: Denis Efremov
>> Sent: 30 September 2019 12:02
>> memcpy() in phy_ConfigBBWithParaFile() and PHY_ConfigRFWithParaFile() is
>> called with "src == NULL && len == 0". This is an undefined behavior.
> 
> I'm pretty certain it is well defined (to do nothing).

Well, technically you are right. However, UBSAN warns about passing NULL
to memcpy and from the formal point of view this is an undefined behavior [1].
There were a discussion [2] about interesting implication of assuming that
memcpy with 0 size and NULL pointer is fine. This could result in that compiler
assume that pointer is not NULL. However, this is not the case here since
this "if then" branch is a dead code in it's current form. I just find this
piece of code very funny regarding this patch [3].

[1] https://stackoverflow.com/questions/5243012/is-it-guaranteed-to-be-safe-to-perform-memcpy0-0-0
[2] https://groups.google.com/forum/#!msg/syzkaller-netbsd-bugs/8B4CIKN0Xz8/wRvIUWxiAgAJ
[3] https://github.com/torvalds/linux/commit/8f884e76cae65af65c6bec759a17cb0527c54a15#diff-a476c238511f9374c2f1b947fdaffbbcL2339

> 
>> Moreover this if pre-condition "pBufLen && (*pBufLen == 0) && !pBuf"
>> is constantly false because it is a nested if in the else brach, i.e.,
>> "if (cond) { ... } else { if (cond) {...} }". This patch alters the
>> if condition to check "pBufLen && pBuf" pointers are not NULL.
>>
> ...
>> ---
>> Not tested. I don't have the hardware. The fix is based on my guess.
>>
>>  drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
>> index 6539bee9b5ba..0902dc3c1825 100644
>> --- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
>> +++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
>> @@ -2320,7 +2320,7 @@ int phy_ConfigBBWithParaFile(
>>  			}
>>  		}
>>  	} else {
>> -		if (pBufLen && (*pBufLen == 0) && !pBuf) {
>> +		if (pBufLen && pBuf) {
>>  			memcpy(pHalData->para_file_buf, pBuf, *pBufLen);
> 
> The existing code is clearly garbage.
> It only ever does memcpy(tgt, NULL, 0).
> 
> Under the assumption that the code has been tested the copy clearly isn't needed at all
> and can be deleted completely!
> 
> OTOH if the code hasn't been tested maybe the entire source file should be removed :-)
> 
> 	David
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
