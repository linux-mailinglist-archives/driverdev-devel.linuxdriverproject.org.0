Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 953E031F79C
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 11:51:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D70A187098;
	Fri, 19 Feb 2021 10:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ihPov0OHW8n9; Fri, 19 Feb 2021 10:51:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDE438706D;
	Fri, 19 Feb 2021 10:51:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CDD5F1BF2CC
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:51:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C86008747C
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:51:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lpvgwjHvo+Dm for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 10:51:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 566C88747A
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 10:51:18 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id u11so3133073plg.13
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 02:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=KpqDPrrwgSpJ0Jz+q1yA1PKOl7u983OV0CZZHBiD6uA=;
 b=CgaPuwcsXSa3rYSPFg4xNH+VojfgUAuQjRTWg61bCDiC8tt2m7Q55lE6n19K8Q2Ztv
 JExIG99WunwTL/AOkcDgFHty33pC59ZQcQiuEIuXWsntZH/uoLR39FGOFhMiXS8TdF8R
 R8V4rrtzmfMme0oKfNP9xvBQE5ObBRFzw2ngKIVNyj7q2rgP+nUOy/0cCFpqABjc+t36
 MluUoZTWGh4m3/HoeF5Tuw8+q3hHz5RuUwytOtFDglNi2XfMYluxyfu35UYEFmyOebtp
 mNmQWZlyvmcCW3Gmy64i93ClDPQ4v8vUmEk3s8mUsg4fjrI7TKTq6FPcxAvVl9Ldb5Z9
 dedw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=KpqDPrrwgSpJ0Jz+q1yA1PKOl7u983OV0CZZHBiD6uA=;
 b=J5VnHqMAGaawgkM6wjh4YHGMbWTtGkwABAozzfD+LEYoXNBZrR4L7vZVF4GewbWOUu
 uwV+oft2r/FGDFUFFrTR5kLYHaG72wPq8bMRBkH2jW9SDK0ML7Jhu53p/hivFSKgT7tj
 MSKxT+LiPZmY7n1P46IcqYrsgEPTG7fACWp/T4fwvOKCmqQ8MyegsSfGBNoGWU40cvw9
 I6DmThA3GMUezhsfJC/tDXeudLAffIgWw9bKgFrNSdRhF7zAzWJOE+rkrgRkbnCXIGpM
 90MUdcgD8QiueZU2O2K7Tc5MtTy4p0KUx22Lkn35K3vrLpj4yzPwY1WMVOrfiPMf3oSj
 oXDA==
X-Gm-Message-State: AOAM530SEjzVx1ZldIRoc9W1Tr/aDvjSD3A4BZPk8V6qr6XxNT07QLke
 FY4OQo8pUcSVg7SBHBkOfzZSf2tNJgcxj/x7
X-Google-Smtp-Source: ABdhPJz0g9Cc0Ya0mhA5JNyXWod/f5fmyAfNmJgO5GgK+0zMBgx/qng58tTr0JUlNAYHhmJ0CKSI4g==
X-Received: by 2002:a17:90b:33c4:: with SMTP id
 lk4mr8997503pjb.157.1613731877797; 
 Fri, 19 Feb 2021 02:51:17 -0800 (PST)
Received: from gmail.com ([2401:4900:3847:831e:690e:964b:81e9:e810])
 by smtp.gmail.com with ESMTPSA id i7sm8233633pjs.1.2021.02.19.02.51.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 02:51:17 -0800 (PST)
Date: Fri, 19 Feb 2021 16:21:12 +0530
From: Prakash Dubey <prakashdubey1999@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: fwserial: fix alignment of function parameters
Message-ID: <20210219105112.GA8315@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following checkpatch.pl check:

CHECK: Alignment should match open parenthesis

Signed-off-by: Prakash Dubey <prakashdubey1999@gmail.com>
---
 drivers/staging/fwserial/fwserial.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index a92741b8b6c6..137e97c9406c 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -1318,8 +1318,8 @@ static int fwtty_break_ctl(struct tty_struct *tty, int state)
 	if (state == -1) {
 		set_bit(STOP_TX, &port->flags);
 		ret = wait_event_interruptible_timeout(port->wait_tx,
-							!test_bit(IN_TX, &port->flags),
-							10);
+						       !test_bit(IN_TX, &port->flags),
+						       10);
 		if (ret == 0 || ret == -ERESTARTSYS) {
 			clear_bit(STOP_TX, &port->flags);
 			fwtty_restart_tx(port);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
