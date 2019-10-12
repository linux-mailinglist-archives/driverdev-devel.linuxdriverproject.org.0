Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A868BD5188
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 20:07:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 529A585F59;
	Sat, 12 Oct 2019 18:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4kXASEcTVHFl; Sat, 12 Oct 2019 18:07:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 48B4185F58;
	Sat, 12 Oct 2019 18:07:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D6E81BF94B
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 18:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8047586DAC
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 18:07:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eVEG4vcZd9P5 for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 18:06:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 036598813E
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 18:06:13 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id q24so5994146plr.13
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 11:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tT24sM9T6hkRxQedrQmg31fItSCxPHO1fScVTFID4Ho=;
 b=ksbeu2/AEfGmAq8zJkbp87DWQ4AGE6KLQFuGtREb+FWns2cMXhD1fnsu47paOill+X
 DxFBieCpyg4rMipRLMyg54BcqAcXpcsyY5lcjy2jY2470m64V+powGa3brFDZfxmYOo2
 CCTKhAlqmX6O+m0x3lB/gRB6pwa00K08NjhYpQQvQjFqQ5yS9QqZ5bLXuhsCqkK7snOa
 E/bMkCWPX2PqM5sLCTmeXsqMOMqV08dH428qlHYOH89L2KC1Z1SYUWDD8/EcBAzcOWNt
 pe9G6gA2hUTM8g0AP19JXuAn7iwJq/itPeWoBwrnjkJLdWXj2xyJcO3+GLZi6wr9vf4/
 eL5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tT24sM9T6hkRxQedrQmg31fItSCxPHO1fScVTFID4Ho=;
 b=ftK8p/pxuF0n8fgQNYNb2CHCt2HmuWQIcCi2D8J3qR3B5pRJ4RVCf4A3fr8Gd7wf3e
 UFY6noSrYVhKC0p77HoQeZBP7Er0+2tP2OryE0PqVEu9h/9P+YqtRnwvVwId16u3y3HS
 edNjMJdZGe207rW3Rz2YSnVsdtHSJK1x8p8+iqF6suYKjm4qcmS9U9TnPRKmYDgMnwt0
 I0cL3IwPUjr1z9AwxFnOEDj6P1Lzk82VM6fXwoRlf2WavYd9vyJIjp3HyO4mduNKmvwX
 DHag9RUSupeUh3V6jrKROnV6PhyPTuRVd5FrFfT4lk4hGdSN1NHVGTCgtGUy9qw5ZOlJ
 a39Q==
X-Gm-Message-State: APjAAAU5GCpFRGUIsaGxQT7YrilKlzY/MOAtum2Tw5kHreM4sfaaep6s
 LhcRFiG5wD5aZh4UiPK5R30=
X-Google-Smtp-Source: APXvYqxgPC401iBfutZGKVx7G9w2ziZHOwj6b0i+4n/wvE9u5ALp4UUhFCXmKoEDnVmcFmrHjNcFfw==
X-Received: by 2002:a17:902:545:: with SMTP id
 63mr16371191plf.14.1570903572632; 
 Sat, 12 Oct 2019 11:06:12 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id p17sm12183475pfn.50.2019.10.12.11.06.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:06:12 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/5] staging: octeon: remove typedef declartion for
 cvmx_pko_command_word0
Date: Sat, 12 Oct 2019 21:04:34 +0300
Message-Id: <40bb26b250d7ba5b0d5199072e773be2fb0fed90.1570821661.git.wambui.karugax@gmail.com>
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

Removes addition of new typedef declaration for
cvmx_pko_command_word0.
Also replace previous instances with new union declaration.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c  | 2 +-
 drivers/staging/octeon/octeon-stubs.h | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index a039882e4f70..95bd1b5338fc 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -127,7 +127,7 @@ static void cvm_oct_free_tx_skbs(struct net_device *dev)
  */
 int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 {
-	cvmx_pko_command_word0_t pko_command;
+	union cvmx_pko_command_word0 pko_command;
 	union cvmx_buf_ptr hw_buffer;
 	u64 old_scratch;
 	u64 old_scratch2;
diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 40f0cfee0dff..db2d6f64b666 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -1137,7 +1137,7 @@ union cvmx_npi_rsl_int_blocks {
 	} cn50xx;
 };
 
-typedef union {
+union cvmx_pko_command_word0 {
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
+		uint64_t queue, union cvmx_pko_command_word0 pko_command,
 		union cvmx_buf_ptr packet, cvmx_pko_lock_t use_locking)
 {
 	cvmx_pko_status_t ret = 0;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
