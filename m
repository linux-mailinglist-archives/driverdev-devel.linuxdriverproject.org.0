Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D97A44770C1
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Dec 2021 12:42:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3165940B1E;
	Thu, 16 Dec 2021 11:42:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BYxD20SqGu0p; Thu, 16 Dec 2021 11:42:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1815E40B14;
	Thu, 16 Dec 2021 11:42:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 621D41C113E
 for <devel@linuxdriverproject.org>; Thu, 16 Dec 2021 11:42:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5ECEC60FF0
 for <devel@linuxdriverproject.org>; Thu, 16 Dec 2021 11:42:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id laWKBU-vTcOb for <devel@linuxdriverproject.org>;
 Thu, 16 Dec 2021 11:42:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com
 [IPv6:2607:f8b0:4864:20::830])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE33560FEC
 for <devel@linuxdriverproject.org>; Thu, 16 Dec 2021 11:42:29 +0000 (UTC)
Received: by mail-qt1-x830.google.com with SMTP id 8so25099281qtx.5
 for <devel@linuxdriverproject.org>; Thu, 16 Dec 2021 03:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=xre5um49Rnqa1tZMCD58Cd6UlD4MleswKAp3tzt2gjo=;
 b=XAiY5JQCbKhUV3kfV68NxknTY8076aQ+jZiIG+NNSnrj8SbWsLA5ZyVis9Hv7MDsX5
 Wp1aJ8rEmDfQ1U3vhA+W5Q6fUW0sQxhqwaHiosPbQFbyYijHt4Icvm/T0vEK5/kKmBc+
 QqELCOAj0es+5TzRQyWwGBhwQGehjbOewfhMN3/S4hQw7QoR6Y3+tDzh1TbUcqm1TT9t
 NYT2/qpfB6ahTcpnyVYoBu/0br0EmuZ66fyA68h0ieuZcBkGcxPgfheRqd2GHCJMPyzP
 6QgpFUXd/uCVTtz1/hZUUGudKd9Q0ZImcSJeB1tjd8lIsCPvJkt1eKVnbTcB60Kk9v0/
 CoRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=xre5um49Rnqa1tZMCD58Cd6UlD4MleswKAp3tzt2gjo=;
 b=cqcSSo7aY7tlkXvWGprukjiYfrYUTRJHe8P+QInminUesof32iy/gId7MQ9Xb/rzbz
 u9Xu6ecx3hjIYPVEtGu6m1kX3S6fLAaBUs8qOK6hKapu5ka7e/jD5FpGP0VvS4e8ymM8
 U0uTP7kCwNKMA2nnrYxkgImkyjDnQ/PQr1lXx3AIzCuZSi1TFsW3DfI6DbzOjM2U5cTW
 oZVixQ4Ki3A0FWMy2dOmoOL0YsUoyAW+LQ7/P+YVrmS+aeUZyF+o5Fc//2wjw8gZbJ02
 vHptCMIiFSY/VorLDwsSSF34c5xu2Png1cX9sG6Wb64zBi+uDsL1S6jsCYO3XSXLD8H+
 8zPg==
X-Gm-Message-State: AOAM532nvN412+aCa6Xk5n4zbg8gbz2sBLlv2O7Upq84n4VIegnsYoHN
 BUYqO8TvfZSTf0x0OWhi+LxUMyUCCBTmGVFQ9c4=
X-Google-Smtp-Source: ABdhPJxzAaV5DauAecsJzqBWmheSvDxk3ghiLfb6YRovClVg4kL4yUlGwYUFAnV+1q8jYrfo3AT6l8iJutzsg/2jTPA=
X-Received: by 2002:a05:622a:1d4:: with SMTP id
 t20mr16497208qtw.84.1639654948506; 
 Thu, 16 Dec 2021 03:42:28 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:622a:199c:0:0:0:0 with HTTP; Thu, 16 Dec 2021 03:42:28
 -0800 (PST)
From: Selvia Santiago <mariamatinez119@gmail.com>
Date: Thu, 16 Dec 2021 11:42:28 +0000
Message-ID: <CAONDhKOtxcgjB1YEPd0RXNOVbbQ8k-9k32v_cdFxEKFzk62kJg@mail.gmail.com>
Subject: Urgent
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
Reply-To: selviasantiago1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Urgent

I am Mrs. Selvia Santiago from Abidjan, Cote D'Ivoire, I am a widow
suffering from long time illness (Cancer), there is funds I inherited
from my late loving husband Mr. Santiago Carlos, the sum of (US$2.7
Million Dollars) which he deposited in bank before his death, I need a
honest and Faithful person that can use these funds for humanity work.

I took this decision because I don't have any child that will inherit
this money and I don't want a situation where this money will be used
in an ungodly way. That is why I am taking this decision, and my
doctor has confirmed to me that I have less than two weeks to live,
having known my condition I decided to donate this fund to a charity
or individual that will utilize this money to assist the poor and the
needy in accordance to my instructions.

I want you to use 70% of this funds for orphanages, school, church,
widows, propagating the word and other humanity works,The remaining
30% should be yours for your efforts as the new beneficiary.

Please if you would be able to use these funds for humanity work
kindly reply me. As soon as I have received your response, I will give
you further directives on how you are to go about the claims of the
said funds.

Remain blessed.
Mrs Selvia Santiago.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
