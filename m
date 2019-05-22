Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8739625B3E
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 02:47:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76D8286DCF;
	Wed, 22 May 2019 00:47:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tTvDQIUwBdTP; Wed, 22 May 2019 00:47:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4E6386D53;
	Wed, 22 May 2019 00:47:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A90161BF2B4
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 00:47:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9E8FD86D08
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 00:47:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JDLfHpow+M-g for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 00:47:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B9B7C868A8
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 00:47:16 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id a64so434880qkg.5
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 17:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=hBzsh7RjbZaBI7Dj1vWsPMY7clgyplPvG9IzYiE5AEw=;
 b=a9Xkv9PsmxK0qiE5pYsPclh6XiPQ/3PJ9Y2thxmu1/No9l6v/LNogVR5SIVLIditxT
 pBhPWnmlBpKxNiOPYTKOuFpk7Hq3vSny9pTYD9LphgX9HtsCUnv7a4nytSj9gspyGVaF
 2lu/Wl/L3QcabvKMWImNubBwnybtRQN9+k78kMUGbfFSlxpnda3jaE125+m7cb6MhE0o
 oDiOXLO/wKbcrhh89hdePula6L/+G22VIq8PBRoBrg757pLV9ET0VxamM/a9yF8IVyLE
 0c4ba4/B3/Ud9CUA6Te0/A9Dvy88Lun3+CS7pGGasHW6OauJbIfNvyaRCbaR/Pd2KArX
 DYFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hBzsh7RjbZaBI7Dj1vWsPMY7clgyplPvG9IzYiE5AEw=;
 b=WeUSGkHxa8S2fXqKn3VAFcXVrq52KLV83JWIQUdYBVas0zT2MZE7wC+O0In8TLPfdX
 fpNvBVuo7oPUXfri29pigvtvdIq6BIe0ZczTbxSV2ecTHlfBwespEKN0N/HEogeCXE4v
 zan8Kypfdc1Hye7tWQ2awKHpDKvYrFKwnaajNGDFleu0EmT/3VcmbsmK9bn4DGHL4td9
 9Xs9+bLG9el3VW7DkgESn04WzRG0awIdPpZliSGI25XW6mnEq8cgRyW/n1fMpWwecdWt
 sBsLD0rgiKZzKo5sKj49NKYiHNA0CS+k5DzU9jKOxWqyp0Kzu/LQht4HaS+rYJo8FaOR
 BHUA==
X-Gm-Message-State: APjAAAVYeZZjV2mAg15MQejw1kEbgZfsl0vCVXVs+X0FpWbaGrHgeGfr
 NtDZZ3rzWFG9kYEyKPHJI1s=
X-Google-Smtp-Source: APXvYqxLc1VNx9VHbbR7lt5FbsTJZmCD6LNmgr8UeGXzyvS5HPcB4jztdQ6n5uCcRtESWokWmIn2Tw==
X-Received: by 2002:a05:620a:3:: with SMTP id j3mr47497441qki.95.1558486035768; 
 Tue, 21 May 2019 17:47:15 -0700 (PDT)
Received: from Void.ic.unicamp.br (wifi-177-220-85-147.wifi.ic.unicamp.br.
 [177.220.85.147])
 by smtp.gmail.com with ESMTPSA id o10sm10115269qtg.5.2019.05.21.17.47.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 17:47:14 -0700 (PDT)
From: Fabio Lima <fabiolima39@gmail.com>
To: gregkh@linuxfoundation.org, jeremy@azazel.net, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: [PATCH] staging: rtl8723bs: Add missing blank lines
Date: Tue, 21 May 2019 21:46:55 -0300
Message-Id: <20190522004655.20138-1-fabiolima39@gmail.com>
X-Mailer: git-send-email 2.11.0
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
Cc: Fabio Lima <fabiolima39@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch resolves the following warning from checkpatch.pl
WARNING: Missing a blank line after declarations

Signed-off-by: Fabio Lima <fabiolima39@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_debug.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/rtl8723bs/core/rtw_debug.c b/drivers/staging/rtl8723bs/core/rtw_debug.c
index 9f8446ccf..853362381 100644
--- a/drivers/staging/rtl8723bs/core/rtw_debug.c
+++ b/drivers/staging/rtl8723bs/core/rtw_debug.c
@@ -382,6 +382,7 @@ ssize_t proc_set_roam_tgt_addr(struct file *file, const char __user *buffer, siz
 	if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
 
 		int num = sscanf(tmp, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", addr, addr+1, addr+2, addr+3, addr+4, addr+5);
+
 		if (num == 6)
 			memcpy(adapter->mlmepriv.roam_tgt_addr, addr, ETH_ALEN);
 
@@ -1348,6 +1349,7 @@ int proc_get_btcoex_dbg(struct seq_file *m, void *v)
 	struct net_device *dev = m->private;
 	struct adapter *padapter;
 	char buf[512] = {0};
+
 	padapter = (struct adapter *)rtw_netdev_priv(dev);
 
 	rtw_btcoex_GetDBG(padapter, buf, 512);
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
