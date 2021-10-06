Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C4C423C3F
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Oct 2021 13:12:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01F7A8341E;
	Wed,  6 Oct 2021 11:12:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wdq6vuRZ47iu; Wed,  6 Oct 2021 11:12:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 697EE8347D;
	Wed,  6 Oct 2021 11:12:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 53E891BF370
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 11:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 507F260E7C
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 11:12:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6KFriQRMdN8S for <devel@linuxdriverproject.org>;
 Wed,  6 Oct 2021 11:12:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com
 [IPv6:2607:f8b0:4864:20::b35])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B652A60E7A
 for <devel@driverdev.osuosl.org>; Wed,  6 Oct 2021 11:12:34 +0000 (UTC)
Received: by mail-yb1-xb35.google.com with SMTP id v195so4640847ybb.0
 for <devel@driverdev.osuosl.org>; Wed, 06 Oct 2021 04:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=Awi+KbCc0oDeqT+mpposxWi8Eg2+mFfN+4AERgJNdt8=;
 b=ltUYvpW+JZMfxz49z0gMcdJxGZOJfj7VI4WicKQkD8z1nm9GIMW/B9FeciesvVFwtS
 wOoR5zhubgamnq1pArFRQg+S/PgYnZ4uZVJI/xTHapyt0ew0mlkUiT/NicXFzIojh3hv
 jJXcdHFeFUrrd93S6JIOQqYavFiSEQFvBRXYxWJyUDsfnJej4fhZ5X+P1IZfTS6GBHGn
 qiaEuC73xtQTxdLn2IVvuoP0YoTkrWaUIn4MtjFXe9qNl6m9IylG4zgy0TeCe/GNo4Fy
 GVQWXn9WGInwhLHsh3iA8RGw7oo/u4wGwukDAFKZKxrC0DDq2C/Z0/ugbYi/SiznHp3L
 iwfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=Awi+KbCc0oDeqT+mpposxWi8Eg2+mFfN+4AERgJNdt8=;
 b=cIVTeTb0RmlZeyAqgSMkpau1pb4yRPKv6n7PxnB63cnbgO8yHWFSq+9lSnDSdM+5nN
 +mT4tjZtNqHWb+t50YyJIkOQYxNotc15imm7SntLN5+3NOxW0J/ex5rXGMpisAOF5dP4
 LRLPVCnfqOekjubMLjTtRMBksRrHauzlhhxU7OdxI5ssSUbzPDXGW8GRi/fnZOEDmTci
 VFG/FzqcsnjIkSquIxREcMi+7itBpzslP7Fdp2NKF+nr1wfg7nQsItuNvelDceeUh75f
 bbGiQiHGw+hLWRerkOjSDeBSPUlafOdle7TkS5FGiKtiMwZdyrG4UbIyFBwntRB8qRWD
 t4cg==
X-Gm-Message-State: AOAM5326rUsrJNmFMcvhdbKHbsNZjFmJisd2mgdOHz1YD/2mKYINqlIC
 uYOH9PC5IOfI3B7KQMik3abBsMhMpUTklfQxupw=
X-Google-Smtp-Source: ABdhPJwYSVV+ozJ35Qcy3i7BaiIOu/jmsw86O2Oifl/Es/9LCYIiaMKLxggIHMwHXMBkqxbALlEz8O3mWX5dYMR9lqo=
X-Received: by 2002:a25:3c1:: with SMTP id 184mr11643122ybd.501.1633518753528; 
 Wed, 06 Oct 2021 04:12:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:37:b0:145:c1ad:df9d with HTTP; Wed, 6 Oct 2021
 04:12:33 -0700 (PDT)
From: michel duku <micheldukuu@gmail.com>
Date: Wed, 6 Oct 2021 11:12:33 +0000
Message-ID: <CAB6bEpK=F2ZBkeD0UMJKUhtQ1q+KJy7P_g-4gBVFwsUG8TumPg@mail.gmail.com>
Subject: Please Respond Urgently
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
Reply-To: mrmichelduku@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings,

I know that this mail will come to you as a surprise as we have never
met before, but never mind i have decided to make this contact with
you as I believe that you can be of great assistance to me. I need
your assistance in transferring the sum of $11.3million to your
private account Where this money can be shared between us.

The money has been here in our Bank lying dormant for years now
without anybody coming for the claim. I want to release the money to
you as the relative to our deceased customer (the account owner) who
died in a plane crash with his family since October 2005.

By indicating your interest I will send you the full details on how
the business will be executed.

Best Regards,
Michel Duku.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
