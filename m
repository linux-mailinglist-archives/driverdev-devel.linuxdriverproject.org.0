Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0958BC248B
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Sep 2019 17:40:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B62DE88193;
	Mon, 30 Sep 2019 15:40:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id REkTRhG0-to1; Mon, 30 Sep 2019 15:40:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2BB1D8786C;
	Mon, 30 Sep 2019 15:40:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CFF681BF5A0
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 15:40:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E886D20412
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 15:40:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T9W0QQYz9t-b for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 15:40:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by silver.osuosl.org (Postfix) with ESMTPS id ABB562002A
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 15:40:37 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id l21so9067062edr.5
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 08:40:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=l0yUcGu9MFmSuUJVKJXvSt9KSqYrsEKkvHYxaWpAOwY=;
 b=KSxDaLMPHkq4Bu6qF8Pz+E638S2X3uAsUMvA54nxl+JRqty8AuvV5advBK8blMS88H
 bnpwEqOBL71Z2ZK9gIjTl1SetYmMx6hG4cW2tEdK/hWxCcyuRmsBjjzEXUj41fQwbtnQ
 H0FtzSrXYC30mfZxBfVUkuPXvm8ceMmIPq9EYa9I7WBwnOGD8xJqcp7mGY5WyE5A0NZR
 Ma55/jRUempWfpV9Lm19BUZGJWS4P5lfT4WSFRlchXZ1I+QCMA/4cMgn2zvzQwQH0GyN
 8Fgb6lMbwCOXfQJmQhIVHg0eANFCyRGPPbyU9tFIFFPksvXmh7yeKH6MsiG5jv8qOGgo
 hAYg==
X-Gm-Message-State: APjAAAWEaZ37ORSl9ubaomJoq+jf6A2k1+iapcsYpj7GVJort5IRTVY3
 4H0hFFC3p1N1GL5HBJvPuYA=
X-Google-Smtp-Source: APXvYqyGk9jEUdaFH3KevIMNskTk1I0chh4w+dn+1QHkHkE06xOO0cPwtJ0brhNDj0onn++FITIqDg==
X-Received: by 2002:a50:f09d:: with SMTP id v29mr20047749edl.4.1569858036234; 
 Mon, 30 Sep 2019 08:40:36 -0700 (PDT)
Received: from [10.10.2.174] (bran.ispras.ru. [83.149.199.196])
 by smtp.gmail.com with ESMTPSA id j5sm2513357edj.62.2019.09.30.08.40.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Sep 2019 08:40:35 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
To: David Laight <David.Laight@ACULAB.COM>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
References: <20190930110141.29271-1-efremov@linux.com>
 <37b195b700394e95aa8329afc9f60431@AcuMS.aculab.com>
From: Denis Efremov <efremov@linux.com>
Message-ID: <b3a92ac3-b097-3359-8729-ad353fac2a0d@linux.com>
Date: Mon, 30 Sep 2019 18:40:34 +0300
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

Initially I also thought that this is just a dead code and it could be simply removed. However, if
we look at it more carefully, this if condition looks like a copy-paste error:

if (pBufLen && (*pBufLen == 0) && !pBuf) {
	// get proper len
	// allocate pBuf
	...
	memcpy(pBuf, pHalData->para_file_buf, rlen);
	...
} else {
	if (pBufLen && (*pBufLen == 0) && !pBuf) { // <== condition in patch
		memcpy(pHalData->para_file_buf, pBuf, *pBufLen);
		rtStatus = _SUCCESS;
	} else
		DBG_871X("%s(): Critical Error !!!\n", __func__);
}

Thus, I think it will be incorrect to delete the second memcpy.

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
