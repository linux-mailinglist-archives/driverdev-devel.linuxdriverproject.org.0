Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CD75BFDB3
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Sep 2022 14:20:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FAD56100D;
	Wed, 21 Sep 2022 12:20:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FAD56100D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I97YofhiKHqQ; Wed, 21 Sep 2022 12:20:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02B8060FA5;
	Wed, 21 Sep 2022 12:20:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02B8060FA5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2EE41BF2EB
 for <devel@linuxdriverproject.org>; Wed, 21 Sep 2022 12:20:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CE09F40BA2
 for <devel@linuxdriverproject.org>; Wed, 21 Sep 2022 12:20:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE09F40BA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zbWEMzhU9Xmj for <devel@linuxdriverproject.org>;
 Wed, 21 Sep 2022 12:20:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C42340144
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com
 [IPv6:2607:f8b0:4864:20::144])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C42340144
 for <devel@driverdev.osuosl.org>; Wed, 21 Sep 2022 12:20:30 +0000 (UTC)
Received: by mail-il1-x144.google.com with SMTP id m16so3005028iln.9
 for <devel@driverdev.osuosl.org>; Wed, 21 Sep 2022 05:20:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=J2pULIaxQSHiCwOBsubJqHrIGrU9x3cic3+MSRCJtIo=;
 b=PLqvojLGdgbU/ulJCNl5eHG76+/5uB0QJbGilZb7dj11DoOy94dS5gBrb2HGM0InLy
 ImvE7lPUfOX3n3M9Shb8g2JPGn7n/OwMjwt42+12QBHy79dhEjWf5dSbYTGqhe4Btjfv
 cZ2qyjcSn4FB2rf3LUA8tpXC4Q2aomrRz9d7/zgHLU4GX4k6ZMr/6QH9tw9anrgZVwGO
 Ylt1pBwlZcVgZurJPv22PXpE0425eHsRvdVRUmCuPbgIYjOlCmUiqUsb0xpjSypeH9vD
 JIUR/VWmwPQfNgovPCDUTwXnxxlZ7gwrWxJqLEm/ukC1uqyNRgeNWqCQw59t0vs3meQG
 jl2Q==
X-Gm-Message-State: ACrzQf30EbEM4NAOM+hrvmIGKuiIWQ651kQRx2eD+FWV3y82kel0xXlF
 dqSNYMSoFnNCnLENAnLvNphRhzUkOVLvzJZ3POB/FVzwI4I=
X-Google-Smtp-Source: AMsMyM731xepcaQJDeTppY3NeLSzuj4vy9W1T4MyZFrwJFGM8j+dz9niYMK3ltONLcO1/K2hxxLYyABDQaL7lwUhsIk=
X-Received: by 2002:a05:6e02:17c6:b0:2f1:e458:96ba with SMTP id
 z6-20020a056e0217c600b002f1e45896bamr11534739ilu.192.1663762818020; Wed, 21
 Sep 2022 05:20:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6e02:1525:0:0:0:0 with HTTP; Wed, 21 Sep 2022 05:20:17
 -0700 (PDT)
From: philips <robertanderson6016@gmail.com>
Date: Wed, 21 Sep 2022 13:20:17 +0100
Message-ID: <CA+o7mw0woM+GTFegNEtONbbRGThBOPy1RqPHbEcbg0Qi+H1eUw@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date;
 bh=J2pULIaxQSHiCwOBsubJqHrIGrU9x3cic3+MSRCJtIo=;
 b=jfJUzl/kgw2MiQlSw60Tba8UwXvTZeRAv+2Zk90rV+2IM14rZOdqQVNefg660hSRMX
 JXP6U7Sm07ZdEGUOU8p0BOwJeAuGghRY+TFz4mTH5CzyKQ3op+Jg7nA/0hpa3cFCJ4s5
 zhqcQ8vbO4GAG7p44u/q8aadVOOLJETaesMFWcVhlZJYCqZnoC87Q65ALRnwLEo0H67f
 E2NZ64lWIgMnG3uodTLoQevCKmSV1aMsqoTKAUZNFTTb634eVX1/NaNQx/h/7TCmQ9GS
 T66SGcV3fbEYXzWcZ6kyEQKWaw0qdpVDZK87jME2ZlqVHZHMdWZ4fyarZJBDhcpSBGZb
 vIwg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20210112 header.b=jfJUzl/k
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
Reply-To: philipsjohnsongoodp@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SOLICITOR & NOTARY PUBLIC
JAKARTA INDONESIA

To your Friend

Please, do not be offended if this message comes to you as I ought to have
sought your consent and approval before e-mailing this proposal I acted as
I did due to the importance and urgency of this business. Which ever way
you may look at it, let it please you to respond quickly either negatively
or positively.

My name is philips johnson. I have emailed you earlier without a
response, in my
first email, I mentioned about my client who died on the 15th September
2018. I have made several inquiries to locate any of my client extended
relatives but this has proved unsuccessful, I demand your consent to
present you as the close relative NEXT OF KIN TO MY LATE CLIENT BECAUSE YOU
HAVE THE SAME NAMES with the deceased, to inherit the deposit fund valued
at US$2,700,000.00 (Two Million Seven Hundred Thousand United States
Dollars only). Only, in Mandari Bank Indonesia- Jakarta Indonesia, being
left behind by client before bank will confiscate fund

The Bank has issued me a notice to provide his relatives as his lawyer or
they will push the fund into the state treasury as unclaimed bill. I hoped
that you will not expose or betray this trust and confident which I am
trying to establish with you for our mutual benefit, i don't want third
party with us, this should be secret between me and you. I assure and
guarantee that this will be executed under legitimate arrangement that will
protect you from any breach of the law, All I require from you is your
honest cooperation to enable us see this transaction through.

For more details kindly get back to me, waiting to hear your urgent
response.

Thanks in advance and God bless you,

Mr. philips johnson, Esq.
Jakarta Indonesia
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
