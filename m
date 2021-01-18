Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 158802F974A
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 02:19:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A90D88675C;
	Mon, 18 Jan 2021 01:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FFzoZ7hDDCB9; Mon, 18 Jan 2021 01:19:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFCB586774;
	Mon, 18 Jan 2021 01:19:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 509CD1BF3BF
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 01:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4D6DD8673B
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 01:19:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uzg1SnENGQTj for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 01:19:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-1.rrze.uni-erlangen.de (mx-rz-1.rrze.uni-erlangen.de
 [131.188.11.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BBA2B86767
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 01:19:33 +0000 (UTC)
Received: from mx-rz-smart.rrze.uni-erlangen.de
 (mx-rz-smart.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::1e])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mx-rz-1.rrze.uni-erlangen.de (Postfix) with ESMTPS id 4DJty66RLBz8t21;
 Mon, 18 Jan 2021 02:10:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1610932238; bh=ZV0QaFU8ufvRRApS5SXrg2UAX2IePfyP7k2p8UslGUo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=IryaHHBgFPMqk0Be9GZx8i7X8Wwt2qgPxMyIsj0QVCQFkW42Mr7fusEk4IH0srRww
 hDIjYQTLncidYcD2W3UyV1redP4rrFcynm/EYm4fCkethW9ntcuPeC+/hB05WvHytD
 idkDH/eqyA0qfRdlIS+/aHrNWpYhJ9T/yid9FGzx98LDZdDlKK589FEuiRAVz7W4mn
 BSFhwsTghifLxuIjLZu0neF4706xSnekzrjgd+GkRzHkIgn1orp+IVUtuN/PEabsrc
 F1NrGrn50lSTePY+Wn4F+4a02QMPqKMKsuK1czzzW8ytkafE8L7Iaj1eCqJ6e4mX9f
 zPIrqpWA3pw2w==
X-Virus-Scanned: amavisd-new at boeck1.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
X-RRZE-Submit-IP: 2001:a62:19b2:a701:a9ea:94f8:dbd1:5695
Received: from shaun-PC.fritz.box (unknown
 [IPv6:2001:a62:19b2:a701:a9ea:94f8:dbd1:5695])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: U2FsdGVkX19MAv99qODo4zRFZ8B/84mhk33QF7DOU/Y=)
 by smtp-auth.uni-erlangen.de (Postfix) with ESMTPSA id 4DJty424hlz8sYZ;
 Mon, 18 Jan 2021 02:10:36 +0100 (CET)
From: Johannes Czekay <johannes.czekay@fau.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/6] wlan-ng: clean up line ending
Date: Mon, 18 Jan 2021 02:09:51 +0100
Message-Id: <20210118010955.48663-2-johannes.czekay@fau.de>
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

This patch cleans up all the "Lines should not end with a '('" warnings.

Signed-off-by: Johannes Czekay <johannes.czekay@fau.de>
Co-developed-by: Nicolai Fischer <nicolai.fischer@fau.de>
Signed-off-by: Nicolai Fischer <nicolai.fischer@fau.de>
---
 drivers/staging/wlan-ng/cfg80211.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 759e475e303c..eda5b5a4e089 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -324,8 +324,7 @@ static int prism2_scan(struct wiphy *wiphy,
 		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
 		i++)
 		msg1.channellist.data.data[i] =
-			ieee80211_frequency_to_channel(
-				request->channels[i]->center_freq);
+			ieee80211_frequency_to_channel(request->channels[i]->center_freq);
 	msg1.channellist.data.len = request->n_channels;
 
 	msg1.maxchanneltime.data = 250;
@@ -478,8 +477,7 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
 				goto exit;
 
 			/* send key to driver */
-			did = didmib_dot11smt_wepdefaultkeystable_key(
-					sme->key_idx + 1);
+			did = didmib_dot11smt_wepdefaultkeystable_key(sme->key_idx + 1);
 			result = prism2_domibset_pstr32(wlandev,
 							did, sme->key_len,
 							(u8 *)sme->key);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
