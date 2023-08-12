Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD7077A056
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Aug 2023 16:09:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BDAA60A4F;
	Sat, 12 Aug 2023 14:09:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BDAA60A4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 54JnnW9aAOzg; Sat, 12 Aug 2023 14:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 509B1605A6;
	Sat, 12 Aug 2023 14:09:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 509B1605A6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 647601BF344
 for <devel@linuxdriverproject.org>; Sat, 12 Aug 2023 14:09:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D594408A4
 for <devel@linuxdriverproject.org>; Sat, 12 Aug 2023 14:09:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D594408A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W1Wyp6yl9Udm for <devel@linuxdriverproject.org>;
 Sat, 12 Aug 2023 14:09:42 +0000 (UTC)
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com
 [IPv6:2607:f8b0:4864:20::c2c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D2DE400E6
 for <devel@driverdev.osuosl.org>; Sat, 12 Aug 2023 14:09:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D2DE400E6
Received: by mail-oo1-xc2c.google.com with SMTP id
 006d021491bc7-56c96982829so2358452eaf.0
 for <devel@driverdev.osuosl.org>; Sat, 12 Aug 2023 07:09:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691849381; x=1692454181;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=HlBolVX0SyxEt/1yPYeapR1cip80+hFRjWeCz6GThUw=;
 b=JOBQPKT0UcPSeBrvELcMlx8h4X+V4tIM4hBiPuGo0SSSHeBXPMGTmtit1/FZoL74qV
 oVgKdAKayLVZCcp1YNoP6dT+h+0v8B3gogf/g22e/l/WWRyB/H2FYHqhZs1BZbVkfJQz
 vfhxyLR0Ez7SnRCkkJpJBQ4wcuvJPqSA0UEUKJIcbrYyipOQhNZrP4T9pWJJQe9OIRAp
 KtkckNUmXysflf2Llbx7i1pPR95rw4if5p8zQ+7k27Vm2r+vAAM+uU3NLLwrZZ92R09k
 xzrCfM3Q2OX48hORY/2jsbs1tWFXxfO5I1+hJMtil6mj91YsRkh2Rocx4LOO06Ugcr0n
 4UMQ==
X-Gm-Message-State: AOJu0Yy0wjikIxxT6kPt4s5yD5Pso8iap1A048TGDy/Ly6vrk2SDqpMi
 NUE533q7xgmsYTdGLp9pT3eUw2R35CdvW+6KfTs=
X-Google-Smtp-Source: AGHT+IEfSOVIOEYNW4BA2n6g24TeJ8S+0Ct0jVmOM6vZqja6eq1o/v1RdPbbXg1iMAu3fXQK+00eureN5nBtmXGM4W0=
X-Received: by 2002:a4a:d1db:0:b0:56c:e4b7:2c0d with SMTP id
 a27-20020a4ad1db000000b0056ce4b72c0dmr4680933oos.1.1691849380789; Sat, 12 Aug
 2023 07:09:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:3389:b0:135:12f6:13a3 with HTTP; Sat, 12 Aug 2023
 07:09:40 -0700 (PDT)
From: Miss Linda MARUTAR <adeosunkehinde148@gmail.com>
Date: Sat, 12 Aug 2023 07:09:40 -0700
Message-ID: <CAKp4C0BP55n1W==xp0DfeqXM9agvN8PQx9Q-Qhk26knq+bGydA@mail.gmail.com>
Subject: Welcome to Money Gram Money Transfer Send Money Worldwide office.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691849381; x=1692454181;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HlBolVX0SyxEt/1yPYeapR1cip80+hFRjWeCz6GThUw=;
 b=qwgtEr6LB7UafJg5QdJS3s5DWvZyshkjaGVRmJn4JfeBNd+cZRUiHjhqacI+FtQT19
 FQi3ehUhoqQsSsMfABmka9yDpg/vr1j0doW3mArS6y9rDhS5yZAwui3lqRH0tnZF20kN
 wHK1dd/8bVSme1oEabvQK2SXlMKUuFWeaWW9RmiLA/G9UcZp+BhKcJrZ1Y6cEjfePx2n
 4GHXNHYoRF6K13xcZLUJz846pjgz9eWpYme5uS+F/TNL7il0HxXmFd57TsFvwpUkPkDW
 ubqwEX2WLjmVSBu3wGbltskx8xNnTxzOzc61bWhS7p1ycxtgEXQjNKVGltd9CPkrDpZN
 XAJQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=qwgtEr6L
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
Reply-To: Money-Gram-Office@accountant.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ATTN: Sir /Madam,

WE THE MONEY GRAM URGENT REMITTING OFFICE HAVE SENT YOUR FULL
COMPENSATION PAYMENT OF $4.5millon TO YOU THROUGH MONEY GRAM, YOU WILL
BE RECEIVING 3,500.00USD PER DAY. NOW WE HAVE SENT THE FIRST PAYMENT
TO YOU.

SO CONTACT OUR DIRECTOR MR. MR.JAMES BENSON. AND ASK HIM TO GIVE YOU
THE MONEY GRAM PAYMENT INFORMATION SO THAT YOU CAN BE ABLE TO PICK UP
YOUR FUNDS THROUGH MONEY GRAM WITHOUT ANY PROBLEM.

HERE IS THE CONTACT INFORMATION OF MONEY GRAM
DIRECTOR GENERAL: MR.JAMES BENSON.
EMAIL ADDRESS: (Money-Gram-Office@accountant.com)
THEN CONTACT HIM WITH YOUR FULL INFORMATION.

Receiver name: __________
Country: _________________
OCCUPATION ________
Telephone number: ________

EMAIL HIM NOW SO THAT HE CAN PROVIDE THE MONEY GRAM INFORMATION TO
YOU AS URGENT AS YOU CAN.
THANKS AND GOD BLESSING "U"
Miss Linda MARUTAR.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
