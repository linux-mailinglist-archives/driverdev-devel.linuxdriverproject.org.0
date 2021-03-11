Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 317FE337CDB
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 19:46:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E075F431D0;
	Thu, 11 Mar 2021 18:46:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZSS0n0Ec8HMJ; Thu, 11 Mar 2021 18:46:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F5044301A;
	Thu, 11 Mar 2021 18:46:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CBFEE1BF9B4
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 18:46:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C82A0605ED
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 18:46:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EYfoo_aMqS3D for <devel@linuxdriverproject.org>;
 Thu, 11 Mar 2021 18:46:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com
 [IPv6:2607:f8b0:4864:20::530])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B332605A8
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 18:46:33 +0000 (UTC)
Received: by mail-pg1-x530.google.com with SMTP id l2so14250179pgb.1
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 10:46:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+gqARGgjAQnr55mFUijIK03G998er1GFZ5SCixV4R80=;
 b=QtlHbXolb8SN9mg3v2/7JBl319h23rtwHwXdGsaDMWaf4Pl0+qPGV9H+YG7vVhibvi
 DStAjNqHEd0C5VT9tV5TRubtqms+1Wy3/fo7dgOkzA618+2MI7Z4WBTDqho+/ZtEFYao
 eOpXwJZkHmub3MJNdJVKrIcyc4TaPKjOeGgqk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+gqARGgjAQnr55mFUijIK03G998er1GFZ5SCixV4R80=;
 b=Co7MHsGNDVj5G4JDpLk4oWTjDCdI8hfU6Aj0iZTh/4MtdxmT4hK0yYVvwSYl//ogoj
 A8gbKTfAm3Z4c4wSkir14JVUK8LaGFFm+Wnp3oHOB/zn/28hrJLqPrH3y5ngSHXVsZjo
 Y90qLFJKTP3axzBoqTWKLaxTHR5y53lPlLrn3jCGzo//xCOeREZUlR20EDn1niwLgpxT
 4qdnkEXQrPKdLJMLJG3fK22SinZPfW4vZqbZ6aEFQ7gyxJBxXp/6ol+k3NpioJB1w/Ow
 2ElIj0slhXhpJlcqP5p8FGvADywfboA3XOzDvgzEVmGAQncXxPEhQ9+1IZiJb8pEM/py
 cVLQ==
X-Gm-Message-State: AOAM532cPI1GGW0ZDaAsKWZ62G0bKviIZoj5e5OxuVJGBe4A8JDOrOni
 uZsvSKlZDhS/5azZUI9UgWW1Bw==
X-Google-Smtp-Source: ABdhPJwlBziDT3FhaXdYvPF6eDa8YqqHFIjIoTjx6XhgMxeOgn8cwk1uh/tks7FBVkr1hkxgkwzlMw==
X-Received: by 2002:a63:4d56:: with SMTP id n22mr8404937pgl.277.1615488393373; 
 Thu, 11 Mar 2021 10:46:33 -0800 (PST)
Received: from li-cloudtop.c.googlers.com.com
 (254.80.82.34.bc.googleusercontent.com. [34.82.80.254])
 by smtp.gmail.com with ESMTPSA id z2sm3108398pfq.198.2021.03.11.10.46.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 10:46:32 -0800 (PST)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [PATCH v2 0/3] Binder: Enable App Freezing Capability
Date: Thu, 11 Mar 2021 10:46:26 -0800
Message-Id: <20210311184629.589725-1-dualli@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
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

Changes in v2: avoid panic by using pr_warn for unexpected cases.

Marco Ballesio (3):
  binder: BINDER_FREEZE ioctl
  binder: use EINTR for interrupted wait for work
  binder: BINDER_GET_FROZEN_INFO ioctl

 drivers/android/binder.c            | 200 ++++++++++++++++++++++++++--
 drivers/android/binder_internal.h   |  18 +++
 include/uapi/linux/android/binder.h |  20 +++
 3 files changed, 226 insertions(+), 12 deletions(-)

-- 
2.31.0.rc2.261.g7f71774620-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
