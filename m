Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CBB1FFBB7
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 21:22:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 990B289765;
	Thu, 18 Jun 2020 19:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bFR9SBm7zV8r; Thu, 18 Jun 2020 19:22:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1566689746;
	Thu, 18 Jun 2020 19:22:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A3EC1BF2C7
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 19:22:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 57596896F4
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 19:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aTCquWZ3pID8 for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 19:22:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A47C4896D7
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 19:22:14 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id t9so8394373ioj.13
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 12:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=ldZEk6GZkwUuy2Js9SWtf3nbeJAEXnm6tR2ZTKBqXvg=;
 b=X5wCS8iWPXScZ7voWidP3rCOPp/TzZH7Jc5nnhVynvAaIB6a1lVTDMcP3xAdMYRpHi
 C/FAUyJ2C2yCd12+dkIqCyf+DuBPzlvxbTSDNQ3FO/5U01n13oVbeLRXrtUeMoV1I/RH
 cK0ibb5GZLzsrOzU/fHqPq5fpUBFNVHXa2HoHcUP0Dxtnh0VfV45Cm/t+OAEln6HMnik
 czgdB8/ftbdb5xtvRzLqovpk41IpRnvv/o9sFfPy0tgbhn9ZmXxdv6bSSlT7m6kvpjCQ
 Cu7cG/2pLPF0C0VXXVwsoMQ57oG2Ds7YqKIB0rATalvnD3P6Odx5UcGlsTIshJBe5Pyq
 c7LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=ldZEk6GZkwUuy2Js9SWtf3nbeJAEXnm6tR2ZTKBqXvg=;
 b=NAD/p2gGAvwCk60bECeXEaugtjujCBmkBkGcvzHybEkV4cBzlG5+oHe0O0WGc4I0wP
 y35eqUKT3ALm+093I9CHNvcD22DiqJIiJCRHYaT15qvLWcRWt/pmgMneDnOWq2aDDiQo
 f3BGl0fFIaErFVqEVakR6LVb1EqJyaZ4ezpIsYxtVtOKKqv0v+wvb/aMkpjzl09nXjNN
 lng2nKCn3JU+2T+xdY5iy5D8/V+667b+x2u1DMVK2lJLLhXra6k8oAS452/1Ng6qaIKZ
 mt93uDmk4ho1yGT4yV+MtEdLoGyslULiJFAkCdLtpls4ByhR3b7kOH8izGltjHQC3tr5
 TKQg==
X-Gm-Message-State: AOAM5337gekI0bMptBawJVs5O00EbPJB/UVOOMdlLwaprX7y/B2TLL60
 5nxSg+kQSERlK6EZdUm1JVUF6ea6anadbsU/rTo=
X-Google-Smtp-Source: ABdhPJxdlfSQVSi84luEC+cTVqJ8OTZ2FQN1EQAduuzMqO21n2IKlzb2rkzqPa9PF4aXNR48uzaU3DeIbus3gQhJmFg=
X-Received: by 2002:a05:6638:975:: with SMTP id o21mr97711jaj.99.1592508133920; 
 Thu, 18 Jun 2020 12:22:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:44f:0:0:0:0:0 with HTTP;
 Thu, 18 Jun 2020 12:22:13 -0700 (PDT)
From: Mrs Kim Hong Yeoh <mrs.kimhongyeoh55@gmail.com>
Date: Thu, 18 Jun 2020 19:22:13 +0000
X-Google-Sender-Auth: M_i0_pYZRdcSGI-tA8fLz0vJacU
Message-ID: <CAPAVGmyfKEffQbcG2FGzspO3_eCb02k6pH-p3GLYwQBecVGP0w@mail.gmail.com>
Subject: MAY THE PEACE OF GOD BE UPON YOU
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings Beloved in Christ,

I had previously sent you an email with no feedback from you.I suppose
it went to your junk folder.I anticipate that you read this mail
quickly and let me know your opinion or willingness on this classified
information that I will release to you.  therefore I would not want to
jeopardize this opportunity to Save lives of Less Privileged ones and
also change our financial status and give Less Privileged a secured
future.

I am Mrs. Kim Hong Yeoh, Working at MAYBANK (Malaysia) as the
Non-Independent Non-Executive Director and Chairman of Maybank. During
our last banking Audits we discovered an abandoned account belongs to
one of our Foreign Deceased Customer, Late Mr. Wang Jian, The
Co-founder and Co-chairman of HNA Group, a Chinese conglomerate with
significant real estate ownerships across the U.S., died in an
accident while on a business trip in France on Tuesday.

Please go through this link:
https://observer.com/2018/07/wang-jian-hna-founder-dies-tragic-fall/

I am writing to request your assistance in transferring the sum of
$17.000.000.00 (Seventeen Million United States Dollars) into your
account as the Late Mr. Wang Jian Foreign Business Partner, which I am
planning to use the fund to invest for public benefit as follows;

1. Establish An Orphanage Home To Help The Orphanages Children.
2. Build A Hospital To Help The Poor.
3. Build A Nursing Home For Elderly People Need Care & Meal.

Meanwhile, before I contacted you I have done personal investigation
in locating any of Late Mr. Wang Jian relatives who knows about the
account, but I came out unsuccessful. However, I took this decision to
use this fund in supporting the Orphanages Children, Less Privileged
and Elderly People Need Care & Meal Support, because i don't want this
fund to be transfer into our Government Treasury Account as unclaimed
fund as the law of my country abiding.

As an officer of the Bank I cannot be directly connected to this
money, so this is why I have to contact you for us to work so that you
can assist to claim/receive this money into your bank account for us
start a charity project, Meanwhile you will have 40% of the total fund
and 60% for charity project, Note there are practically no risk
involved, it will be bank to bank transfer, all I need from you is to
stand and claim $17. Million without any problem with the information
am going to provide to you.


Please for the sake of god accept this offer to work with me and let
us save lives of those Orphanages Children, Less Privileged and
Elderly People Need Care, I will appreciate it very much. As soon as I
receive your kind response, I will give you details on how we can
achieve it successfully i will explain more on how the fund will be
transfer to you.

Waiting for your urgent response now.
best regards
Mrs. Kim Hong Yeoh.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
