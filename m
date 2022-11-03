Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F5561882A
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Nov 2022 20:06:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C608961007;
	Thu,  3 Nov 2022 19:06:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C608961007
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e9GZWxs3e_TK; Thu,  3 Nov 2022 19:06:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CB5E60671;
	Thu,  3 Nov 2022 19:05:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CB5E60671
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 26C8C1BF3C0
 for <devel@linuxdriverproject.org>; Thu,  3 Nov 2022 19:05:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 025C0404C1
 for <devel@linuxdriverproject.org>; Thu,  3 Nov 2022 19:05:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 025C0404C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dZUYVBaqVdkM for <devel@linuxdriverproject.org>;
 Thu,  3 Nov 2022 19:05:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AF62403B7
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2AF62403B7
 for <devel@driverdev.osuosl.org>; Thu,  3 Nov 2022 19:05:56 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id b5so2483606pgb.6
 for <devel@driverdev.osuosl.org>; Thu, 03 Nov 2022 12:05:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xTPyVtvwLQJHw9GIZEAspcuqMem8SnG9GJ/cx57p+QY=;
 b=C0LbQTdG0ttPZHXuve+rXjVz/SV3ZNFeFvPrhI1FjpwZoHfA7Frz9MKkDH3E28wWU/
 mEHMZiSgS8LJq4YIjamZNeUoB97y+CAzo5eOf+ADPJpOvMJVO9qSP/2M1brm8ikUapvI
 TkaXNtiwwbuAwMmUqW+JedEX7GuEe5N/Jhn+137ZVXpyUsakY4yLrN6clE/mUGQFcqyB
 VmD04gZvnrU/bcsXlji9kTPaSTORjGGmbAtCi3iASo2FuYzaDhmYfn7TuxW/SSmF4dYH
 VVAYUBG+E1BKyyHL5K7NB0+wZEnzejHs1r2qAzKaTTDLsoPSEOdRrsc4VQB58dZz5nOL
 I0Jw==
X-Gm-Message-State: ACrzQf3/2QOGgjFfennmDwI0Ymvf5u/t7nA6jxujKt17eSkd1R0IOEPN
 jCT2eibLHUS1SZ0HIkjYmHCiyQ==
X-Google-Smtp-Source: AMsMyM7Ylop0fVj1dPQAh/0l7kc0yYBdAaiFk0ZRnROC2B2qyS8JfT69r5GIBsaZlnDFzG4SbUxRaQ==
X-Received: by 2002:a63:1145:0:b0:46a:e00c:579c with SMTP id
 5-20020a631145000000b0046ae00c579cmr27519259pgr.279.1667502355638; 
 Thu, 03 Nov 2022 12:05:55 -0700 (PDT)
Received: from li-cloudtop.c.googlers.com.com
 (30.161.125.34.bc.googleusercontent.com. [34.125.161.30])
 by smtp.gmail.com with ESMTPSA id
 q13-20020a63d60d000000b0046ae5cfc3d5sm1070973pgg.61.2022.11.03.12.05.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Nov 2022 12:05:54 -0700 (PDT)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, gregkh@linuxfoundation.org, arve@android.com,
 tkjos@android.com, maco@android.com, joel@joelfernandes.org,
 brauner@kernel.org, cmllamas@google.com, surenb@google.com, arnd@arndb.de,
 masahiroy@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, hridya@google.com, smoreland@google.com
Subject: [PATCH v1 0/1] binder: return pending info for frozen async txns
Date: Thu,  3 Nov 2022 12:05:48 -0700
Message-Id: <20221103190549.3446167-1-dualli@chromium.org>
X-Mailer: git-send-email 2.38.1.431.g37b22c650d-goog
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=xTPyVtvwLQJHw9GIZEAspcuqMem8SnG9GJ/cx57p+QY=;
 b=NSiUbzUjU9/BG/mNkp6zWKE1oIVW4/YEy2Mq5C77lqgnE1na+uP1bu5KbKY7zz/Dlq
 h5FFfqVSHeay/uc3T9IG9KqLTzY4noe0Uiy53kDkglT1/H1pp0XqqXYuSUBSTDBJNFZ6
 k3fz8aOOKEp2yyNwlE8XZJ5i4TbxL3EB99t3U=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=NSiUbzUj
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

This patch add a new return value, BR_TRANSACTION_PENDING, to fix this
issue. Similar to BR_TRANSACTION_COMPLETE, it means the async binder
transaction has been put in the queue of the target process, but it's
waiting for the target process to be unfrozen.

v1: checkpatch.pl --strict passed

Li Li (1):
  binder: return pending info for frozen async txns

 drivers/android/binder.c            | 23 ++++++++++++++++++++---
 drivers/android/binder_internal.h   |  3 ++-
 include/uapi/linux/android/binder.h |  7 ++++++-
 3 files changed, 28 insertions(+), 5 deletions(-)

-- 
2.38.1.431.g37b22c650d-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
