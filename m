Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D265A29D1
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Aug 2022 16:43:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CC8F41016;
	Fri, 26 Aug 2022 14:43:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CC8F41016
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qi-UmsXM-2zh; Fri, 26 Aug 2022 14:43:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B9A4640FE4;
	Fri, 26 Aug 2022 14:43:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9A4640FE4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C66A1BF284
 for <devel@linuxdriverproject.org>; Fri, 26 Aug 2022 14:43:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6178961122
 for <devel@linuxdriverproject.org>; Fri, 26 Aug 2022 14:43:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6178961122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IHXh63HIaVdg for <devel@linuxdriverproject.org>;
 Fri, 26 Aug 2022 14:43:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA1036111E
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com
 [IPv6:2607:f8b0:4864:20::834])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA1036111E
 for <devel@driverdev.osuosl.org>; Fri, 26 Aug 2022 14:43:01 +0000 (UTC)
Received: by mail-qt1-x834.google.com with SMTP id j17so1361104qtp.12
 for <devel@driverdev.osuosl.org>; Fri, 26 Aug 2022 07:43:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:sender:mime-version
 :x-gm-message-state:from:to:cc;
 bh=kTnWqPCQ7JZ842fbaIQWezAeKboDsupaMXi3CH+q7qQ=;
 b=wvM30e63vUJEi0MFg9tuAo+1YCdZ1A3c0cwg46UE/g5odxKe/I3uWEa8L0uzTNiUCE
 F0DlFzSpVbiqS7O5UviDIZWwRnA2PRSh0KgkAEPwjQmwM/At/ZmV4Iqz+YGEu3e+i9eS
 765aKJVgJp9KWCGP7aJDCOJSHjSx/Sr4pnYaZ+/o3040GNuDJZ48Sqv9wANdrXLe2Zs4
 LaBuU7vbWDcK9RO4Jm3JBNw0TySOx51hCcnPbB5elnkc0cvUzYa4mTZAcTbP/VABzwU3
 nARWlkRuEnIW3/BbTtfII5AdS97Fn2AQ8Baxcm3nWaRDySZm3fhoZeK4vvSu9gSFRauv
 mhLg==
X-Gm-Message-State: ACgBeo3mwXcHbkHm9B5E3VZDVrU+bebT4qWNJ//a/Xq58HIAbfVCQTHh
 Ozxhy5h3cT6RUVjDiqOv9j8l7rnuMRJxkMiiTow=
X-Google-Smtp-Source: AA6agR7lOKxjh+ThZe08tEaUJTHLb0NYs9MVH5uJI/AydwR5HeVRwBtkzmXQGJ7fFMDCCyjhfaRJ3+5zagk/9bC4jyI=
X-Received: by 2002:ac8:5f4f:0:b0:344:b3a1:4bb4 with SMTP id
 y15-20020ac85f4f000000b00344b3a14bb4mr7929996qta.139.1661524980659; Fri, 26
 Aug 2022 07:43:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:7ec:0:0:0:0 with HTTP; Fri, 26 Aug 2022 07:43:00
 -0700 (PDT)
From: Al muharraq group <al.muharraqgrp@gmail.com>
Date: Fri, 26 Aug 2022 15:43:00 +0100
X-Google-Sender-Auth: rkS8_AskRhEiKWH5thQITcp41Qk
Message-ID: <CAJyQtkMCbmws8Xde=6YzqjmyL7a=7+=m0CMZ-D1NJeEkgVu7TQ@mail.gmail.com>
Subject: Re: Al-Muharraq Project funding
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:sender:mime-version:from:to:cc;
 bh=kTnWqPCQ7JZ842fbaIQWezAeKboDsupaMXi3CH+q7qQ=;
 b=Gz5GUtM6XKnbcbJYe9m2fo372C5WN/HGoP1+ZL9t7Vc3t5IdeBim9cpEDk0u0fbdD2
 Ib+8bHn7pdveBms3deDfXuelAv8+bGmaSfP1g/kBjGkt+0HcxpGBkp9aKtQm0Bm4PBCG
 MBh/0f69BjrKsQ/AjDZ+LZIc4er6vFD6Up+Zb+KljhC4r2otLZCMvyTtoI3SApYK6Dks
 o73wxSNQOdv2WxURPSPSj/04ZyX/WrNyrwEIb+s9g0lpzzlbcTd2hAUo/r0TtbIWbYXH
 5IWVdio90ZV0Gy93e0NDrDAtPB/Sckuz2AaJYT2lpjEnLADHIc3RB0k1wsoGfLy3Iato
 FGUA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Gz5GUtM6
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

-- 
Greetings from Al-Muharraq Group Ltd.

I have contacted you to consult you for a funding resolution for your business.

My Name is Saif Yusuf. Do you have projects that require funding? We
facilitate the funding needs of private project owners around the
world covering infrastructure, housing, real estate development, IT
parks, industrial parks, film studios, food parks, agricultural
projects, health & wellness, hospitality, education, electronics &
telecommunication, power & electricity and oil and gas sectors.

If you have any queries regarding funding please revert back to me and
find the solution to your financial needs.


Sincerely,


Saif Yusuf
Business Consultant

Al-MUHARRAQ Group.
#sblcproviders #bankguarantee #mortgageloans #unsecuredloan
#projectfinance #startuploan #tradefund
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
