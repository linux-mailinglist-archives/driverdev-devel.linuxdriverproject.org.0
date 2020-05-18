Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD6A1D895E
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 May 2020 22:37:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 587CD221D2;
	Mon, 18 May 2020 20:37:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bHpROYUE4ClB; Mon, 18 May 2020 20:37:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 24AD2220DD;
	Mon, 18 May 2020 20:37:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0BBD1BF37F
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 20:37:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9D48D8614E
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 20:37:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6g0mW8glzHIT for <devel@linuxdriverproject.org>;
 Mon, 18 May 2020 20:37:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BB7F486199
 for <devel@driverdev.osuosl.org>; Mon, 18 May 2020 20:37:17 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id l25so4999357edj.4
 for <devel@driverdev.osuosl.org>; Mon, 18 May 2020 13:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=07U9JgzItnQ21O3cGWVkQXvBXHI4OBd4+wXXui3XRR0=;
 b=Z1AP4zi61x3wo9PxT/phHkmzA3EL3TiC2l4ce5QYnRI+gNaIBCtZsusW5TnU2XKX8k
 u4dN0vnaZyFrVTywHk/jJGtJbXwUO6MtJzW2sDNSukwbQMetMsYIOSyW63CCr1qRhuHr
 PbKaHJb4k4yJIM8bIrmaSl4NodDBLaiz9tMyihW0DJN9l0pg802XJdP8mm3EllBmK0fD
 g4KLJY4jEtoaezDx1LWVKEYWU7xXWMp01XJGicRTj2vG+YCCJRA9ITE/VNAgg+mYYW8z
 0CwP+Gyp0DfGvUZP/SE0X3uYsznT0nE0bv4XTXqMdAeh4WQ3iqzaD0XLulU/wWdkmWQz
 H0ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=07U9JgzItnQ21O3cGWVkQXvBXHI4OBd4+wXXui3XRR0=;
 b=K0zChYQWBpogHYXFLDnv13CzBE3ygaUH7SM+lSfZHuyNBR5qxrAA3GEw5N5SzrB7d3
 HubZMI97AoHtmiN62iyS0ZUCcKcSa9k8qHh5jN0pszdyHPMKiK1y7HTNZ9QR72ojK+cW
 sclGpMQGCZwX/g2uhWRhPeRtw2u5D9hacz2X+HrpAH1Nl1bxV/4F45N6TaL3/nbzPR+3
 eOdAMI1tptkOJOcAsx2y3YLPgXdvd6DQmaPWqrk2HvpY6UGuTNMdZA5p6RklLD26pe9o
 x7WJw2Nqm0j6QvwO+TbOHvVW7fYrOayJigBBQ2hwfWLhwbImsBWRQGUJP17uXKCrOz3p
 AweA==
X-Gm-Message-State: AOAM532jBwJtvDnmNB/U+IFE2XRcXIbmn5o3Ux0r4gMgjftYEYT8vYa4
 KhF7aiqzqcwRObuVM1xuxbBLVi1fRcFLIQQGsXw=
X-Google-Smtp-Source: ABdhPJy5JXiayrpQcj/jHe174FGQYD6A3Gu5IvH/UisH5NSWucd/M4A20R9xxjUK69lv7FRQy5b2OYjITsgwLhYY8YA=
X-Received: by 2002:a50:a985:: with SMTP id n5mr15258638edc.338.1589834235965; 
 Mon, 18 May 2020 13:37:15 -0700 (PDT)
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
In-Reply-To: <a95f5fe1-4376-f872-961a-c2237c36811c@o2online.de>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 18 May 2020 22:37:05 +0200
Message-ID: <CAFBinCCgFtv=u4ZKW3rdoDPZ_jh3jU03MDxHoDk=pbi+4pxB_w@mail.gmail.com>
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

On Mon, May 18, 2020 at 7:59 AM Tobias Baumann <017623705678@o2online.de> wrote:
>
> hi martin
>
> i activate your patch ; wlan works ;  also with only  edit GPIOX_11 wlan
> works
>
> its now GPIO-402 out high ACTIVE_LOW  ( 3.3V on pin12)
great, thank you for doing the research!

did you find out if GPIOAO_6 is needed at all?
the 3.10 kernel enables it and sets it to HIGH. my understanding is
that you didn't change this one so the output is still LOW.
so I'm wondering if it is needed at all (I wouldn't be surprised if it
was not needed, these 3.10 kernel .dts files seem to be copy&pasted
from various vendors and do not necessarily reflect the actual
hardware setup inside the box)

> i also attached the performance infos  Wlan0->Router and RAM->SDHC
that's pretty good, great to see that it works fine for you :-)


Martin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
