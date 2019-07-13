Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EE267C17
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Jul 2019 23:27:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 49A1D8577A;
	Sat, 13 Jul 2019 21:27:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F4Pulzixkz0d; Sat, 13 Jul 2019 21:27:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 050C78562A;
	Sat, 13 Jul 2019 21:27:06 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 860461BF2F0
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 21:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 82B4886E5C
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 21:27:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vdmnV6ZDvY6L
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 21:27:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C5E6D86E1D
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 21:27:03 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id d15so9010986qkl.4
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 14:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ioD/pzR/zXMNX/8CHcD8aJRrT12bdY4yd0N9CRnuLdY=;
 b=aOj1CQeTh4uqZWk2geiEwbhxI6+qjHwR+vwmkKmf1OGByNhWIzy1e87ZeuATw++HgG
 Ri0yMQCvkQF51nkthYf3uK2U1v8lfb3aWaQICWgrjBcxVRrQjhPrZzzFLtSbtbWUWxM7
 UQKzb03FGIP01oE0iLhhMMWiJSDZtU1wUcDlyh8G/jg6ITa18WezBNXQo0Ct3kCLZaWR
 /FaIrGJbRDRzUyNMY87Bcy/t7b4Wmaq2etJKAvpWm9WfR+WU0oEldw6r61KnetBim3X7
 /KdyZJvhHXmsL5pW/BIbYZBm8ICIwLaZ2SrWC9b+q3N2PpGJK/rkJzuHjevbCpso7THg
 CAsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ioD/pzR/zXMNX/8CHcD8aJRrT12bdY4yd0N9CRnuLdY=;
 b=O03JfTl+x7qB2hZcl6BzpyVD7+UFY5hNtf0Chr7l23dmFINmBhXveJhPtMZo0FqrSo
 FK6yfg5t1cE47LFeVA/Qp3ykDPIatlq7ikrNgeZo9XptoWbm/EPBLdpiE0b+yCcrwRzv
 TJYbI+s+WmQDk83t04QitVFJ0GctKd5ziU37WWw1AO6AoofXZS2nFDm/91WvYgWXwUKf
 tohhzcKxo42+EV/bWA+wOfBeA1lKwOYPc+qsYrEp7g1g1afFGRrKI3b/rZENin0KWsk7
 MnbMvhroJGqo8f5cRC1IUml8zvqGEzJatJm/wTylZMw21tbBjxafSnLFWvLAos5Pyq/d
 LHVQ==
X-Gm-Message-State: APjAAAVFgYi6DPRkL0mpkZFzpkU0aXfzzjOfooyGJJDMura+FtQdAErB
 s+7v55U5eVWrkOkyMQJGt+o=
X-Google-Smtp-Source: APXvYqystk4gZoFMuHPFTzL5fxz6sM4JzfOyFLnq5mI0B6skaJIe/+DuGsxM7Di3hHv3HX8bUOhNRA==
X-Received: by 2002:a37:5d07:: with SMTP id r7mr11080743qkb.4.1563053222843;
 Sat, 13 Jul 2019 14:27:02 -0700 (PDT)
Received: from localhost.localdomain ([181.31.106.136])
 by smtp.gmail.com with ESMTPSA id b23sm8318619qte.19.2019.07.13.14.27.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 13 Jul 2019 14:27:02 -0700 (PDT)
From: christianluciano.m@gmail.com
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com,
 driverdev-devel@linuxdriverproject.org, christianluciano.m@gmail.com
Subject: [PATCH] staging: rtl8712: Add parenthesis to Macro argument
Date: Sat, 13 Jul 2019 18:26:52 -0300
Message-Id: <20190713212652.11095-1-christianluciano.m@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Christian Luciano Moreno <christianluciano.m@gmail.com>

Add parenthesis to Macro argument to avoid precedence issues.

Signed-off-by: Christian Luciano Moreno <christianluciano.m@gmail.com>
---
 drivers/staging/rtl8712/basic_types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/basic_types.h b/drivers/staging/rtl8712/basic_types.h
index 4ad7f35b1644..3e6d4ff45a75 100644
--- a/drivers/staging/rtl8712/basic_types.h
+++ b/drivers/staging/rtl8712/basic_types.h
@@ -21,7 +21,7 @@
 
 #define SIZE_T __kernel_size_t
 #define sint signed int
-#define FIELD_OFFSET(s, field)	((addr_t)&((s *)(0))->field)
+#define FIELD_OFFSET(s, field)	((addr_t)&(((s) *)(0))->(field))
 
 /* Should we extend this to be host_addr_t and target_addr_t for case:
  *	host : x86_64
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
