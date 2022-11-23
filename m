Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C50636AB6
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Nov 2022 21:17:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 766E6610BF;
	Wed, 23 Nov 2022 20:17:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 766E6610BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pL8IMnH_ywMx; Wed, 23 Nov 2022 20:17:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0715960B14;
	Wed, 23 Nov 2022 20:17:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0715960B14
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5449B1BF59F
 for <devel@linuxdriverproject.org>; Wed, 23 Nov 2022 20:17:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 290DD60BBE
 for <devel@linuxdriverproject.org>; Wed, 23 Nov 2022 20:17:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 290DD60BBE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TmqsCzzZ4Xqh for <devel@linuxdriverproject.org>;
 Wed, 23 Nov 2022 20:16:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6353F60B14
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6353F60B14
 for <devel@driverdev.osuosl.org>; Wed, 23 Nov 2022 20:16:59 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id f3so17705933pgc.2
 for <devel@driverdev.osuosl.org>; Wed, 23 Nov 2022 12:16:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OIFoNBLa7BYURFlxQcFcpdXU2Rg82ywkO8IDAgROWHU=;
 b=vLjUP3PMkWqh+e+2DVSFiTrEPhf+LX2xyBpntzs/X9Gz8U7SkyGb2KrEe+vpAjpZtW
 0usWaRxm9HiZQORqStDXG9jfHBU5b0m3BV95IdyTct+hJsqfVt/WM7OeP3Ri0g8yoIop
 RBvHdl8+HTLjbaWcirnnAGWOSsCfaCX2YN6LenNZgvnT7I/pcUMOuJe5WUUgYUaJMGfo
 fj3XQJUoBAGfqdLapFoJVZqFdx86gi4Br1rIfHK7dH7cU4Z0xqathgGOoM2wIiXmuo9M
 klIPqzHGpUMOzwu1iMWeWuIhHQJsFzAXC+bGd1DyXLZ2LfUV46Ev6RqsRR+Wwb4MAPUs
 ij2w==
X-Gm-Message-State: ANoB5pkDPcI/lFoAZVEGhRjJ/3m4tXLxE4q7NI35/h5Q0tHyvcG3duNP
 noeBr/LMtbDuFtniU/xePGK25g==
X-Google-Smtp-Source: AA0mqf5zIONAlhPLlmEX4AzB26dFYV+eRWkYaSEfrqVDlBz4qZA6nsDP4x0aoyykJSYe0pgSOTfI7Q==
X-Received: by 2002:a05:6a00:22ca:b0:56e:64c8:f222 with SMTP id
 f10-20020a056a0022ca00b0056e64c8f222mr32101937pfj.71.1669234618753; 
 Wed, 23 Nov 2022 12:16:58 -0800 (PST)
Received: from li-cloudtop.c.googlers.com.com
 (30.161.125.34.bc.googleusercontent.com. [34.125.161.30])
 by smtp.gmail.com with ESMTPSA id
 85-20020a621958000000b0056b4c5dde61sm13474210pfz.98.2022.11.23.12.16.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Nov 2022 12:16:58 -0800 (PST)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, gregkh@linuxfoundation.org, arve@android.com,
 tkjos@android.com, maco@android.com, joel@joelfernandes.org,
 brauner@kernel.org, cmllamas@google.com, surenb@google.com, arnd@arndb.de,
 masahiroy@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, hridya@google.com, smoreland@google.com
Subject: [PATCH v3 0/1] binder: return pending info for frozen async txns
Date: Wed, 23 Nov 2022 12:16:53 -0800
Message-Id: <20221123201654.589322-1-dualli@chromium.org>
X-Mailer: git-send-email 2.38.1.584.g0f3c55d4c2-goog
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=OIFoNBLa7BYURFlxQcFcpdXU2Rg82ywkO8IDAgROWHU=;
 b=Y8Yycm4Rl7KJcmnJrrix2givTqZv+PvfZ6oAN1RsxUW8MTU9MNzXh6EV341qRi8tKU
 /x3x6NJxfnmjdWl6gmbLiXAT79x8cxrxbNajgCIB5zAuucFQ5H0tGvFaqr6+S/yWYIGH
 6yBdFs3FtCo3gLc6rnnRlXM6vk4xK12fiheC0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=Y8Yycm4R
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
Cc: kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Li Li <dualli@google.com>

User applications need to know if their binder transactions reach a
frozen process or not. For sync binder calls, Linux kernel already
has a dedicated return value BR_FROZEN_REPLY, indicating this sync
binder transaction will be rejected (similar to BR_DEAD_REPLY) as the
target process is frozen. But for async binder calls, the user space
application doesn't have a way to know if the target process is frozen.

This patch adds a new return value, BR_TRANSACTION_PENDING_FROZEN, to
fix this issue. Similar to BR_TRANSACTION_COMPLETE, it means the async
binder transaction has been put in the queue of the target process, but
it's waiting for the target process to be unfrozen.

v1: checkpatch.pl --strict passed
v2: protect proc->is_frozen with lock, fix typo in comments
v3: rename BR_TRANSACTION_PENDING to BR_TRANSACTION_PENDING_FROZEN to
    signify the frozen scenario and avoid potential confusion

Li Li (1):
  binder: return pending info for frozen async txns

 drivers/android/binder.c            | 32 +++++++++++++++++++++++------
 drivers/android/binder_internal.h   |  3 ++-
 include/uapi/linux/android/binder.h |  7 ++++++-
 3 files changed, 34 insertions(+), 8 deletions(-)

-- 
2.38.1.584.g0f3c55d4c2-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
