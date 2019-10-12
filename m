Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 283A6D5186
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 20:06:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9BD4020511;
	Sat, 12 Oct 2019 18:06:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kf303+HSzPTg; Sat, 12 Oct 2019 18:06:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 869AA20119;
	Sat, 12 Oct 2019 18:06:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B8A31BF28C
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 18:06:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8891185F58
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 18:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ktNkTCjFjIjX for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 18:06:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 18E1285F44
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 18:06:23 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id i76so7657904pgc.0
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 11:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5j1A1CJrFknhucKXV20++wcqTBT5ww2z/OD9tkaD26o=;
 b=SaZNIuiDrKEnNoZYIo7lCHmujsACa2amAfuBhsTaGm7KVwYD3hUK40BRG+dmaeJtBI
 S5rHTr9oMIdsF2VoFMgaHWbNUgA4Ua4PWwkIzbWW9qWJoIDO0hNgUDUs00Ckah8WBfFc
 N/fa8bMtUsG+QcmliDMGU64r+7v1NXMQIXkKYxzPB40JPv3OHt4rJT91zXz4H6CwjaLT
 ZiL6Qq8TtnZJqy3/gkG3WwApo2EbVenrufjKeBq3H5SNbk0RFVgGM9T2E35Odc2YSL3Z
 VhNvT010sCWmWdbFtVp/XOILfp0a6ouMb57lDfh/xQjZEUTE9dzOhVxgJpPJ7o0/cIj6
 ksCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5j1A1CJrFknhucKXV20++wcqTBT5ww2z/OD9tkaD26o=;
 b=DMxWHlZPMFxiwqXxC4WX9p7obPNpuq2usp8omvh3acHdOMibTmf1hb+4rjGFv0SzhU
 uNG8L3tSWiNkdsdYdf593/Dp2r0DfOiM+EitJZpKbub7/AtNwfhEV1AT8A08E2jChaM1
 w1480u8L5DD/TlkpQlyuQTAKKUeJvKXRbBLqJG8/oyFqSLlde1HJZyKh6do/DCSsuK2P
 k3e9KP6hxhslny/x1ELtc+PuCnu28FqELgV/GEGzZChuk0vpI74uf3/sp6J14dO5GhxS
 KdzuyPfzosBj14xqvzDXsP0FiN0ABu+lgVAdWqJMEFP2n4Uhk7xdTX31BZ70ALCxAAdY
 ReHw==
X-Gm-Message-State: APjAAAUNWlzMJXEky7pEO1Do4fU4onjK0W+R553HorHm6AIoaRM9TiMc
 1W3LZvmwFQ2DHn8RVJX77lM=
X-Google-Smtp-Source: APXvYqwBV347Nx/aSoHRscUq8iPnAExlrRI25Dz7W2NV+WG/Bz8qcKiASHZXBnHMxQQfGhKR9a664g==
X-Received: by 2002:a17:90a:a411:: with SMTP id
 y17mr25941035pjp.116.1570903582596; 
 Sat, 12 Oct 2019 11:06:22 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id p17sm12183475pfn.50.2019.10.12.11.06.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:06:22 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/5] staging: octeon: remove typedef declaration for
 cvmx_fau_op_size
Date: Sat, 12 Oct 2019 21:04:35 +0300
Message-Id: <0130bbbffd4c3c9e0e2ab0fc02cb7fa704ee410c.1570821661.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570821661.git.wambui.karugax@gmail.com>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove addition of new typedef for enum cvmx_fau_op_size.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/octeon-stubs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index db2d6f64b666..1b72f02a361f 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -205,12 +205,12 @@ enum cvmx_fau_reg_32 {
 	CVMX_FAU_REG_32_START	= 0,
 };
 
-typedef enum {
+enum cvmx_fau_op_size {
 	CVMX_FAU_OP_SIZE_8 = 0,
 	CVMX_FAU_OP_SIZE_16 = 1,
 	CVMX_FAU_OP_SIZE_32 = 2,
 	CVMX_FAU_OP_SIZE_64 = 3
-} cvmx_fau_op_size_t;
+};
 
 typedef enum {
 	CVMX_SPI_MODE_UNKNOWN = 0,
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
