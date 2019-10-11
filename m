Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A406D3911
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 08:03:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B708886E95;
	Fri, 11 Oct 2019 06:03:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id agqXCtL5yCI3; Fri, 11 Oct 2019 06:03:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1CBB86EA8;
	Fri, 11 Oct 2019 06:03:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 265B61BF841
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:03:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F91887FB9
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:03:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ba6+kSDdkf5I for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 06:03:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7ED0387F9A
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 06:03:38 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id p1so5147153pgi.4
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 23:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k/wT9/t7A7HYNz/iX11tkHS3rBfrsw9PYcflAAbRT90=;
 b=Q9nQZH4CDkUFTAl2+DJ6ZNZ1QHR/rqxgghwGvth2AXWM0MGBrQDH44O7i0AU/86qht
 LVO+dlnp7g5IPI9DAFW77C+A1pdePrXYwrAbQtXDZ+lME7HNkMRVMntBIcOHDKivm3rL
 tulRrhMtEGLJ6H6T7xoCqC4QonryEe7/GKvYJkHRMj/3xyXHBe6Psu6wcqmUrCMaZq7u
 ENu3PiQvVRYJEXD3XW23KVujsbJPBbel5WtUB+ZX93Sf3Y+t6QvxYtsvg7H7BODDr/m+
 S3kn/8I71qrf6o05f380Veg0mIUy8fC1i1Jop1T7v8a6iYv5eE83+WPIj8WIGCFDlQWW
 LSeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k/wT9/t7A7HYNz/iX11tkHS3rBfrsw9PYcflAAbRT90=;
 b=JNxas+4kwn0dc4S1SGJkW/OEKNuZM5SZSQgo3FL0lyzHFAHQgjpvEXRPT1TJqg/+I1
 fbeZj9aqW5sgmcOZx0WjTdUdZq2M6rPA0sWkEXiKqKsee/LPjFEkjN9iFC2Le9S04PTC
 2xHff0xOZcYW2+9V9xjH5OyyUKJY3Wqwnv9YPnEl4u7hsDxWaWCryrSDXs2E2sfwoA4q
 iWfCDplwrQLOpLy0JNmLFn0dr7na1lGh5NYxrSIil2bjYAs0+JFBPnpKN6nxZ8Fpxuw2
 rwQveuEaIzPLc1TZFHKuR86zHvoKBjMwKDlS94TMMRZhMLD+ihXlZbo8zHh+qIXXLX+K
 Td4Q==
X-Gm-Message-State: APjAAAWaqSs+bcyZpZyHDQaedRE1XIb6JM2zILnevHRSdGXQzhv6qGeT
 3UzS8pSXtURCC8vqwgHNXrw=
X-Google-Smtp-Source: APXvYqx3WzAG2UnyD+20/+pzJk3qbAXa1FhKQULRUwdjiDwOjuBn4rm6pxK6t3ZAIA2KK9QHSCKXtg==
X-Received: by 2002:a63:4622:: with SMTP id t34mr15529950pga.0.1570773817999; 
 Thu, 10 Oct 2019 23:03:37 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id p11sm9395715pgb.1.2019.10.10.23.03.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 23:03:37 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] staging: octeon: remove typedef declartion for
 cvmx_pko_command_word0_t
Date: Fri, 11 Oct 2019 09:02:41 +0300
Message-Id: <2248b40bda9295263ba998c216fe1ac18a2324b4.1570773209.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570773209.git.wambui.karugax@gmail.com>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
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

Removes addition of new typedef declaration for
cvmx_pko_command_word0_t in drivers/staging/octeon/octeon-stubs.h.
Also replace previous instances with new union declaration.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c  | 2 +-
 drivers/staging/octeon/octeon-stubs.h | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 7ececfac0701..f88d8e6f5292 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -127,7 +127,7 @@ static void cvm_oct_free_tx_skbs(struct net_device *dev)
  */
 int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 {
-	cvmx_pko_command_word0_t pko_command;
+	union cvmx_pko_command_word0_t pko_command;
 	union cvmx_buf_ptr hw_buffer;
 	u64 old_scratch;
 	u64 old_scratch2;
diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 1725d54523de..06e6a0223416 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -1137,7 +1137,7 @@ union cvmx_npi_rsl_int_blocks {
 	} cn50xx;
 };
 
-typedef union {
+union  cvmx_pko_command_word0_t {
 	uint64_t u64;
 	struct {
 	        uint64_t total_bytes:16;
@@ -1157,7 +1157,7 @@ typedef union {
 	        uint64_t size0:2;
 	        uint64_t size1:2;
 	} s;
-} cvmx_pko_command_word0_t;
+};
 
 union cvmx_ciu_timx {
 	uint64_t u64;
@@ -1384,7 +1384,7 @@ static inline void cvmx_pko_send_packet_prepare(uint64_t port, uint64_t queue,
 { }
 
 static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
-		uint64_t queue, cvmx_pko_command_word0_t pko_command,
+		uint64_t queue, union cvmx_pko_command_word0_t pko_command,
 		union cvmx_buf_ptr packet, cvmx_pko_lock_t use_locking)
 {
 	cvmx_pko_status_t ret = 0;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
