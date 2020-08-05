Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5AB23C84E
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 10:56:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 040A982108;
	Wed,  5 Aug 2020 08:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cLOs+eiUqAGE; Wed,  5 Aug 2020 08:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D89DE877A8;
	Wed,  5 Aug 2020 08:56:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 966091BF4E6
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 08:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 87315877A0
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 08:56:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zF5zFlaX-KO0 for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 08:56:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F2EBF8774F
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 08:56:14 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id f7so39936181wrw.1
 for <devel@driverdev.osuosl.org>; Wed, 05 Aug 2020 01:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=gLMvrcIWILBi1268xZmE0L9Ky44X/04wXjN/4lrW304=;
 b=GgIqg6R1QgEFL9RMin9Ow+hRMnFpnjXcHFZ+3KfwHrpkTW3Ts8nj02MAZcvH+dSZOM
 n9gLLvoWNmdlhmC7feiar3KyZ4yOHXhCTtGI69HnJkav3aycJ/S5sIxSC6mYQbIolavg
 AePQTFpYJAdh7P3SPRdqRxjEJIZ4Ykkd5AxgdrJES2LHkiSgGti76ChlDfIJR77c7xYl
 JBK967ZjngFRXUqAWHSBhhDsaFdynR5AgUHOd4An8WDWFm+jIk9LKUVZmCFYKW1hUma/
 zR9KsHp/CNceDaYSd3uBOA5rMRPpP8FZoRNWcDShfMJd+ECROGrcuWnSvUSvIz35WHHo
 OSkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=gLMvrcIWILBi1268xZmE0L9Ky44X/04wXjN/4lrW304=;
 b=C7f8FyCAe7Vx5BQ1rW09EZYrr6Z5fUqzGT6QO7ahlndBQGwdCxzWZQU0DksGu4TjA8
 t5ORHyFWnoYFfFnj9fzeeToxbNmgDGKT7QPCrALya5GFFnwGMHTpoMSRm9V6xgoCxJ/g
 dZduHT8VBerLZQhkAhBoBry14tlF3iSMomw8zkU8E6CflCl5CKrD0Qaf2V2smx62Z39P
 8QefbVE+Dxse+2nR69pj8eFTy21RPeOXQwTfL3J69kw+/LJ8ahQzguSPA4PlvyjHC8zS
 s/NUVwPRxGxtxwW8k/4EFQHB4EjVf8vLGgyk/diqCEhCllU864ySqTuY83+IQFULtj+w
 ruJw==
X-Gm-Message-State: AOAM532Qa5GvSzNqtdRY+Mavd2d4lO4fo/gk5fiMpSNeueVAxjOcQYFR
 jrd+gy/ghvRaUluyS9W66Ec=
X-Google-Smtp-Source: ABdhPJwbZUVO82su5fcgjWQ/tBxuz9U5eZco4+XAKwOLYao5FdIJUognpxodA2OwXEwITyG54buU8Q==
X-Received: by 2002:a5d:4984:: with SMTP id r4mr1800975wrq.401.1596617773054; 
 Wed, 05 Aug 2020 01:56:13 -0700 (PDT)
Received: from tsnow (IGLD-83-130-60-139.inter.net.il. [83.130.60.139])
 by smtp.gmail.com with ESMTPSA id y203sm1900275wmc.29.2020.08.05.01.56.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Aug 2020 01:56:12 -0700 (PDT)
Date: Wed, 5 Aug 2020 11:56:08 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: jerome.pouiller@silabs.com
Subject: [PATCH] staging: wfx: refactor to avoid duplication at hif_tx.c
Message-ID: <20200805085608.GA100079@tsnow>
MIME-Version: 1.0
Content-Disposition: inline
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add functions wfx_full_send(), wfx_full_send_no_reply_async(),
wfx_full_send_no_reply() and wfx_full_send_no_reply_free()
which works as follow:
wfx_full_send() - simple wrapper for both wfx_fill_header()
                  and wfx_cmd_send().
wfx_full_send_no_reply_async() - wrapper for both but with
                                 NULL as reply and size zero.
wfx_full_send_no_reply() - same as wfx_full_send_no_reply_async()
                           but with false async value
wfx_full_send_no_reply_free() - same as wfx_full_send_no_reply()
                                but also free the struct hif_msg.

Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
---
 drivers/staging/wfx/hif_tx.c | 179 ++++++++++++++++-------------------
 1 file changed, 79 insertions(+), 100 deletions(-)

diff --git a/drivers/staging/wfx/hif_tx.c b/drivers/staging/wfx/hif_tx.c
index 5110f9b93762..1ee84e5d47ef 100644
--- a/drivers/staging/wfx/hif_tx.c
+++ b/drivers/staging/wfx/hif_tx.c
@@ -40,7 +40,7 @@ static void wfx_fill_header(struct hif_msg *hif, int if_id,
 
 static void *wfx_alloc_hif(size_t body_len, struct hif_msg **hif)
 {
-	*hif = kzalloc(sizeof(struct hif_msg) + body_len, GFP_KERNEL);
+	*hif = kzalloc(sizeof(*hif) + body_len, GFP_KERNEL);
 	if (*hif)
 		return (*hif)->body;
 	else
@@ -123,9 +123,38 @@ int wfx_cmd_send(struct wfx_dev *wdev, struct hif_msg *request,
 	return ret;
 }
 
+int wfx_full_send(struct wfx_dev *wdev, struct hif_msg *hif, void *reply, size_t reply_len,
+		  bool async, int if_id, unsigned int cmd, int size)
+{
+	wfx_fill_header(hif, if_id, cmd, size);
+	return wfx_cmd_send(wdev, hif, reply, reply_len, async);
+}
+
+int wfx_full_send_no_reply_async(struct wfx_dev *wdev, struct hif_msg *hif, int if_id,
+				 unsigned int cmd, int size, bool async)
+{
+	return wfx_full_send(wdev, hif, NULL, 0, async, if_id, cmd, size);
+}
+
+int wfx_full_send_no_reply(struct wfx_dev *wdev, struct hif_msg *hif, int if_id,
+			   unsigned int cmd, int size)
+{
+	return wfx_full_send_no_reply_async(wdev, hif, if_id, cmd, size, false);
+}
+
+int wfx_full_send_no_reply_free(struct wfx_dev *wdev, struct hif_msg *hif, int if_id,
+				unsigned int cmd, int size)
+{
+	int ret;
+
+	ret = wfx_full_send_no_reply(wdev, hif, if_id, cmd, size);
+	kfree(hif);
+	return ret;
+}
+
 // This function is special. After HIF_REQ_ID_SHUT_DOWN, chip won't reply to any
 // request anymore. We need to slightly hack struct wfx_hif_cmd for that job. Be
-// carefull to only call this funcion during device unregister.
+// careful to only call this function during device unregister.
 int hif_shutdown(struct wfx_dev *wdev)
 {
 	int ret;
@@ -136,8 +165,8 @@ int hif_shutdown(struct wfx_dev *wdev)
 	wfx_alloc_hif(0, &hif);
 	if (!hif)
 		return -ENOMEM;
-	wfx_fill_header(hif, -1, HIF_REQ_ID_SHUT_DOWN, 0);
-	ret = wfx_cmd_send(wdev, hif, NULL, 0, true);
+	ret = wfx_full_send_no_reply_async(wdev, hif, -1, HIF_REQ_ID_SHUT_DOWN,
+					   0, true);
 	// After this command, chip won't reply. Be sure to give enough time to
 	// bh to send buffer:
 	msleep(100);
@@ -154,7 +183,6 @@ int hif_shutdown(struct wfx_dev *wdev)
 
 int hif_configuration(struct wfx_dev *wdev, const u8 *conf, size_t len)
 {
-	int ret;
 	size_t buf_len = sizeof(struct hif_req_configuration) + len;
 	struct hif_msg *hif;
 	struct hif_req_configuration *body = wfx_alloc_hif(buf_len, &hif);
@@ -163,25 +191,20 @@ int hif_configuration(struct wfx_dev *wdev, const u8 *conf, size_t len)
 		return -ENOMEM;
 	body->length = cpu_to_le16(len);
 	memcpy(body->pds_data, conf, len);
-	wfx_fill_header(hif, -1, HIF_REQ_ID_CONFIGURATION, buf_len);
-	ret = wfx_cmd_send(wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply_free(wdev, hif, -1, HIF_REQ_ID_CONFIGURATION,
+					   buf_len);
 }
 
 int hif_reset(struct wfx_vif *wvif, bool reset_stat)
 {
-	int ret;
 	struct hif_msg *hif;
 	struct hif_req_reset *body = wfx_alloc_hif(sizeof(*body), &hif);
 
 	if (!hif)
 		return -ENOMEM;
 	body->reset_flags.reset_stat = reset_stat;
-	wfx_fill_header(hif, wvif->id, HIF_REQ_ID_RESET, sizeof(*body));
-	ret = wfx_cmd_send(wvif->wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply_free(wvif->wdev, hif, wvif->id,
+					   HIF_REQ_ID_RESET, sizeof(*body));
 }
 
 int hif_read_mib(struct wfx_dev *wdev, int vif_id, u16 mib_id,
@@ -198,9 +221,8 @@ int hif_read_mib(struct wfx_dev *wdev, int vif_id, u16 mib_id,
 		goto out;
 	}
 	body->mib_id = cpu_to_le16(mib_id);
-	wfx_fill_header(hif, vif_id, HIF_REQ_ID_READ_MIB, sizeof(*body));
-	ret = wfx_cmd_send(wdev, hif, reply, buf_len, false);
-
+	ret = wfx_full_send(wdev, hif, reply, buf_len, false, vif_id,
+			    HIF_REQ_ID_READ_MIB, sizeof(*body));
 	if (!ret && mib_id != le16_to_cpu(reply->mib_id)) {
 		dev_warn(wdev->dev, "%s: confirmation mismatch request\n",
 			 __func__);
@@ -223,7 +245,6 @@ int hif_read_mib(struct wfx_dev *wdev, int vif_id, u16 mib_id,
 int hif_write_mib(struct wfx_dev *wdev, int vif_id, u16 mib_id,
 		  void *val, size_t val_len)
 {
-	int ret;
 	struct hif_msg *hif;
 	int buf_len = sizeof(struct hif_req_write_mib) + val_len;
 	struct hif_req_write_mib *body = wfx_alloc_hif(buf_len, &hif);
@@ -233,16 +254,14 @@ int hif_write_mib(struct wfx_dev *wdev, int vif_id, u16 mib_id,
 	body->mib_id = cpu_to_le16(mib_id);
 	body->length = cpu_to_le16(val_len);
 	memcpy(&body->mib_data, val, val_len);
-	wfx_fill_header(hif, vif_id, HIF_REQ_ID_WRITE_MIB, buf_len);
-	ret = wfx_cmd_send(wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply_free(wdev, hif, vif_id, HIF_REQ_ID_WRITE_MIB,
+					   buf_len);
 }
 
 int hif_scan(struct wfx_vif *wvif, struct cfg80211_scan_request *req,
 	     int chan_start_idx, int chan_num, int *timeout)
 {
-	int ret, i;
+	int i;
 	struct hif_msg *hif;
 	size_t buf_len =
 		sizeof(struct hif_req_start_scan_alt) + chan_num * sizeof(u8);
@@ -292,31 +311,25 @@ int hif_scan(struct wfx_vif *wvif, struct cfg80211_scan_request *req,
 	if (timeout)
 		*timeout = usecs_to_jiffies(tmo);
 
-	wfx_fill_header(hif, wvif->id, HIF_REQ_ID_START_SCAN, buf_len);
-	ret = wfx_cmd_send(wvif->wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply(wvif->wdev, hif, wvif->id,
+				      HIF_REQ_ID_START_SCAN, buf_len);
 }
 
 int hif_stop_scan(struct wfx_vif *wvif)
 {
-	int ret;
 	struct hif_msg *hif;
 	// body associated to HIF_REQ_ID_STOP_SCAN is empty
 	wfx_alloc_hif(0, &hif);
 
 	if (!hif)
 		return -ENOMEM;
-	wfx_fill_header(hif, wvif->id, HIF_REQ_ID_STOP_SCAN, 0);
-	ret = wfx_cmd_send(wvif->wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply_free(wvif->wdev, hif, wvif->id,
+				      HIF_REQ_ID_STOP_SCAN, 0);
 }
 
 int hif_join(struct wfx_vif *wvif, const struct ieee80211_bss_conf *conf,
 	     struct ieee80211_channel *channel, const u8 *ssid, int ssidlen)
 {
-	int ret;
 	struct hif_msg *hif;
 	struct hif_req_join *body = wfx_alloc_hif(sizeof(*body), &hif);
 
@@ -341,15 +354,12 @@ int hif_join(struct wfx_vif *wvif, const struct ieee80211_bss_conf *conf,
 		body->ssid_length = cpu_to_le32(ssidlen);
 		memcpy(body->ssid, ssid, ssidlen);
 	}
-	wfx_fill_header(hif, wvif->id, HIF_REQ_ID_JOIN, sizeof(*body));
-	ret = wfx_cmd_send(wvif->wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply_free(wvif->wdev, hif, wvif->id,
+					   HIF_REQ_ID_JOIN, sizeof(*body));
 }
 
 int hif_set_bss_params(struct wfx_vif *wvif, int aid, int beacon_lost_count)
 {
-	int ret;
 	struct hif_msg *hif;
 	struct hif_req_set_bss_params *body =
 		wfx_alloc_hif(sizeof(*body), &hif);
@@ -358,16 +368,13 @@ int hif_set_bss_params(struct wfx_vif *wvif, int aid, int beacon_lost_count)
 		return -ENOMEM;
 	body->aid = cpu_to_le16(aid);
 	body->beacon_lost_count = beacon_lost_count;
-	wfx_fill_header(hif, wvif->id, HIF_REQ_ID_SET_BSS_PARAMS,
-			sizeof(*body));
-	ret = wfx_cmd_send(wvif->wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply_free(wvif->wdev, hif, wvif->id,
+					    HIF_REQ_ID_SET_BSS_PARAMS,
+					    sizeof(*body));
 }
 
 int hif_add_key(struct wfx_dev *wdev, const struct hif_req_add_key *arg)
 {
-	int ret;
 	struct hif_msg *hif;
 	// FIXME: only send necessary bits
 	struct hif_req_add_key *body = wfx_alloc_hif(sizeof(*body), &hif);
@@ -379,34 +386,28 @@ int hif_add_key(struct wfx_dev *wdev, const struct hif_req_add_key *arg)
 	if (wfx_api_older_than(wdev, 1, 5))
 		// Legacy firmwares expect that add_key to be sent on right
 		// interface.
-		wfx_fill_header(hif, arg->int_id, HIF_REQ_ID_ADD_KEY,
-				sizeof(*body));
-	else
-		wfx_fill_header(hif, -1, HIF_REQ_ID_ADD_KEY, sizeof(*body));
-	ret = wfx_cmd_send(wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+		return wfx_full_send_no_reply_free(wdev, hif, arg->int_id,
+						   HIF_REQ_ID_ADD_KEY,
+						   sizeof(*body));
+	return wfx_full_send_no_reply_free(wdev, hif, -1, HIF_REQ_ID_ADD_KEY,
+					   sizeof(*body));
 }
 
 int hif_remove_key(struct wfx_dev *wdev, int idx)
 {
-	int ret;
 	struct hif_msg *hif;
 	struct hif_req_remove_key *body = wfx_alloc_hif(sizeof(*body), &hif);
 
 	if (!hif)
 		return -ENOMEM;
 	body->entry_index = idx;
-	wfx_fill_header(hif, -1, HIF_REQ_ID_REMOVE_KEY, sizeof(*body));
-	ret = wfx_cmd_send(wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply_free(wdev, hif, -1, HIF_REQ_ID_REMOVE_KEY,
+					   sizeof(*body));
 }
 
 int hif_set_edca_queue_params(struct wfx_vif *wvif, u16 queue,
 			      const struct ieee80211_tx_queue_params *arg)
 {
-	int ret;
 	struct hif_msg *hif;
 	struct hif_req_edca_queue_params *body = wfx_alloc_hif(sizeof(*body),
 							       &hif);
@@ -427,16 +428,13 @@ int hif_set_edca_queue_params(struct wfx_vif *wvif, u16 queue,
 		body->queue_id = HIF_QUEUE_ID_BACKGROUND;
 	if (wfx_api_older_than(wvif->wdev, 2, 0) && queue == IEEE80211_AC_BK)
 		body->queue_id = HIF_QUEUE_ID_BESTEFFORT;
-	wfx_fill_header(hif, wvif->id, HIF_REQ_ID_EDCA_QUEUE_PARAMS,
-			sizeof(*body));
-	ret = wfx_cmd_send(wvif->wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply_free(wvif->wdev, hif, wvif->id,
+					   HIF_REQ_ID_EDCA_QUEUE_PARAMS,
+					   sizeof(*body));
 }
 
 int hif_set_pm(struct wfx_vif *wvif, bool ps, int dynamic_ps_timeout)
 {
-	int ret;
 	struct hif_msg *hif;
 	struct hif_req_set_pm_mode *body = wfx_alloc_hif(sizeof(*body), &hif);
 
@@ -452,16 +450,13 @@ int hif_set_pm(struct wfx_vif *wvif, bool ps, int dynamic_ps_timeout)
 		if (body->fast_psm_idle_period)
 			body->pm_mode.fast_psm = 1;
 	}
-	wfx_fill_header(hif, wvif->id, HIF_REQ_ID_SET_PM_MODE, sizeof(*body));
-	ret = wfx_cmd_send(wvif->wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply_free(wvif->wdev, hif, wvif->id,
+				      HIF_REQ_ID_SET_PM_MODE, sizeof(*body));
 }
 
 int hif_start(struct wfx_vif *wvif, const struct ieee80211_bss_conf *conf,
 	      const struct ieee80211_channel *channel)
 {
-	int ret;
 	struct hif_msg *hif;
 	struct hif_req_start *body = wfx_alloc_hif(sizeof(*body), &hif);
 
@@ -476,15 +471,12 @@ int hif_start(struct wfx_vif *wvif, const struct ieee80211_bss_conf *conf,
 		cpu_to_le32(wfx_rate_mask_to_hw(wvif->wdev, conf->basic_rates));
 	body->ssid_length = conf->ssid_len;
 	memcpy(body->ssid, conf->ssid, conf->ssid_len);
-	wfx_fill_header(hif, wvif->id, HIF_REQ_ID_START, sizeof(*body));
-	ret = wfx_cmd_send(wvif->wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply_free(wvif->wdev, hif, wvif->id,
+					   HIF_REQ_ID_START, sizeof(*body));
 }
 
 int hif_beacon_transmit(struct wfx_vif *wvif, bool enable)
 {
-	int ret;
 	struct hif_msg *hif;
 	struct hif_req_beacon_transmit *body = wfx_alloc_hif(sizeof(*body),
 							     &hif);
@@ -492,16 +484,13 @@ int hif_beacon_transmit(struct wfx_vif *wvif, bool enable)
 	if (!hif)
 		return -ENOMEM;
 	body->enable_beaconing = enable ? 1 : 0;
-	wfx_fill_header(hif, wvif->id, HIF_REQ_ID_BEACON_TRANSMIT,
-			sizeof(*body));
-	ret = wfx_cmd_send(wvif->wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply_free(wvif->wdev, hif, wvif->id,
+					   HIF_REQ_ID_BEACON_TRANSMIT,
+					   sizeof(*body));
 }
 
 int hif_map_link(struct wfx_vif *wvif, u8 *mac_addr, int flags, int sta_id)
 {
-	int ret;
 	struct hif_msg *hif;
 	struct hif_req_map_link *body = wfx_alloc_hif(sizeof(*body), &hif);
 
@@ -511,15 +500,12 @@ int hif_map_link(struct wfx_vif *wvif, u8 *mac_addr, int flags, int sta_id)
 		ether_addr_copy(body->mac_addr, mac_addr);
 	body->map_link_flags = *(struct hif_map_link_flags *)&flags;
 	body->peer_sta_id = sta_id;
-	wfx_fill_header(hif, wvif->id, HIF_REQ_ID_MAP_LINK, sizeof(*body));
-	ret = wfx_cmd_send(wvif->wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply_free(wvif->wdev, hif, wvif->id,
+					   HIF_REQ_ID_MAP_LINK, sizeof(*body));
 }
 
 int hif_update_ie_beacon(struct wfx_vif *wvif, const u8 *ies, size_t ies_len)
 {
-	int ret;
 	struct hif_msg *hif;
 	int buf_len = sizeof(struct hif_req_update_ie) + ies_len;
 	struct hif_req_update_ie *body = wfx_alloc_hif(buf_len, &hif);
@@ -529,10 +515,8 @@ int hif_update_ie_beacon(struct wfx_vif *wvif, const u8 *ies, size_t ies_len)
 	body->ie_flags.beacon = 1;
 	body->num_ies = cpu_to_le16(1);
 	memcpy(body->ie, ies, ies_len);
-	wfx_fill_header(hif, wvif->id, HIF_REQ_ID_UPDATE_IE, buf_len);
-	ret = wfx_cmd_send(wvif->wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply_free(wvif->wdev, hif, wvif->id,
+					   HIF_REQ_ID_UPDATE_IE, buf_len);
 }
 
 int hif_sl_send_pub_keys(struct wfx_dev *wdev,
@@ -549,10 +533,9 @@ int hif_sl_send_pub_keys(struct wfx_dev *wdev,
 	memcpy(body->host_pub_key, pubkey, sizeof(body->host_pub_key));
 	memcpy(body->host_pub_key_mac, pubkey_hmac,
 	       sizeof(body->host_pub_key_mac));
-	wfx_fill_header(hif, -1, HIF_REQ_ID_SL_EXCHANGE_PUB_KEYS,
-			sizeof(*body));
-	ret = wfx_cmd_send(wdev, hif, NULL, 0, false);
-	kfree(hif);
+	ret = wfx_full_send_no_reply_free(wdev, hif, -1,
+					  HIF_REQ_ID_SL_EXCHANGE_PUB_KEYS,
+					  sizeof(*body));
 	// Compatibility with legacy secure link
 	if (ret == le32_to_cpu(HIF_STATUS_SLK_NEGO_SUCCESS))
 		ret = 0;
@@ -561,17 +544,14 @@ int hif_sl_send_pub_keys(struct wfx_dev *wdev,
 
 int hif_sl_config(struct wfx_dev *wdev, const unsigned long *bitmap)
 {
-	int ret;
 	struct hif_msg *hif;
 	struct hif_req_sl_configure *body = wfx_alloc_hif(sizeof(*body), &hif);
 
 	if (!hif)
 		return -ENOMEM;
 	memcpy(body->encr_bmp, bitmap, sizeof(body->encr_bmp));
-	wfx_fill_header(hif, -1, HIF_REQ_ID_SL_CONFIGURE, sizeof(*body));
-	ret = wfx_cmd_send(wdev, hif, NULL, 0, false);
-	kfree(hif);
-	return ret;
+	return wfx_full_send_no_reply_free(wdev, hif, -1, HIF_REQ_ID_SL_CONFIGURE,
+					   sizeof(*body));
 }
 
 int hif_sl_set_mac_key(struct wfx_dev *wdev, const u8 *slk_key, int destination)
@@ -585,9 +565,8 @@ int hif_sl_set_mac_key(struct wfx_dev *wdev, const u8 *slk_key, int destination)
 		return -ENOMEM;
 	memcpy(body->key_value, slk_key, sizeof(body->key_value));
 	body->otp_or_ram = destination;
-	wfx_fill_header(hif, -1, HIF_REQ_ID_SET_SL_MAC_KEY, sizeof(*body));
-	ret = wfx_cmd_send(wdev, hif, NULL, 0, false);
-	kfree(hif);
+	ret = wfx_full_send_no_reply_free(wdev, hif, -1, HIF_REQ_ID_SET_SL_MAC_KEY,
+					  sizeof(*body));
 	// Compatibility with legacy secure link
 	if (ret == le32_to_cpu(HIF_STATUS_SLK_SET_KEY_SUCCESS))
 		ret = 0;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
