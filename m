Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 872B7334C34
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 00:07:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EEF6242FF5;
	Wed, 10 Mar 2021 23:07:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f_fy8sCJvoGI; Wed, 10 Mar 2021 23:07:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25B4240175;
	Wed, 10 Mar 2021 23:06:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E93781BF29E
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 22:53:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1BFC4AA2C
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 22:52:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ixa-2WmFvL72 for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 22:52:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A76249771
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 22:52:54 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id t18so2460594pjs.3
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 14:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xceL2rrz5muxxXaFpXKbAe7z2y2J/Hz3q5dv+FSBpyg=;
 b=hS8aIW+Yt/OFEMTo4xIu6Tvk1YCBuq127Ex1VhmNXR+TaOpmB5tCs5UGwsvuzoexHQ
 UWuClhqUrTHb5mNaZlox6Ht8wZgpW98eIB4wBE3IrObOif/XbeGoI3m2aFa5ukFWiLtm
 swDj+r0/8dIhdku09dEqShdqYG/ScIzLPLqug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xceL2rrz5muxxXaFpXKbAe7z2y2J/Hz3q5dv+FSBpyg=;
 b=bmmMUL2Med6woSSCThOP/f3jI5PoCgq/LGqlDijxWwSl7qR/yeqPNH78HdeEOAB0Si
 HKSajGU9SDtftIKIhpGR+qPb4EC5Zh1Slt8fjbdJWzZ9kARRuFf7nX7lpt6slSTDwR1X
 QZ04RsIyPhtqFLzYo1XxHMgjueXMu4e0ox+WnLLAtRKtryDOqgwyrfcjf+BKmK5orWOM
 w3JXW5FeQwsPyxxSEKaml6PmLn6RkXkDaSBdESLg3BnM0G9dgWlRcIGaRTyTIJvFIGwn
 m/dOqm64uCJJZFK5Ac+owi7iUW/R1whnm3HD+Km3vlB51m7KQJ9MPieqyBFpCFkKUryP
 K+HQ==
X-Gm-Message-State: AOAM531W/UwUttYt+/NU68Sp1zB65Mw+uNyJvXf+eA0Ro4R8x9tt69dP
 yBWZRy4AaEBkv24wWPf7nZnRfA==
X-Google-Smtp-Source: ABdhPJztd6S7CLxtE4/aHpkKlretTOkcV598udASVtD7x6Jq37Ei7re5BnZbxujJLo5zhHf4dyKQBA==
X-Received: by 2002:a17:90b:e18:: with SMTP id
 ge24mr5804981pjb.199.1615416773769; 
 Wed, 10 Mar 2021 14:52:53 -0800 (PST)
Received: from li-cloudtop.c.googlers.com.com
 (254.80.82.34.bc.googleusercontent.com. [34.82.80.254])
 by smtp.gmail.com with ESMTPSA id t22sm353384pjo.45.2021.03.10.14.52.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 14:52:53 -0800 (PST)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [PATCH v1 0/3] Binder: Enable App Freezing Capability
Date: Wed, 10 Mar 2021 14:52:48 -0800
Message-Id: <20210310225251.2577580-1-dualli@chromium.org>
X-Mailer: git-send-email 2.31.0.rc1.246.gcd05c9c855-goog
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
Cc: joel@joelfernandes.org, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Li Li <dualli@google.com>

To improve the user experience when switching between recently used
applications, the background applications which are not currently needed
are cached in the memory. Normally, a well designed application will not
consume valuable CPU resources in the background. However, it's possible
some applications are not able or willing to behave as expected, wasting
energy even after being cached.

It is a good idea to freeze those applications when they're only being
kept alive for the sake of faster startup and energy saving. These kernel
patches will provide the necessary infrastructure for user space framework
to freeze and thaw a cached process, check the current freezing status and
correctly deal with outstanding binder transactions to frozen processes.

Marco Ballesio (3):
  binder: BINDER_FREEZE ioctl
  binder: use EINTR for interrupted wait for work
  binder: BINDER_GET_FROZEN_INFO ioctl

 drivers/android/binder.c            | 196 ++++++++++++++++++++++++++--
 drivers/android/binder_internal.h   |  18 +++
 include/uapi/linux/android/binder.h |  20 +++
 3 files changed, 222 insertions(+), 12 deletions(-)

-- 
2.31.0.rc1.246.gcd05c9c855-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
