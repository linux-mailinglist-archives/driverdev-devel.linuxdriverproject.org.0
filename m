Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EBB1824E0
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 23:29:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 693D5228B4;
	Wed, 11 Mar 2020 22:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J92mp4NkINZg; Wed, 11 Mar 2020 22:29:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1D0D8221FB;
	Wed, 11 Mar 2020 22:29:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 558031BF488
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 22:29:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D70785E6E
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 22:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ee4GePL6DPKM for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 22:28:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B082685DEC
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 22:28:59 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 2so2143443pfg.12
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 15:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:user-agent:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:from:message-id;
 bh=OK2jvg8iIbxudu6ND4J8JJtzzocg+9lZtyCUh0iqcfs=;
 b=cNjnMmC5+csrT7n7xkH0NSj4vC7lV5+mQsK86AkZsmXEL8Ddsi1g9QpZqX0U58NqwU
 l1FldLSUdDzYy4r/dsZw502g/jEVxZDXMGCGyOSz6Ynye0NVU6V9bUM5D0nGDY5nx89t
 IU7PTinO4JYfVw9DBNKRCkXzJpoqHKN1XImHX0JH294EkDNNpXFY6lxCJ9r3QvyhyP7m
 skJzw12CpiJEcqgJDNIqP2j3gJbtuBCL6oxOj7j+y8g1FqYtb8rbp/Ebk+yRcq+Vfnsa
 COCA92W6WcakTBHakyj02K5Mflnv/qSf6FffeFsJ1gcEhDOf2r9zSRGCdtxSey/g6XCY
 nXwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:user-agent:in-reply-to:references
 :mime-version:content-transfer-encoding:subject:to:from:message-id;
 bh=OK2jvg8iIbxudu6ND4J8JJtzzocg+9lZtyCUh0iqcfs=;
 b=iwnMuq00AfkuH6mPmvOkZhNzIdbbH4626U/dyWSe7KY7MINifVVtEtTRasaKrUw6vv
 QUYydExFwggOLAYjY6EIeYU1Ojm4q0luOOJIuifXSiTqEycpKn+Nm4zRLHaDQlRiDE6i
 nC8UlpGJpQuOfWogsWj+NhhpBLAPYKIj8X0SBgYj3fki5vbswpuBhw5fYH7HXObsRQcD
 pUI2DPZKSZwghoJPcg/2ipd/krgoJCYFZbnxaMD2My3R5ShDvu93eGDDecHQrzVxcQ+F
 rzscrdbycGTNmh1iVazESvGrgOaQ5KeAr2uLL00Ck5Hkwyi034qhg1hgsH1cLzJ+lmlN
 BUeQ==
X-Gm-Message-State: ANhLgQ0Wj7mSNZnu+WyeJNkrfoKwOhsKt0iCmYzj6fS2cMev/vAdTH1R
 rizOog8lVXbTGuSWzEylIso=
X-Google-Smtp-Source: ADFU+vtuQMMY52HPjZDuDX/2pzncUdQNWBbjslUBN7mA7FVQOPHA0VUEQXQ2n4V1ilOYcStsF3BG6A==
X-Received: by 2002:a62:e20e:: with SMTP id a14mr4963341pfi.138.1583965739153; 
 Wed, 11 Mar 2020 15:28:59 -0700 (PDT)
Received: from [192.168.0.100] ([113.193.33.106])
 by smtp.gmail.com with ESMTPSA id z1sm641860pfa.16.2020.03.11.15.28.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Mar 2020 15:28:58 -0700 (PDT)
Date: Thu, 12 Mar 2020 03:58:55 +0530
User-Agent: K-9 Mail for Android
In-Reply-To: <0fed25f914c6f39b024dd3bbc4f11892c40f4a60.camel@perches.com>
References: <20200311133811.2246-1-shreeya.patel23498@gmail.com>
 <0fed25f914c6f39b024dd3bbc4f11892c40f4a60.camel@perches.com>
MIME-Version: 1.0
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: sdio_halinit:
 Remove unnecessary conditions
To: Joe Perches <joe@perches.com>, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, sbrivio@redhat.com, daniel.baluta@gmail.com,
 nramas@linux.microsoft.com, hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Message-ID: <1CF27D55-EEB4-4A75-B767-A30845BD5E1B@gmail.com>
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

Hey Joe,

On March 11, 2020 10:56:29 PM GMT+05:30, Joe Perches <joe@perches.com> wrote:
>On Wed, 2020-03-11 at 19:08 +0530, Shreeya Patel wrote:
>> Remove if and else conditions since both are leading to the
>> initialization of "valueDMATimeout" and "valueDMAPageCount" with
>> the same value.
>
>You might consider removing the
>	/* Timeout value is calculated by 34 / (2^n) */
>comment entirely as it doesn't make much sense.
>

You want me to remove the other comments as well?
Since Julia suggested in another email that the comments are not useful if we are removing the condition since they were applied to only one branch ( i.e. "if" branch )


Thanks

>For what N is "(34 / (2 ^ N))" = 6 ?
>
>> diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
>b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
>[]
>> @@ -551,18 +551,11 @@ static void HalRxAggr8723BSdio(struct adapter
>*padapter)
>>  
>>  	pregistrypriv = &padapter->registrypriv;
>>  
>> -	if (pregistrypriv->wifi_spec) {
>> -		/*  2010.04.27 hpfan */
>> -		/*  Adjust RxAggrTimeout to close to zero disable RxAggr,
>suggested by designer */
>> -		/*  Timeout value is calculated by 34 / (2^n) */
>> -		valueDMATimeout = 0x06;
>> -		valueDMAPageCount = 0x06;
>> -	} else {
>> -		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
>> -		/*  TX/RX Balance */
>> -		valueDMATimeout = 0x06;
>> -		valueDMAPageCount = 0x06;
>> -	}
>> +	/*  2010.04.27 hpfan */
>> +	/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested
>by designer */
>> +	/*  Timeout value is calculated by 34 / (2^n) */
>> +	valueDMATimeout = 0x06;
>> +	valueDMAPageCount = 0x06;

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
