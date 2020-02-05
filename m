Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3781523EB
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 01:11:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCC40860CE;
	Wed,  5 Feb 2020 00:11:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hTfmsHAklqca; Wed,  5 Feb 2020 00:11:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 46D5385CE2;
	Wed,  5 Feb 2020 00:11:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 338161BF45A
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 00:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2E379857A2
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 00:11:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id haeFKYGXooM5 for <devel@linuxdriverproject.org>;
 Wed,  5 Feb 2020 00:11:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [202.36.163.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 778AF86758
 for <devel@driverdev.osuosl.org>; Wed,  5 Feb 2020 00:11:40 +0000 (UTC)
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 38B37891AE;
 Wed,  5 Feb 2020 13:11:38 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1580861498;
 bh=TlEop1aMKKhr4TLLb8Kw8mnjVcZVWnitXHzhzdW7lr8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=kDo9RkTvcYw1r5kMFHPpurfnwLh5/ma3HIZlClqE56CefIGkJ1c+U4k6m3qQI9q0P
 nY1M202zKC2RJHwQ2arma6uHy/Q+DgKsQWbjEranhmDlh4xEWSHokueD2PVzethk9G
 7AX9JzvzHSLsVLLyo74w7SpMwzekLunPrVtrm1MLGZB2POywl1Xu907cTNC3nT1Js/
 uIYtcvNZ3N6ZVwxWgeSSqClJ2bvm5QpwCQn9u8LGyfp3JmJbyf5j3dGXK1cbH34QUf
 BnGOWmY4r1hSIs0tMsXXjjxi4ZM8Li7XwaJ7j0ABF3u8MMLM3Crpv32ytrTTdxSJY/
 b2ROr+pWZOiZA==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5e3a083a0001>; Wed, 05 Feb 2020 13:11:38 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 5D4AC13EEDE;
 Wed,  5 Feb 2020 13:11:37 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id CD52C280038; Wed,  5 Feb 2020 13:11:37 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: gregkh@linuxfoundation.org, ralf@linux-mips.org, paulburton@kernel.org,
 linux@roeck-us.net, dan.carpenter@oracle.com, willy@infradead.org
Subject: [PATCH 3/6] MIPS: octeon: remove typedef declaration for cvmx_wqe
Date: Wed,  5 Feb 2020 13:11:13 +1300
Message-Id: <20200205001116.14096-4-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200205001116.14096-1-chris.packham@alliedtelesis.co.nz>
References: <20200205001116.14096-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
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
Cc: devel@driverdev.osuosl.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove typedef declaration from struct cvmx_wqe and replace its previous
uses with new struct declaration.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 .../cavium-octeon/executive/cvmx-helper.c     |  2 +-
 .../include/asm/octeon/cvmx-helper-util.h     |  2 +-
 arch/mips/include/asm/octeon/cvmx-pko.h       |  2 +-
 arch/mips/include/asm/octeon/cvmx-pow.h       | 22 +++++++++----------
 arch/mips/include/asm/octeon/cvmx-wqe.h       | 16 +++++++-------
 5 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/arch/mips/cavium-octeon/executive/cvmx-helper.c b/arch/mips/cavium-octeon/executive/cvmx-helper.c
index de391541d6f7..bb84ae33399a 100644
--- a/arch/mips/cavium-octeon/executive/cvmx-helper.c
+++ b/arch/mips/cavium-octeon/executive/cvmx-helper.c
@@ -784,7 +784,7 @@ static int __cvmx_helper_errata_fix_ipd_ptr_alignment(void)
 	uint64_t *p64;
 	cvmx_pko_command_word0_t pko_command;
 	union cvmx_buf_ptr g_buffer, pkt_buffer;
-	cvmx_wqe_t *work;
+	struct cvmx_wqe *work;
 	int size, num_segs = 0, wqe_pcnt, pkt_pcnt;
 	union cvmx_gmxx_prtx_cfg gmx_cfg;
 	int retry_cnt;
diff --git a/arch/mips/include/asm/octeon/cvmx-helper-util.h b/arch/mips/include/asm/octeon/cvmx-helper-util.h
index e9a97e7ee604..97b27a07cfb0 100644
--- a/arch/mips/include/asm/octeon/cvmx-helper-util.h
+++ b/arch/mips/include/asm/octeon/cvmx-helper-util.h
@@ -123,7 +123,7 @@ static inline int cvmx_helper_get_last_ipd_port(int interface)
  *
  * @work:   Work queue entry with packet to free
  */
-static inline void cvmx_helper_free_packet_data(cvmx_wqe_t *work)
+static inline void cvmx_helper_free_packet_data(struct cvmx_wqe *work)
 {
 	uint64_t number_buffers;
 	union cvmx_buf_ptr buffer_ptr;
diff --git a/arch/mips/include/asm/octeon/cvmx-pko.h b/arch/mips/include/asm/octeon/cvmx-pko.h
index 20eb9c46a75a..f033523c19f8 100644
--- a/arch/mips/include/asm/octeon/cvmx-pko.h
+++ b/arch/mips/include/asm/octeon/cvmx-pko.h
@@ -394,7 +394,7 @@ static inline void cvmx_pko_send_packet_prepare(uint64_t port, uint64_t queue,
 		    CVMX_TAG_SW_BITS_INTERNAL << CVMX_TAG_SW_SHIFT |
 		    CVMX_TAG_SUBGROUP_PKO << CVMX_TAG_SUBGROUP_SHIFT |
 		    (CVMX_TAG_SUBGROUP_MASK & queue);
-		cvmx_pow_tag_sw_full((cvmx_wqe_t *) cvmx_phys_to_ptr(0x80), tag,
+		cvmx_pow_tag_sw_full((struct cvmx_wqe *) cvmx_phys_to_ptr(0x80), tag,
 				     CVMX_POW_TAG_TYPE_ATOMIC, 0);
 	}
 }
diff --git a/arch/mips/include/asm/octeon/cvmx-pow.h b/arch/mips/include/asm/octeon/cvmx-pow.h
index 410bb70e5aac..ba366f4f3c3d 100644
--- a/arch/mips/include/asm/octeon/cvmx-pow.h
+++ b/arch/mips/include/asm/octeon/cvmx-pow.h
@@ -1283,7 +1283,7 @@ static inline cvmx_pow_tag_req_t cvmx_pow_get_current_tag(void)
  *
  * Returns WQE pointer
  */
-static inline cvmx_wqe_t *cvmx_pow_get_current_wqp(void)
+static inline struct cvmx_wqe *cvmx_pow_get_current_wqp(void)
 {
 	cvmx_pow_load_addr_t load_addr;
 	cvmx_pow_tag_load_resp_t load_resp;
@@ -1296,7 +1296,7 @@ static inline cvmx_wqe_t *cvmx_pow_get_current_wqp(void)
 	load_addr.sstatus.get_cur = 1;
 	load_addr.sstatus.get_wqp = 1;
 	load_resp.u64 = cvmx_read_csr(load_addr.u64);
-	return (cvmx_wqe_t *) cvmx_phys_to_ptr(load_resp.s_sstatus4.wqp);
+	return (struct cvmx_wqe *) cvmx_phys_to_ptr(load_resp.s_sstatus4.wqp);
 }
 
 #ifndef CVMX_MF_CHORD
@@ -1348,7 +1348,7 @@ static inline void cvmx_pow_tag_sw_wait(void)
  * Returns Returns the WQE pointer from POW. Returns NULL if no work
  * was available.
  */
-static inline cvmx_wqe_t *cvmx_pow_work_request_sync_nocheck(cvmx_pow_wait_t
+static inline struct cvmx_wqe *cvmx_pow_work_request_sync_nocheck(cvmx_pow_wait_t
 							     wait)
 {
 	cvmx_pow_load_addr_t ptr;
@@ -1368,7 +1368,7 @@ static inline cvmx_wqe_t *cvmx_pow_work_request_sync_nocheck(cvmx_pow_wait_t
 	if (result.s_work.no_work)
 		return NULL;
 	else
-		return (cvmx_wqe_t *) cvmx_phys_to_ptr(result.s_work.addr);
+		return (struct cvmx_wqe *) cvmx_phys_to_ptr(result.s_work.addr);
 }
 
 /**
@@ -1382,7 +1382,7 @@ static inline cvmx_wqe_t *cvmx_pow_work_request_sync_nocheck(cvmx_pow_wait_t
  * Returns Returns the WQE pointer from POW. Returns NULL if no work
  * was available.
  */
-static inline cvmx_wqe_t *cvmx_pow_work_request_sync(cvmx_pow_wait_t wait)
+static inline struct cvmx_wqe *cvmx_pow_work_request_sync(cvmx_pow_wait_t wait)
 {
 	if (CVMX_ENABLE_POW_CHECKS)
 		__cvmx_pow_warn_if_pending_switch(__func__);
@@ -1485,7 +1485,7 @@ static inline void cvmx_pow_work_request_async(int scr_addr,
  * Returns Returns the WQE from the scratch register, or NULL if no
  * work was available.
  */
-static inline cvmx_wqe_t *cvmx_pow_work_response_async(int scr_addr)
+static inline struct cvmx_wqe *cvmx_pow_work_response_async(int scr_addr)
 {
 	cvmx_pow_tag_load_resp_t result;
 
@@ -1495,7 +1495,7 @@ static inline cvmx_wqe_t *cvmx_pow_work_response_async(int scr_addr)
 	if (result.s_work.no_work)
 		return NULL;
 	else
-		return (cvmx_wqe_t *) cvmx_phys_to_ptr(result.s_work.addr);
+		return (struct cvmx_wqe *) cvmx_phys_to_ptr(result.s_work.addr);
 }
 
 /**
@@ -1508,7 +1508,7 @@ static inline cvmx_wqe_t *cvmx_pow_work_response_async(int scr_addr)
  * Returns 0 if pointer is valid
  *	   1 if invalid (no work was returned)
  */
-static inline uint64_t cvmx_pow_work_invalid(cvmx_wqe_t *wqe_ptr)
+static inline uint64_t cvmx_pow_work_invalid(struct cvmx_wqe *wqe_ptr)
 {
 	return wqe_ptr == NULL;
 }
@@ -1638,7 +1638,7 @@ static inline void cvmx_pow_tag_sw(uint32_t tag,
  * @tag_type: type of tag
  * @group:    group value for the work queue entry.
  */
-static inline void cvmx_pow_tag_sw_full_nocheck(cvmx_wqe_t *wqp, uint32_t tag,
+static inline void cvmx_pow_tag_sw_full_nocheck(struct cvmx_wqe *wqp, uint32_t tag,
 						enum cvmx_pow_tag_type tag_type,
 						uint64_t group)
 {
@@ -1712,7 +1712,7 @@ static inline void cvmx_pow_tag_sw_full_nocheck(cvmx_wqe_t *wqp, uint32_t tag,
  * @tag_type: type of tag
  * @group:	group value for the work queue entry.
  */
-static inline void cvmx_pow_tag_sw_full(cvmx_wqe_t *wqp, uint32_t tag,
+static inline void cvmx_pow_tag_sw_full(struct cvmx_wqe *wqp, uint32_t tag,
 					enum cvmx_pow_tag_type tag_type,
 					uint64_t group)
 {
@@ -1803,7 +1803,7 @@ static inline void cvmx_pow_tag_sw_null(void)
  * @qos:      Input queue to add to.
  * @grp:      group value for the work queue entry.
  */
-static inline void cvmx_pow_work_submit(cvmx_wqe_t *wqp, uint32_t tag,
+static inline void cvmx_pow_work_submit(struct cvmx_wqe *wqp, uint32_t tag,
 					enum cvmx_pow_tag_type tag_type,
 					uint64_t qos, uint64_t grp)
 {
diff --git a/arch/mips/include/asm/octeon/cvmx-wqe.h b/arch/mips/include/asm/octeon/cvmx-wqe.h
index 0d697aa786d4..9cec2299b81b 100644
--- a/arch/mips/include/asm/octeon/cvmx-wqe.h
+++ b/arch/mips/include/asm/octeon/cvmx-wqe.h
@@ -547,7 +547,7 @@ union cvmx_wqe_word1 {
  *
  * must be 8-byte aligned
  */
-typedef struct {
+struct cvmx_wqe {
 
     /*****************************************************************
      * WORD 0
@@ -593,9 +593,9 @@ typedef struct {
      *
      */
 
-} CVMX_CACHE_LINE_ALIGNED cvmx_wqe_t;
+} CVMX_CACHE_LINE_ALIGNED;
 
-static inline int cvmx_wqe_get_port(cvmx_wqe_t *work)
+static inline int cvmx_wqe_get_port(struct cvmx_wqe *work)
 {
 	int port;
 
@@ -607,7 +607,7 @@ static inline int cvmx_wqe_get_port(cvmx_wqe_t *work)
 	return port;
 }
 
-static inline void cvmx_wqe_set_port(cvmx_wqe_t *work, int port)
+static inline void cvmx_wqe_set_port(struct cvmx_wqe *work, int port)
 {
 	if (octeon_has_feature(OCTEON_FEATURE_CN68XX_WQE))
 		work->word2.s_cn68xx.port = port;
@@ -615,7 +615,7 @@ static inline void cvmx_wqe_set_port(cvmx_wqe_t *work, int port)
 		work->word1.cn38xx.ipprt = port;
 }
 
-static inline int cvmx_wqe_get_grp(cvmx_wqe_t *work)
+static inline int cvmx_wqe_get_grp(struct cvmx_wqe *work)
 {
 	int grp;
 
@@ -627,7 +627,7 @@ static inline int cvmx_wqe_get_grp(cvmx_wqe_t *work)
 	return grp;
 }
 
-static inline void cvmx_wqe_set_grp(cvmx_wqe_t *work, int grp)
+static inline void cvmx_wqe_set_grp(struct cvmx_wqe *work, int grp)
 {
 	if (octeon_has_feature(OCTEON_FEATURE_CN68XX_WQE))
 		work->word1.cn68xx.grp = grp;
@@ -635,7 +635,7 @@ static inline void cvmx_wqe_set_grp(cvmx_wqe_t *work, int grp)
 		work->word1.cn38xx.grp = grp;
 }
 
-static inline int cvmx_wqe_get_qos(cvmx_wqe_t *work)
+static inline int cvmx_wqe_get_qos(struct cvmx_wqe *work)
 {
 	int qos;
 
@@ -647,7 +647,7 @@ static inline int cvmx_wqe_get_qos(cvmx_wqe_t *work)
 	return qos;
 }
 
-static inline void cvmx_wqe_set_qos(cvmx_wqe_t *work, int qos)
+static inline void cvmx_wqe_set_qos(struct cvmx_wqe *work, int qos)
 {
 	if (octeon_has_feature(OCTEON_FEATURE_CN68XX_WQE))
 		work->word1.cn68xx.qos = qos;
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
