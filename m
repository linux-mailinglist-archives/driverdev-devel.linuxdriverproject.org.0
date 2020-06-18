Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0110D1FF44E
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 16:11:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E25F87B3F;
	Thu, 18 Jun 2020 14:11:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gNz1sp_XY6e5; Thu, 18 Jun 2020 14:11:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 781BE8713D;
	Thu, 18 Jun 2020 14:11:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D25F01BF371
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 14:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CE6E0887CC
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 14:11:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8vE+1cjaSM3l for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 14:11:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7F20D886A7
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 14:11:20 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id f7so6574961ejq.6
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 07:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Yg54d7njUgJIr5/oOvMr1TqPWbfMjWXQqQsrZ0cQ9xU=;
 b=dZRw1G/ge2Pyp9lVS/oz979LwAUvoLOJ+pApWvx33HkscEqwAb2sNzUKblOK9Vii/F
 uhfq8K5TkiJ2Vdy7Jr/w7B2vrb4rG2AwreV0WjERod7fGSuJD3bGPZ5oZyJb6gJL0/si
 Ab653+fNBhymx/gp+e0qwRvfxxEYRFfVXeEMEfy89SMtqwR1whJI0k3vbOV1HTeL+uU8
 h9bPwab6FXSn8XuvIMDKqSQY4Hfk025/nkLhf4pniJuzwscrGO0p5ej5GB/dJLT8PQBz
 zMJxFzhRzBmZQbIlqJ7xhd2jnNDA51uXoXd03SRBqOIOgVWZewxb677lwV5U381/TTaU
 piZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Yg54d7njUgJIr5/oOvMr1TqPWbfMjWXQqQsrZ0cQ9xU=;
 b=Mt3f3N7XXoTytku5r51VLWqKwAnR+IyIM2NOMhLTRL1bKqe8hoVDqoC9naT1ivEcl4
 wrSipbbffJu5iMJgkU6vul40+FVgeR504vopbXWsJw5Y3EnQvhH+Y5AJ1JWgHTxKKiHR
 GmhAShjdqrkgYmx5+Ft0n7b72Y5jK090woWyzFdl/cmZ9ShPe+Gpae+/Or5uHDQMsGCZ
 RFSQXA+/DyEpR2DIaw0OwqxIWaiNbcuE1VJxqVoJJH1gJsU53BPXX/UoZMdDPk6RqGGf
 ZE/22pvbt2mJ0DCv2deB5Y4Ptutmq5/SdWU+8SdC7XIJ68l7iMuoJPmmGxMKAu/gEZZT
 qv8w==
X-Gm-Message-State: AOAM532rws0t9/hOgYapdFrSejO5YnOc9vN1ENmoQ06RpUudrAoNggBS
 pCfLlv9pV8sOhO7vIHC6wqY=
X-Google-Smtp-Source: ABdhPJwhOyw2Vz5MOw49Q+Yb8S5U1I4OIIY0lq3QDOnO+74vPUmR9VwzOhoPR84HycniT3kgPo1blQ==
X-Received: by 2002:a17:906:cede:: with SMTP id
 si30mr4271836ejb.315.1592489478817; 
 Thu, 18 Jun 2020 07:11:18 -0700 (PDT)
Received: from localhost.localdomain ([2a02:908:d70:b300:c943:7d59:8784:d6c9])
 by smtp.googlemail.com with ESMTPSA id
 y26sm2167230edv.91.2020.06.18.07.11.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 07:11:18 -0700 (PDT)
From: Shihab Rashed <shihab.rashed97@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: os_dep: ioctl_cfg80211: fixed code styl
 issues
Date: Thu, 18 Jun 2020 16:10:02 +0200
Message-Id: <20200618141002.18895-1-shihab.rashed97@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Shihab Rashed <shihab.rashed97@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed two brace coding style issues and one comment style issue found by
checkpatch.

Signed-off-by: Shihab Rashed <shihab.rashed97@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 2fb80b6eb51d..3b06b60cdfd1 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -117,15 +117,12 @@ static struct ieee80211_supported_band *rtw_spt_band_alloc(
 	struct ieee80211_supported_band *spt_band = NULL;
 	int n_channels, n_bitrates;
 
-	if (band == NL80211_BAND_2GHZ)
-	{
+	if (band == NL80211_BAND_2GHZ)	{
 		n_channels = RTW_2G_CHANNELS_NUM;
 		n_bitrates = RTW_G_RATES_NUM;
-	}
-	else
-	{
+	} else	{
 		goto exit;
-	}
+		}
 
 	spt_band = rtw_zmalloc(sizeof(struct ieee80211_supported_band) +
 			       sizeof(struct ieee80211_channel) * n_channels +
@@ -203,8 +200,10 @@ rtw_cfg80211_default_mgmt_stypes[NUM_NL80211_IFTYPES] = {
 
 static int rtw_ieee80211_channel_to_frequency(int chan, int band)
 {
-	/* see 802.11 17.3.8.3.2 and Annex J
-	* there are overlapping channel numbers in 5GHz and 2GHz bands */
+	/*
+	 * see 802.11 17.3.8.3.2 and Annex J
+	 * there are overlapping channel numbers in 5GHz and 2GHz bands
+	 */
 	if (band == NL80211_BAND_2GHZ) {
 		if (chan == 14)
 			return 2484;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
