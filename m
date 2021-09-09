Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AB6405FFC
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 01:22:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53D05849DB;
	Thu,  9 Sep 2021 23:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WBpSvM4bQOHX; Thu,  9 Sep 2021 23:21:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27296849C4;
	Thu,  9 Sep 2021 23:21:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47D541BF27E
 for <devel@linuxdriverproject.org>; Thu,  9 Sep 2021 23:21:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 44A25849C4
 for <devel@linuxdriverproject.org>; Thu,  9 Sep 2021 23:21:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wFGVfZWjlSMN for <devel@linuxdriverproject.org>;
 Thu,  9 Sep 2021 23:21:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com
 [IPv6:2607:f8b0:4864:20::530])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C3C89849C3
 for <devel@driverdev.osuosl.org>; Thu,  9 Sep 2021 23:21:45 +0000 (UTC)
Received: by mail-pg1-x530.google.com with SMTP id q68so73192pga.9
 for <devel@driverdev.osuosl.org>; Thu, 09 Sep 2021 16:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rm+3UVIcZMThytS7gkgrDUkDqlZpQLMy/t2rhbmsclM=;
 b=btXHzvGxsEYzkhXLQTIS6OND1WAn42LjfqjjoQGrQJr9bkF734+K+O+QhHwkBA+tSy
 nNumVDAeooEObqdfbCcEyCi971v3gpgUHhgCRmmhCS8QQReIVrTWrG5ioyOtIGKDgElC
 T7T3g7sFMxAZp+goWz4cmDS7dxYk64kakL8dU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rm+3UVIcZMThytS7gkgrDUkDqlZpQLMy/t2rhbmsclM=;
 b=b/xu7HZFmgArTwy/E7uneV3Rudv9PXPvFFQ4ymduNIPNDQzmlNSGtwAOFD17FOQ/NI
 HkJ5SzUAcFyqGt5k2bZTc7P+u1pKeEya4/SmBVRXkYT+rf86fb912fCHBT3vHNB1syZC
 Mybu6oVCUEedSntmqr57Sn42d/sGp2ov7dLG6IVnXkwfznZ/ISJqUPwId27tbj7+/XDD
 CdPSo3j02CcuW530PjL8acgVbkRIrNnVV5BKGZDaZQyX38oI26Zho8sV/JtrG5mBon6x
 ybB0tdvebKevCmNLTVPLUZoy5bbydmsRePNv+fBcKPtKuDmyZdEkTF9a98nVZdBP9QKZ
 mI8A==
X-Gm-Message-State: AOAM532NyxNP54GLFGQCIrol8oA8Jc9pWXZcqrE290QbZ/XAePaGm2nk
 jMBM+fLY7Zgy1+l7Lb+5kH4/ng==
X-Google-Smtp-Source: ABdhPJyrj/jKsrBMRxLWEVvk/hB3cyNWALHhYtLDaeTxK+SdCxLZ2SFTQlnH9e6/+nIxcAWGSpgRyQ==
X-Received: by 2002:a63:b046:: with SMTP id z6mr4845857pgo.106.1631229705177; 
 Thu, 09 Sep 2021 16:21:45 -0700 (PDT)
Received: from li-cloudtop.c.googlers.com.com
 (254.80.82.34.bc.googleusercontent.com. [34.82.80.254])
 by smtp.gmail.com with ESMTPSA id f16sm3178210pja.38.2021.09.09.16.21.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Sep 2021 16:21:44 -0700 (PDT)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [PATCH v1 0/1] binder: fix freeze race
Date: Thu,  9 Sep 2021 16:21:40 -0700
Message-Id: <20210909232141.2489691-1-dualli@chromium.org>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
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

As there isn't an atomic operation to freeze the main thread and binder
interface together, it's possible the main thread initiates a new binder
transaction while the binder interfaces are already frozen. This race issue
will result in failed binder transaction and unexpectedly crash the app.

This patch allows a post-froze rollback mechanism by checking if there's
any new pending binder transaction waiting for response. At the same time,
it treats the response transaction like an oneway transaction so that the
response can successfully reach the frozen process.

Li Li (1):
  binder: fix freeze race

 drivers/android/binder.c          | 32 +++++++++++++++++++++++++++----
 drivers/android/binder_internal.h |  2 ++
 2 files changed, 30 insertions(+), 4 deletions(-)

-- 
2.33.0.309.g3052b89438-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
