Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B49A2F9746
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 02:19:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F1AEA87030;
	Mon, 18 Jan 2021 01:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CC6TVR6C7mAz; Mon, 18 Jan 2021 01:19:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A95C87021;
	Mon, 18 Jan 2021 01:19:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7504B1BF983
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 01:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6FC048673B
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 01:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UNZMV29-51rT for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 01:19:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-1.rrze.uni-erlangen.de (mx-rz-1.rrze.uni-erlangen.de
 [131.188.11.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B0F5C8675C
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 01:19:33 +0000 (UTC)
Received: from mx-rz-smart.rrze.uni-erlangen.de
 (mx-rz-smart.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::1e])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mx-rz-1.rrze.uni-erlangen.de (Postfix) with ESMTPS id 4DJtyK223Bz8t5G;
 Mon, 18 Jan 2021 02:10:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1610932249; bh=4q8FTxUDRrtcILtOuN5I+bzRqdLjLl9pn+gqWJE91Hc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=mLpYzIfIRB4adMJQjlbY9ZU1uLOiyeN2j6wJ2qUVkgQ3muz0cjzvkjyhPO1xxNmkB
 IxFzpgmsmKsCUebxEzUC8RdsJcrJBAcLB18mMGXgdZ5sysccKM0xFzcYYYoiDf4vAW
 uY6JWk7NPeGsqo3fYwc/5WUvmCsjW4yrqlJjS+wUGO28GUIFpXd5fMSNCDoHrCmhuz
 FgxzJp2kAqeIabM85hOCiJ6MXJ7JNdhXsMbjgaBeo+nk60BlZORfWiyDxpnKMokIej
 8SqbnZ1Of6LUmghcujbv4pSvYifG8lr0oZjhPbLXVQIB/DndfYLWo8PUdCtZh1cAfQ
 3QwTyy/QHUy1A==
X-Virus-Scanned: amavisd-new at boeck1.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
X-RRZE-Submit-IP: 2001:a62:19b2:a701:a9ea:94f8:dbd1:5695
Received: from shaun-PC.fritz.box (unknown
 [IPv6:2001:a62:19b2:a701:a9ea:94f8:dbd1:5695])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: U2FsdGVkX1+iulsiPjEwpIJAb4Q1fECMgeOy/5MJM/4=)
 by smtp-auth.uni-erlangen.de (Postfix) with ESMTPSA id 4DJtyG5Hgxz8t3M;
 Mon, 18 Jan 2021 02:10:46 +0100 (CET)
From: Johannes Czekay <johannes.czekay@fau.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/6] wlan-ng: clean up alignment
Date: Mon, 18 Jan 2021 02:09:55 +0100
Message-Id: <20210118010955.48663-6-johannes.czekay@fau.de>
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

This patch cleans up all the alignment related warnings from checkpatch.

Signed-off-by: Johannes Czekay <johannes.czekay@fau.de>
Co-developed-by: Nicolai Fischer <nicolai.fischer@fau.de>
Signed-off-by: Nicolai Fischer <nicolai.fischer@fau.de>
---
 drivers/staging/wlan-ng/cfg80211.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 0e44a0f73a6a..ac62746cf92e 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -472,8 +472,8 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
 				return -EINVAL;
 
 			result = prism2_domibset_uint32(wlandev,
-				DIDMIB_DOT11SMT_PRIVACYTBL_WEPDEFAULTKEYID,
-				sme->key_idx);
+							DIDMIB_DOT11SMT_PRIVACYTBL_WEPDEFAULTKEYID,
+							sme->key_idx);
 			if (result)
 				goto exit;
 
@@ -584,8 +584,8 @@ static int prism2_set_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
 		data = MBM_TO_DBM(mbm);
 
 	result = prism2_domibset_uint32(wlandev,
-		DIDMIB_DOT11PHY_TXPOWERTABLE_CURRENTTXPOWERLEVEL,
-		data);
+					DIDMIB_DOT11PHY_TXPOWERTABLE_CURRENTTXPOWERLEVEL,
+					data);
 
 	if (result) {
 		err = -EFAULT;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
