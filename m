Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E119F462
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 22:42:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 71DFA22234;
	Tue, 27 Aug 2019 20:42:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Phggn4qOTxNX; Tue, 27 Aug 2019 20:42:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0089E2151F;
	Tue, 27 Aug 2019 20:42:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 03B551BF355
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 20:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F060721505
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 20:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GQyPlquAtnYH for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 20:42:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f202.google.com (mail-pf1-f202.google.com
 [209.85.210.202])
 by silver.osuosl.org (Postfix) with ESMTPS id 5378B214EC
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 20:42:00 +0000 (UTC)
Received: by mail-pf1-f202.google.com with SMTP id e13so226150pff.9
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 13:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=LJptmiK1btd/bB95w4TiVPIKC2dOAjGnNGL3U/KjokA=;
 b=ZuouN4ZFBETCtERSSVFZ0salbufQVVf0J3cVYgPxhSD9AoPdsTJvQRue6tIyh9GJ8h
 rAWP5LrnzvOTnNSOFrfH2ADODIW5lMqik8Bv+wLrBPnv1nqVdcY2+yaMQkvjVkxkH1y8
 y/qBHf5A3gpeQZEKDqWu4oUgc+KUd5TBmyCv22fG9SsnbNOtFoo0VK7VPtqu2tWLwoOQ
 nt4dERai2jvfo3mQU6NpuN2DzPUYec31msebPLJGDZR6tpxIErKmxC/pfZrCsCaSdcXi
 Wjda+Hw873r10nlb6RduCNd4rgKm5zjJ4gH2aHkYUSxIS+6oZM+gjHtD/ZUHQe8kymOB
 phWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=LJptmiK1btd/bB95w4TiVPIKC2dOAjGnNGL3U/KjokA=;
 b=KLuDqF6uegminpyX/nKz0F4w9bRBkXvsIh7rjiG7EBHadWi5/WNdlrUpz6VwPUMqel
 JBAqM7/CIAv7AlmOkZpC8p6EHHOv8Lpt/Km1go8eeeChpkY4p3VzRRDOa2pUq+HtdwP0
 ybhlqrndah+HpUhu6M/6UwAHH9zvOWtW1uPsgnmAOpd2u1/Xp2PEF0hZcLea6V2MIp+G
 7FrwlYTId/O7ciJa/tHqKRNfM42T5vVkMHGB2HpqUfp8WC1hLe6zAE/Gm3xEj5nHRn9M
 5Cj+Fv4MrE4Vvbx5Zg7TxxhsQHfV+Dm1oMEZVq8qLVrWgh8P3yLhq773xvYxKDuSqc6n
 zq6A==
X-Gm-Message-State: APjAAAUGRJRpc5Q+IBoRw8PoKNpVjQwfSWDjspgZXizvV+y40fdDb6oj
 jeCID9WWEaW04CuwSSUBQBIPKfHuIfk=
X-Google-Smtp-Source: APXvYqxu3WEe3wPUja6mVcmwhx+wmdvvyBml5N7haGyA00rIigiytswt6qtesqDqnWVUqBQWtR6PH/BcxTg=
X-Received: by 2002:a65:6557:: with SMTP id a23mr260111pgw.439.1566938519509; 
 Tue, 27 Aug 2019 13:41:59 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:41:48 -0700
Message-Id: <20190827204152.114609-1-hridya@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH 0/4] Add binder state and statistics to binderfs
From: Hridya Valsaraju <hridya@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
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
Cc: Hridya Valsaraju <hridya@google.com>, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently, the only way to access binder state and
statistics is through debugfs. We need a way to
access the same even when debugfs is not mounted.
These patches add a mount option to make this
information available in binderfs without affecting
its presence in debugfs. The following debugfs nodes
will be made available in a binderfs instance when
mounted with the mount option 'stats=global' or 'stats=local'.

 /sys/kernel/debug/binder/failed_transaction_log
 /sys/kernel/debug/binder/proc
 /sys/kernel/debug/binder/state
 /sys/kernel/debug/binder/stats
 /sys/kernel/debug/binder/transaction_log
 /sys/kernel/debug/binder/transactions

Hridya Valsaraju (4):
  binder: add a mount option to show global stats
  binder: Add stats, state and transactions files
  binder: Make transaction_log available in binderfs
  binder: Add binder_proc logging to binderfs

 drivers/android/binder.c          |  87 +++++-----
 drivers/android/binder_internal.h |  84 ++++++++++
 drivers/android/binderfs.c        | 256 ++++++++++++++++++++++++++----
 3 files changed, 355 insertions(+), 72 deletions(-)

-- 
2.23.0.187.g17f5b7556c-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
