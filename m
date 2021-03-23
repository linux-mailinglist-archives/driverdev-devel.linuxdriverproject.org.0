Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD573456FB
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 05:49:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BC574045C;
	Tue, 23 Mar 2021 04:49:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V4iSSy_XJBAP; Tue, 23 Mar 2021 04:49:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40FEC4027B;
	Tue, 23 Mar 2021 04:49:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BBC91BF324
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 04:48:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A79860661
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 04:48:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GB0-VI7thr_G for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 04:48:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com
 [IPv6:2607:f8b0:4864:20::f2b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 85547605A2
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 04:48:56 +0000 (UTC)
Received: by mail-qv1-xf2b.google.com with SMTP id g8so9883273qvx.1
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 21:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=8o4w3qvGY4wX+/J7guXd6pbU7uRScmOE2FBMsZ1kUOo=;
 b=KWJs/3rpjKokr24+2+rEAutt7PhwLMsqwfrBLewOIjE9Dx9JuAvzk0wH/F1lt615mp
 pFg+Jn3x4XlfyaJ48tLm5PrKcGhRLmTgwCZpfjxMmh1rz7FM6aQq5G8NWNF11F2UrSeB
 rsM4TmW8a0Y+ZdV9TcdGEwik6oJi3O4ebaHisqfm72YxLHvsOarVJzvGmRuGGXFyA+0q
 zlxTxfxSYXapy6ySdk+/Wk5CX9WsyO8Bcc20V63/w05RSk08Nwmreu4qFYbLLIpyuCKL
 S0O3nZNe8DOCNZzMJzRXO9ff+lrChx/0EteYESGK3AFa6e4SwFmRa64vMk1QIeKGWfU0
 ErrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=8o4w3qvGY4wX+/J7guXd6pbU7uRScmOE2FBMsZ1kUOo=;
 b=XNR7XFlPOBASeLvRzvagchgrdg0EJnNUu7pEsOGKgRyvCnNfwRIcshH38Gri87BcDF
 1uMREP/gSZy9rnblxJBGGtygavdvxAPVH3PCIDPOHyXqsZGFxibl+ityz3t88TkC3mhh
 b9humM/zS2rNceJewRv02b6IleNXEVPMLLd/goV/6FmwdRakf1ajUb9Yy9xwHbrI1E5d
 f55tqkKk6T1GzbB6SXvMJzUcZSCsJpU3+DqHjgL/xQwOg/vgjNXKcv87dS0z8Qs09Dtw
 nQOFha6WDDfMNb88EZPQ4zm2d7T7p8DuS64leKUHDjXQ++EdaC2iFTShtf76tZ5wRFyS
 6uiQ==
X-Gm-Message-State: AOAM5335nff25cBSOPsD0JW5/duOMqNB9vzyM/pDzdm3I3namSAb/Vfb
 AFuS/qbpbauGu3n/N4V27z4=
X-Google-Smtp-Source: ABdhPJy+Lui8GtXG1HUpy8iHpBLLve2dzRGvc2AtjtdKGldvBIpiU8cV4VdRqbzxaYjCKY7cWzcDHg==
X-Received: by 2002:ad4:56e1:: with SMTP id cr1mr3020837qvb.25.1616474935325; 
 Mon, 22 Mar 2021 21:48:55 -0700 (PDT)
Received: from ArchLinux ([156.146.54.208])
 by smtp.gmail.com with ESMTPSA id y1sm12380688qki.9.2021.03.22.21.48.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 21:48:54 -0700 (PDT)
Date: Tue, 23 Mar 2021 10:18:41 +0530
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH] staging: wimax: Mundane typo fixes
Message-ID: <YFlzKap5VsILZG+P@ArchLinux>
Mail-Followup-To: Bhaskar Chowdhury <unixbhaskar@gmail.com>,
 Randy Dunlap <rdunlap@infradead.org>, gregkh@linuxfoundation.org,
 colin.king@canonical.com, davem@davemloft.net, lee.jones@linaro.org,
 arnd@arndb.de, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20210323010607.3918516-1-unixbhaskar@gmail.com>
 <36821877-7a6c-9a15-4e94-cb657ef29dad@infradead.org>
MIME-Version: 1.0
In-Reply-To: <36821877-7a6c-9a15-4e94-cb657ef29dad@infradead.org>
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, colin.king@canonical.com, lee.jones@linaro.org,
 davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============4486665420627427749=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4486665420627427749==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fV3FxdRXDNWSw7XV"
Content-Disposition: inline


--fV3FxdRXDNWSw7XV
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

On 21:14 Mon 22 Mar 2021, Randy Dunlap wrote:
>On 3/22/21 6:06 PM, Bhaskar Chowdhury wrote:
>>
>> s/procesing/processing/
>> s/comunication/communication/
>>
>> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
>
>drivers/staging/wimax/ is in the process of being deleted.
>
Yes ...I saw the mail day or two back ...skipped my mind ...anyway we can
ignore this.
>> ---
>>  drivers/staging/wimax/i2400m/driver.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/wimax/i2400m/driver.c b/drivers/staging/wimax/i2400m/driver.c
>> index f5186458bb3d..162a92682977 100644
>> --- a/drivers/staging/wimax/i2400m/driver.c
>> +++ b/drivers/staging/wimax/i2400m/driver.c
>
>
>--
>~Randy
>

--fV3FxdRXDNWSw7XV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEnwF+nWawchZUPOuwsjqdtxFLKRUFAmBZcyUACgkQsjqdtxFL
KRWv6Qf+NZyfQE34E3YqU/2plOy1xbmrT//aurhwcCVfxGjK6daNggG42HjsMnXs
tZad38De4zGZZttW+0HxF2K7r6dsOL0n+aBcu5L81zsfOQFkqcav5Vm5/GBsE7sY
4mnvD/a2NFRcaQEviM0rUxKKiK6aDDQyZVMqZC5f9z8yXHkMDwLVrJrfp6My63YY
EooWkA6OSqquVqOmcLtQWy01q4hcqMSI6ENsecYfedjwbUP9OwNkTYxa2pI42ton
4yD9wIlaTs7cFQUku8FHBQhnl1EpA6xBO7DWbR0P1XLCcSywwlUAfZCy6Vh5RFCf
m/eXN/cyUyhfYDlMMJhsL6dWOvAqyg==
=ccl5
-----END PGP SIGNATURE-----

--fV3FxdRXDNWSw7XV--

--===============4486665420627427749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4486665420627427749==--
