Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89919460659
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Nov 2021 14:07:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F06E4015C;
	Sun, 28 Nov 2021 13:07:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BzFn1G5TcHjQ; Sun, 28 Nov 2021 13:07:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C016D40019;
	Sun, 28 Nov 2021 13:07:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E4F671BF2CF
 for <devel@linuxdriverproject.org>; Sun, 28 Nov 2021 13:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D349C606EE
 for <devel@linuxdriverproject.org>; Sun, 28 Nov 2021 13:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VKZSg1LU3jW6 for <devel@linuxdriverproject.org>;
 Sun, 28 Nov 2021 13:07:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 322C960673
 for <devel@driverdev.osuosl.org>; Sun, 28 Nov 2021 13:07:23 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id o20so59772322eds.10
 for <devel@driverdev.osuosl.org>; Sun, 28 Nov 2021 05:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=W6HF8+a6zTsY4rv6PtkRLbmbCGOOj5493cLaXYHrusE=;
 b=WnP0Z0puYoMTR7HPpDaNWb309gQNQQpYzLcUn7B7amILMybZghH60ydb1XBvjoxSZE
 HEIoMwmryjEAgGscTIufkE6W4KO0bu7Y+8fstNM6YUII0kAoSbjBeBUniCtY/d/exBia
 06clXf1oImmnBhyb8HtURkiIhTRMbGb3WsUtWZ6W52ACHeG5+EQHFQoEmgHluthjQKub
 PcsgxD5y9hPkmUz1LcjVBp3DyEjZTqA2cqNZDqXqKkM6l1uIF2HPppxqtcg3lNEbv5Nu
 bz5xGlzA/xBl5q/XrfNnCLxFkFQVbmGyoNTmHK6IU6V/Li0oar5L8oIQw8X0qRQm8CO5
 zr7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=W6HF8+a6zTsY4rv6PtkRLbmbCGOOj5493cLaXYHrusE=;
 b=6TKdGL4Sh05tCcVBeIcORNXdjhSWSsR0qJMNPaGaA4LUdy+azAvs/ku/XQz30TuXDv
 b8qosPKLcRtgSGTw7OGXx5mXhAHfxjtj5ysUgpIlI5wZx3ocgFcnLcVvFKc9w2oqrnG9
 l9IEcnUswXyeT3YbqcW8AXoITE/DS0/rjvLTSvm/Lhaug0f9Td/xE+BWXi/yFsmdkb3R
 jvIsWfu8KZcOz+GhgouCHngXuGx5pJMYNASB1Pbko92i0J4bKDGtLTN6r2Fejl0Zp5uW
 BpzEVGeh5wyZRTeYreTD6ahXUur3JY5WayFptopsuHrv21If2/7/f+QdWwxW94BK/AFD
 q7aw==
X-Gm-Message-State: AOAM531ASPBEZR1GKLBWmuxOT9fOrel4jd4H2DT2aKysqCCK8Lo4g+6o
 rvM2f5yO43EIapaSpiJuFrsc0OTaLVFRY0k01TA=
X-Google-Smtp-Source: ABdhPJw9kqhNk0L4hRnTf+c/JP01j/4hxQaZFqcfYc+uH9V1jggROpBJyNGPX9JG2+U1b7opEJnqHekeAiska8sLlkg=
X-Received: by 2002:a17:906:4c9:: with SMTP id
 g9mr51919271eja.172.1638104841057; 
 Sun, 28 Nov 2021 05:07:21 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a54:30c5:0:0:0:0:0 with HTTP; Sun, 28 Nov 2021 05:07:20
 -0800 (PST)
From: Mrs Carlsen Monika <carlsen.monika@gmail.com>
Date: Sun, 28 Nov 2021 14:07:20 +0100
X-Google-Sender-Auth: 5Lo7yyTK_UHW5gBOWxAMqtayrFI
Message-ID: <CANWjYXiN76xmY85BDXmg+BOL1stuj3saB9MEXtZtdCT1veUapw@mail.gmail.com>
Subject: Hello
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

  I sent this mail praying it will found you in a good condition of
health,since I myself are in a very critical health condition in which
I sleep every night without knowing if I may be alive to see the next
day.I'm Mrs.Monika John Carlsen,wife of late Mr John Carlsen, a widow
suffering from long time illness. I have some funds I inherited from
my late husband,the sum of($11.000.000,eleven million dollars)my
Doctor told me recently that I have serious sickness  which is cancer
problem. What disturbs me most is my stroke sickness.Having known my
condition, I decided to donate this fund to a good person that will
utilize it the way i am going to instruct herein.I need a very honest
and God fearing person who can claim this money and use it for Charity
works,for orphanages,widows and also build schools for less privileges
that will be named after my late husband if possible and to promote
the word of God and the effort that the house of God is maintained.

I do not want a situation where this money will be used in an ungodly
manner. That's why I'm taking this decision. I'm not afraid of death
so I know where I'm going. I accept this decision because I do not
have any child who will inherit this money after I die. Please I want
your sincerely and urgent answer to know if you will be able to
execute this project, and I will give you more information on how the
fund will be transferred to your bank account. I am waiting for your
reply.

Best Regards,
Mrs.Monika John Carlsen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
