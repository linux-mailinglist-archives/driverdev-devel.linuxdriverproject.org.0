Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD22320D4F
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 20:55:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47D2683449
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 19:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HCK064sYb63b for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 19:55:49 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id 623DF83417; Sun, 21 Feb 2021 19:55:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0E07833CB;
	Sun, 21 Feb 2021 19:55:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 489311BF38B
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 19:55:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 452AA85A58
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 19:55:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jBvte4LQ3j2W for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 19:55:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 41EF985A37
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 19:55:16 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id a17so52155028ljq.2
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 11:55:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HB9B8oIruGylyRqCF6zX0rkKFDgB6LDCYxjHaA5K9kg=;
 b=AjUzG3hKbmjVWAkWPS5fRT3f2IWdAmqa6b92vEdvYU0Abb9HUCEx5/laaG5PG+cIl9
 SiQnKDyfzI4Xn9EKLMRPw+ucu8qLfuNdl+UnJkK9AWDNAZHSTYl6/4qusAKxei8dsEK0
 S3HJAjZGI6GNLbI6O5E2Eu1JSvqB+1+wgj0HoCZL7jL88SUFIWZVN0rdUEOcCOaPIria
 ZyZMzaSIK7XvDt5bNe/3H20tPbNYNQqAVnpfZMKoqmo7KxrJKELv0ZRNJqNK+B9rxnW2
 e1wmWCVmCy80vbwHOBWsgY+akgBpzesFmbARAnllNYkQhHaK4ngChJmx++r7EwlmUrKh
 PdbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HB9B8oIruGylyRqCF6zX0rkKFDgB6LDCYxjHaA5K9kg=;
 b=k1tXGv6Bdr2vasIczWvFWE67+AwlFMI2tQszu/JiZL1FSLb1zTQo588+EaIQNZqnZe
 xXjJ/ZhFfaTiOAazYoXtnOHv3FJ9ZtmSa2ScbeOC9id3VVg4FPqk3QHZBDqqCSMwp29Q
 +E5iorCeQQtyPHa/LNl+5bVWDL11p8wMcqmuQjqxmknzICjJ8i6QhMcbvPWblDxOCUIB
 /BS8WlwreneCxiID6hZIKd4mn7GMmERim+bL1LfHdyoDyxjO9BA23IepS1IyHt7rhC45
 y9lWfXQ3suf8Rd+BG3Mu7zujt/FaeIQdHaOPcZFd11MuTz7ksZIHCRxL6EBZ99D2hAia
 G+fA==
X-Gm-Message-State: AOAM532SHb8smLUEIZf3RGp9mxC1jHlnuWR/IfLNA59J9fBlAYibe8Cm
 T4ZtCxKmEfsNrlzoMmYn168=
X-Google-Smtp-Source: ABdhPJwnohB4eX4R+mXbyruf/El7kUWwd8tGrLgAGnLKkBBsLQPWM6hn1/Grg/87i64DRvz3RNgrFw==
X-Received: by 2002:a2e:3101:: with SMTP id x1mr12299521ljx.412.1613937314274; 
 Sun, 21 Feb 2021 11:55:14 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id q6sm1659850lfn.23.2021.02.21.11.55.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 11:55:13 -0800 (PST)
From: Nikolay Kyx <knv418@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: media: omap4iss: code style - avoid macro argument
 precedence issues
Date: Sun, 21 Feb 2021 22:53:08 +0300
Message-Id: <20210221195308.1451-1-knv418@gmail.com>
X-Mailer: git-send-email 2.30.1
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
Cc: devel@driverdev.osuosl.org, Nikolay Kyx <knv418@gmail.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following checkpatch.pl check:

CHECK: Macro argument 'i' may be better as '(i)' to avoid precedence issues

in file iss_regs.h

Signed-off-by: Nikolay Kyx <knv418@gmail.com>
---

Additionally some style warnings remain valid here and could be fixed by
another patch.

 drivers/staging/media/omap4iss/iss_regs.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss_regs.h b/drivers/staging/media/omap4iss/iss_regs.h
index 09a7375c89ac..cfe0bb075072 100644
--- a/drivers/staging/media/omap4iss/iss_regs.h
+++ b/drivers/staging/media/omap4iss/iss_regs.h
@@ -197,7 +197,7 @@
 #define CSI2_TIMING_STOP_STATE_COUNTER_IO1_MASK		(0x1fff << 0)
 #define CSI2_TIMING_STOP_STATE_COUNTER_IO1_SHIFT	0
 
-#define CSI2_CTX_CTRL1(i)				(0x70 + (0x20 * i))
+#define CSI2_CTX_CTRL1(i)				(0x70 + (0x20 * (i)))
 #define CSI2_CTX_CTRL1_GENERIC				BIT(30)
 #define CSI2_CTX_CTRL1_TRANSCODE			(0xf << 24)
 #define CSI2_CTX_CTRL1_FEC_NUMBER_MASK			(0xff << 16)
@@ -210,7 +210,7 @@
 #define CSI2_CTX_CTRL1_PING_PONG			BIT(3)
 #define CSI2_CTX_CTRL1_CTX_EN				BIT(0)
 
-#define CSI2_CTX_CTRL2(i)				(0x74 + (0x20 * i))
+#define CSI2_CTX_CTRL2(i)				(0x74 + (0x20 * (i)))
 #define CSI2_CTX_CTRL2_FRAME_MASK			(0xffff << 16)
 #define CSI2_CTX_CTRL2_FRAME_SHIFT			16
 #define CSI2_CTX_CTRL2_USER_DEF_MAP_SHIFT		13
@@ -222,19 +222,19 @@
 #define CSI2_CTX_CTRL2_FORMAT_MASK			(0x3ff << 0)
 #define CSI2_CTX_CTRL2_FORMAT_SHIFT			0
 
-#define CSI2_CTX_DAT_OFST(i)				(0x78 + (0x20 * i))
+#define CSI2_CTX_DAT_OFST(i)				(0x78 + (0x20 * (i)))
 #define CSI2_CTX_DAT_OFST_MASK				(0xfff << 5)
 
-#define CSI2_CTX_PING_ADDR(i)				(0x7c + (0x20 * i))
+#define CSI2_CTX_PING_ADDR(i)				(0x7c + (0x20 * (i)))
 #define CSI2_CTX_PING_ADDR_MASK				0xffffffe0
 
-#define CSI2_CTX_PONG_ADDR(i)				(0x80 + (0x20 * i))
+#define CSI2_CTX_PONG_ADDR(i)				(0x80 + (0x20 * (i)))
 #define CSI2_CTX_PONG_ADDR_MASK				CSI2_CTX_PING_ADDR_MASK
 
-#define CSI2_CTX_IRQENABLE(i)				(0x84 + (0x20 * i))
-#define CSI2_CTX_IRQSTATUS(i)				(0x88 + (0x20 * i))
+#define CSI2_CTX_IRQENABLE(i)				(0x84 + (0x20 * (i)))
+#define CSI2_CTX_IRQSTATUS(i)				(0x88 + (0x20 * (i)))
 
-#define CSI2_CTX_CTRL3(i)				(0x8c + (0x20 * i))
+#define CSI2_CTX_CTRL3(i)				(0x8c + (0x20 * (i)))
 #define CSI2_CTX_CTRL3_ALPHA_SHIFT			5
 #define CSI2_CTX_CTRL3_ALPHA_MASK			\
 		(0x3fff << CSI2_CTX_CTRL3_ALPHA_SHIFT)
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
