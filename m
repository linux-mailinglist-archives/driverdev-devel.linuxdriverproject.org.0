Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 177B243C872
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Oct 2021 13:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BD1D80CC9;
	Wed, 27 Oct 2021 11:21:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dKoF1db4zpSC; Wed, 27 Oct 2021 11:21:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B95EC80C8E;
	Wed, 27 Oct 2021 11:21:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45D971BF9C2
 for <devel@linuxdriverproject.org>; Wed, 27 Oct 2021 11:21:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34F85607D8
 for <devel@linuxdriverproject.org>; Wed, 27 Oct 2021 11:21:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id noNbOebIXzTg for <devel@linuxdriverproject.org>;
 Wed, 27 Oct 2021 11:21:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A02A9607B5
 for <devel@driverdev.osuosl.org>; Wed, 27 Oct 2021 11:21:33 +0000 (UTC)
Received: by mail-yb1-xb42.google.com with SMTP id t127so5341191ybf.13
 for <devel@driverdev.osuosl.org>; Wed, 27 Oct 2021 04:21:33 -0700 (PDT)
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
 b=vt2XOPigktxqT1ve5aziKqyOsdZ1MntdXpx68serj8GO8n6hYlHjRUlQIByQLWr+If
 A+pChYCTpT6AkV+xIuaakptHAWOwTWpN+YsIUWBcmUpGtTeW8Fx0vksmH7AvayOEdp4F
 5ryosq1AGgYCmCy9G/HwSgPdF9Gmm889FUS6lmrdZWN5WoZaWRIQV4iHpRK+dewiM5Hv
 THD03yUBB5IyP87cyY+o04e1H/r8vEjXN/0TD2/O4z5IOb0tDvMwDlfvKF+bfq2IrLy8
 MVtwX0+9O7FDS219LBtPjEt+nvHMPpzYt69et3zjtk/1xd/7LPZbD3p7Aad+2wig5Hh9
 an6A==
X-Gm-Message-State: AOAM531i0m9/9aH0Sut9pxHVSOLg4ifY4x2TXK4T/tAjDCOm7YrcZK+P
 8bsOIVwpezW/wsdvVebgQXJbbyxWL+jThgYBvlA=
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
