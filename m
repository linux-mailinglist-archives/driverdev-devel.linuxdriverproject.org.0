Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011CE345A76
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 10:11:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6599A40383;
	Tue, 23 Mar 2021 09:11:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0SLZNo5lPTvh; Tue, 23 Mar 2021 09:11:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1AE840371;
	Tue, 23 Mar 2021 09:11:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 779311BF2AE
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 09:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64CD040484
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 09:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZVER2urWLEmM for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 09:11:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com
 [IPv6:2607:f8b0:4864:20::834])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 73F874047F
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 09:11:39 +0000 (UTC)
Received: by mail-qt1-x834.google.com with SMTP id f12so14411470qtq.4
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 02:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=TD1jWUXH5hue+PJvMMdqj/dwcVhvU6Zy0rXQBMLL5pk=;
 b=PyNvyTsRuDrcC0p8/dDgxQSeSWEiom7Bdj3QkFYrgrniJ2SeFB158sv9eKFCLOU/RH
 rtdMm5mEns1vga1P6ktdUkAUu3WmtuB4N/xiQs6ErVWx3xMLaak5PpuZNBd3r3fH50f5
 HqYLz8T6KzkIy2+s83HuiiHnetpYg8kfqE6WULawqTS3GVMShJJ7WRTUShvQJRZAqJEF
 AWJUVUxCVs0wI+Nht/34buJUWWmcgWNkf4KImPrQuAu72GkEI1LSZuTkHlbnBBOejN9X
 t1+7jbKtq55k/qG+9StfJldrYHm9vw0AI5c24C9e5pT3BTp8u/KOAMKsphBuE9N6vBiN
 tHmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=TD1jWUXH5hue+PJvMMdqj/dwcVhvU6Zy0rXQBMLL5pk=;
 b=gQcsv8qMlJvouQtnwQ+trekekfR2Cdf8VYgYjAkMkijZrs6sEIRwOKTh14ppkU4KtV
 QuP0LTNaRxUWnYkadeeLx+cIX6MS5NZyat6F6VLVg9V+p0Vf1rB9vqC4BFh7djEVUNW9
 hZK90IDcdgg2HkhFDOWmX1OR5Uy/OLLFc9k3sX8CbbmIdf4FOw5es1RzWLvCshIgds+M
 aXw3vMbOltplqR4vUO4HYGu4g54wPZx5+yYIqHggRyFcMdcD+h2QFOT/1iFK4+b0dF2T
 YKvijkrbXck/fsNF5QQFBqLQD09jpSHfyjETCVvQkzNY4DaXjsaZoeehHffDsCH35RLf
 yiXQ==
X-Gm-Message-State: AOAM530WsGhkOzol3dFIddgymbZBR5NDfXUIot/8FkzNVhctIfH+xy4N
 kWBTDgPAo2REpVPf9P8Pk3E=
X-Google-Smtp-Source: ABdhPJwUdDdpzM+G/sYPcFc7ckQIb7IDjRaZ1N5ALmvbdDCmi7fSfisF5EdAjMHLtrWTI1+R6dpd5g==
X-Received: by 2002:ac8:702:: with SMTP id g2mr3516727qth.215.1616490698377;
 Tue, 23 Mar 2021 02:11:38 -0700 (PDT)
Received: from ArchLinux ([143.244.44.229])
 by smtp.gmail.com with ESMTPSA id u11sm10225800qta.91.2021.03.23.02.11.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 02:11:37 -0700 (PDT)
Date: Tue, 23 Mar 2021 14:41:24 +0530
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: rtl8723bs: Trivial typo fix
Message-ID: <YFmwvBcwN4ZpNAVX@ArchLinux>
Mail-Followup-To: Bhaskar Chowdhury <unixbhaskar@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>, ross.schm.dev@gmail.com,
 yanaijie@huawei.com, matthew.v.deangelis@gmail.com,
 amarjargal16@gmail.com, izabela.bakollari@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20210323010835.4061779-1-unixbhaskar@gmail.com>
 <YFmvWzGZ0hHJbx6d@kroah.com>
MIME-Version: 1.0
In-Reply-To: <YFmvWzGZ0hHJbx6d@kroah.com>
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
Cc: devel@driverdev.osuosl.org, izabela.bakollari@gmail.com,
 yanaijie@huawei.com, linux-kernel@vger.kernel.org,
 matthew.v.deangelis@gmail.com, amarjargal16@gmail.com
Content-Type: multipart/mixed; boundary="===============3735731447422909928=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3735731447422909928==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="STznAHK0HTkLK/SI"
Content-Disposition: inline


--STznAHK0HTkLK/SI
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

On 10:05 Tue 23 Mar 2021, Greg KH wrote:
>On Tue, Mar 23, 2021 at 06:38:35AM +0530, Bhaskar Chowdhury wrote:
>>
>> s/netowrk/network/
>>
>> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
>> ---
>>  drivers/staging/rtl8723bs/core/rtw_mlme.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
>> index 2c9425e2a1e9..3888d3984ec0 100644
>> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
>> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
>> @@ -599,7 +599,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
>>  		}
>>
>>  		if (rtw_roam_flags(adapter)) {
>> -			/* TODO: don't  select netowrk in the same ess as oldest if it's new enough*/
>> +			/* TODO: don't  select network in the same ess as oldest if it's new enough*/
>
>Any reason you did not remove the two spaces at the same time?
>
It skips my attention.Apologies.

>thanks,
>
>greg k-h

--STznAHK0HTkLK/SI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEnwF+nWawchZUPOuwsjqdtxFLKRUFAmBZsLAACgkQsjqdtxFL
KRVlRAf9GKDqoB9Kc68xSjPR5JTQbf5bfB4sKYZuZ6xQtO+gJQ+8nuzTJcmltity
tGIPR4gVk7jOQi6Y+NfzxlX2k4eeeAPHRFjjtKy+92Upt0wh74AJ74nQBf3f4X33
4EevSmLmQ+umxHFZjh8C4kj520u4l76a2j+xrIfDEjk4hiXtlLsoIiN56Jn6n8x4
BwHSMq1KScJ9U+qIro0CoPgVPkP2cXZpl6P/NqG5qW4n3/UJGEGljkhFMfYDzmA4
pssHL3e4wum6OUTkzh3i5p6ufjCs4M8wPXYIpobpMS4NebsbFZMRqLTYtpOv85OR
dsWmJdq5o+TYYhSGeDSxFQh/StC+Cg==
=wJra
-----END PGP SIGNATURE-----

--STznAHK0HTkLK/SI--

--===============3735731447422909928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3735731447422909928==--
