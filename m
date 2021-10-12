Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CB942AA1B
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Oct 2021 18:56:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB09640256;
	Tue, 12 Oct 2021 16:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bVr2Q34w6b3u; Tue, 12 Oct 2021 16:56:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 371B840196;
	Tue, 12 Oct 2021 16:56:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 94AAC1BF9B6
 for <devel@linuxdriverproject.org>; Tue, 12 Oct 2021 16:56:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 90AC260B95
 for <devel@linuxdriverproject.org>; Tue, 12 Oct 2021 16:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SpKYFYE3suIm for <devel@linuxdriverproject.org>;
 Tue, 12 Oct 2021 16:56:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA5196059E
 for <devel@driverdev.osuosl.org>; Tue, 12 Oct 2021 16:56:20 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 b9-20020a5b07890000b0290558245b7eabso27814455ybq.10
 for <devel@driverdev.osuosl.org>; Tue, 12 Oct 2021 09:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=JIJ5w4TMIICbNZUaDbjDGcHk/fSmd140jim7+0P9yU0=;
 b=TLi8XuzJrNiANRZDenlegnRSqXYaupn5KIuT6u+AGmWVTesxYxntdjILdiFZ+4PrhJ
 7/PAyZELdXYJpgv4pcmR30N9qdukWeLRK2+vJdjCh1wkQWtBdTlJRzNbG/suobRZniwJ
 mKzHZawACwZ8NAsZ92hZhXVvPOHIAaRwBVJIMXeMLtpTizrLqt4w3QpSPo0NlQyuL4Hs
 kLttaXi5jKewEVyxlw0/uO+UTCaOZ819/kfVmwDijiMJCZ6AQ7SGhPUQ4McuL/eOImAT
 Tyfi+2WRtwLKELmBp/XqbXRxrgtsNXkESC1z33xHdHzZjKvrrylU5YD7k7U8TfUZ2nT8
 WwLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=JIJ5w4TMIICbNZUaDbjDGcHk/fSmd140jim7+0P9yU0=;
 b=ULCMldLpvWbjiIKXg9rHB/3aKRssLQt9GY+X7X04qr0g+JnO0x2dnr2SdKz9921Du0
 LgvanONIsswXwWpDpavIj+ltdjCMPbSfdcBlzYd9JXSpt5hQbju2jf5SJ4yX3fRzt/hp
 SlEa/g6dllFm0jyKDctVDO21iMNkutgll7kAaWjuAaawTXjVqqmtEP9QV4qUXIE9WfoD
 jgWMxIO29HA6vdDftQhWPDWCrJwgGBZMQmnN1n3w6wE46iVK4S9Hh4l+5VZ1H/w8WtVH
 bx14Rl3Wekd19jKpV3UNWCpr/hBDbBInN5pNj+hkTWjcgEAPx154giu9asvRq1cwrv2U
 GJFA==
X-Gm-Message-State: AOAM530M7wmhInIjlaDka5OS9TVh0TFM+CGlmKummCjUZA9nfj5G0z1r
 nEiGfxyLo5FNhieLgXLRm7B17TG8Yw==
X-Google-Smtp-Source: ABdhPJyibaELnh3cCCM9a3Gh2OX2BWVk12YMcQGBurcM2T2GnhfAla+oUTJFMwQRfPSCuXIJVzOq7Gdcqw==
X-Received: from ava-linux2.mtv.corp.google.com
 ([2620:15c:211:200:39c7:8168:c0b2:b46e])
 (user=tkjos job=sendgmr) by 2002:a25:c013:: with SMTP id
 c19mr30563608ybf.255.1634057779213; 
 Tue, 12 Oct 2021 09:56:19 -0700 (PDT)
Date: Tue, 12 Oct 2021 09:56:11 -0700
Message-Id: <20211012165614.2873369-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.882.g93a45727a2-goog
Subject: [PATCH v5 0/3] binder: use cred instead of task for security context
From: Todd Kjos <tkjos@google.com>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com, 
 maco@android.com, christian@brauner.io, jmorris@namei.org, serge@hallyn.com, 
 paul@paul-moore.com, stephen.smalley.work@gmail.com, eparis@parisplace.org, 
 keescook@chromium.org, jannh@google.com, jeffv@google.com, 
 zohar@linux.ibm.com, linux-security-module@vger.kernel.org, 
 selinux@vger.kernel.org, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org
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
Cc: joel@joelfernandes.org, kernel-team@android.com,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series fixes the possible use of an incorrect security context
when checking selinux permissions, getting a security ID, or lookup
up the euid.

The previous behavior was to save the group_leader 'struct task_struct'
in binder_open() and using that to obtain security IDs or euids.

This has been shown to be unreliable, so this series instead saves the
'struct cred' of the task that called binder_open(). This cred is used
for these lookups instead of the task.

v1 and v2 of this series were a single patch "binder: use euid from"
cred instead of using task". During review, Stephen Smalley identified
two more related issues so the corresponding patches were added to
the series.

v3:
- add 2 patches to fix getsecid and euid

v4:
- fix minor checkpatch issues
- fix build-break for !CONFIG_SECURITY

v5:
- reorder/refactor patches as suggested by Stephen Smalley so eiud fix
  is first and saves the cred during binder_open()
- set *secid=0 for !CONFIG_SECURITY version of secuirty_cred_getsecid()

Todd Kjos (3):
  binder: use euid from cred instead of using task
  binder: use cred instead of task for selinux checks
  binder: use cred instead of task for getsecid

 drivers/android/binder.c          | 14 ++++++++------
 drivers/android/binder_internal.h |  4 ++++
 include/linux/lsm_hook_defs.h     | 14 +++++++-------
 include/linux/lsm_hooks.h         | 14 +++++++-------
 include/linux/security.h          | 28 ++++++++++++++--------------
 security/security.c               | 14 +++++++-------
 security/selinux/hooks.c          | 48 +++++++++++++-----------------------------------
 7 files changed, 60 insertions(+), 76 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
