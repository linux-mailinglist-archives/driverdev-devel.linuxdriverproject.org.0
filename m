Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C42BF424B59
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 02:46:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BDBF60F6C;
	Thu,  7 Oct 2021 00:46:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TDi6o0XAkZJ1; Thu,  7 Oct 2021 00:46:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5178A60813;
	Thu,  7 Oct 2021 00:46:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A6FE1BF9B9
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 00:46:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 79B5260813
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 00:46:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2pQ8QgwpaaUc for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 00:46:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CE1C060717
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 00:46:33 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 t7-20020a258387000000b005b6d7220c79so5661380ybk.16
 for <devel@driverdev.osuosl.org>; Wed, 06 Oct 2021 17:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=RiNo10qigaewXNskXWDjf8RGesyfVGXCVVY+c8mvumk=;
 b=s9RM15/OlUmOcNzsadQlUngC5XCaFRvZDrvfpjpvjqc/Khpftz2AcowOqC++yIXKVX
 TbIowssKA+A1UTSXFVb6NNrpOCYjeZKB4DYG08HgyUn84iBIugHKvVpIY5/3IhQPH56g
 FeyZHf2B3CnS2uFxt/c/+CQrNtD28AY72artX5WoAZy4uoxz4FMFQCBhzLTkHEWEfvSQ
 pVJHFl2wSjwbX422PVf+sLxVugd5HFL6dxUdeJmOKMl11pFoivbdB4autoVk2iRo3cfC
 ccwCnvzY4faO5Pwpo3Bcql9HnMyQHBhqxNjqpPcEirGmjKeMMXX9KnpRKCq4tFKOrIrz
 Yilg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=RiNo10qigaewXNskXWDjf8RGesyfVGXCVVY+c8mvumk=;
 b=eSBzADS28qfEy8OALYWRA89ACDB4JHV5o5tfqlVbiOljhaz6oQsHT29AlYI3RGNJkt
 O8lL4MbNvM+HukBskDNVGFvxQR2nTWVX+IRlOLsnavIOjt02kTWTfHZX+8IAvYp2X4NR
 MHueZKO37VGoWBwEJTp7QUrflYDhIjKXYo6CHHQhVxV0Vo64ojMJ1ZqU9R+BPZc0XLDg
 YfjPGvjKwPFjZS2xzf6bRkd+C+LudJeEw4EoPhfSr1zEscCTrRFckftTBxgZqBx1JroD
 b+FG+glOQoyeCL+0EgNtIbTsIglffbbjYRrvJ3T1xt4rGV3VY0iRJTMGIJjt8oitbW5s
 NgSA==
X-Gm-Message-State: AOAM533Ewi/bJqw+bwnb0SCva4rH/RYAx0WX6DE2+eMJS5kBQiMZlK+R
 KsKsYtim/ya6phTedybj+R4Hm7s3lw==
X-Google-Smtp-Source: ABdhPJxv2Ot34RxVC2xJ0cMsLDuUENvC7xNWUpRNm7n8iUeJR1ye6f3+WgWQS4WtMn+OZXXvuRQNZAs1AA==
X-Received: from ava-linux2.mtv.corp.google.com
 ([2620:15c:211:200:6ff2:347f:ac4a:8a04])
 (user=tkjos job=sendgmr) by 2002:a25:a525:: with SMTP id
 h34mr1545139ybi.168.1633567592745; 
 Wed, 06 Oct 2021 17:46:32 -0700 (PDT)
Date: Wed,  6 Oct 2021 17:46:26 -0700
Message-Id: <20211007004629.1113572-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.800.g4c38ced690-goog
Subject: [PATCH v4 0/3] binder: use cred instead of task for security context
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

Todd Kjos (3):
  binder: use cred instead of task for selinux checks
  binder: use cred instead of task for getsecid
  binder: use euid from cred instead of using task

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
