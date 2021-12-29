Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0672C481099
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Dec 2021 08:13:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 365C5405C5;
	Wed, 29 Dec 2021 07:13:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gfMtFwbWts9B; Wed, 29 Dec 2021 07:13:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10A174014D;
	Wed, 29 Dec 2021 07:13:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 37F291BF8A8
 for <devel@linuxdriverproject.org>; Wed, 29 Dec 2021 07:12:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DFB640442
 for <devel@linuxdriverproject.org>; Wed, 29 Dec 2021 07:12:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gWVNYQ5dpME7 for <devel@linuxdriverproject.org>;
 Wed, 29 Dec 2021 07:12:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D2B7740438
 for <devel@driverdev.osuosl.org>; Wed, 29 Dec 2021 07:12:49 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id j21so82754431edt.9
 for <devel@driverdev.osuosl.org>; Tue, 28 Dec 2021 23:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=RY4Ck/FbAOXQAIlJ7NzArEMRakTYUxJxSeRPJiZEvjY=;
 b=ezWDGn8K2NRqGZpW3xCbhRYEl9CA0tf/GFW1H/ER9p20VC/+9xBIJKeZaSIdLgZqXj
 9Lv+HbhmagWNlnaM57yGkfo0e57kXxl5spiC/s29AXAYaOdxJ+gTX+pUBp05FStqrHCD
 VsvwZvtAnSlG4mY1/5TSYR/inj5Jblm078mn40HXrnlR+7wxEVEFjMxWoP6QoqI1/Dr6
 bv20Z80oVcJgYFqHvsASGWC92M1YEE+OzzSH3pOPVPf7FvtW7u9bV9SEiG0cBGhVrq4X
 JBuSoCGoeD4qZfX1qvgFgFa8aDe+0kLTTvV537a7GZoxcuAM5nTdt6r7DotquLUZ7fy3
 XRaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=RY4Ck/FbAOXQAIlJ7NzArEMRakTYUxJxSeRPJiZEvjY=;
 b=SBZPTX4apwRcsvS7IMjkAWX4T7WeMrDSvwUhzk5YMOfrKJmGfxUK/heu+AVuj4ZKeN
 TihVhz3lh2U4DF7ABawSwDjjpa/rLearwSzB0EBL11zOxMm9cGIIUEbsX+pOGjRgi1uQ
 mIY2+nl/0LNOoV+c4BisOmOvKnaseDzIqZgzkXylFaR2BLcg/q76dRJFUfcd7Vuwb9n0
 Sewp5wAU8UZQHfJDtXFUtIUaG3Wm1LT+gLj1vFbPB/k6SWFWWOef6CYw6nrXIXzDfCvn
 8XR7qvdqPanoh3J52v5roYmeGhhgQpzmlHcgOkoVtkg4buSz4EEOi5oZ9snLwA9ZK5ZV
 5j5g==
X-Gm-Message-State: AOAM530Jjlwu8/LA8x4qkuZdTLwfGJUQaztnTwugaEjv6wpNgxVIGfxD
 wk9wo08NxOIhwMx05kmLz+rs7BSSH+zuAAXJgwg=
X-Google-Smtp-Source: ABdhPJweAXWdUh5Rj6T+VKz68wlSnsLW0Cozip/y68to4cCVgUuIJ2Udu5FZM4aesRDOG6VgR+mLejhNopZVkas+XrQ=
X-Received: by 2002:a05:6402:51d0:: with SMTP id
 r16mr6424437edd.271.1640761967871; 
 Tue, 28 Dec 2021 23:12:47 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a54:3202:0:0:0:0:0 with HTTP; Tue, 28 Dec 2021 23:12:47
 -0800 (PST)
From: Aisha Al-Qaddafi <aishaqadafi77@gmail.com>
Date: Wed, 29 Dec 2021 08:12:47 +0100
X-Google-Sender-Auth: MaQitg13yzCaC26dTXuDTbZCPpY
Message-ID: <CAArXt4rnd2q6xfqPxh865T3AR7bPhAQVwT==H_LRsdNX6npY1w@mail.gmail.com>
Subject: Dear Friend,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear I Need An Investment Partner

Assalamu Alaikum Wa Rahmatullahi Wa Barakatuh

Dear Friend,

I came across your e-mail contact prior to a private search while in
need of your assistance. I am Aisha Al-Qaddafi, the only biological
Daughter of Former President of Libya Col. Muammar Al-Qaddafi. Am a
single Mother and a Widow with three Children.

I have investment funds worth Twenty Seven Million Five Hundred
Thousand United State Dollar ($27.500.000.00 ) and i need a trusted
investment Manager/Partner because of my current refugee status,
however, I am interested in you for investment project assistance in
your country, may be from there, we can build business relationship in
the nearest future.

I am willing to negotiate an investment/business profit sharing ratio
with you based on the future investment earning profits.

If you are willing to handle this project on my behalf kindly reply
urgently to enable me to provide you more information about the
investment funds.

Your Urgent Reply Will Be Appreciated

Best Regards
Mrs Aisha Al-Qaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
