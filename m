Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25164D390E
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 08:03:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 53C9E8883D;
	Fri, 11 Oct 2019 06:03:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lgVZ0v4FZqDX; Fri, 11 Oct 2019 06:03:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24C8588836;
	Fri, 11 Oct 2019 06:03:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7112A1BF841
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:03:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6E37E86EA2
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:03:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jhl5vIoHRMWE for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 06:03:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AF16486E95
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 06:03:10 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id h195so5413023pfe.5
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 23:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=50AeV5Io7UlHLBz/iP44MJdWxv7S1CYc0Tp6+tcYqFk=;
 b=h4ICRkSBt+POlGhaR87KqE4PEwoAu6KX2xMVLXF3DXMeClAQVbXLPe89g57GI9uaHE
 xVEwS6vyWXAg6uk0ti+lAiPD+B5vxnRW84X3XNlwUiF6efEBmJdAsUu0+hmWl6iAZawm
 bXk/fdiY7xD123eITkig8BhNjaOdnDvsg/iSCjB+4LXpdfVURklUEe/QJYxYNqpvVuul
 FeMHQPDDOoG7veLiL51zU4JNhT4IVITos5f9M3KpQvipmQ4EP0DMxE8mx7zXQBB2eICx
 v7ors+r3kaywLcg7nJDhUBfQPdVzVU8Hkg329yfFm0qkFQC79lCoDraZBwUqc9327y6p
 fqsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=50AeV5Io7UlHLBz/iP44MJdWxv7S1CYc0Tp6+tcYqFk=;
 b=U49P3IV3V6qaROCdJb3fODRSFiA33imqiDafLliqWThwDTGnciUPFM1H/M20Y9R0Kn
 neHpe5mu+M2FKZ3/M/iZBp4CPb6Z+6Zm2G/j9Mj9YBOblOE4YVIfRsfiEWEq68n4VFB4
 ksqekwjaTvykOyWHYfpIMNubvI/mzgS8+NXBXZqHDM/0bGtJtZkNBKLzOLGuEYoTr0bq
 s0T1ZLBqiTVR+hd2cenxXd64RQ2Y5bSe2ebyEsM6QpdCw0KARfJCHzim6g3zOim6y9E2
 xVfslQ5ckVOmR0+1hwZMUUuHBX9jbohzdondHdGjXJcv9smQtXFvlpacKLv2/TVTQXoT
 HiSg==
X-Gm-Message-State: APjAAAXSjwOH+A51UZP2CFSkcuku1D227V8Djyde2aUqtXPucecafnuO
 /5dGXuNnJNV4mbN+q19vvMs=
X-Google-Smtp-Source: APXvYqyRKf3dzdh6A1G9nqAHeK7LeRJfYodlfhr7V0rLgNiYFEM1kq5O32RxSfCOHxCBYhfGlonr/g==
X-Received: by 2002:a17:90a:24ab:: with SMTP id
 i40mr15774392pje.121.1570773790235; 
 Thu, 10 Oct 2019 23:03:10 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id p11sm9395715pgb.1.2019.10.10.23.03.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 23:03:09 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] staging: octeon: remove typedef declaration for cvmx_wqe_t
Date: Fri, 11 Oct 2019 09:02:38 +0300
Message-Id: <1b16bc880fee5711f96ed82741f8268e4dac1ae6.1570773209.git.wambui.karugax@gmail.com>
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

Remove typedef declaration from struct cvmx_wqe_t in
drivers/staging/octeon/octeon-stubs.h.
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
index 0e65955c746b..63e15a70f3e7 100644
--- a/drivers/staging/octeon/ethernet-rx.c
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -60,7 +60,7 @@ static irqreturn_t cvm_oct_do_interrupt(int irq, void *napi_id)
  *
  * Returns Non-zero if the packet can be dropped, zero otherwise.
  */
-static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
+static inline int cvm_oct_check_rcv_error(struct cvmx_wqe_t *work)
 {
 	int port;
 
@@ -135,7 +135,7 @@ static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
 	return 0;
 }
 
-static void copy_segments_to_skb(cvmx_wqe_t *work, struct sk_buff *skb)
+static void copy_segments_to_skb(struct cvmx_wqe_t *work, struct sk_buff *skb)
 {
 	int segments = work->word2.s.bufs;
 	union cvmx_buf_ptr segment_ptr = work->packet_ptr;
@@ -215,7 +215,7 @@ static int cvm_oct_poll(struct oct_rx_group *rx_group, int budget)
 		struct sk_buff *skb = NULL;
 		struct sk_buff **pskb = NULL;
 		int skb_in_hw;
-		cvmx_wqe_t *work;
+		struct cvmx_wqe_t *work;
 		int port;
 
 		if (USE_ASYNC_IOBDMA && did_work_request)
diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index c64728fc21f2..7ececfac0701 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -515,7 +515,7 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
 	void *copy_location;
 
 	/* Get a work queue entry */
-	cvmx_wqe_t *work = cvmx_fpa_alloc(CVMX_FPA_WQE_POOL);
+	struct cvmx_wqe_t *work = cvmx_fpa_alloc(CVMX_FPA_WQE_POOL);
 
 	if (unlikely(!work)) {
 		printk_ratelimited("%s: Failed to allocate a work queue entry\n",
diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index cf8e9a23ebf9..3de209b7d0ec 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -172,7 +172,7 @@ static void cvm_oct_configure_common_hw(void)
  */
 int cvm_oct_free_work(void *work_queue_entry)
 {
-	cvmx_wqe_t *work = work_queue_entry;
+	struct cvmx_wqe_t *work = work_queue_entry;
 
 	int segments = work->word2.s.bufs;
 	union cvmx_buf_ptr segment_ptr = work->packet_ptr;
diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index b2e3c72205dd..fd7522f70f7e 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -183,13 +183,13 @@ union cvmx_buf_ptr {
 	} s;
 };
 
-typedef struct {
+struct cvmx_wqe_t {
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
+static inline int cvmx_wqe_get_grp(struct cvmx_wqe_t *work)
 {
 	return 0;
 }
@@ -1345,14 +1345,14 @@ static inline void cvmx_pow_work_request_async(int scr_addr,
 						       cvmx_pow_wait_t wait)
 { }
 
-static inline cvmx_wqe_t *cvmx_pow_work_response_async(int scr_addr)
+static inline struct cvmx_wqe_t *cvmx_pow_work_response_async(int scr_addr)
 {
-	cvmx_wqe_t *wqe = (void *)(unsigned long)scr_addr;
+	struct cvmx_wqe_t *wqe = (void *)(unsigned long)scr_addr;
 
 	return wqe;
 }
 
-static inline cvmx_wqe_t *cvmx_pow_work_request_sync(cvmx_pow_wait_t wait)
+static inline struct cvmx_wqe_t *cvmx_pow_work_request_sync(cvmx_pow_wait_t wait)
 {
 	return (void *)(unsigned long)wait;
 }
@@ -1390,21 +1390,21 @@ static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
 	return ret;
 }
 
-static inline void cvmx_wqe_set_port(cvmx_wqe_t *work, int port)
+static inline void cvmx_wqe_set_port(struct cvmx_wqe_t *work, int port)
 { }
 
-static inline void cvmx_wqe_set_qos(cvmx_wqe_t *work, int qos)
+static inline void cvmx_wqe_set_qos(struct cvmx_wqe_t *work, int qos)
 { }
 
-static inline int cvmx_wqe_get_qos(cvmx_wqe_t *work)
+static inline int cvmx_wqe_get_qos(struct cvmx_wqe_t *work)
 {
 	return 0;
 }
 
-static inline void cvmx_wqe_set_grp(cvmx_wqe_t *work, int grp)
+static inline void cvmx_wqe_set_grp(struct cvmx_wqe_t *work, int grp)
 { }
 
-static inline void cvmx_pow_work_submit(cvmx_wqe_t *wqp, uint32_t tag,
+static inline void cvmx_pow_work_submit(struct cvmx_wqe_t *wqp, uint32_t tag,
 					enum cvmx_pow_tag_type tag_type,
 					uint64_t qos, uint64_t grp)
 { }
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
