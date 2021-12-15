Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9B6475284
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Dec 2021 07:07:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20A9E81495;
	Wed, 15 Dec 2021 06:07:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id api9hlP5MTKX; Wed, 15 Dec 2021 06:07:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D1DB81499;
	Wed, 15 Dec 2021 06:07:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A0AB1BF2F1
 for <devel@linuxdriverproject.org>; Wed, 15 Dec 2021 06:07:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 09B6940200
 for <devel@linuxdriverproject.org>; Wed, 15 Dec 2021 06:07:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TgBFuyh80yXZ for <devel@linuxdriverproject.org>;
 Wed, 15 Dec 2021 06:07:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2FD53401FF
 for <devel@driverdev.osuosl.org>; Wed, 15 Dec 2021 06:07:29 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id m6so29292298lfu.1
 for <devel@driverdev.osuosl.org>; Tue, 14 Dec 2021 22:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=UAOvT72nEzyjB3EaBfIB4vBLAlWNhJb9FUU2K5PC8fM=;
 b=pVa8vsJTkUnqK0OmiREZrKx+H1dF7EjfMbEg0pSXvyexYbfUvlAEqMtLqypO1wcrtD
 zwOEHZyKr2dxSjme03cSx0RObzuOmszxMV1IAHFBM7uMJ9RUySoekkvNcgp7seBCcG3k
 jHcFsG660ywJ88dCWIJ2iDxIm7wg6WIOwZmx6r57z13UJIa7YVUiqtF47fWoAylkhsof
 Tr+7czTG5MKBeE6B2nP5pFU5/1SWdsXqNvpmFJJpRENHRKxLSMw/V3OTzI0wvixnOMgy
 yaEwE3nh5SEBCnYospEwK5yA82S6LkXxxceiYDsTFNJGtD8jmsovc1ZeimChc5ppApQX
 RzlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=UAOvT72nEzyjB3EaBfIB4vBLAlWNhJb9FUU2K5PC8fM=;
 b=A7qZth7AVMjAqaWMTwhunum8JRNMgqJ+p57CfBazrNAtsB/nEISI4Rv916Nge/KaEr
 VHfwJQdGMwlD9+kGIQrkl+SrSXyypbDTUkjzwrFMez2s3HNQXBg/jSCRl93phGuKM93Y
 h0+gopXHPzG6D8PovqTzLrYzo69x7mX8i+7dEsO/qAAbVMawwWiX9xtuYzeFuJCCrb8+
 MBGNeGX/skM8Tzb4Jwx2sHyIpso/iWlSxDCA1duRB1soyzGKUkidjBt1gA7Gp9+1VpOu
 U4E6dcMoSTbi13HMLVI/p1FlTrW2yM0sYSFQvY0IsEB51O7Lv5Tadc8mJ/z7zH5EuraK
 Xz2w==
X-Gm-Message-State: AOAM5337YnaCXk+jMeu/MS5UwbldmOIPTiG3HQtNTEv0tVYoAm8CQzli
 IxxZ5Hg2dKYHI1jecrwlzzWZal0u99AgB7rVNFs=
X-Google-Smtp-Source: ABdhPJyqpdikGr2+q1WQ73pMrnsVBOY2R0fiDbUECtsgYbGLz8wFgy24vDSaHTFM8S+pRDZu9qOY4O8Vw3lMTsYBmW0=
X-Received: by 2002:a05:6512:3451:: with SMTP id
 j17mr8484372lfr.356.1639548446800; 
 Tue, 14 Dec 2021 22:07:26 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:aa6:c548:0:b0:14d:2009:1adf with HTTP; Tue, 14 Dec 2021
 22:07:26 -0800 (PST)
From: Mrs Jenny Bezos <jennybezos1@gmail.com>
Date: Wed, 15 Dec 2021 06:07:26 +0000
X-Google-Sender-Auth: BHTwoHNuyvAq-FG4HycdVhUxr_I
Message-ID: <CALv6sK_j9F=mpA4WP3VFV6PPdzPOQJo5Qef19tUGe=CG+uuBuA@mail.gmail.com>
Subject: Dearest One
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
Reply-To: jennybezoss14@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dearest Friend,

I am Mrs. Jenny Bezos from America  USA, I decided to donate what I
have to you  for investment towards the good work of charity
organizations, and also  to help the motherless and the less
privileged ones and to carry out charitable works in your Country and
around the World on my Behalf.

I am diagnosing of throat Cancer, hospitalize for good 2 years and
some months now and quite obvious that I have few days to live, and I
am a Widow no child; I decided to will/donate the sum of $7.8 million
to you for the good work of God, and also to help the motherless and
less privilege and also forth assistance of the widows. At the moment
I cannot take any telephone calls right now due to the fact that my
relatives (who have squandered the funds for this purpose before) are
around me and my health also. I have adjusted my will and my Bank  is
aware.

 I have willed those properties to you by quoting my Personal File
Routing and Account Information. And I have also notified the bank
that I am willing to give that property to you for good, effective and
prudent work. It is right to say that I have been directed to do this
by God. I will be going in for a surgery soon and I want to make sure
that I make this donation before undergoing this surgery.  I will need
your support to make this dream come through, could you let me know
your interest to enable me to give you further information. And I
hereby advise you to contact me by this email address.

Thanks
Mrs. Jenny Bezos.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
