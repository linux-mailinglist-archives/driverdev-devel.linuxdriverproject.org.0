Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E711DA25D
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 May 2020 22:16:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0A1F022170;
	Tue, 19 May 2020 20:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o6DQFvUJLNbd; Tue, 19 May 2020 20:16:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5C48F227AD;
	Tue, 19 May 2020 20:16:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 927E61BF5F4
 for <devel@linuxdriverproject.org>; Tue, 19 May 2020 20:16:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 89775880ED
 for <devel@linuxdriverproject.org>; Tue, 19 May 2020 20:16:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WfwqwdDeyTD1 for <devel@linuxdriverproject.org>;
 Tue, 19 May 2020 20:16:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8887E86E88
 for <devel@driverdev.osuosl.org>; Tue, 19 May 2020 20:16:34 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id x20so461192ejb.11
 for <devel@driverdev.osuosl.org>; Tue, 19 May 2020 13:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=INNWQgEJELQngwwhy6eg/obm2/GktGgLWdTQhfY0CV8=;
 b=ncT46C2CCIlRlD9oKb8qTENHsiQHsETpfNsQLv3RtXvjIeAxdCk6CIwanXVgLvhVmf
 UbVJf4QTPRtDtsmr2ZYJZJVNwLbCZcoTE2ClRKeA4XYAL0Hbldy1Yk0ULHGy4f7bJqdU
 8JJtusgbljBVrJcYdWHr3ESGTfWMQmLTg+BgRD4JJD/AuA9Oh0ZLGvTvscikn0DPU7Lf
 aYTDD9W/c/APP3NolF4BguFu66frbEpVuXzJiOZIqi6qpfhVkV5Vs8RUDHj26OvRn6Ul
 +x8FfcjNTObfBXwUT1IdvmqReLcBeSXrgATCdlTc7AmlfmVEOxBe9SG3VzcRBMh7+pC+
 gzEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=INNWQgEJELQngwwhy6eg/obm2/GktGgLWdTQhfY0CV8=;
 b=ZyCOMI6mCAyy3WHTyMmIbuuoFvqFugmHHapTTJEsmm4ZPTInPFfLKhrrZyrZdeAELQ
 DRk0z0AslJc2hxU2UdTOsL0zM2YKHrdZ5GVk1d1Zyo3Gk4MQB7yS0Jd/C5AOROIQZnqP
 oApDQGjCzx8nia0PHXuesVVcK3VPDNHmm7lU33ShxqyvtTQwjxgTyZG9VK+5/Ew0iAZp
 RZApRZW1eQg8wBtRlsHeSIb2SmYPmuj13Kqjo9P58H6dimEUhC7X/RQ1G0UywOzyBYZQ
 4Eek9IWxmCr7WXsrEwZjnYEa51o2hIaJldNV6uvT3KTmKjvNSOc8AVYATIyJXrSs9RsJ
 ZQrA==
X-Gm-Message-State: AOAM530u2KY/7K9ubkbxYMr4ZmfaCGrr/d/9Cqqdb8l3MnsuBsvdPuhK
 EZHH9WeC1ISmcw4dDjVAWTV90u0vGKuIqT45c7o=
X-Google-Smtp-Source: ABdhPJxZXd9ovEa8xgwJjYQOv7+XsSSRfqBIU4qYRoVhJZNVHVMvhjVRaYW/U9OaxX/2bdpiVxlfy6B7W6op/ci8VNQ=
X-Received: by 2002:a17:906:ece4:: with SMTP id
 qt4mr870528ejb.162.1589919392959; 
 Tue, 19 May 2020 13:16:32 -0700 (PDT)
MIME-Version: 1.0
References: <bcefba5b-107c-716b-bb60-5b4b2476894b@o2online.de>
 <CAFBinCD8-tr97GCVhBi5R1nzxLhy=_6VuLY8ubUO1SDTFjiELw@mail.gmail.com>
 <22af498b-44a0-ced3-86f3-114427a73910@o2online.de>
 <CAFBinCCGAkhPCwOW=mAvsV2qdixq8Gf8yQw1gYErHpz7KmuAZg@mail.gmail.com>
 <5de6db87-a71f-d14c-390d-b0caeab5d650@o2online.de>
 <CAFBinCDB9c2uMRXO9DKSX4hC7EBgnRfBa+BM5-VdEPZeieKn_w@mail.gmail.com>
 <813dfc08-f13a-dcac-0bd9-821d188bba08@o2online.de>
 <CAFBinCCgZF5Pu944q-_+V0yQ-nc6q82xDjJHjsnj6=uOQL+DEw@mail.gmail.com>
 <8cbbf90c-54ba-8fa3-3386-022c9c997a20@o2online.de>
 <CAFBinCBukGbzgO-Y1dCRYXZHhX2PcSEQQ_XvhHqLcnw0fGDP8w@mail.gmail.com>
 <a95f5fe1-4376-f872-961a-c2237c36811c@o2online.de>
 <CAFBinCCgFtv=u4ZKW3rdoDPZ_jh3jU03MDxHoDk=pbi+4pxB_w@mail.gmail.com>
 <c244b34f-8958-0cbd-38e6-a786aef56e7c@o2online.de>
In-Reply-To: <c244b34f-8958-0cbd-38e6-a786aef56e7c@o2online.de>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 19 May 2020 22:16:22 +0200
Message-ID: <CAFBinCDvwy7xCYdJzRHV0ACJ=CF+A5efD-WpPvyE62gfUribUw@mail.gmail.com>
Subject: Re: RTL8723BS driver doesn't work for,me but I can help testing
To: Tobias Baumann <017623705678@o2online.de>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Tobias,

On Tue, May 19, 2020 at 8:21 AM Tobias Baumann <017623705678@o2online.de> wrote:
>
> good morning
>
> i got the new image from oleg(balbes150) 20200518 RC5  and some more
> feedback
>
> with my patch and oleg RC5 hotstart(shutdown now)  do not work with my
> box ( wlan goes back to sleep mode always)
I'm not sure what you mean here.
if you run "shutdown now" then the system does not shut down and only
wifi goes to sleep mode?

> with my patch chance  1 of 5 till 1 of 3 that my wlan is up and not
> sleep from cold start
>
> with oleg chance 1 of 2 till 1of 3 from cold start that wlan is up  .
> (maybe because of phandle order?)
>
> i thing there is maybe a timming problem between  wlan dis , sdio  data
> and  host wake up wlan .
the power sequence driver supports the following two properties, see [0]:
- post-power-on-delay-ms
- power-off-delay-us

Those are not set, meaning no delay is applied.
For reference, these are the delays which are used on the Endless Mini
(which also has a RTL8723BS module): [1]
Do you know more about these delays (whether they are needed and how
long they are supposed to be)?

> it could be that GPIOAO_6 is the host wake up wlan ? is it possible to
> change the activation order for the gpio pins by change it in dts ?
please check my previous mails. I think that GPIOX_21 is the wifi host
wakeup pin because it is marked as "input" on the 3.10 kernel.
you can change the order of the GPIOs inside the sdio_pwrseq node, but
all GPIOs are managed together (meaning there's virtually no delay
between enabling the first and the second one).
I am not sure if using an MMC power sequence is the right thing to do,
because the card is detected for me regardless of whether GPIOX_11 is
HIGH or LOW. The RTL8723BS driver currently does not manage any GPIOs.


Martin


[0] https://github.com/torvalds/linux/blob/c477ebe21fabe0010a2ed324ce3a1762c757d867/Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.txt
[1] https://github.com/endlessm/linux-meson/blob/4c76999c5c707fba9c390466efca093c3befa908/drivers/amlogic/wifi/wifi_dt.c#L153
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
