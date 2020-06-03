Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A98A1ED0FE
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jun 2020 15:38:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA9F487D15;
	Wed,  3 Jun 2020 13:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vpj7wG5IUTf0; Wed,  3 Jun 2020 13:38:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF7F187C98;
	Wed,  3 Jun 2020 13:38:40 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE9C81BF408
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  3 Jun 2020 13:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E6A4687CEE
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  3 Jun 2020 13:38:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GbZVRSGtiOEy
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  3 Jun 2020 13:38:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8146287D39
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  3 Jun 2020 13:38:36 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id ce8so1769116edb.8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 03 Jun 2020 06:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=H8rDQEJouwBJIElP/Vpqq+PrvTZxQQy2H7A/MvyMMB0=;
 b=gPrdCeOEMpO9a4dWmearLYnx06VC1jVqWRRw982QZRtetHtRvOAtmL5Prnn899GWG+
 TmCIsIhus9C9eYRjXJg+u0uRMvjFLA1f1BdPKYHur2syDeFyg8HZP1Mt1uHj1v+PMUwq
 wA3NybniCc9FaoCt0w+J/Qtp3vW2/w034WJvp6x5wUQ3yezzekoYuWxqnjffb1j+xjff
 d/4/lPJxww8IbzELUz3cHXkpNHBGsFedwSWahmjf8TYDTB5eiv7jAeIVrT2Q2nHJM+Sw
 7DPNFHXqBqUIfPZ9oFII7FGpsomINLGrUPkZkmxSQrOPLVxzbbT9k7+5ADJnlb6PprlL
 RWyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=H8rDQEJouwBJIElP/Vpqq+PrvTZxQQy2H7A/MvyMMB0=;
 b=Qq285foeED6efX1+JPRKsusqGZnVNQFjZDirVAofbEsTFCicxVNkcIUq+FUYEFqHe7
 E8QDXVg9ZK/Ctwvcb3lSZJlBjTtuFL5dayjyzUXbUoiszMiB/G3D71TqsL1Gf833LJnN
 6u3YBDUVDKiuP3/Kv14cEuVdGRFdsd2fvCf/09SstepwJsWos19G2CQyGu/3RQvkUw6J
 eGhz4/XCEvgrhDzNKPA2KIfGNSkb7fVC4BP9uJyHAgeAo2W5Vibug1PssulBSt23Y+c+
 KeQTvdMkgcxG1WOUmlVzQS8BQYa96WEFPKwGgJIFHqiCPJRckv9v3OPK505VzXyFMj1w
 LEfQ==
X-Gm-Message-State: AOAM532XS1oO/5wqmSZwUicB6bhPJQIvYIfl2YaG2HImAa4lqDl64I9b
 LaRxNQJjHaiK7HXvI8jWvJNh5UtHBZjW5eiw8oE=
X-Google-Smtp-Source: ABdhPJy+5xP8XiPsJmKQ4talUUDJzm9Lzmq+ZJ0WafCR2435QD+2dUn3hJBTwwqSjnrRTvLzIA73YWcnnWxFcC93kak=
X-Received: by 2002:a50:f297:: with SMTP id f23mr6245780edm.222.1591191514905; 
 Wed, 03 Jun 2020 06:38:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a50:5210:0:0:0:0:0 with HTTP;
 Wed, 3 Jun 2020 06:38:34 -0700 (PDT)
From: "Mrs.Susan Jones" <sus.wifejones@gmail.com>
Date: Wed, 3 Jun 2020 14:38:34 +0100
X-Google-Sender-Auth: HQ2vCdUlLzLkg-AiNShlb19QbzE
Message-ID: <CAAFTEYFqaSy819zkpXV4OgK3Ru9xp5vu3Zhi9O1Xu51MJHdHyA@mail.gmail.com>
Subject: HELLO: I AM MRS SUSAN JONES
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
Reply-To: susanjones.wife@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
OUR GOLDEN OPPORTUNITY

Hello Dear Friend,

Complement of the day, i hope you are doing great today. However, I am
Mrs.Susan Jones, an auditor with one of the new generation banks here
in Burkina Faso.

I am writing you this letter based on the latest development at my
Department. i discovered some abandoned huge amount of money, Ten
Million, Five hundred thousand  United States Dollars.($10.500.000).
Now I am only contacting you as a foreigner because this money cannot
be approved to a local bank account here, but can only be approved to
any foreign account and foreign beneficiary because the money is in US
dollars

This will be  a legitimate transaction once you accept to build trust
with me and follow simple instruction doing the transfer process,
until the total sum transfer out of the bank here to your own bank
account any where in the world, and I agreed to share the total money
50/50 with you once you successful confirmed it in your bank account.
But any expenses doing the transfer process will be deduct from the
amount before sharing, If you are interested to work with me and
provide a good receiving bank account, get back to me as soon as
possible with the following details below.

Your full name
Your Profession
Your direct mobile phone number
Your Scanned International passport or any of your identity

NOTE: PLEASE IT YOU ARE NOT INTERESTED DON'T BORDER TO RESPOND BACK TO
AVOID TIME WASTED.

As soon as I receive these data's, I will forward to you the
application form which you will send to the bank for the claim and
transfer of the fund into your bank account as the  new beneficial.

I am waiting to hear from you soon

Yours
Mrs.Susan Jones
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
