Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51733481CB7
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Dec 2021 15:04:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FFD841518;
	Thu, 30 Dec 2021 14:04:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CKBezSnEmR6v; Thu, 30 Dec 2021 14:04:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEBA7414CB;
	Thu, 30 Dec 2021 14:04:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 07BA01BF408
 for <devel@linuxdriverproject.org>; Thu, 30 Dec 2021 14:03:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E74AA60BF3
 for <devel@linuxdriverproject.org>; Thu, 30 Dec 2021 14:03:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lvzdJQDJaWsz for <devel@linuxdriverproject.org>;
 Thu, 30 Dec 2021 14:03:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com
 [IPv6:2607:f8b0:4864:20::1044])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4FC4605DB
 for <devel@driverdev.osuosl.org>; Thu, 30 Dec 2021 14:03:54 +0000 (UTC)
Received: by mail-pj1-x1044.google.com with SMTP id iy13so21281163pjb.5
 for <devel@driverdev.osuosl.org>; Thu, 30 Dec 2021 06:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=5K6umBYYk5MuEu0C1+YbFQclZ4U2heUyJMDa7+dcbog=;
 b=NqeedST2qjhbjzep83dwaiu+AosmB9yQsekUmXRlVAV+XKVE3737875VCt3VkXTkeZ
 yBJkoLfIP46PC2K9S75qa0fMZWrhAnscNurjgj/D4alyPdftuVypbyRQW/vEgdwy4uiO
 DJOSO1DOL5WUE0p7oYnbctUPf6VYzoRXcP0rmPMEgaue2a64m5NaGBZpIkQtVcQYgSsX
 CN1jy+oEG3D6PPRHy8hGMff/aUDITqlTWD+Yg/wlfoIup9k5aUwuzGcm17PxozZ2w5Yx
 yyXKxVDmEkUl8vq/LytqUpFd9KKVPWbDIsuNfCilhQj7wFBT21df8/MNJBS1fuz8C755
 7f/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=5K6umBYYk5MuEu0C1+YbFQclZ4U2heUyJMDa7+dcbog=;
 b=k8yNdtgguDK5qUPp5SYqJn/9bjT6DUcwyEE8JEkjrUFoPyRphEKmHk1mFmxA64uXU8
 9L35CNb5z9vy8gY8/STgqMOAx+dku9nHDI6+dbA8oOp43z4B2xeUdeNP5XHp3mtkUssy
 9+ZueEWSbFnTwn4LPZ6odlhW7fxwLKfVjwnQ2zGegzLINtzwakthgbPigIQ9+hFcog+K
 9EsSibV6XfbTPuCGHybOdMnBD6aSzl263QMDtuRgpjAIme+FI/bmpKpuqE1zCLPr77Hy
 rE9oq+3C1sVx3r611Re2uEZjShg71w49p5PfADFMnJUCmWy1h4Z9uetTaIRz916nTYPK
 a4Og==
X-Gm-Message-State: AOAM530JFP7Hez6QHrNG3BNrrfKQLLiv1Y1q7YO/MpQ4Fr/VCGiCgIUU
 hKywoDpsPJz0R93Qm7oT1Np4j/nmrZCJ0CX7QPM=
X-Google-Smtp-Source: ABdhPJyZt/kA35hi7ror7y9ZgPff6PL5qWs93PIMruNAN6Yoc1+J5PZMzVPhVqFT5uDlZ44BNGmLseqvL0MnbmRST/U=
X-Received: by 2002:a17:90a:e514:: with SMTP id
 t20mr37837339pjy.5.1640873033955; 
 Thu, 30 Dec 2021 06:03:53 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:17cf:0:0:0:0 with HTTP; Thu, 30 Dec 2021 06:03:53
 -0800 (PST)
From: "Mrs Aisha Al-Qaddafi." <drfazlqparray@gmail.com>
Date: Thu, 30 Dec 2021 14:03:53 +0000
Message-ID: <CAGoVpqVk2AGiJvxs=Uxb98r5tES68qUDtCZtQOzBq1u5=WxiNw@mail.gmail.com>
Subject: Dear Partner,
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
Reply-To: mrsaishaalqaddafi23@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Partner,

I came across your contact during my private search Mrs Aisha Al-Qaddafi is
my name, the only daughter of late Libyan president, I have funds the sum
of $27.5 million USD for investment, I am interested in you for investment
project assistance in your country, i shall compensate you 30% of the total
sum after the funds are transfer into your account, Reply me urgent for
more details. Please kindly respond quickly for further details through my
private e_mail address:mrsaishaalqaddafi23@gmail.com


Mrs Aisha Al-Qaddafi.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
