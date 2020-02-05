Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539331523E7
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 01:11:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E71B8739A;
	Wed,  5 Feb 2020 00:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kwxrl6MIpSlm; Wed,  5 Feb 2020 00:11:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F9C8857A2;
	Wed,  5 Feb 2020 00:11:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D95FC1BF45A
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 00:11:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D58808731E
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 00:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k8rCaiEGDxoq for <devel@linuxdriverproject.org>;
 Wed,  5 Feb 2020 00:11:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [202.36.163.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 76585857A2
 for <devel@driverdev.osuosl.org>; Wed,  5 Feb 2020 00:11:40 +0000 (UTC)
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id C939E891B0;
 Wed,  5 Feb 2020 13:11:38 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1580861498;
 bh=CNZrY07wx1fsMckb/UiVqAZ4mkkD9Vh2atjTCMywA4E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=jjB0KZYQnKCcQGimnKStgEBKGek+bfwua/MGbzemlcgG8UiJF+E9Yb5hWOngZarPR
 XqmxT6CXLouk6kxK4YerEIrVg8uYuaENtzE3T0U1Yvv8ycah8wErv3IOsUmSGihC9u
 wmz4GENDpWpD6jblfDFmntctNrCKoYPYsZmKhQ655oH/9ZxYX+aN+RXk6u5APiOxlu
 JrSjDErrWW8LZP5ItZu8KsUs31SKmUqGytBizu75nXW54lFYD2LJni4C23WKJYpeZX
 XYuUQTYx3IHmaWMM04vsr25d0pWZj4OdVQz46MMFf08d1y6JHrrztvqL38QNQIoS+0
 tlawgtbMQlAvw==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5e3a083a0003>; Wed, 05 Feb 2020 13:11:39 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 1406113EEDE;
 Wed,  5 Feb 2020 13:11:38 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 841E5280038; Wed,  5 Feb 2020 13:11:38 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: gregkh@linuxfoundation.org, ralf@linux-mips.org, paulburton@kernel.org,
 linux@roeck-us.net, dan.carpenter@oracle.com, willy@infradead.org
Subject: [PATCH 5/6] MIPS: octeon: remove typedef declaration for
 cvmx_pko_command_word0
Date: Wed,  5 Feb 2020 13:11:15 +1300
Message-Id: <20200205001116.14096-6-chris.packham@alliedtelesis.co.nz>
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

Remove the typedef and update usage to use the union.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 arch/mips/cavium-octeon/executive/cvmx-helper.c | 2 +-
 arch/mips/include/asm/octeon/cvmx-pko.h         | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/mips/cavium-octeon/executive/cvmx-helper.c b/arch/mips/cavium-octeon/executive/cvmx-helper.c
index 8002f9d3039d..6044ff471002 100644
--- a/arch/mips/cavium-octeon/executive/cvmx-helper.c
+++ b/arch/mips/cavium-octeon/executive/cvmx-helper.c
@@ -782,7 +782,7 @@ static int __cvmx_helper_errata_fix_ipd_ptr_alignment(void)
 #define INTERFACE(port) (port >> 4)
 #define INDEX(port) (port & 0xf)
 	uint64_t *p64;
-	cvmx_pko_command_word0_t pko_command;
+	union cvmx_pko_command_word0 pko_command;
 	union cvmx_buf_ptr g_buffer, pkt_buffer;
 	struct cvmx_wqe *work;
 	int size, num_segs = 0, wqe_pcnt, pkt_pcnt;
diff --git a/arch/mips/include/asm/octeon/cvmx-pko.h b/arch/mips/include/asm/octeon/cvmx-pko.h
index f033523c19f8..5b0b982a36f7 100644
--- a/arch/mips/include/asm/octeon/cvmx-pko.h
+++ b/arch/mips/include/asm/octeon/cvmx-pko.h
@@ -169,7 +169,7 @@ typedef union {
 /**
  * Structure of the first packet output command word.
  */
-typedef union {
+union cvmx_pko_command_word0 {
 	uint64_t u64;
 	struct {
 #ifdef __BIG_ENDIAN_BITFIELD
@@ -261,7 +261,7 @@ typedef union {
 	        uint64_t size1:2;
 #endif
 	} s;
-} cvmx_pko_command_word0_t;
+};
 
 /* CSR typedefs have been moved to cvmx-csr-*.h */
 
@@ -419,7 +419,7 @@ static inline void cvmx_pko_send_packet_prepare(uint64_t port, uint64_t queue,
 static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(
 	uint64_t port,
 	uint64_t queue,
-	cvmx_pko_command_word0_t pko_command,
+	union cvmx_pko_command_word0 pko_command,
 	union cvmx_buf_ptr packet,
 	cvmx_pko_lock_t use_locking)
 {
@@ -462,7 +462,7 @@ static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(
 static inline cvmx_pko_status_t cvmx_pko_send_packet_finish3(
 	uint64_t port,
 	uint64_t queue,
-	cvmx_pko_command_word0_t pko_command,
+	union cvmx_pko_command_word0 pko_command,
 	union cvmx_buf_ptr packet,
 	uint64_t addr,
 	cvmx_pko_lock_t use_locking)
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
