Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD6248E08A
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jan 2022 23:43:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 264B96FB7E;
	Thu, 13 Jan 2022 22:43:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G3UdDyHBgxEu; Thu, 13 Jan 2022 22:43:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 914F160A91;
	Thu, 13 Jan 2022 22:43:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F0941BF476
 for <devel@linuxdriverproject.org>; Thu, 13 Jan 2022 22:43:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2AD4D4164E
 for <devel@linuxdriverproject.org>; Thu, 13 Jan 2022 22:43:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kvh75foBe17I for <devel@linuxdriverproject.org>;
 Thu, 13 Jan 2022 22:43:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com
 [IPv6:2607:f8b0:4864:20::544])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA548414C1
 for <devel@driverdev.osuosl.org>; Thu, 13 Jan 2022 22:43:06 +0000 (UTC)
Received: by mail-pg1-x544.google.com with SMTP id f8so1167922pgf.8
 for <devel@driverdev.osuosl.org>; Thu, 13 Jan 2022 14:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=YbEI3Q/NEjCtDTVCV1jkA7nYNYBH/Wfa2wk3IkVyJko=;
 b=jEdbi3g5rG8VBJFcbi+jVr5GHBmnFDB+4j3C7NEaOIWN99ezPINYRJXxrbAhVnBhge
 dTpRF4xCpq81hKJrhOiAkcWRRND4S/7atZrdyiVJnnA5AzuZTsSiJr1kgHblvGkE1gwK
 FMZzx1ti807ZU17uY1icDZgcPuhTPsy/nklfcTR6Rmu3Q28LEDVPpja+OmbQBB2AhNBT
 lxpH5225wSwX08Uxq8d4/0aPDqg3bxF9U/DsjaLHbTweXlfnWFP+o9DoP7jvpoaOUS4T
 UKgM8uhwPN1i+awhGT+Q43NXiYPaIDsDsE5S4YDHus0ZTEIsGKHL1gDuI9V6LbSLq5df
 Tyeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=YbEI3Q/NEjCtDTVCV1jkA7nYNYBH/Wfa2wk3IkVyJko=;
 b=g1BdAXeFGuv21dsm4BjgG3jaxqeWCG54E3EsYYa3Uv/Bk7QVTn6kh8VBYX8rAzAdez
 JR5oG3Rx0JwB5ksKduvNDLsgxYjExS4XJdpp5IlP2l31Nwfo7bOc8JnG55JzM5xRQdjD
 uSBFzs3ZZziLWS7XpaUoTGktRTpMCEfvuno/GHGn1heKyt5HYIGXTcDEzDfT4rO9kQAR
 r5U32DEmTl1zhxb/xOJtfdBdjQugPv8YFVuf89D4XsuheYk0b6T65qTnhQpmLI3xsNYa
 dzP+0+o8Ts8/X1O/38auwLnxcnPe5o2xK9J9lfkMwHXuUmLeB71q689agb06ACaD8irE
 5U5g==
X-Gm-Message-State: AOAM532HThRDwFUXJ9B1HcqxxfTykDOg6PxrxwsAuOgMRUjHbMXzKJCp
 T2dT9fQRDjyYWDKvKKDA4L98Uvs/GhtTJBjRjR4=
X-Google-Smtp-Source: ABdhPJzC1p2sRakG86QBjYrD+ATpOAvgqOL5hbzTs+MqEbm/iqT+eGzetJ0l2s9sX0BO+JsRtp3+IqhI81k4s3/jEEs=
X-Received: by 2002:a05:6a00:2391:b0:4a2:cb64:2c97 with SMTP id
 f17-20020a056a00239100b004a2cb642c97mr6270162pfc.36.1642113786143; Thu, 13
 Jan 2022 14:43:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:f38c:0:0:0:0 with HTTP; Thu, 13 Jan 2022 14:43:05
 -0800 (PST)
From: Marcus Galois <marcus.galois@gmail.com>
Date: Thu, 13 Jan 2022 23:43:05 +0100
Message-ID: <CANqBaXVyTFcov3oJmiL7YzhLMerdrb2yC8QizOG6MOyH4KVVvw@mail.gmail.com>
Subject: Good News Finally.
To: undisclosed-recipients:;
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
Reply-To: mchristophdaniel@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello friend.

You might find it so difficult to remember me, though it is indeed a
very long time, I am much delighted to contact you again after a long
period of time, I remember you despite circumstances that made things
not worked out as we projected then. I want to inform you that the
transaction we're doing together then finally worked out and I decided
to contact you and to let you know because of your tremendous effort
to make things work out then.

Meanwhile I must inform you that I'm presently in Caribbean Island for
numerous business negotiation with some partners. with my sincere
heart i have decided to compensate you with USD$900,000 for your
dedication then on our transaction, you tried so much that period and
I appreciated your effort. I wrote a cheque/check on your name, as
soon as you receive it, you let me know.

Contact my secretary now on his email: mchristophdaniel@gmail.com
Name: Mr. Christoph Daniel

You are to forward to him your Name........ Address.......,Phone
number......for shipment/dispatch of the cheque/Check to you

Regards,
Mr. Marcus Galois
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
