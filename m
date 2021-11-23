Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A6645AC1D
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Nov 2021 20:18:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 026FA60A8A;
	Tue, 23 Nov 2021 19:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1AtFmSN2CsNA; Tue, 23 Nov 2021 19:17:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 693BA60A6A;
	Tue, 23 Nov 2021 19:17:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66BBB1BF30C
 for <devel@linuxdriverproject.org>; Tue, 23 Nov 2021 19:17:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54ECE80D67
 for <devel@linuxdriverproject.org>; Tue, 23 Nov 2021 19:17:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oLJV7Xq7LGtH for <devel@linuxdriverproject.org>;
 Tue, 23 Nov 2021 19:17:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C265B80D59
 for <devel@driverdev.osuosl.org>; Tue, 23 Nov 2021 19:17:45 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 v7-20020a25ab87000000b005c2130838beso299932ybi.0
 for <devel@driverdev.osuosl.org>; Tue, 23 Nov 2021 11:17:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=zzQE2/0f+XLR2kGU4qt01xqekYzdAVEvEi8bWEw/fiU=;
 b=U9VLJSGPNG+7rafa41zjmw9wu9ecJ3vdtXeEjSNnIQ+f7rJqnguvCqrk9LzwOMRlev
 w2wxZQmjJ6ioEn1e5XM+amdD2K+Qa/dk4TvGWbLJbC86kw8DADsYoDM+QmAbUdVICFXT
 Lt1E0e8eBzvZLvUoiWT44NlttEks4eC/wpkOui7kKHCKp62zLCX8LZm4M0TxEuHf9FLd
 OBKYq3xhWNu8b2mTKPdbte7ETq/d/rViTBAPaj2RrRsfn6PiMtccVuqSedC8Jwny0bUo
 jDEEe8YrtyR+l4HH6SS5SIHiZzhxpN8GKQnHoVvPZBt2BvMw3L44VJW1/zksBafvr/sA
 DfNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=zzQE2/0f+XLR2kGU4qt01xqekYzdAVEvEi8bWEw/fiU=;
 b=5OodeM9wlM6ZyRW6JNtVkgIx9gibJ2qoy8FC7uHVM8zY4abyn6vPeS4nLjgz7E580l
 YaKHLaPETNEBFhgEsS7aGKtRflOV/3MLBA4BEDUTxYq/8iObZY2l6Pw6Pw3kZUUTf9hU
 aHnH3GD2X89nEt3y8ha02lrmeKSKS6BZByp6qR+i++M7z7StT7Ejus67d4SBASQPsMQA
 IhIWbdh3+s2kRkn5kaH+ZoKdWJj/owZf8qLeg9TQjIDnnCqLeXiSDV9lOvpIMQYtM+/O
 NK4sph+NBP7vRtzZu5FLaVjZ8xAoiCFGE02miRuoBI5h8836H+pfsVYrGogTm6JWzmSJ
 scdA==
X-Gm-Message-State: AOAM533anDgfnp82F+jWJG9wVhEm2BEnuyS9z9kyREiEDJMXppStH12Y
 YaXzchIHBXMUFRbIdjsCHS7Bjx0OYQ==
X-Google-Smtp-Source: ABdhPJy+cyU6Dc+6JXrCnEQqfJlJt3b9RxYJKK6SdKqPNw613+/4UybKEHZ9OyPwV25x0syYrUtZuA7S7A==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:ac67:ee23:d7c5:aa3b])
 (user=tkjos job=sendgmr) by 2002:a25:ada5:: with SMTP id
 z37mr8996151ybi.93.1637695064659; 
 Tue, 23 Nov 2021 11:17:44 -0800 (PST)
Date: Tue, 23 Nov 2021 11:17:34 -0800
Message-Id: <20211123191737.1296541-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.0.rc2.393.gf8c9666880-goog
Subject: [PATCH 0/3] binder: Prevent untranslated sender data from being
 copied to target
From: Todd Kjos <tkjos@google.com>
To: tkjos@google.com, gregkh@linuxfoundation.org, christian@brauner.io, 
 arve@android.com, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 maco@google.com
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

Binder copies transactions directly from the sender buffer
to the target buffer and then fixes up BINDER_TYPE_PTR and
BINDER_TYPE_FDA objects. This means there is a brief time
when sender pointers and fds are visible to the target
process.

This series reworks the the sender to target copy to
avoid leaking any untranslated sender data from being
visible in the target.

Todd Kjos (3):
  binder: defer copies of pre-patched txn data
  binder: read pre-translated fds from sender buffer
  binder: avoid potential data leakage when copying txn

 drivers/android/binder.c | 442 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------
 1 file changed, 387 insertions(+), 55 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
