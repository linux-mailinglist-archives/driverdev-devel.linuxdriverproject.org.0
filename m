Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D947646E8C
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Dec 2022 12:29:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10C8F60A8B;
	Thu,  8 Dec 2022 11:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10C8F60A8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H8CD_dAJSHg0; Thu,  8 Dec 2022 11:29:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE192605AE;
	Thu,  8 Dec 2022 11:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE192605AE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC9C61BF2A3
 for <devel@linuxdriverproject.org>; Thu,  8 Dec 2022 11:29:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A5AA840B57
 for <devel@linuxdriverproject.org>; Thu,  8 Dec 2022 11:29:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5AA840B57
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FUtl-m85sz6V for <devel@linuxdriverproject.org>;
 Thu,  8 Dec 2022 11:29:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0683E40541
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0683E40541
 for <devel@linuxdriverproject.org>; Thu,  8 Dec 2022 11:29:43 +0000 (UTC)
Received: by mail-yb1-xb42.google.com with SMTP id o127so1273844yba.5
 for <devel@linuxdriverproject.org>; Thu, 08 Dec 2022 03:29:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WZy9LTbBVdRCJ14t9/ZSqDe1D9iYdtVDYhs4abT9aHE=;
 b=7JVhDIBFx3UqiGGDnfQkuGLYTr9T8xgMaBZk+tYIrMMvImHZbZYn38HQ66svsu6ANM
 E78uZs1NMpj3u0LkhWExxDH1WHJgZ3fgFPAekb6Xxi0lLyR/Vh5lTokm1yCLZvzASw92
 fvknLGqrzWL86M5hsElAwpBVWaxDalAlVZDEtr/il90kB+rsJW4jsBWYpINp75lysGSQ
 o30Z865aMDMeUJvdvRSR2YnIxSyinIMRCOJIss1DgBhoKQZOQRj1lalkbylB0HM7mPs0
 ckQlI/qzhkEi3qLpJ0zrcmF6fruVJfv5gUq3cz3TAYMX7R47ATKdwKnKfiaBegpMDz+A
 86xw==
X-Gm-Message-State: ANoB5pkZqDn/qHo4AxEz3TPYA17+uRbwA3famzfaSzv1BGQzS3Gi+gql
 501Ov8OuxzvSltWsw3BC+tOA1Qs+/JoclBWu9Uo=
X-Google-Smtp-Source: AA0mqf6r904WaxgfYDxf1+x86Qc4fLu8Q4Q0h4qN4dzG4qDpTQiq07KhYOjXkvTOCNF1QlONwHbFq9nj4qUIG7wtOM4=
X-Received: by 2002:a25:504:0:b0:701:666f:b55a with SMTP id
 4-20020a250504000000b00701666fb55amr15096523ybf.417.1670498982900; Thu, 08
 Dec 2022 03:29:42 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:5446:b0:313:e5b7:92ad with HTTP; Thu, 8 Dec 2022
 03:29:42 -0800 (PST)
From: "Prof. Robert Jerry" <rbj30507090@gmail.com>
Date: Thu, 8 Dec 2022 03:29:42 -0800
Message-ID: <CAHn4dg=hGk2S4VGTHEqCpV5oz3BGzCd8igvHbeOH9m1Q=yef=Q@mail.gmail.com>
Subject: Very Urgent,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=WZy9LTbBVdRCJ14t9/ZSqDe1D9iYdtVDYhs4abT9aHE=;
 b=ALU5RaTsVRYZIVgkED4BOnhrwg2TE31IYD5kyV6YuKLHWEj/U1u9C5gLCdvmtJlr7z
 EevSIxZsPNh3TZHI+dJVmab7oiuLeoHe737hhXPzJtk0kL84Vcxkk64zWI+G4sVcvFeF
 2zm7SKcxNezu8CfFd8kWZ7j3q1TGeHOXhM7KV7GyVjUFGRcLRCrCs1leDtn9zLYoGoqi
 lrlnU4jmoqDtjNYnPtgj2uaHVe0i0hZO9vmOFOWu8xY664L0caTHNpWfi5/pBWnN4YSi
 IIlyP+uuP8Ca+3WkyO66IHTWmJslm0nhtHb/Kj8jUPomVipppm1yOGAZekVvyO8nSUtL
 oMKw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ALU5RaTs
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
Reply-To: mdm223664@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
I tried e-mailing you more than twice but my email bounced back
failure, Note this, soonest you receive this email revert to me before
I deliver the message it's importunate, pressing, crucial. Await your
response.

Best regards
Prof. Robert Jerry
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
