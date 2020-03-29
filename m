Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E7C1970A5
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 23:59:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 49A3486078;
	Sun, 29 Mar 2020 21:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9XRk_aLNMPH7; Sun, 29 Mar 2020 21:59:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2843C86054;
	Sun, 29 Mar 2020 21:59:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C58A81BF286
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 21:59:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C1D2286054
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 21:59:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zp4hu7lbX-sD for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 21:59:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 68F1E86004
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 21:59:34 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id v1so18496510edq.8
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 14:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=VZcDTdfP2ba7YKJPprAjT0oa+5XH4v7NpfKHeC+zdho=;
 b=clvMjuEiL2fDbRQPg/f/plren+3Ft2PpmWEEwlipGhQmRE8bmPdNqC6C5mtOxBDIWg
 S/1xeMJhxF4c2K/qJKwgWyNEdSt98Z2TOuYUx9XvXryOESQoF7CUHOeqSVLfKsu0FfaI
 K9MWM4+Ikd/qC+jgk6Y/KGgXePrD/5rh1TRDucZnkENdq6NiTnOZ1M/SpeYQQTXtMNAu
 4QwK8ZwIeePvlNs/nnkB71mky1E6PM9EAGhzY8kMwyZPxDQ5m9PVQpIqVYrBxwzAl2Ud
 YHXjaldjmv6wodfP8d2E6c/EhT+Sr09ZGvu4TrhC/up3sxV//AqJ3GpgOAyfP1e2cIMN
 NWxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=VZcDTdfP2ba7YKJPprAjT0oa+5XH4v7NpfKHeC+zdho=;
 b=Sh4C02SlQ0M3b8ZgYLFcUx+RLau9W4Y/oQLTI0Lb9K+vRVWVEyOKcXsnaTssmnc/QE
 kl7KgQhNNQsHWLdSDBdDhaQ8YJimfqAx5jLfgJW8upeSSqYeRGA1rxdZuEwCY0EJ5K0W
 So6b6N32qCmMcXm19IQB2xprh+4CmuUYNyZw6MUTnba+VVM+5Qc3FXCAM5SBmjQZZKPh
 GXqaPZuER1m4ktVW1k685Y9vAyhUx+zevbcPSJhiEhanF4Z+5YP/8+VZnD8TMEW9y/XQ
 yYh2oQcNXvOk48zoVqluI4ngiAVjZvZJnmyIZFaEFtAWfKm8HOtBbcr2nr4qcB44rjck
 7pww==
X-Gm-Message-State: ANhLgQ1vHs+WkPrksN1YdP4vujTGhZJZiGEENMhw4uq/28m6eEfGcrfr
 8d4BsjaM8dJG8yuHYfi254L7sqHyTpQeWccLznk=
X-Google-Smtp-Source: ADFU+vva/kK5xbHDkm/H3N9Z7hchHEVir46l9JhRLqJ6Hr5FDL0veXu1rtY9osB/sXEcLnXC2OnxNl1Tap5GO+Jw8Dc=
X-Received: by 2002:a17:906:edc8:: with SMTP id
 sb8mr8555610ejb.342.1585519172542; 
 Sun, 29 Mar 2020 14:59:32 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?THXDrXMgTWVuZGVz?= <luis.p.mendes@gmail.com>
Date: Sun, 29 Mar 2020 22:59:21 +0100
Message-ID: <CAEzXK1p5uuRy9kxfxpTS+hNR-WGWtc-393HP5pPgzjUq_Q-RbA@mail.gmail.com>
Subject: [PATCH 01/01] staging: gasket: Fix incongruency in handling of sysfs
 entries creation
To: Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>, 
 Ben Chan <benchan@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 devel@driverdev.osuosl.org
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix incongruency in handling of sysfs entries creation.
This issue could cause invalid memory accesses, by not properly
detecting the end of the sysfs attributes array.

Signed-off-by: Luis Mendes <luis.p.mendes@gmail.com>
---

 gasket_sysfs.c |    3 +--
 gasket_sysfs.h |    4 ----
 2 files changed, 1 insertion(+), 6 deletions(-)

diff -uprN -X linux-5.6-rc7-vanilla/Documentation/dontdiff
linux-5.6-rc7-vanilla/drivers/staging/gasket/gasket_sysfs.c
linux-5.6-rc7/drivers/staging/gasket/gasket_sysfs.c
--- linux-5.6-rc7-vanilla/drivers/staging/gasket/gasket_sysfs.c
2020-03-23 01:31:56.000000000 +0000
+++ linux-5.6-rc7/drivers/staging/gasket/gasket_sysfs.c    2020-03-29
18:52:39.399925886 +0100
@@ -228,8 +228,7 @@ int gasket_sysfs_create_entries(struct d
     }

     mutex_lock(&mapping->mutex);
-    for (i = 0; strcmp(attrs[i].attr.attr.name, GASKET_ARRAY_END_MARKER);
-        i++) {
+    for (i = 0; attrs[i].attr.attr.name != NULL; i++) {
         if (mapping->attribute_count == GASKET_SYSFS_MAX_NODES) {
             dev_err(device,
                 "Maximum number of sysfs nodes reached for device\n");
diff -uprN -X linux-5.6-rc7-vanilla/Documentation/dontdiff
linux-5.6-rc7-vanilla/drivers/staging/gasket/gasket_sysfs.h
linux-5.6-rc7/drivers/staging/gasket/gasket_sysfs.h
--- linux-5.6-rc7-vanilla/drivers/staging/gasket/gasket_sysfs.h
2020-03-23 01:31:56.000000000 +0000
+++ linux-5.6-rc7/drivers/staging/gasket/gasket_sysfs.h    2020-03-29
18:52:56.487839090 +0100
@@ -30,10 +30,6 @@
  */
 #define GASKET_SYSFS_MAX_NODES 196

-/* End markers for sysfs struct arrays. */
-#define GASKET_ARRAY_END_TOKEN GASKET_RESERVED_ARRAY_END
-#define GASKET_ARRAY_END_MARKER __stringify(GASKET_ARRAY_END_TOKEN)
-
 /*
  * Terminator struct for a gasket_sysfs_attr array. Must be at the end of
  * all gasket_sysfs_attribute arrays.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
