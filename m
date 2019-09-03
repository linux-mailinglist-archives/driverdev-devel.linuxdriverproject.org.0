Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3686EA6DFE
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 18:23:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A768787695;
	Tue,  3 Sep 2019 16:22:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mKwSnlQS9BXA; Tue,  3 Sep 2019 16:22:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8533087658;
	Tue,  3 Sep 2019 16:22:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C5161BF27F
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 16:22:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 58C1D20497
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 16:22:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dA4ekSCgEZw8 for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 16:22:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f201.google.com (mail-qt1-f201.google.com
 [209.85.160.201])
 by silver.osuosl.org (Postfix) with ESMTPS id A3D2920018
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 16:22:51 +0000 (UTC)
Received: by mail-qt1-f201.google.com with SMTP id k13so19475377qtp.15
 for <devel@driverdev.osuosl.org>; Tue, 03 Sep 2019 09:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=UrlqrCIUzfMhHCe5wLYX0g77V45RijxDNiDyP3pgT14=;
 b=kSu3Gk9PM4NfwgdqpreP7IkrcxZKUGfh/Gg2sQoZAg2CdsYxa8/nOjytFhOHd2YQvY
 sDChXAY8pVl0ut4pI8JJimC7cOyd0egf6mtNQrRgTeRRPhG86RGOVUOEOHm74Xvg0TSJ
 ilk0dgeJec4iYaHwUhXXDvtacqrE65ifpiOtnrVSuFXQ6jBzvaqUGoRcTYsid92kONeh
 nsaIodZbK3IpsB54D+2AxH8vC8Pa1ApnCRHrDR46CLc6OcRjEgX4OygtVvPXTFgfl1Fw
 Pm3d5HVb8TQJLgrIL17SUCFT602XI4YiwEeKAzmEfeBcYZma/vBqdO3qUAl1OwUUXSlw
 96CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=UrlqrCIUzfMhHCe5wLYX0g77V45RijxDNiDyP3pgT14=;
 b=j7+MCfWqsQzkYFQbH7t6a24l1yGKGS26+ZIapZWGob4K45iqqloNfiou9KLt9fXa64
 5y1MFLVSgxmbNd62IUNW3/8B7IuzzO3b9xZpo/SFJKI5CdVm184zc1Wh3faU6AdcMs03
 +msuI22a1pNTSo3QOahjvEZ0rejsEU/ZclBSI3GlF7Db9F/hjiZE86dIrlRpsB4AyG37
 zj03jSNbf+531v52NhImuQJUc+E6chdtE6lWUAlPd/O3fBGgR4KVxq+X69+Ced1LfraO
 FPgYDFXoJefdy3OtAJFjZtD4tDHigiTTu+ClRqwbdSBtZumh+UCtAf7MI6gtz+cj2dXU
 Ub+w==
X-Gm-Message-State: APjAAAUoxe9UpLxn9tyKgefYX5J4yiFT7iEtqGa9IjjWqNKs9QfVxK81
 OTlcCWjjMlVLbTmMHKdL/D70kwb5jII=
X-Google-Smtp-Source: APXvYqx514tvSIuvTeW1+JBrh6dQloiVYGBy9lkamMCGeewg5BgyrCFeE8lQdhAeGjwqHdAf0hlbC5cQ+lQ=
X-Received: by 2002:a65:684a:: with SMTP id q10mr31337177pgt.417.1567527422227; 
 Tue, 03 Sep 2019 09:17:02 -0700 (PDT)
Date: Tue,  3 Sep 2019 09:16:51 -0700
Message-Id: <20190903161655.107408-1-hridya@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 0/4] Add binder state and statistics to binderfs
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

 drivers/android/binder.c          |  95 ++++++-----
 drivers/android/binder_internal.h |  84 ++++++++++
 drivers/android/binderfs.c        | 255 ++++++++++++++++++++++++++----
 3 files changed, 362 insertions(+), 72 deletions(-)

-- 
2.23.0.187.g17f5b7556c-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
