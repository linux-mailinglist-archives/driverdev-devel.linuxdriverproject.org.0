Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE3743C870
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Oct 2021 13:21:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2046E4025D;
	Wed, 27 Oct 2021 11:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UAvzrYrIX0go; Wed, 27 Oct 2021 11:21:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F14540222;
	Wed, 27 Oct 2021 11:21:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FA421BF359
 for <devel@linuxdriverproject.org>; Wed, 27 Oct 2021 11:21:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2EB1E40222
 for <devel@linuxdriverproject.org>; Wed, 27 Oct 2021 11:21:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4WV1nsGIk6WH for <devel@linuxdriverproject.org>;
 Wed, 27 Oct 2021 11:21:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com
 [IPv6:2607:f8b0:4864:20::b43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A237F401FD
 for <devel@linuxdriverproject.org>; Wed, 27 Oct 2021 11:21:33 +0000 (UTC)
Received: by mail-yb1-xb43.google.com with SMTP id t127so5341190ybf.13
 for <devel@linuxdriverproject.org>; Wed, 27 Oct 2021 04:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=gbhxMvAYGbSqfpcSxn09gxeDfjPDxDoohtl7lweoc/0=;
 b=R+xiNshMlQ/8WpvZqMbGHqNEHkHCtoNNDfIYXaLw8tLLppGHlXtfz7sbPjPSsyLUfI
 dLXVrb6nGF7L8tPWSTG6wPXKB9PhEDi/3u7vugx3ZOlUE4k2FWkTrL0K8YvA5ner5/mK
 QSYhun+aTBT+iobbg24M2T1+kl/XFQk90/cJ7YomIQiLTN1wQ3oF+azR3SGmGNt8Tp2p
 hkVwbqjmorRWcSn8lwGTIlKad63p7TQtkpI+q/kdOxOhhpCHKSZhDfEzTm1j2dkw9veG
 3BMcG53f54jiCyOxplDG6UIlvhVfiaZmsTiJJDk7nOpV09sWXGqGzzjA1YqPYYlbiNd7
 2t4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=gbhxMvAYGbSqfpcSxn09gxeDfjPDxDoohtl7lweoc/0=;
 b=VjjrwX9OrerYVDdIhDYxyBYRgVugaDSRK9z26ShYo2wcz3DPCvmpRWCIVtI0j6FLMu
 RUHqMK2xq6/Mof7DxorT4NeiN0nTIgQEX141s8Q9yd+sYA9oKLgd4wsPHhKjSLOoqXQT
 eL2GDQhOC1vlkoVQOgYwpSagBUlKPDIEp4Z7Y71cYm7gCKNvkTzGN/Z+9sFOfeI1Cn/O
 JW5Dg/xaQtJJ6qDzZ0mcue43cqgUFNacijzRyUnQ4UG6BuCZNHfm1Qj1F5vUn+8/ZfEm
 VnQJ8kUBek66DGnUkuX8MQUcCOaMh6YElv+NcZezExy5vPUjwU8vEQ3MMEeP+ybjcEdd
 c9gw==
X-Gm-Message-State: AOAM532ijg+8UugkZLqNX9senTNQN/fHX3fSDSHdug+6ULx89IU3Lmby
 UT2xVtBzJe1W/IJzw+pUMjXuYZtohC5EkPB79vY=
X-Google-Smtp-Source: ABdhPJx0oELEjmlmOGyX46NvxgFfT349sxY+/gtgC0hYzgtB8aXtTNlZ3KQsm5DXXNu/xI5ADNANwaHcj/CRG7e3tUQ=
X-Received: by 2002:a25:2395:: with SMTP id j143mr3413040ybj.283.1635333692315; 
 Wed, 27 Oct 2021 04:21:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:3d95:b0:145:d0f1:ca17 with HTTP; Wed, 27 Oct 2021
 04:21:31 -0700 (PDT)
From: Abdulwali Alhashmi <victorjohnson202@gmail.com>
Date: Wed, 27 Oct 2021 04:21:31 -0700
Message-ID: <CAAY7gEup6-9yVm-oppiYS=f=9f+Y4Q-GOkON6_8u2NrKhJ-FaQ@mail.gmail.com>
Subject: CAN I TRUST YOU
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
Reply-To: aabdulwalialhashmi@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Greetings,

Firstly, I apologize for encroaching into your privacy in this manner
as it may seem unethical though it is a matter of great importance.

I am Abdulwali Alhashmi, I work with Cayman National Bank (Cayman Islands).

I am contacting you because my status would not permit me to do this
alone as it is concerning our customer and an investment placed under
our bank's management over 5 years ago.

I have a proposal I would love to discuss with you which will be very
beneficial to both of us. It's regarding my late client who has a huge
deposit with my bank.

He is from your country and shares the same last name with you.

I want to seek your consent to present you as the next of kin to my
late client who died and left a huge deposit with my bank.

I would respectfully request that you keep the contents of this mail
confidential and respect the integrity of the information you come by
as a result of this mail.

Please kindly get back to me for more details if I can TRUST YOU.{
aabdulwalialhashmi@gmail.com }

Regards
Abdulwali Alhashmi
Treasury and Deposit Management,
Cayman National Bank Cayman Islands.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
