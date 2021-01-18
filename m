Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB852F9747
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 02:19:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C31F985B25;
	Mon, 18 Jan 2021 01:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dPdk-TpW5ttH; Mon, 18 Jan 2021 01:19:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F065685B09;
	Mon, 18 Jan 2021 01:19:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE42C1BF3BF
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 01:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A6A0D8673B
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 01:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RSCx0Kgm+lkq for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 01:19:33 +0000 (UTC)
X-Greylist: delayed 00:08:54 by SQLgrey-1.7.6
Received: from mx-rz-1.rrze.uni-erlangen.de (mx-rz-1.rrze.uni-erlangen.de
 [131.188.11.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B0FA38675F
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 01:19:33 +0000 (UTC)
Received: from mx-rz-smart.rrze.uni-erlangen.de
 (mx-rz-smart.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::1e])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mx-rz-1.rrze.uni-erlangen.de (Postfix) with ESMTPS id 4DJty934QMz8t2t;
 Mon, 18 Jan 2021 02:10:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1610932241; bh=n0czzUvvt3SkCFICCpWB9oK3QXru4vyuSDr/GChrA1U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=dVmrQVRFrOGr2o3Uj+D8e7g5iqo8kHyw1vggN42Jx2CP2P4/Mg0pGh6SEDzq0CDBE
 Uz3R+wJEVqCLYIpCE3d70QDA41zLtfhEkdpCHn9x9XJcntEWeXxbqQecnlQuDa412h
 szESW+Do/sZTrFm0yHATjsX5eXaipuqhdVWJye99CQ0dB2cwWjfwlS3QkbxC6TsEGH
 r5qgP+jP+ln57sL6Ia4+tpRhrhlApYX+EGCrFpE5Li4UmciFZfnu2i+FJ+5aBd6yjL
 wG1lURpDnoPAF4ZU1tCzhbYXZHkVYWqLaOXODXfi9fWmsXV7vc5ikKWAX4VGCvR5Yg
 FBPMxODRalZ/Q==
X-Virus-Scanned: amavisd-new at boeck1.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
X-RRZE-Submit-IP: 2001:a62:19b2:a701:a9ea:94f8:dbd1:5695
Received: from shaun-PC.fritz.box (unknown
 [IPv6:2001:a62:19b2:a701:a9ea:94f8:dbd1:5695])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: U2FsdGVkX1+R1aihkTEQ2UXjbBWOjrjWzJVBRo+GUAc=)
 by smtp-auth.uni-erlangen.de (Postfix) with ESMTPSA id 4DJty66HCyz8spV;
 Mon, 18 Jan 2021 02:10:38 +0100 (CET)
From: Johannes Czekay <johannes.czekay@fau.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/6] wlan-ng: clean up spinlock_t definition
Date: Mon, 18 Jan 2021 02:09:52 +0100
Message-Id: <20210118010955.48663-3-johannes.czekay@fau.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210118010955.48663-1-johannes.czekay@fau.de>
References: <20210118010955.48663-1-johannes.czekay@fau.de>
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
Cc: devel@driverdev.osuosl.org, jbwyatt4@gmail.com, gustavo@embeddedor.com,
 linux-kernel@i4.cs.fau.de, linux-kernel@vger.kernel.org, rkovhaev@gmail.com,
 johannes.czekay@fau.de, nicolai.fischer@fau.de, hqjagain@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch cleans up a "spinlock_t definition without comment" warning in
hfa384x.h.

Signed-off-by: Johannes Czekay <johannes.czekay@fau.de>
Co-developed-by: Nicolai Fischer <nicolai.fischer@fau.de>
Signed-off-by: Nicolai Fischer <nicolai.fischer@fau.de>
---
 drivers/staging/wlan-ng/hfa384x.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 88e894dd3568..13ab9545a066 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1184,7 +1184,7 @@ struct hfa384x_usbctlx {
 };
 
 struct hfa384x_usbctlxq {
-	spinlock_t lock;
+	spinlock_t lock;	/* Lock for CTLX que */
 	struct list_head pending;
 	struct list_head active;
 	struct list_head completing;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
