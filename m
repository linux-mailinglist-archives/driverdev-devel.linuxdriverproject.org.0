Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D40471227
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Dec 2021 07:36:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC0B561CD9;
	Sat, 11 Dec 2021 06:36:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AUbNKO2Bt4yu; Sat, 11 Dec 2021 06:36:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B29161CD8;
	Sat, 11 Dec 2021 06:36:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 938821BF59C
 for <devel@linuxdriverproject.org>; Sat, 11 Dec 2021 06:35:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8828B42345
 for <devel@linuxdriverproject.org>; Sat, 11 Dec 2021 06:35:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fHaJ416fmkxx for <devel@linuxdriverproject.org>;
 Sat, 11 Dec 2021 06:35:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com
 [IPv6:2607:f8b0:4864:20::131])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9551642336
 for <devel@driverdev.osuosl.org>; Sat, 11 Dec 2021 06:35:51 +0000 (UTC)
Received: by mail-il1-x131.google.com with SMTP id w1so10300985ilh.9
 for <devel@driverdev.osuosl.org>; Fri, 10 Dec 2021 22:35:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=6xn6BSUl+IdjW+H/giCX7pSvwxF5eHxk0xJeZzdwk94=;
 b=f8uV+v1V1Rng5EuOozBMq7JLrkPw4ScDSCCiBpuScV5HPHP8LizeDDtWKSjoicVObl
 P8mW+fEgefSwRCMdTatZztjbiHJk3+C1p9St0Devu7kbxNDy2F4ARQGBum9mDt4H43IA
 eDZgLPCkTF0g4TGh1ErpFi2ms5Rac7tjknXJUy4N4KhpEBBi77j0CBkSS41mHY1TdOX3
 yVwgp1qCRatzQcTGoleSpKg09RYIXlMEdODoo6viu2zHOkv9C4CysKbxBfNGmjtQmpKd
 PhG7Ps6yOnIJbRoxRVvKRrmthI9vTDJlCWuggPnJN0of1fYsGV+YL+Tg3jvGoQvzYlNG
 y0mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=6xn6BSUl+IdjW+H/giCX7pSvwxF5eHxk0xJeZzdwk94=;
 b=B6N+wEq9KIta9CdI3KqCQ1R4PclA2KF3baOsYtopSFj2objuTFg3jZN+cQLf/EzrbN
 GQ0qdL8cPCHdXvnvxJMvW5pwUAO/NMtyVtyDfQSM1wl4Ni8gaDXBz1fF23sctl+paIS3
 nvZ7+K7NHRbfqD6zYAttit2Vak4m0cPlbpWjG6ctiyZDPmuUJHCokQe1Q8HoBPL6SGWM
 2o2pYAg+a2J1rUZ7tJBVpBwXDEhaz8eZlgMhnob4FHBaSLvRDNQFpBctKcAJnhUNX6Fo
 hJ9JsyGVC08Xo7KsZTKXxOTK7LC2cxliRhoQBwmxRQ8X5g4iUhvTbjeIzo5AMYNXUltC
 2ijQ==
X-Gm-Message-State: AOAM532TNZJoLK23+/lURKgVoLYpoBPGh0F+EYDGRPSnRcnQ7bj8g+cG
 etsUVshlhwhJLm/CRoJjEFhW1m/x9QrjC6LHpAY=
X-Google-Smtp-Source: ABdhPJx9tFJg+aQdxX8A6QA0Rg7OicLc+nCCBttRTgTGrTQX3/b8IAYdGD8Myh+3iYaDPqQDOrTrSnUCMIzN06nqWAI=
X-Received: by 2002:a05:6e02:1988:: with SMTP id
 g8mr23813816ilf.260.1639204550677; 
 Fri, 10 Dec 2021 22:35:50 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a5d:8d90:0:0:0:0:0 with HTTP; Fri, 10 Dec 2021 22:35:50
 -0800 (PST)
From: mrs Wang <unitedbank122@gmail.com>
Date: Sat, 11 Dec 2021 06:35:50 +0000
Message-ID: <CAEyDaOZugsv3Ldm7ycA3wD+=NEKdLwY+upQEH__ZnhMKvodrqw@mail.gmail.com>
Subject: peace be upon you
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
Reply-To: mrsyanwang053@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Peace be upon you.

My name is  mrs YanWang,i have a deal of

6.5 million United State Dollars to transfer

into your account,if you are interested get

back to me for more details.

please kindly reply to my personal

email.[MrsYanWang053@gmail.com]

Looking forward for your reply.

may peace be upon you,

Best Regard

mrsyan Wang.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
