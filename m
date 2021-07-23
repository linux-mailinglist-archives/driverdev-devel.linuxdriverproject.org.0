Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 931123D38F7
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Jul 2021 12:58:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 664D84023E;
	Fri, 23 Jul 2021 10:58:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rX2b4r1Kdxmm; Fri, 23 Jul 2021 10:58:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C352B401DF;
	Fri, 23 Jul 2021 10:58:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEB371BF34A
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 10:58:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DD5C5405D4
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 10:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Fz3Me7J0ZX0 for <devel@linuxdriverproject.org>;
 Fri, 23 Jul 2021 10:58:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A9C540202
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 10:58:05 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id i1so2733925plr.9
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 03:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t+FqGGxo+8Q3DOE3V+t6HepJk3LbP5bm1unaF2sViJs=;
 b=U8Pr1kFjtsNj3MLwzBqIxqLnpWdjv0Slcjub57j4FLYnVL3wQjAH5xb6Hv3hQV6uK4
 /zRpK2Q6avespJikl9RSx3RTMi7A4VKPt9iIO2NHi1IPkuU25qveuwtlRsBOAc7vGKKE
 3X63nIXcN7BqPCG7QUGnJDKwngByQufXKIGQahmbavM3LTgT58J3DrLHV/U1Aw33zFWn
 xJtosJSUg3N6S3EFkYEWbnelBq5vHSoEbA97Dp+GcH95cTJjs9RNpCVm6dV6A8jfMk2s
 9Sb1IRZTQFrCBb6Nn+h9yHEvtCpAx1dn14GrQvWV7jGkrlBTtglG3q/dA9r/Gbv0abY/
 LkJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t+FqGGxo+8Q3DOE3V+t6HepJk3LbP5bm1unaF2sViJs=;
 b=ndr+6iZHQbF7Q5IyiO7Vd3zz0a4eG5cVmi9L4KGX6pH87FxIKlOJsTKjQT2bSDhrPs
 hsLWgIpJe5O14Aa9Dsh0KWPghKalmQqn/dWaQ8OxA4wSPpD9a1h1fxW/BpT2fZk+h0lj
 wF2gbBaJI56VMUWRaxzt1CaniBchMlZrgRWdESnd81ZAXcr5WbnO2EGHaA0gh7xFoQlI
 LdAPYLxkwvhiE0jqrAiDXwJdk1k/sg/vDCgTqVpyVQ73E9BIG6vOvba+AXWCEkD4US7e
 XCGsBKuGB2yRy+i9dozEIGKjgLemXA65iavrhf4cplxeWWSrqebb1P5J1itWLGOqV+Ow
 PuRQ==
X-Gm-Message-State: AOAM530AC+UmBtYBPl0t4020chBH3TshRnEFsq6POQ8cCEB2ZEOFv5Oy
 o9ne6WKScmau2gqcZjBbN+4=
X-Google-Smtp-Source: ABdhPJxN+x/W0u41/oD0zgw5vyLfCjqxbgIJunZH7nxsisedl2txAQDkvPHGVbeoJ9c/3P1KkkOg6Q==
X-Received: by 2002:a62:1a4b:0:b029:328:da0b:d83b with SMTP id
 a72-20020a621a4b0000b0290328da0bd83bmr3995259pfa.59.1627037884694; 
 Fri, 23 Jul 2021 03:58:04 -0700 (PDT)
Received: from localhost.localdomain ([2402:e280:2130:198:9b25:1cfb:9ff3:2a8f])
 by smtp.gmail.com with ESMTPSA id u21sm33115559pfh.163.2021.07.23.03.58.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 03:58:04 -0700 (PDT)
From: Benjamin Philip <benjamin.philip495@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH v2 0/3] Remove blank lines at drivers/rtl8188eu/core/rtw_ap.c
Date: Fri, 23 Jul 2021 16:27:50 +0530
Message-Id: <cover.1627029208.git.benjamin.philip495@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
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
Cc: devel mailing list <devel@linuxdriverproject.org>,
 Benjamin Philip <benjamin.philip495@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following few patches remove some blank lines that before or after a brace.

To test my changes, I have checked if it compiles (which it does). I also have
checked the patch with checkpatch.pl, which does not pass any warnings of any sort.

Changes in v2:
* Tested by building (no changes code)

This is my first patch to the linux kernel. I apologize for all the inconveniences caused
by my unfamiliarity with the kernel workflow.

I also have split each line I removed into a patch so that it is convenient for the
maintainer. I hope it is so.

Thanks,
Benjamin Philip

Benjamin Philip (3):
  staging: rtl8188eu: Remove blank line at core/rtw_ap.c:385
  staging: rtl8188eu: Remove blank line at core/rtw_ap.c:457
  staging: rtl8188eu: Remove blank line at core/rtw_ap.c:1143

 drivers/staging/rtl8188eu/core/rtw_ap.c | 3 ---
 1 file changed, 3 deletions(-)

-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
