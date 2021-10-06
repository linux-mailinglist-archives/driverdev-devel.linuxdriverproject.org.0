Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5BC424763
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Oct 2021 21:46:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D6558410E;
	Wed,  6 Oct 2021 19:46:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d2nqGgIZNemP; Wed,  6 Oct 2021 19:46:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E8BA840D8;
	Wed,  6 Oct 2021 19:46:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB1961BF9AF
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 19:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA73D40862
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 19:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GFbq6RLiWabS for <devel@linuxdriverproject.org>;
 Wed,  6 Oct 2021 19:46:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9729940843
 for <devel@driverdev.osuosl.org>; Wed,  6 Oct 2021 19:46:15 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 s66-20020a252c45000000b005ba35261459so4153857ybs.7
 for <devel@driverdev.osuosl.org>; Wed, 06 Oct 2021 12:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=zeBwNlDoWoc6hewgbBFOSf0IbwrMqp7EIQyS/tILiuA=;
 b=QTqrR48AsqVhuPqy1PxKG1Y5IC8aLCxSncaEgXDbLH9avUoW0EbJle6j7ssOzIruus
 ZwDOiyleOymrMvvlMVCqxnEQT/z5Ys5+kgrzUr+pJxNTbBDDaqkDMHZ4ipFXxwihV8MF
 0unQK1jaxfaUsKxcryhs+xPyrAVmdo3hMMNh7cUrXAqdpX8CPJvtyedrihtXkRH4m6BA
 HWnYBBHqptcPpyOwn76ReutNQ+hLdOznlRqlrDejyolnmXCMfSfeJw2HeYPkDH3SICDF
 ztPNddQ/4BagBb8ROAWtUrC54pgum5IoJmWjbzuYvqhKKETIvrVbRSa60DKvXhDPlLDm
 DH6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=zeBwNlDoWoc6hewgbBFOSf0IbwrMqp7EIQyS/tILiuA=;
 b=iEErzgQxXRZN4qvfJ5QCbCtQexazTE1s7IzSTVOsevCr9wuB0tgrX8MTf5OJhVG5dn
 lwSpBG2pQgbsYk3dFIq2sp9bFqP5yAJhjvHq/0zmyYix1Nw5V9KKQQkk9YiaeAM3jYvs
 vCvRft12VupDgxTwIf2RT0Jw/k403mtprquJpNoFJf2aO+lHHFo5rBPxxcWoZZZQhMau
 KcMMM/doHlKoLLT0zOUDbkQ+ErvlFU2p0ZRaJ+otDSneGr7OUdyWPMSOm69wJ9G0nNpF
 5Z+oUpCoNbDEjIfjgCFsx8/r7Q8kUzrW1+D65zg9JRlCh44XBid0ZzY6Yb0KbFk/xBcl
 pXEg==
X-Gm-Message-State: AOAM533HfBprIiUhYBOPfRGA8LbI3eF7/nQWKZNwqufjJtDhZkTFPKnA
 erXZmFKNIWX1F/O2XIxjsEZ96w0UvA==
X-Google-Smtp-Source: ABdhPJzKw784oDeJqW2PQeb3pJYAXmSHTh0N8s3rKTBeB5szm8C6rXRdBdEnjZCG2tkvsBw2iC6fL3kXfA==
X-Received: from ava-linux2.mtv.corp.google.com
 ([2620:15c:211:200:6ff2:347f:ac4a:8a04])
 (user=tkjos job=sendgmr) by 2002:a25:df84:: with SMTP id
 w126mr30874545ybg.109.1633549574377; 
 Wed, 06 Oct 2021 12:46:14 -0700 (PDT)
Date: Wed,  6 Oct 2021 12:46:07 -0700
Message-Id: <20211006194610.953319-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.800.g4c38ced690-goog
Subject: [PATCH v3 0/3] binder: use cred instead of task for security context
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

Todd Kjos (3):
  binder: use cred instead of task for selinux checks
  binder: use cred instead of task for getsecid
  binder: use euid from cred instead of using task
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
