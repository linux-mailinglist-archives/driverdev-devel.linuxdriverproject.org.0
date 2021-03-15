Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6430B33C3F5
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:16:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB12D4EB9A;
	Mon, 15 Mar 2021 17:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M7GNirOYTp9m; Mon, 15 Mar 2021 17:16:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC1F84EB08;
	Mon, 15 Mar 2021 17:16:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F19C1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:07:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F2831834B6
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bcFlTTnq1RGh for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6389483478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:59 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id j4so4414367uan.1
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=7Vrbe4gpVhb7cfcmpNanXi5E+OCzidx3VGMrGNR2bC4=;
 b=IeztSHzwFXmZolftCfjFRG56pGeDsims74ZNrOy69DoxsYWGoDOf8BTYU1oihzpMjs
 /UI0k2L0Qw3uMk8fxnCnza7S4kxuw+JHz2cJfu6pTZ0sITqTYvWJGTtVh2KwWkmjRaJy
 oTsqALi8i98UbsZJ68pP2yxOMTP8DzeoQ8F9tJSRTRKzr7Z/qLAW+V3UqNTj4H1X6nI/
 PmV4gS2F9+luv8LVHd613zQz/YI0VKn4OQSm+awZ9Ty028cbDK+a/CGJDynN7FOkoDYO
 LOVsaPRK7onH069em311RQlabQWfJu0IClqpKWhZmgRyNcuRh2wyGe9w6vsdywtZEkI6
 +lwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=7Vrbe4gpVhb7cfcmpNanXi5E+OCzidx3VGMrGNR2bC4=;
 b=OAJ1sUe4UW9/thHSexezNbCCGyxTnIEJ7baRosr5G+Y1E2Jif10zvF0bKC8/7ID34l
 HSyWfZwS1VDMfmknUZQA2CVMeuSZrgQSt+bhT3vFBgR7390INkSl1Kfr0F3jlPUmuQKh
 2Z1FEPU+9gTKkduHE2hJ1O7mj1KbzM0zMOCTog3QJbiiPVGynaHcgh2gd5LWojSKXtKZ
 p2v/O8GI1YPqh0Qv2XaU21uLqGyZwMCJXSgyZYDVb15cy4/fpI5+sdGqbWREYOdL11pG
 iVq5XMDYwjRzN2b6oN28fDjAM/Zg3rhFyiXeXxVLq8w/wrYST69ikXpkhgztyBkE5ZT5
 7UMA==
X-Gm-Message-State: AOAM532ReztX7eCIkVoCZyeI65UORlcquFPjwiu7dZQqHWeeurX+SixO
 nU7Ln8g2Qr67dZKt1A2qVjCJv22v8SymKpACtug=
X-Google-Smtp-Source: ABdhPJwEfkQ2Vj8T+Ow2okUm+JjAfQUJvyZL+X+WzN8tH7luDQmnBYiNeC3HSx9EJovMuQf3n7FVpZyzmlmraCcCLv0=
X-Received: by 2002:ab0:32cf:: with SMTP id f15mr5321130uao.68.1615828018158; 
 Mon, 15 Mar 2021 10:06:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2e8f:0:0:0:0:0 with HTTP; Mon, 15 Mar 2021 10:06:57
 -0700 (PDT)
From: "Mrs.E.Glenn" <mrganuserge654@gmail.com>
Date: Mon, 15 Mar 2021 10:06:57 -0700
Message-ID: <CAH16wSN_QM_RAUGGsZ7LC8VTEKhCu3+VnJoNqqTumu2QA95yEg@mail.gmail.com>
Subject: From Mrs.Glenn
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
Reply-To: ezbtg22@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Beloved,

I am Mrs Elizabet Glenn from Israel. I am a missionary but right now
in a hospital bed in Israel. I am 59 years and childless; my husband
is dead. I was diagnosed with terminal cancer. And my doctor just
predicted that I have but very limited time to live due to damages in
my system and as a result of that I decided to dispose my 10.5 million
US dollars to a God-fearing one for the continuation of charitable
work. This is why I located you.

My guess about you may not be accurate because I came across your
contact at the humanitarian calendar event of the year but I believe
in God who divinely directed me to you for this solemn proposal of
charitable work.

Therefore I wholeheartedly wish to bequeath my fortune to you as a
God-fearing person for the continuation of charitable work anywhere
around the world.

I shall be going in for a surgery operations soonest and desire this
money to be transferred to you as I do not wish to leave this money in
the bank because bankers might misuse it for their own interest after
my death.

As soon as I receive your quick reply assuring me that you will
utilize the money as I instructed you for the benefit of the less
privilege, I shall give you more details and also instruct my bank to
release the money to you for the charity project. I hope you receive
this mail in good health.

Please contact me on this E-mail (ezbtg22@gmail.com) because I don t
know what will be my situation in next minute,

I am waiting for your reply.

Yours sincerely,
Mrs Elizabet Glenn.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
