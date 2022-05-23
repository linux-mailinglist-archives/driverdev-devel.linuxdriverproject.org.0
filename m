Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2450F531184
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 May 2022 17:14:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25B15610EA;
	Mon, 23 May 2022 15:14:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6sPzb3bkh2g; Mon, 23 May 2022 15:14:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3C2B610DB;
	Mon, 23 May 2022 15:14:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0B45D1BF390
 for <devel@linuxdriverproject.org>; Mon, 23 May 2022 15:14:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 08A9C83478
 for <devel@linuxdriverproject.org>; Mon, 23 May 2022 15:14:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id idwVSPAi1d_D for <devel@linuxdriverproject.org>;
 Mon, 23 May 2022 15:14:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com
 [IPv6:2607:f8b0:4864:20::742])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2FA4F8317B
 for <devel@driverdev.osuosl.org>; Mon, 23 May 2022 15:14:06 +0000 (UTC)
Received: by mail-qk1-x742.google.com with SMTP id l82so8292643qke.3
 for <devel@driverdev.osuosl.org>; Mon, 23 May 2022 08:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=TEYP9RM7WcpTRoivdpMreD0rxNuJWtaJhJGPMNu5T8U=;
 b=mvnO9+VSQ3bow1G7A1MbIVHQQlRfwhd2CWvwpzYP9FCjFEJIBBcT21Rqcl2REANlje
 /ZkgwvPXcYRAeUZLcW3jFvvCVRhz46kabEHRQrhJFiqAoo4Ao0bdRSb3C5alhshkPfuN
 xuywz3inRgtkOopKf7RUG9+zw10D21g/m1we/8RsU1eL5q2jtKO6zdlqskeIZDjU2hjA
 O1/MJOFX98Yf8fiMvzcEEpMJoB5U6U597MopYrN8qsDeXOkwW6Tma92SFYV9/JDAbWTf
 w3Dp7hAnCFViiv8IHmmQ3mCqmO1Y3SwBX76N6Ai3gf9Zslk914vygxWjWmV+TeZh7Rl8
 L6IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=TEYP9RM7WcpTRoivdpMreD0rxNuJWtaJhJGPMNu5T8U=;
 b=XyNN866qsEZD3UC8/JCVIXaE39G+oHHytehWO+0RJcVL7LlbARAFi/U3WZsBiuRNY9
 sHu83HaX5GIJP1SxM5O1eIGQD8jGuMg9q6YBL0YMEAVRCX2UweEtGct/3dEBwdHtuaGZ
 AvOYLrfCU3aEQMSPInxjhiqvSCltwepWa89dDceOpIaGQYYjTF/oDqyP43c7tVR2gx/0
 d/Jysk7BpTT642ISO04sgoCzrf2Ykl3Q3GfwX5YpTapAESu2n3NzxqtlfO84SE9O4Y/Y
 jB6/SK1dtQLQHnBx9ivoVWFP8Smtr+e+/iINqlWQ2xQosDn02KgRULYIX7vvp0ggI7xB
 wNzg==
X-Gm-Message-State: AOAM531fC6F5RQNlCEOPqC+IEjROQPsmQRGEEt/I0nnh/GW64gpOFaPe
 WAHdl4b0AdO4VtznM+GfVHwqNj6jVntLIDKtmEM=
X-Google-Smtp-Source: ABdhPJyYnipxQGX+a7og7gHiJYgL6As6aPPWzZ9qFJBA8jZSasd0dKUl6J3lIlPZ1cP5OIOha09l13AIf1gh8fMc/aU=
X-Received: by 2002:a05:620a:244c:b0:6a0:4d3d:9fa8 with SMTP id
 h12-20020a05620a244c00b006a04d3d9fa8mr14106428qkn.591.1653318843777; Mon, 23
 May 2022 08:14:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:5cd3:0:0:0:0:0 with HTTP; Mon, 23 May 2022 08:14:03
 -0700 (PDT)
From: Abla Ibrahim <drhahakim01@gmail.com>
Date: Mon, 23 May 2022 16:14:03 +0100
Message-ID: <CAAbWuPBdmMK6414EoV9keYgu5L8nhNFcaFCWj1UhegFsEytiyg@mail.gmail.com>
Subject: PLEASE SAVE MY LIFE
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
Reply-To: ablaibrahim001@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello

My Name is Miss Abla Ibrahim  from Mali, I am 22 years old, I am in
St. Christopher's Parish for refugee in Burkina Faso under United
Nations High commission for Refugee ,I lost my parents in the recent
war in Mali, right now am in Burkina Faso, please save my life I am in
danger I need your help in transferring my inheritance my father left
behind for me in a Bank in London , All I need is a foreigner who will
stand as the foreign partner to my father and beneficiary of the fund.
The money deposited in the Bank is US$10.500.000, (TEN MILLION FIVE
HUNDRED THOUSAND UNITED STATES DOLLAR)

 I just need this fund to be transfer to your account so that i will
come over to your country and complete my education as you know that
my country have been in deep crisis due to the bad leadership and I
cannot go back there again because I have nobody again all of my
family were killed in the war.

 If you are interested to save me and help me receive my inheritance
fund Please get back to me for more details about me and the
inheritance funds.

Miss Abla Ibrahim
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
