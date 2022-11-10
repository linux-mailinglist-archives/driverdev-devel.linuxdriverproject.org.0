Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5747A624BDF
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Nov 2022 21:34:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 723A440629;
	Thu, 10 Nov 2022 20:34:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 723A440629
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TU7F2AxpZHZI; Thu, 10 Nov 2022 20:34:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E881D4049A;
	Thu, 10 Nov 2022 20:34:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E881D4049A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BBF281BF3EE
 for <devel@linuxdriverproject.org>; Thu, 10 Nov 2022 20:34:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95F47812C6
 for <devel@linuxdriverproject.org>; Thu, 10 Nov 2022 20:34:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95F47812C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pQmOeZQe_3DL for <devel@linuxdriverproject.org>;
 Thu, 10 Nov 2022 20:34:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D622812C3
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D622812C3
 for <devel@driverdev.osuosl.org>; Thu, 10 Nov 2022 20:34:10 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 u8-20020a17090a5e4800b002106dcdd4a0so5933734pji.1
 for <devel@driverdev.osuosl.org>; Thu, 10 Nov 2022 12:34:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fveASnawEKq49sScldsH7xrgcmtVfcP4IVtANZfOHI4=;
 b=4NG23oCHOKvNm3cG1aw1LSaBU3IQ8clcRRMF7goHmnG9O6N3EtkLu8GagboWrOUa6r
 xkilcfNr1h0UJDTuVCYvJUyIAo4ay5sdDsHZYjIUqB4RXy+K/A+MMWqBSovtcRcgL8wX
 WledN5Hd00XskMYO+VAxIiWqljOGEu2c8DQ+an2+F4mzIBHSW/82IDi6N52aw5cWfsRP
 apkbgEWxkZ2Wn2nr8CLXcfynylPeehxSii7og7hrDgtLiyghawIxnP31z0J/Bh/bnmFK
 GHsHbveoCQJzpPvt4QGFyjXohnco7nqdilgEHmL4qVPwpTrkdESpZ8XymV9a2ejX5EP/
 hACA==
X-Gm-Message-State: ACrzQf2hg51PxHWDhLlWseFl7460tckNQPa/t4dOyiCYLnzSw9Vx/4yX
 pdAPkN6j0Hlxv8cewk/3ZlInHA==
X-Google-Smtp-Source: AMsMyM5oQevfguO7LmmIkR07MxOIUi+I2j37Ge7D8DUhPHBUiQcC3nQUzu9J/EoU25HgI3LiIAk9zQ==
X-Received: by 2002:a17:902:b20a:b0:178:6f5b:f903 with SMTP id
 t10-20020a170902b20a00b001786f5bf903mr67857044plr.39.1668112449765; 
 Thu, 10 Nov 2022 12:34:09 -0800 (PST)
Received: from li-cloudtop.c.googlers.com.com
 (30.161.125.34.bc.googleusercontent.com. [34.125.161.30])
 by smtp.gmail.com with ESMTPSA id
 d207-20020a621dd8000000b0056be1581126sm67703pfd.143.2022.11.10.12.34.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Nov 2022 12:34:09 -0800 (PST)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, gregkh@linuxfoundation.org, arve@android.com,
 tkjos@android.com, maco@android.com, joel@joelfernandes.org,
 brauner@kernel.org, cmllamas@google.com, surenb@google.com, arnd@arndb.de,
 masahiroy@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, hridya@google.com, smoreland@google.com
Subject: [PATCH v2 0/1] binder: return pending info for frozen async txns
Date: Thu, 10 Nov 2022 12:34:04 -0800
Message-Id: <20221110203405.611600-1-dualli@chromium.org>
X-Mailer: git-send-email 2.38.1.431.g37b22c650d-goog
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=fveASnawEKq49sScldsH7xrgcmtVfcP4IVtANZfOHI4=;
 b=I8kyV2WKMz19LsPkoABC4KCBlLbb6sBq8zHFxRiOQcZ2FYzU+B4dzHpSA5b1OQ4sa7
 robQmEgo1Lm9tM24LRMkGesNQaMKi15AKLbsfsJ/8TfL41FeUwzcSZYmSrdECkoP/t//
 255edwZnDyeamI3tMATmSuFv+LAkkOCy4z3i4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=I8kyV2WK
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

This patch adds a new return value, BR_TRANSACTION_PENDING, to fix this
issue. Similar to BR_TRANSACTION_COMPLETE, it means the async binder
transaction has been put in the queue of the target process, but it's
waiting for the target process to be unfrozen.

v1: checkpatch.pl --strict passed
v2: protect proc->is_frozen with lock, fix typo in comments

Li Li (1):
  binder: return pending info for frozen async txns

 drivers/android/binder.c            | 31 +++++++++++++++++++++++------
 drivers/android/binder_internal.h   |  3 ++-
 include/uapi/linux/android/binder.h |  7 ++++++-
 3 files changed, 33 insertions(+), 8 deletions(-)

-- 
2.38.1.431.g37b22c650d-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
