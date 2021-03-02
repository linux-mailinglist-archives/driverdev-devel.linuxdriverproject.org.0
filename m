Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC193297A5
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Mar 2021 10:14:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 584A96F47F;
	Tue,  2 Mar 2021 09:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3CzdFOOfk203; Tue,  2 Mar 2021 09:14:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30DE96065C;
	Tue,  2 Mar 2021 09:14:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5B4C1BF25B
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 09:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D03914307F
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 09:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 69qGFpkYjF5U for <devel@linuxdriverproject.org>;
 Tue,  2 Mar 2021 09:14:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 820FC43069
 for <devel@driverdev.osuosl.org>; Tue,  2 Mar 2021 09:14:37 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id p8so7498805ejb.10
 for <devel@driverdev.osuosl.org>; Tue, 02 Mar 2021 01:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pKsB8xXAte7eLnnt+TkAlNuRDcZqKIjPaWBZfUAhV9w=;
 b=MLz9oR/tMNKres9w8RtV5LTyjCrrZ8gEfgMLW5gcEYaB3jMdxuh50RQ9R0X1As9joR
 3AMval8t9cMC7Xnuu8x2GFlfniahFMGLuUWK8lqiW54fVlqRIaXJ3wsZMkntxf+j7aQ9
 doAdaWaRIdMTj5ttGAVVgMbNZz36r/ZRrJOb3STTmFlOUMOt9K101hU5YMcc0zOXiTCb
 7FCgv6rw69WZklvLCNVR23YRbt3G+lmONVW1eg81BVy8QHoKq4KXm1uSBb1i9fB/P0z5
 MuPqbJZnUs0OsFb1IeYYWdzVkANEpii1ZDj3tZ3QsPckoh8XusgCFn+GAyYuPjy2MkPy
 o0EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pKsB8xXAte7eLnnt+TkAlNuRDcZqKIjPaWBZfUAhV9w=;
 b=epN2N+/KWBHd0/Cw+EilCJwso4baUlrgHlkKwaR0jXsqID+749F/mZuob3zWoj0BDH
 hRBPY/xvq7/cUhcghmLAvyTv06J9SPx/H2dmMXBLz2y+blOee3b3FMOMXkrVVXTgp8kB
 SVi/zpm+HT+F1d0Ap/iRMuyimUcJIcrSoKivgFJvXDxLeIuejcqLvo1AaiWC6S50Gouo
 igxN4wS75WmUvITtJRKmqoU7XJ533DFsuyI+ylcxSrwRWB8rmPQ4CPB3HP6JX1ltNf25
 7vMThEZLxfix4YS4/IXzVi6CnsHEdKAw6uLnMHSxXZVhX+FKrFksKbuJKRcMz6/5Mvqt
 DZAg==
X-Gm-Message-State: AOAM530vDeqzFw0lFJ0r7/VXp4wmlFx5bygHgu3QR20Wq55cx6XbmhJ9
 zDmk2Zyt7/yw9RX/EbvPZRM=
X-Google-Smtp-Source: ABdhPJy4V0lje09bKbN1A86kKUKU/ygta/xtjQnLYWz2oIngTDPjWqgRHROFKA3dLNltr0/uNspDMA==
X-Received: by 2002:a17:906:801:: with SMTP id
 e1mr9570167ejd.465.1614676475667; 
 Tue, 02 Mar 2021 01:14:35 -0800 (PST)
Received: from localhost.localdomain
 (2a02-a456-df9f-1-7d91-8a91-1a5-83c8.fixed6.kpn.net.
 [2a02:a456:df9f:1:7d91:8a91:1a5:83c8])
 by smtp.gmail.com with ESMTPSA id o4sm17294938ejj.45.2021.03.02.01.14.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Mar 2021 01:14:34 -0800 (PST)
From: gabriele.modena@gmail.com
To: linux-kernel@vger.kernel.org
Subject: [PATCH] wimax: attempt to address style issues.
Date: Tue,  2 Mar 2021 10:11:02 +0100
Message-Id: <20210302091102.1598-1-gabriele.modena@gmail.com>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, Gabriele Modena <gabriele.modena@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Gabriele Modena <gabriele.modena@gmail.com>

When running checkpatch.pl on op-msg.c, op-rfkill.c
and stack.c I noticed that they contained a few style issues
at warning level of severity. This patch is both an attempt to
address the warnings, as well as a way for me to familiarise
with the linux kernel contribution process, by following
tasks proposed by a popular online challenge.

Signed-off-by: Gabriele Modena <gabriele.modena@gmail.com>
---
 drivers/staging/wimax/op-msg.c    |  8 ++++----
 drivers/staging/wimax/op-rfkill.c |  7 ++++---
 drivers/staging/wimax/stack.c     | 12 ++++++------
 3 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/wimax/op-msg.c b/drivers/staging/wimax/op-msg.c
index e20ac7d84e82..11da48bf704f 100644
--- a/drivers/staging/wimax/op-msg.c
+++ b/drivers/staging/wimax/op-msg.c
@@ -142,8 +142,8 @@ struct sk_buff *wimax_msg_alloc(struct wimax_dev *wimax_dev,
 	}
 	result = nla_put(skb, WIMAX_GNL_MSG_DATA, size, msg);
 	if (result < 0) {
-		dev_err(dev, "no memory to add payload (msg %p size %zu) in "
-			"attribute: %d\n", msg, size, result);
+		dev_err(dev, "no memory to add payload (msg %p size %zu) in attribute: %d\n",
+			msg, size, result);
 		goto error_nla_put;
 	}
 	genlmsg_end(skb, genl_msg);
@@ -260,6 +260,7 @@ int wimax_msg_send(struct wimax_dev *wimax_dev, struct sk_buff *skb)
 	struct device *dev = wimax_dev_to_dev(wimax_dev);
 	void *msg = skb->data;
 	size_t size = skb->len;
+
 	might_sleep();
 
 	d_printf(1, dev, "CTX: wimax msg, %zu bytes\n", size);
@@ -340,8 +341,7 @@ int wimax_gnl_doit_msg_from_user(struct sk_buff *skb, struct genl_info *info)
 	/* Unpack arguments */
 	result = -EINVAL;
 	if (info->attrs[WIMAX_GNL_MSG_DATA] == NULL) {
-		dev_err(dev, "WIMAX_GNL_MSG_FROM_USER: can't find MSG_DATA "
-			"attribute\n");
+		dev_err(dev, "WIMAX_GNL_MSG_FROM_USER: can't find MSG_DATA attribute\n");
 		goto error_no_data;
 	}
 	msg_buf = nla_data(info->attrs[WIMAX_GNL_MSG_DATA]);
diff --git a/drivers/staging/wimax/op-rfkill.c b/drivers/staging/wimax/op-rfkill.c
index 78b294481a59..52612ed09183 100644
--- a/drivers/staging/wimax/op-rfkill.c
+++ b/drivers/staging/wimax/op-rfkill.c
@@ -294,7 +294,8 @@ int wimax_rfkill(struct wimax_dev *wimax_dev, enum wimax_rf_state state)
 		/* While initializing, < 1.4.3 wimax-tools versions use
 		 * this call to check if the device is a valid WiMAX
 		 * device; so we allow it to proceed always,
-		 * considering the radios are all off. */
+		 * considering the radios are all off.
+		 */
 		if (result == -ENOMEDIUM && state == WIMAX_RF_QUERY)
 			result = WIMAX_RF_OFF << 1 | WIMAX_RF_OFF;
 		goto error_not_ready;
@@ -378,6 +379,7 @@ int wimax_rfkill_add(struct wimax_dev *wimax_dev)
 void wimax_rfkill_rm(struct wimax_dev *wimax_dev)
 {
 	struct device *dev = wimax_dev_to_dev(wimax_dev);
+
 	d_fnstart(3, dev, "(wimax_dev %p)\n", wimax_dev);
 	rfkill_unregister(wimax_dev->rfkill);
 	rfkill_destroy(wimax_dev->rfkill);
@@ -415,8 +417,7 @@ int wimax_gnl_doit_rfkill(struct sk_buff *skb, struct genl_info *info)
 	dev = wimax_dev_to_dev(wimax_dev);
 	result = -EINVAL;
 	if (info->attrs[WIMAX_GNL_RFKILL_STATE] == NULL) {
-		dev_err(dev, "WIMAX_GNL_RFKILL: can't find RFKILL_STATE "
-			"attribute\n");
+		dev_err(dev, "WIMAX_GNL_RFKILL: can't find RFKILL_STATE attribute\n");
 		goto error_no_pid;
 	}
 	new_state = nla_get_u32(info->attrs[WIMAX_GNL_RFKILL_STATE]);
diff --git a/drivers/staging/wimax/stack.c b/drivers/staging/wimax/stack.c
index ace24a6dfd2d..e44158334246 100644
--- a/drivers/staging/wimax/stack.c
+++ b/drivers/staging/wimax/stack.c
@@ -51,9 +51,7 @@ static char wimax_debug_params[128];
 module_param_string(debug, wimax_debug_params, sizeof(wimax_debug_params),
 		    0644);
 MODULE_PARM_DESC(debug,
-		 "String of space-separated NAME:VALUE pairs, where NAMEs "
-		 "are the different debug submodules and VALUE are the "
-		 "initial debug value to set.");
+		 "String of space-separated NAME:VALUE pairs, where NAMEs are the different debug submodules and VALUE are the initial debug value to set.");
 
 /*
  * Authoritative source for the RE_STATE_CHANGE attribute policy
@@ -62,7 +60,7 @@ MODULE_PARM_DESC(debug,
  * close to where the data is generated.
  */
 /*
-static const struct nla_policy wimax_gnl_re_status_change[WIMAX_GNL_ATTR_MAX + 1] = {
+ * static const struct nla_policy wimax_gnl_re_status_change[WIMAX_GNL_ATTR_MAX + 1] = {
 	[WIMAX_GNL_STCH_STATE_OLD] = { .type = NLA_U8 },
 	[WIMAX_GNL_STCH_STATE_NEW] = { .type = NLA_U8 },
 };
@@ -156,6 +154,7 @@ int wimax_gnl_re_state_change_send(
 {
 	int result = 0;
 	struct device *dev = wimax_dev_to_dev(wimax_dev);
+
 	d_fnstart(3, dev, "(wimax_dev %p report_skb %p)\n",
 		  wimax_dev, report_skb);
 	if (report_skb == NULL) {
@@ -275,8 +274,8 @@ void __wimax_state_change(struct wimax_dev *wimax_dev, enum wimax_st new_state)
 	/* Execute the actions of entry to the new state */
 	switch (new_state) {
 	case __WIMAX_ST_NULL:
-		dev_err(dev, "SW BUG: wimax_dev %p entering NULL state "
-			"from %u\n", wimax_dev, wimax_dev->state);
+		dev_err(dev, "SW BUG: wimax_dev %p entering NULL state from %u\n",
+			wimax_dev, wimax_dev->state);
 		WARN_ON(1);		/* Nobody can enter this state */
 		break;
 	case WIMAX_ST_DOWN:
@@ -362,6 +361,7 @@ EXPORT_SYMBOL_GPL(wimax_state_change);
 enum wimax_st wimax_state_get(struct wimax_dev *wimax_dev)
 {
 	enum wimax_st state;
+
 	mutex_lock(&wimax_dev->mutex);
 	state = wimax_dev->state;
 	mutex_unlock(&wimax_dev->mutex);
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
