Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C312659983
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Dec 2022 15:53:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC6D1404F8;
	Fri, 30 Dec 2022 14:53:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC6D1404F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AMbK-I6Qul_3; Fri, 30 Dec 2022 14:53:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2C4C40124;
	Fri, 30 Dec 2022 14:53:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2C4C40124
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D3251BF3C6
 for <devel@linuxdriverproject.org>; Fri, 30 Dec 2022 14:53:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 685EE404F8
 for <devel@linuxdriverproject.org>; Fri, 30 Dec 2022 14:53:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 685EE404F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OaviUKjuo9ba for <devel@linuxdriverproject.org>;
 Fri, 30 Dec 2022 14:53:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBD7940124
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BBD7940124
 for <devel@driverdev.osuosl.org>; Fri, 30 Dec 2022 14:53:45 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id bt23so15363870lfb.5
 for <devel@driverdev.osuosl.org>; Fri, 30 Dec 2022 06:53:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=HNWmR1UqGhpeh/p57/mAK69J6MUbGW3+Lzc7R/0H++w=;
 b=s/iUNEMr4Vz9gqfLreVzPf/yRTZGBvf2z7mt238m4GpgPVLSo8Dc+dPhEWv4g+2qlu
 BAyAmQLS4SZnFRR1dNK1WKs9WIC6zazBITPa82UaBEt0piQMmCv/p3GDUqGjotPQvwvp
 W+1uExRWChri3oMZJkfgn6NhUJY6lRM28hwePrKoje1Wk5jUAke+WUWRtxOm7oMbn5bU
 dyRDRHb336VHE/6zqkOeBqm8ikAkZODn6wXMvXyzS+HRToDMNm6QnpqMux0gJB6XUik9
 OQu47+6JvBTJ2mY+gYl134ijiPR/8pmpCXRnKqDEngPEJSWqFNWZCoKnVDubcrQWQjG6
 oRaw==
X-Gm-Message-State: AFqh2kqId7NY2Oo3GIRq9J7hr30f+3Y3wdmQKNPRDh7afk3YaBr3WbVY
 93OfB4MOQ4MELuO4C9JJ0JiaUeHp3M35kLA1ec0=
X-Google-Smtp-Source: AMrXdXtFmHkYbqUDugGOsAY3Ci2W5rvxUl+Ch/M+XtbyxX97bkkA+BUQ/K8rUQSIHBVXItl92UzAsG6zKSKmeVCM0j4=
X-Received: by 2002:ac2:5d6a:0:b0:4b5:6ca0:f75f with SMTP id
 h10-20020ac25d6a000000b004b56ca0f75fmr2573664lft.59.1672412023470; Fri, 30
 Dec 2022 06:53:43 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab2:1a05:0:b0:179:5ef8:b2cc with HTTP; Fri, 30 Dec 2022
 06:53:42 -0800 (PST)
From: "Mrs. Cristina Campbell" <michaelsmith14536@gmail.com>
Date: Fri, 30 Dec 2022 14:53:42 +0000
Message-ID: <CABq5NtxoL45S1StHd8hM1vi66Rb3pYGtthEUkP+Bu2kctBvXSw@mail.gmail.com>
Subject: Can you assist me
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HNWmR1UqGhpeh/p57/mAK69J6MUbGW3+Lzc7R/0H++w=;
 b=A5OxayL/zEgibCkqcBwj70LmexOs91Q/U4Rq4zUCEVbyvR1qpE3MnAWIp/Tbw6hLq1
 YN9OycB7xEiMFv7/1DO5l+ufnKj2rJ5a0rTk7LiEuj+oYvPYwYxVMNEGIBjAsmC9aUWS
 X9FOf4iloh1T8TOkxCX2xCSCZDdod5aNylFLeWLYtseJoskqRTwg+cR5RJfV2fUGJFTz
 gqiPk1ijpydE5dXTJYp4SZD21W8P888lNat0NWx/20c9dSR5dYm3CCgjEzDT5c65TZwW
 s7WmUAzDioTMQZraW7ohAPcZSxymfA6gRCPfJ1xDQeB4B75dFqJpCNdMyjcKG6O2xs76
 E93A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=A5OxayL/
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
Reply-To: cristinacampel@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Beloved,

I am Mrs. Cristina Campbell from London, United Kingdom there is
something serious that we need to talk about if you are not too busy
please reply to my personal mail which is (cristinacampel@outlook.com)
so that i can tell you more about this humanitarian charity project in
your country worth Six Million United State Dollars $6,000,000.00 usd.

Best Regards.
Mrs. Cristina Campbell
E-mail; cristinacampel@outlook.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
