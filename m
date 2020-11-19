Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2B62B8E44
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Nov 2020 09:56:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 04B9286A33;
	Thu, 19 Nov 2020 08:56:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ypWwT6dZRDwZ; Thu, 19 Nov 2020 08:56:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EEC28869D0;
	Thu, 19 Nov 2020 08:56:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C6771BF3D0
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 08:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 18D3886CE7
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 08:56:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HcR6e1mgbi1W for <devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 08:56:48 +0000 (UTC)
X-Greylist: delayed 00:27:32 by SQLgrey-1.7.6
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com
 [209.85.219.202])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A28C386CE2
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 08:56:48 +0000 (UTC)
Received: by mail-yb1-f202.google.com with SMTP id u37so6334344ybi.15
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 00:56:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=sender:date:message-id:mime-version:subject:from:to:cc;
 bh=81mSmqAt+DDKbAEgLE/Wz5sPpfws9ggf7r+1ve0W/Wk=;
 b=E0aZcpxN2P2AVWhKSW6to7t826wYwxN2CGTKh0jlSZ901IvKkL1SD/LA4PuvwCOwjx
 usZhKMy1RBhEOeg2S17DjOk7VLen/MDrogsMuB5TcyAQe/lmau8naLmkciQM5oueDU4j
 H9gzsKWRve4WARBlmMsJyd+6GNRrKkm/u/Gbgy6K+fLggV6sea1Ij5x8uKmUlpA7zBAY
 Jt+T8iq6LTvaylImilgj/R2DZ9/9mdVjP2RQbIjS0pjpWzJ38yI1jJ/6yx1/d2oKc+H/
 22diMlbN0GvTKl+aPU2ZUCbB9TMUYJjXKDELUbfAiOXkBst3UYBwFL9ZeColpxu8tf+l
 Iz9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
 :to:cc;
 bh=81mSmqAt+DDKbAEgLE/Wz5sPpfws9ggf7r+1ve0W/Wk=;
 b=KTICECFdntrn4YtBkttOij5qNG8oyfshGd0Jn7/ozBQEYehZLhWWLl8CUfbJoHr6za
 1RObXl7Swl4CWBnHdW2w4KmLY1ObKY9niPReY5w+bcUCRBjBYdzu0dmo/M3Q8GSucU30
 TpxZ83qE1taeaOxgI9Z9h8ZYGQ6gM2rZ3zKavddkTdJviQ8OaStzha1U0eeNv52BXcV9
 U186H569pK9z9cepgTAaC3cOvmPs8usn5QFbAdpXybjM8pyBlk0BKxzaWg0BOfhqZTuY
 Kqx+NdflexHafq9SNttgX291zQU1Jdo2rebP9dlyqw6Y+5CEmHBhMxCpBiIt19MOaGc8
 iPPQ==
X-Gm-Message-State: AOAM531zjY/mskw6bXmnmseyJhEzrDNs1mLTBFuxt4GgO6vuK1O1jHO1
 7Fa3/fHW00xpMq0mEnH1OTrQvUhuQEs3Ww==
X-Google-Smtp-Source: ABdhPJx4nHRJ9HBK0xGsF349VilqjBdUds2kPWTNILQ3mVJ7qMYLaGPDTbfU1Jm6LFL+Sf/pntsdHR1i+rj2PQ==
X-Received: from spirogrip.svl.corp.google.com
 ([2620:15c:2cb:201:42a8:f0ff:fe4d:3548])
 (user=davidgow job=sendgmr) by 2002:a25:4686:: with SMTP id
 t128mr14653855yba.109.1605774555483; Thu, 19 Nov 2020 00:29:15 -0800 (PST)
Date: Thu, 19 Nov 2020 00:29:03 -0800
Message-Id: <20201119082903.3601758-1-davidgow@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH] staging: hikey9xx: Specify HAS_IOMEM dependency for
 MFD_HI6421_SPMI
From: David Gow <davidgow@google.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, Brendan Higgins <brendanhiggins@google.com>,
 linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MFD_CORE is selected by MFD_HI6421_SPMI, and MFD_CORE depends on
HAS_IOMEM. If HAS_IOMEM is not set, this can cause a conflict in Kconfig
resolution, yielding the following error:

WARNING: unmet direct dependencies detected for MFD_CORE
  Depends on [n]: HAS_IOMEM [=n]
  Selected by [y]:
  - MFD_HI6421_SPMI [=y] && STAGING [=y] && OF [=y] && SPMI [=y]

By specifying HAS_IOMEM as a dependency for MFD_HI6421_SPMI (as
SPMI_HISI3670 already dows), this issue is resolved, and no such warning
appears when building on architectures without HAS_IOMEM.

Signed-off-by: David Gow <davidgow@google.com>
---
 drivers/staging/hikey9xx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/hikey9xx/Kconfig b/drivers/staging/hikey9xx/Kconfig
index b29f5d5df134..2e48ded92a7e 100644
--- a/drivers/staging/hikey9xx/Kconfig
+++ b/drivers/staging/hikey9xx/Kconfig
@@ -25,6 +25,7 @@ config SPMI_HISI3670
 # to be placed at drivers/mfd
 config MFD_HI6421_SPMI
 	tristate "HiSilicon Hi6421v600 SPMI PMU/Codec IC"
+	depends on HAS_IOMEM
 	depends on OF
 	depends on SPMI
 	select MFD_CORE
-- 
2.29.2.454.gaff20da3a2-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
