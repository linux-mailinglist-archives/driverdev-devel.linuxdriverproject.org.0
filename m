Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D365366A88
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Apr 2021 14:13:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E61940E63;
	Wed, 21 Apr 2021 12:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C5M3PCnHpSvH; Wed, 21 Apr 2021 12:13:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 689CC40E54;
	Wed, 21 Apr 2021 12:13:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42A341BF479
 for <devel@linuxdriverproject.org>; Wed, 21 Apr 2021 12:13:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3DCED403A9
 for <devel@linuxdriverproject.org>; Wed, 21 Apr 2021 12:13:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x_-3UFaxFF9k for <devel@linuxdriverproject.org>;
 Wed, 21 Apr 2021 12:13:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com
 [IPv6:2607:f8b0:4864:20::a44])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 600BE40282
 for <devel@linuxdriverproject.org>; Wed, 21 Apr 2021 12:13:28 +0000 (UTC)
Received: by mail-vk1-xa44.google.com with SMTP id a11so2659044vkl.0
 for <devel@linuxdriverproject.org>; Wed, 21 Apr 2021 05:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=n3eH8fc7c63400pMFay9v4NYcLZ+o0vJKsl88V8S4Zg=;
 b=UQnwX56NwBi+XbBHKYsiR2R0ZmO2X3f/syTONnN0m8hy8CxhFWUcw9etrpJhcHRlAK
 aIEfIMJRh2NRuIAtCWU7152IEn//E+tfNmIS1qYBknGE518NUAL6gaQFfnhyJlTHW38f
 t8FoWaDpC/+0zqs+HAy5vRb1MWGuX+ydYelxsIQhSfIqb7aYUgkbV8F0ba56FP26TgBg
 6TVXrYvH6NMRkwib26ofZFEnwPLK9vTfZIHAttvivh9Cj4x8brEcUYXpm5SU2qlAA1AZ
 mC1+lKSoB/2pe6qnjx063DA7KFEmt36spJLLJ/8ufNIvOLxy/KK0xDj6BzDbsXyd2wRd
 pAxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=n3eH8fc7c63400pMFay9v4NYcLZ+o0vJKsl88V8S4Zg=;
 b=IfJceF1w5FRiGL4H+AuTNUpxXKmmQIjOqLVz96Dl1A1/z4/FgYyGx2z+5VkcNWUuJ3
 RLCVj0uVVupA+B+53SRXZUO98iAe+yO5UbO0e1TlZ4pgTuA9I7GKAZEfr87d48kXM0fB
 3BxtG8BNPab6yYeWagB8IY+4VP4wpWaQI2lc+/bbkekPF3+m+JCXLQUXT5MB9inzA7Z6
 WfxDE5rdeU91duwwUe/fa0XUjRWCA0Vnvg3sNv1ftT3GYgc5xsBreAXXC+GEZmomm4AZ
 z+ShlbpmVt5raq+uty1R4omO1P86x9VglzmBaeyNogNNvrbcdzIU+HvsSR7xuQScMobE
 S99Q==
X-Gm-Message-State: AOAM532fI/syYoHftrE/9tM2XVF8sxwzaqJt4nmfsJVAEFkyyX1yqPVE
 KEcO+PHp75mz5TS1xFlM9kgQIisyh2k+h+9f1oo=
X-Google-Smtp-Source: ABdhPJz9zm3PlJIpEqcoljdooSf7BaFaqANacYjgjoZox/m+ymOhrpR6RD/NqkSou86WyhUx3IAJS/741giQ1WOMAzo=
X-Received: by 2002:a1f:2e07:: with SMTP id u7mr15331071vku.22.1619007206915; 
 Wed, 21 Apr 2021 05:13:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a67:3381:0:0:0:0:0 with HTTP; Wed, 21 Apr 2021 05:13:26
 -0700 (PDT)
From: Mark Jackson <bettiejacksonforeal987@gmail.com>
Date: Wed, 21 Apr 2021 05:13:26 -0700
Message-ID: <CAAhV=fy=GruNyqBkM3oeZCcYkT3Rt-XGoUOcxrs3a2-LRr=wwQ@mail.gmail.com>
Subject: Your ATM CARD For Compensation
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

My Dear Friend

This letter is to acknowledge the substantial contributions of time and
energy you have made in trying to assist to claim the fund through
your account, despite that it failed us because of your inability to
continue financing the transaction.

Besides I'm happy to inform you that I have succeeded in transferring
the fund out of my home Country with the help of a new partner from
Tuvalu.

I am now in Tuvalu for investment and Tuvalu is composed of 9 coral
atolls along a 360 mile chain in Polynesia. They gained independence
in 1978 the former Ellice Islands.

Therefore in appreciation of your earlier assistance, I have decided to
compensate you with the sum of $850.000.00 USD which I raised in ATM
CARD on your favour.

This fund I have given to you has been deposited with a bank which has
already opened an account and issued to you ATM CARD worth
US$850.000.00 (Eight Hundred and Fifty Thousand United States Dollars)
The ATM CARD is withdrawable from any ATM Machine in the world.

So feel free and contact my Personal assistance (PA) in Benin
Republic, his name is Mr.Stephen Pena

Address: Carre 1299, Ste Rita City
Cotonou,Benin Republic

Email: ( spenaneoris@gmail.com )

and instruct him to send the ATM CARD to you.

Please do let me know immediately you receive it.

Regards,
Mr.Mark Jackson
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
