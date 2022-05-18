Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F22552C680
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 May 2022 00:45:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C9CC843CA;
	Wed, 18 May 2022 22:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ikhDOJoFL8Ce; Wed, 18 May 2022 22:45:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EAB6843C8;
	Wed, 18 May 2022 22:45:28 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A18761BF3BD
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 May 2022 22:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E5FD612A2
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 May 2022 22:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z0M9MUuxQDqs
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 May 2022 22:45:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com
 [IPv6:2607:f8b0:4864:20::112e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 148D4612A0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 May 2022 22:45:23 +0000 (UTC)
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-2f83983782fso39919887b3.6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 May 2022 15:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=mZ3wqB4NmL7z6lpFr/h15h1rYqsZKafJnUpMVahbEPg=;
 b=liVPuF3m3Fk2ACJOg1lSIY8l+HI3a9+PHT7ISK4ED1+jGvzJ04IHzgCiWzwuaEQCv5
 keIDgY637Dv44/gMO+tt1pWiScyOLsGZetdYm8Ugygmy0sWxwMasnL8oGlmf6gH+IvfA
 +d8n2xu7Jf3xND27WLR5+Zl0sIZC5rF9h3O2vPcTO59FEV+4dQQhUVNxUnM5px57kjXu
 nmftGWTgQbaOiPwkq2HK2sDMxKMGorMEczdg8yKpkTRl0CZ2Wvnri7OdxDWxpCOEUkk/
 iy+Fu0Frb2ciFWW0aATaW60nj1kbCGtcC/u4kvyX7pYNOY3/HWbO/NaftqB5jVq5HV1s
 fHpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=mZ3wqB4NmL7z6lpFr/h15h1rYqsZKafJnUpMVahbEPg=;
 b=EIODAsclGFE3KMQ9QWRWUk42LKThk/BAuuRxeQ/zXEx6fIY5rQKZZLuluUQz1R8WBP
 mQJq4odNw8f4Qjvp5tvdp2/ziugF0liZX9s/Ny27Nnhz4UjJYrrAcPugmciYbhOURnVP
 PJs1zxBE/tVoketKGJIQFq1UsWuPmJCTdRKxqZA0B/j8qB4UnuXVo54H2/OySfS3PpHl
 N1GoqkGWofDhOvhE6HsoxellZ8uR0584toTrNYcoslvkqyJXiCe9JAz9SpjRp0/dMYjn
 Kw9B8Q1wkISJDpufiJUBcJu1oc75VvBT2Ao0VUuifmc3gnpweIUdkvcNLxSPE2375suh
 232w==
X-Gm-Message-State: AOAM532o/mGVwPngKBey2XVa+q9/CUecQQu2DaSJYj41IuqyezBrOMMh
 SUT0k1VgbLWKX4CPkcsI/hFO442g22udgYeoFNo=
X-Google-Smtp-Source: ABdhPJzHbeDFIjjJOoqfqNYJeESIlrJDpZ8/tpbRBJbK7zxydZBB8wB8nvH0nmAoIGgjxH43LL6RXtc+wLrRW/m0O2w=
X-Received: by 2002:a0d:d906:0:b0:2ff:3e6f:4d7 with SMTP id
 b6-20020a0dd906000000b002ff3e6f04d7mr1743243ywe.174.1652913923079; Wed, 18
 May 2022 15:45:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:7143:0:0:0:0 with HTTP; Wed, 18 May 2022 15:45:22
 -0700 (PDT)
From: Tony Wen <weboutloock4@gmail.com>
Date: Thu, 19 May 2022 06:45:22 +0800
Message-ID: <CAE2_YrCFqfox-36yywt2NDK0N6ZyPm7rZBPF1tRC4KtjOA+6SA@mail.gmail.com>
Subject: engage
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
Reply-To: tonywenn@asia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Can I engage your services?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
