Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4487342D779
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Oct 2021 12:51:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6EBEC40517;
	Thu, 14 Oct 2021 10:51:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xf-xp7pYl563; Thu, 14 Oct 2021 10:51:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 205EE40131;
	Thu, 14 Oct 2021 10:51:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DB111BF30F
 for <devel@linuxdriverproject.org>; Thu, 14 Oct 2021 10:51:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0AB9C83689
 for <devel@linuxdriverproject.org>; Thu, 14 Oct 2021 10:51:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SAAt75x6A_dx for <devel@linuxdriverproject.org>;
 Thu, 14 Oct 2021 10:51:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30EAF836F1
 for <devel@linuxdriverproject.org>; Thu, 14 Oct 2021 10:51:09 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id y30so6050074edi.0
 for <devel@linuxdriverproject.org>; Thu, 14 Oct 2021 03:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=hCW4GIFJiq1SLfKkhOM4u6rN2m3SQII49AWdTkT3mqI=;
 b=Lxmh0kMMRJnkWemJnIFLFLBSL7nptWwNDIGAmiKP7WgqLhoyGcQ2eqro0So1NTKv6R
 G/dGkEvV5znNh+dVZB3KT1M/2BjqTKKxJ8Ang03SsW+lzdE7zX1kMPcNQz3jkx65xCHw
 nWh+4qhXH9CNKYQhKdlXmrJefmLZPGZ5S6g/kytvpP5QMhzLVXM9n72IHhqBtMU9IRN1
 6Ibe67NMKBUzvDNuqXm+7R1dH4BfNJ9JqxfYdSW50F9wnucZ48rTreSNquCFFgMaj5Eu
 ByBoL/D7HmR39P2ajTMnhJDaHc2KhhIyr9K3kugZf2+tzmOHmlc+eSzn6xAR44zMBPnX
 8BvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=hCW4GIFJiq1SLfKkhOM4u6rN2m3SQII49AWdTkT3mqI=;
 b=0XbFRgFGYT3C+xwajWDcdN8gS978Knhj8IbGY++X7ZUEBugQRjgxIWYLGKFQ0Zdm77
 sEBQaIXN+hRVW1RUenn7Ao5DomG8hxjMGeyG20CNbWv7n1Qpllo+3l5gAExdfNSof5e/
 2RMi+orXKS4k3vgD/5AoybWkiu55jSrioremrdVecnJvKp66tEPRRbXtuJcYOm9PZVJJ
 j5XZD5lVzFmWYO1EMLwY7ZgnqRPPZjMOJOVCmpE1OphQrv8bO5ptzRRhRhoS9RyaEQSG
 ni4bxtWGfb+hGLvHdRVAzbfULOPrRwJCYbHfWi31EQ/333LLFU/6FY4hze6risKOn5v/
 hTSw==
X-Gm-Message-State: AOAM531RCYMEt8h/VyB8N0Qy0etOwDV4/6qwrQ5Q28a9EqAG5axteJ6p
 sUb9zcP4ustOTpXRbR/Gx9ZIl27kiGLiWn3LFd0=
X-Google-Smtp-Source: ABdhPJzHi8eyHrhxMLehEwRAg1Sm3y9kvqJKwlGWWpgIBTsqMLdI0geJAwFcAfWPdvgOV+/1N9BohpxYTnrF8rQMQqk=
X-Received: by 2002:a50:9d49:: with SMTP id j9mr7591701edk.39.1634208664227;
 Thu, 14 Oct 2021 03:51:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a50:3491:0:0:0:0:0 with HTTP; Thu, 14 Oct 2021 03:51:03
 -0700 (PDT)
From: Barr George Levi <iweegonwemu@gmail.com>
Date: Thu, 14 Oct 2021 12:51:03 +0200
Message-ID: <CAFneu-g2HkSGa1eiEizQwO2r5VAzWKzNCTUJ1ZENsg1u_oY3Pg@mail.gmail.com>
Subject: re
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
Reply-To: lawyergeorgelevi@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear winner, I write to inform you that your email address has been
selected as the winner of our  lottery draw winning program organized
by lottoland.co.uk). Here is our web site
(Https://www.lottoland.co.uk/megamillions ).
Contact the director of the winning fund for the immediate release of
your winning fund via his email address
(nursultannurlan2021@gmail.com)
Thank you.
Rosine Ben c
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
