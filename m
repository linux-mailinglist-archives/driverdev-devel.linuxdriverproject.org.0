Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1627F3C91FC
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Jul 2021 22:21:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A21E140674;
	Wed, 14 Jul 2021 20:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UTs0TqCUvDvh; Wed, 14 Jul 2021 20:21:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A2EE4063E;
	Wed, 14 Jul 2021 20:21:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BF201BF325
 for <devel@linuxdriverproject.org>; Wed, 14 Jul 2021 20:21:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3B45760AE1
 for <devel@linuxdriverproject.org>; Wed, 14 Jul 2021 20:21:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linux.microsoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2zx17r15cif5 for <devel@linuxdriverproject.org>;
 Wed, 14 Jul 2021 20:21:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB82B60ADE
 for <devel@linuxdriverproject.org>; Wed, 14 Jul 2021 20:21:06 +0000 (UTC)
Received: from
 linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net
 (linux.microsoft.com [13.77.154.182])
 by linux.microsoft.com (Postfix) with ESMTPSA id 9678020B800A;
 Wed, 14 Jul 2021 13:21:05 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 9678020B800A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1626294065;
 bh=XhcON44UQDGT9gF4sP+JV1ze0ek45T8MNOR/TLFHRmg=;
 h=From:To:Subject:Date:From;
 b=LV5iaMaOJsL6/OaUOovQqGhOBcioWphxMkZjwch+FG1kVkjysSxd4lxmOOimk1XbO
 wee9tbvmo8gL/QZ3R9L4z2BLvjhGUEJO/d8RjbiYRy2D/2aAIqRasm8oCyhEUqPHW/
 VICHbUxV1Qu7PBVhpZKZ/7yJ7pxWZXnnetylZmak=
From: Sonia Sharma <sosha@linux.microsoft.com>
To: "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, wei.liu@kernel.org,
 Dexuan Cui <decui@microsoft.com>, devel@linuxdriverproject.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] hyperv: Remove unused inline functions in hyperv.h
Date: Wed, 14 Jul 2021 13:20:34 -0700
Message-Id: <1626294034-6061-1-git-send-email-sosha@linux.microsoft.com>
X-Mailer: git-send-email 1.8.3.1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are some unused inline functions in hyperv.h file.
Removing those unused functions.

Signed-off-by: Sonia Sharma <sonia.sharma@microsoft.com>
---
 include/linux/hyperv.h | 22 ----------------------
 1 file changed, 22 deletions(-)

diff --git a/include/linux/hyperv.h b/include/linux/hyperv.h
index b3e2436..1f1f0f8 100644
--- a/include/linux/hyperv.h
+++ b/include/linux/hyperv.h
@@ -481,12 +481,6 @@ struct vmbus_channel_rescind_offer {
 	u32 child_relid;
 } __packed;
 
-static inline u32
-hv_ringbuffer_pending_size(const struct hv_ring_buffer_info *rbi)
-{
-	return rbi->ring_buffer->pending_send_sz;
-}
-
 /*
  * Request Offer -- no parameters, SynIC message contains the partition ID
  * Set Snoop -- no parameters, SynIC message contains the partition ID
@@ -913,12 +907,6 @@ static inline bool is_hvsock_channel(const struct vmbus_channel *c)
 		  VMBUS_CHANNEL_TLNPI_PROVIDER_OFFER);
 }
 
-static inline void set_channel_affinity_state(struct vmbus_channel *c,
-					      enum hv_numa_policy policy)
-{
-	c->affinity_policy = policy;
-}
-
 static inline void set_channel_read_mode(struct vmbus_channel *c,
 					enum hv_callback_mode mode)
 {
@@ -941,16 +929,6 @@ static inline void set_channel_pending_send_size(struct vmbus_channel *c,
 	c->outbound.ring_buffer->pending_send_sz = size;
 }
 
-static inline void set_low_latency_mode(struct vmbus_channel *c)
-{
-	c->low_latency = true;
-}
-
-static inline void clear_low_latency_mode(struct vmbus_channel *c)
-{
-	c->low_latency = false;
-}
-
 void vmbus_onmessage(void *context);
 
 int vmbus_request_offers(void);
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
