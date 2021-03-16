Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E7833CAC5
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 02:16:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F31504EC64;
	Tue, 16 Mar 2021 01:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EK-M8e1MUb8n; Tue, 16 Mar 2021 01:16:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 898B74EBF8;
	Tue, 16 Mar 2021 01:16:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 692411BF325
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 01:16:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 57DB460615
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 01:16:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yu5zuuHKGKNf for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 01:16:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE97B605F5
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 01:16:33 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id q5so8872400pgk.5
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 18:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+SfsrsMXLSqXOTLzBAkO12gaj/evRfWmTw9CDzEhlbc=;
 b=NRQ+OAE+VEiai1Uv40gDDF/yHm4Ndb7UxOHbsQ9LdX1VJ8lrLXlCxrY3TrheGB3FOi
 Vfc2FrDn/9st9oqYWoUkOA+eUdwXFVGndqmR3x3Ob0ei7ej8zi4AvAHsd6qU8sd/OQgH
 nvDUlA5QRDTq9Koxhoq0TA46CkXHWdiWaavEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+SfsrsMXLSqXOTLzBAkO12gaj/evRfWmTw9CDzEhlbc=;
 b=XS6+43FW84csdet1/6nKYpaUG4ExKCt0GNiP75AtXcuq4TVVyOIzYkwQ+hFhJacdFd
 wGhJ1+K0P1FoLnKgW/yrVnFZ5R06BOgQ+SzKf0+NNmn1x3u3ncMKnfMH11DVqG2JFphH
 o8cNAoApGrnzHjJIZ6+uU+ZQTcktF1Hb0kotpvXWw2Pbgco/q5Ue7lE0pCfcSAAIfz5n
 tD9UBpu3nM7gSh+XqljV5uTKP9lMB2o7hXPH7WWZi82FLqm5Qv82zMKuAXKfwigpyfjJ
 ky1/OLC3Y0pa0aH85VKMQ5rZ30e3Mr5G3AHg9PhxNLlGXblEEtZKplkLJfr4tSCLq7d9
 1mGA==
X-Gm-Message-State: AOAM531LnPt5PxBIIVANZomiydQ7Ue1c5371iWg/BYyJSKuIoSINSOMu
 4/f3UWqxxtpcefU87uE6t7mi3A==
X-Google-Smtp-Source: ABdhPJyy1mqVV9hxHes7oFUnZLcSEQeYmey0yEBwXV5iaPXNfhgzkzriNgX4M+s8ZPL28iOThsZeog==
X-Received: by 2002:a63:c343:: with SMTP id e3mr1655564pgd.8.1615857393156;
 Mon, 15 Mar 2021 18:16:33 -0700 (PDT)
Received: from li-cloudtop.c.googlers.com.com
 (254.80.82.34.bc.googleusercontent.com. [34.82.80.254])
 by smtp.gmail.com with ESMTPSA id 186sm15773381pfb.143.2021.03.15.18.16.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 18:16:32 -0700 (PDT)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [PATCH v3 0/3] Binder: Enable App Freezing Capability
Date: Mon, 15 Mar 2021 18:16:27 -0700
Message-Id: <20210316011630.1121213-1-dualli@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
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

To improve the user experience when switching between recently used
applications, the background applications which are not currently needed
are cached in the memory. Normally, a well designed application will not
consume valuable CPU resources in the background. However, it's possible
some applications are not able or willing to behave as expected, wasting
energy even after being cached.

It is a good idea to freeze those applications when they're only being
kept alive for the sake of faster startup and energy saving. These kernel
patches will provide the necessary infrastructure for user space framework
to freeze and thaw a cached process, check the current freezing status and
correctly deal with outstanding binder transactions to frozen processes.

Changes in v2: avoid panic by using pr_warn for unexpected cases.
Changes in v3: improved errcode logic in binder_proc_transaction().

Marco Ballesio (3):
  binder: BINDER_FREEZE ioctl
  binder: use EINTR for interrupted wait for work
  binder: BINDER_GET_FROZEN_INFO ioctl

 drivers/android/binder.c            | 198 ++++++++++++++++++++++++++--
 drivers/android/binder_internal.h   |  18 +++
 include/uapi/linux/android/binder.h |  20 +++
 3 files changed, 224 insertions(+), 12 deletions(-)

-- 
2.31.0.rc2.261.g7f71774620-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
