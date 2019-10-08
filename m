Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B18FCF181
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 06:11:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 74D2422219;
	Tue,  8 Oct 2019 04:11:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Si3W3bdUzcv; Tue,  8 Oct 2019 04:11:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3A95A221B5;
	Tue,  8 Oct 2019 04:11:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34BD51BF2F1
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 04:11:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2EA608777C
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 04:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mrPN5sIJaPem for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 04:11:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 83CB685A41
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 04:11:22 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id q12so10008484pff.9
 for <devel@driverdev.osuosl.org>; Mon, 07 Oct 2019 21:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0hAZOMXp2CaLrNPsyGzyjqb4W+kYM5nZsLInRcfqbCA=;
 b=oklm+8IcMIe723rEMdES47HqUGCLulOB/MBXJ+7JC5O6UGHHJ4zFoFpNnka5L+cKD1
 tkKvaGkqgDsoRV3JVUMiAuqVGF4rDBJ6dsaOUcw8MC8t935RWS/jJiMavEH1l0jbmTrV
 ha1z80VDb60cjm3JthEuFx394Jut8AIxJy7Iq1sCft1mGTOLNNwUqWMC280Dg0DC4NsL
 xEGxBzGsrGdneeSQDv9lNQ9G9+rKYSh3bOF8M1ntrvZN1isDMskuFChc+l5EEEVKoAe6
 +91F8nEEu743pPQ22O5wZMrMPGpw1uX8zqvyCXlGFaQ/KYSeKTnoZKRycGtxt+kI/wvA
 gWJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0hAZOMXp2CaLrNPsyGzyjqb4W+kYM5nZsLInRcfqbCA=;
 b=dsAYAEMLMNdfqoYC3o43vnyf2HUDFzFg2AER33Cqx5Sl9eAeD/dZ1Ra97EQBKms5eA
 m0kn2vqRzKtwUVrFGd9c9u9VW7/XwyUeJ0EMMhW3p3xkmRO0FYuQQpxLXVJ00XLmc+hj
 mFXSF+PD4V689maqy5/8rXPIyP9iqgOAADSItMN0WOqRPZfih4dnKE9psG56DQIZpLtg
 qlKkmgxzIa2MJL9YNwczF6WCGDEzBgcHUKebcU5nmMd9pCwsFKM97j/tSoX/X1Wi2lbt
 nPKgTEk2Ce/jue4Vlc7z2Tr9owoZc3HAD8X0n+aFX1VPTF1vPGzi/qfxfrYSPterx9L3
 7/ZQ==
X-Gm-Message-State: APjAAAWPsAJ3oU09TiHEtGnTulQ+XZpvZwXh0igYumLHTokT+CD0SejC
 tBaCT3T5mfyDL/EBjeD9K44xwBSMuLc/6g==
X-Google-Smtp-Source: APXvYqzrF/0AfjNm0p93eHMKgTGtRz16stvERm1u+s1t+id9ATEmMb0CZdM7zKjlhYxMNV9yIy1GOA==
X-Received: by 2002:aa7:800d:: with SMTP id j13mr36834733pfi.187.1570507882041; 
 Mon, 07 Oct 2019 21:11:22 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id h4sm15705696pgg.81.2019.10.07.21.11.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 21:11:21 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: octeon: Remove typedef declaration
Date: Tue,  8 Oct 2019 07:09:43 +0300
Message-Id: <20191008040943.9283-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes checkpatch.pl warning: do not add new typedefs in
drivers/staging/octeon/octeon-stubs.h:41

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/octeon-stubs.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index a4ac3bfb62a8..773591348ef4 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -38,7 +38,7 @@
 #define CVMX_NPI_RSL_INT_BLOCKS		0
 #define CVMX_POW_WQ_INT_PC		0
 
-typedef union {
+union cvmx_pip_wqe_word2 {
 	uint64_t u64;
 	struct {
 		uint64_t bufs:8;
@@ -114,7 +114,7 @@ typedef union {
 		uint64_t err_code:8;
 	} snoip;
 
-} cvmx_pip_wqe_word2;
+};
 
 union cvmx_pip_wqe_word0 {
 	struct {
@@ -183,7 +183,7 @@ union cvmx_buf_ptr {
 typedef struct {
 	union cvmx_wqe_word0 word0;
 	union cvmx_wqe_word1 word1;
-	cvmx_pip_wqe_word2 word2;
+	union cvmx_pip_wqe_word2 word2;
 	union cvmx_buf_ptr packet_ptr;
 	uint8_t packet_data[96];
 } cvmx_wqe_t;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
