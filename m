Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA327D517F
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 20:05:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FA6C8815C;
	Sat, 12 Oct 2019 18:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XcV8TlDXXYP7; Sat, 12 Oct 2019 18:05:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF3B9880C7;
	Sat, 12 Oct 2019 18:05:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 143631BF28C
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 18:05:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 104E98706B
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 18:05:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pljWP+4KQe00 for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 18:05:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1BFFF86E68
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 18:05:46 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id 23so7656728pgk.3
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 11:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rEqM4BCyfUITd7RdLp49O2Q3WbdzE0IG1F6T4kHRZAI=;
 b=KWZNug1AcDq/W0jwMjpePq5XKlvmtwyDJzLebAZhTG8ZEv+uot4od+LcCKqBjIH3NY
 b6C3z0eBsJJmlz/qI4Z0tX3t6tq/+d8w3/s4xxTr+6YGxluAd2rDnIdMnKdr9K9l5RJB
 g4rZHv+3GNUATi4IjBDbSXlssN4PzVeNkIHDHtO0xzZmwSdxr0gjCfXv2oKN0tTuzBHu
 UJyEZwyAGfTGZ+WSw2qsxU0cBzxny6oSejaat6NRI2wkzrAuDh6xYCvV9aZCQwvzbFci
 scevGaTknAHgYz403wAdwID8nbbPsQN8RrRdogJVsY69wYqJmAiz5VLZ2MWdfu4JfKmV
 TxgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rEqM4BCyfUITd7RdLp49O2Q3WbdzE0IG1F6T4kHRZAI=;
 b=IGoQVJYr+SdqocSvFHpBudiAfbuu/fynf3XgaKAFkY54TDENOqP9ajK9dvZHQU3Kr+
 W6tfVIF86ehE0OdLcuUaStsS+HTubdU1b3vsSElAuXxdL+KRlYp4K1GCqu2tCPdGRFuu
 MeIe1I1qDwdkHmHei8rr83nTbczt5sEdp6adS44IhsHZXV1P1S47FatKWhGcZO0PDm2G
 UxdXIp01J3Uf0mjkJSr+/P9b18zObhPuAbYv2RVjhXLoMwDHjjhsOnHmIKaiyzAS2+Ii
 qySGGlQNTrdTGC9YguqJYd0O70NvCdUrfwY0vSAS+r7XBX2hmO1kYqoRku+otdQ3YD97
 65tg==
X-Gm-Message-State: APjAAAVh77cp/DKiTq0yYjMmzDnB5gHJYWAb0jlFe3wouWXmoH5NTD8L
 8Ixwfv1IWE2cMGmLu06V74QC4mO7NdbWMQ==
X-Google-Smtp-Source: APXvYqzJCoUmkEg42cKJfx38MmmjpETXoC9oUnyc7bm55AHAqdKg1/CrDdSh4FDZvPEvClvtn78OoQ==
X-Received: by 2002:a63:d754:: with SMTP id w20mr4961065pgi.156.1570903545606; 
 Sat, 12 Oct 2019 11:05:45 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id p17sm12183475pfn.50.2019.10.12.11.05.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:05:45 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/5] staging: octeon: remove typedef declaration for
 cvmx_wqe
Date: Sat, 12 Oct 2019 21:04:31 +0300
Message-Id: <fa82104ea8d7ff54dc66bfbfedb6cca541701991.1570821661.git.wambui.karugax@gmail.com>
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

Remove typedef declaration from struct cvmx_wqe.
Also replace its previous uses with new struct declaration.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/ethernet-rx.c  |  6 +++---
 drivers/staging/octeon/ethernet-tx.c  |  2 +-
 drivers/staging/octeon/ethernet.c     |  2 +-
 drivers/staging/octeon/octeon-stubs.h | 22 +++++++++++-----------
 4 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
index 0e65955c746b..2c16230f993c 100644
--- a/drivers/staging/octeon/ethernet-rx.c
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -60,7 +60,7 @@ static irqreturn_t cvm_oct_do_interrupt(int irq, void *napi_id)
  *
  * Returns Non-zero if the packet can be dropped, zero otherwise.
  */
-static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
+static inline int cvm_oct_check_rcv_error(struct cvmx_wqe *work)
 {
 	int port;
 
@@ -135,7 +135,7 @@ static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
 	return 0;
 }
 
-static void copy_segments_to_skb(cvmx_wqe_t *work, struct sk_buff *skb)
+static void copy_segments_to_skb(struct cvmx_wqe *work, struct sk_buff *skb)
 {
 	int segments = work->word2.s.bufs;
 	union cvmx_buf_ptr segment_ptr = work->packet_ptr;
@@ -215,7 +215,7 @@ static int cvm_oct_poll(struct oct_rx_group *rx_group, int budget)
 		struct sk_buff *skb = NULL;
 		struct sk_buff **pskb = NULL;
 		int skb_in_hw;
-		cvmx_wqe_t *work;
+		struct cvmx_wqe *work;
 		int port;
 
 		if (USE_ASYNC_IOBDMA && did_work_request)
diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index c64728fc21f2..a039882e4f70 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -515,7 +515,7 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
 	void *copy_location;
 
 	/* Get a work queue entry */
-	cvmx_wqe_t *work = cvmx_fpa_alloc(CVMX_FPA_WQE_POOL);
+	struct cvmx_wqe *work = cvmx_fpa_alloc(CVMX_FPA_WQE_POOL);
 
 	if (unlikely(!work)) {
 		printk_ratelimited("%s: Failed to allocate a work queue entry\n",
diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index cf8e9a23ebf9..f892f1ad4638 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -172,7 +172,7 @@ static void cvm_oct_configure_common_hw(void)
  */
 int cvm_oct_free_work(void *work_queue_entry)
 {
-	cvmx_wqe_t *work = work_queue_entry;
+	struct cvmx_wqe *work = work_queue_entry;
 
 	int segments = work->word2.s.bufs;
 	union cvmx_buf_ptr segment_ptr = work->packet_ptr;
diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index b2e3c72205dd..7c29cfbd55d1 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -183,13 +183,13 @@ union cvmx_buf_ptr {
 	} s;
 };
 
-typedef struct {
+struct cvmx_wqe {
 	union cvmx_wqe_word0 word0;
 	union cvmx_wqe_word1 word1;
 	union cvmx_pip_wqe_word2 word2;
 	union cvmx_buf_ptr packet_ptr;
 	uint8_t packet_data[96];
-} cvmx_wqe_t;
+};
 
 typedef union {
 	uint64_t u64;
@@ -1198,7 +1198,7 @@ static inline uint64_t cvmx_scratch_read64(uint64_t address)
 static inline void cvmx_scratch_write64(uint64_t address, uint64_t value)
 { }
 
-static inline int cvmx_wqe_get_grp(cvmx_wqe_t *work)
+static inline int cvmx_wqe_get_grp(struct cvmx_wqe *work)
 {
 	return 0;
 }
@@ -1345,14 +1345,14 @@ static inline void cvmx_pow_work_request_async(int scr_addr,
 						       cvmx_pow_wait_t wait)
 { }
 
-static inline cvmx_wqe_t *cvmx_pow_work_response_async(int scr_addr)
+static inline struct cvmx_wqe *cvmx_pow_work_response_async(int scr_addr)
 {
-	cvmx_wqe_t *wqe = (void *)(unsigned long)scr_addr;
+	struct cvmx_wqe *wqe = (void *)(unsigned long)scr_addr;
 
 	return wqe;
 }
 
-static inline cvmx_wqe_t *cvmx_pow_work_request_sync(cvmx_pow_wait_t wait)
+static inline struct cvmx_wqe *cvmx_pow_work_request_sync(cvmx_pow_wait_t wait)
 {
 	return (void *)(unsigned long)wait;
 }
@@ -1390,21 +1390,21 @@ static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
 	return ret;
 }
 
-static inline void cvmx_wqe_set_port(cvmx_wqe_t *work, int port)
+static inline void cvmx_wqe_set_port(struct cvmx_wqe *work, int port)
 { }
 
-static inline void cvmx_wqe_set_qos(cvmx_wqe_t *work, int qos)
+static inline void cvmx_wqe_set_qos(struct cvmx_wqe *work, int qos)
 { }
 
-static inline int cvmx_wqe_get_qos(cvmx_wqe_t *work)
+static inline int cvmx_wqe_get_qos(struct cvmx_wqe *work)
 {
 	return 0;
 }
 
-static inline void cvmx_wqe_set_grp(cvmx_wqe_t *work, int grp)
+static inline void cvmx_wqe_set_grp(struct cvmx_wqe *work, int grp)
 { }
 
-static inline void cvmx_pow_work_submit(cvmx_wqe_t *wqp, uint32_t tag,
+static inline void cvmx_pow_work_submit(struct cvmx_wqe *wqp, uint32_t tag,
 					enum cvmx_pow_tag_type tag_type,
 					uint64_t qos, uint64_t grp)
 { }
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
