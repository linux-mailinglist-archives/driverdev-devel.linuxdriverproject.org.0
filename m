Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFA8406636
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 05:53:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BC9640101;
	Fri, 10 Sep 2021 03:53:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YxK7sgHmTA8G; Fri, 10 Sep 2021 03:53:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAEB3400FD;
	Fri, 10 Sep 2021 03:53:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D00F51BF5E9
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 03:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B81B7400FD
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 03:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TLMcRXNHS9TA for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 03:53:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0EE3A400EF
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 03:53:18 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id e7so646837pgk.2
 for <devel@driverdev.osuosl.org>; Thu, 09 Sep 2021 20:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pfdJOdOmsM6ToKNr90Fz5QjBqkh8c3AhWara0/FyVrc=;
 b=fFiMA6rNAn3DK+D8F8K5AGuQsh8OXmf/pcD6zbkp5mglBmTxNAZY5XTzlStz/C5Klj
 InwhaTNXfs38p26gFLnNG6ipD2zh3GpoIC0zMZoX2sO//gbmLW/lH/D5bxa/f95/5vWL
 0VhWXfkEn4D4n0AU5dD73U+TXgaDGy4DLCMRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pfdJOdOmsM6ToKNr90Fz5QjBqkh8c3AhWara0/FyVrc=;
 b=LSg415JzagbnzBeNDYySAsJhWiM2IT2yA9dIGcxQZoQGb3P1ut493OdLDHldRVVVcP
 gBkYG+ux+68j4Lv1UzXOkJlMHcaxA0MkZZDCXrMZb85LEpACqAx8VFBBmnKVGkrQJumS
 O6OSuL31MzeGZxOG9GouH/sAfBGjBY4icNhJcxHVdfNKcQ2B42P/A0wRJCzl6d0T7bUV
 7jxVTzZQTtivHTHstxMe3FmlfUwCXoTEkvrWu3rJ4R4HVTumS1u+pYOdRZasrEGu+HfR
 CDGW1BqyYSMTPFfZ+Mh8x50C4JsAAF8lKhYfYkuAKCn+B2iGJgfuUgphrC/kVnY7l7KE
 kp6A==
X-Gm-Message-State: AOAM530Gl5YvW1pXvXnXIDG9hD0ZHy4tC548HVBiEa+D9NOC49Gx62Xa
 BKbm0jjDApiWEwFOMG0s668b4Q==
X-Google-Smtp-Source: ABdhPJwUFOCOLN/I82PFf5+B3ZACQyefEKICYotjcoCUljFE/kT2iHCg0iiVM4yhIFlmKsZ+IJtYxw==
X-Received: by 2002:a63:f749:: with SMTP id f9mr5495088pgk.77.1631245998476;
 Thu, 09 Sep 2021 20:53:18 -0700 (PDT)
Received: from li-cloudtop.c.googlers.com.com
 (254.80.82.34.bc.googleusercontent.com. [34.82.80.254])
 by smtp.gmail.com with ESMTPSA id u8sm3374344pfk.212.2021.09.09.20.53.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Sep 2021 20:53:18 -0700 (PDT)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [PATCH v2 0/1] binder: fix freeze race
Date: Thu,  9 Sep 2021 20:53:15 -0700
Message-Id: <20210910035316.2873554-1-dualli@chromium.org>
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

Changes in v2:
1. Improve commit msg, adding "Fixes"
2. Adding missing "_ilocked" suffix to binder_txns_pending()
3. Document bit assignment of struct binder_frozen_status_info in binder.h

Li Li (1):
  binder: fix freeze race

 drivers/android/binder.c            | 34 +++++++++++++++++++++++++----
 drivers/android/binder_internal.h   |  2 ++
 include/uapi/linux/android/binder.h |  7 ++++++
 3 files changed, 39 insertions(+), 4 deletions(-)

-- 
2.33.0.309.g3052b89438-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
