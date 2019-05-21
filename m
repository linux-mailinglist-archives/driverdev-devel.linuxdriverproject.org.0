Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699E0251B5
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 16:17:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7329587B62;
	Tue, 21 May 2019 14:17:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id acXgOPdnWidw; Tue, 21 May 2019 14:17:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70EEE87B4C;
	Tue, 21 May 2019 14:17:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE31B1BF4DD
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:17:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B956A85F09
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:17:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id euIIWgq1_T9l for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 14:17:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B545D85D45
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 14:17:06 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id g9so9136796pfo.11
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 07:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=prUBo9ryxuijq+KKD9MKy2nvCkQINyABwv+uZfe6uPs=;
 b=U/JVKKCMwh1ubt4AWVTAs2XM1iHfxYzxR/bImRjvUBrxCqW5dI91F2yEo44td+bcRo
 ItOgVRWup5k/bwxmCEQrgq23+ad3SSm7PsR+7kc3SCLeJOj2XvG5s6QP5vOm5ov5i/Ho
 ln5q+6wuPxtaNdHB4Z8xI7iiLVfI4vNnooCNmYTDYzjpnqpiZznm+jtGSe6f+vN85z4u
 iyh9D6+szanfnEUe/FdKLQRm7rtIddzuxe39PJEwCCKSMcUjLc1LUfvRpdQqCpSkLCfr
 TFuubN2o8TSPlZ2H5UVZahWqkNfye17ksNlq4kF51EV9Mys5MhYTOmzYtHiWVr1ZXshh
 QtDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=prUBo9ryxuijq+KKD9MKy2nvCkQINyABwv+uZfe6uPs=;
 b=GI5J2Swxj0tFZxJ5gnawIvNnjhIbmiwwOryZgT1oaYh3Js6FWsgHeRqKx3LtCe4U1L
 Nix0VY5911jjssiLMHuUuaU0S3bF5ZcDizVhb+pyZtHyPUeZ9ouFNDgZ1g7LAeN9xGP4
 MwLVZ5S75uKNWj2vhpwA3FwqFDgFXL+LIvJgDu4ZO84b9zQUHOuAQEd1Z+tR9+0/YETk
 d4ANuHKy5Jfy8VD6LfWe3t88lCId2WWqNRJDqbqlLWmhH8GcmYeLG3gmwU49gnAJe/0D
 Ua+u4ZMqznkHsJqVaqYB02PRn2lqdSVpIDiynsjW4cvJjUwpSSF3oE6vHrmFCS+Q5R5G
 1+8Q==
X-Gm-Message-State: APjAAAUInK3c0qpDvqF7Tkfg2tqI3DDC8HJFRCwfEdSNx9u/psfaEHxl
 88wWpOCD5gggeWfnSl2fNqY=
X-Google-Smtp-Source: APXvYqw7d+CD+WlcTZtI1UJ3KD06SiePxiaw64NY4QgnJkGnnGWdnoc4q9k4aKwShPR0tMog1Y+YfQ==
X-Received: by 2002:a62:1d0d:: with SMTP id d13mr14102270pfd.200.1558448226187; 
 Tue, 21 May 2019 07:17:06 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:710a:4b60:ca77:51f2:1492:8f9a])
 by smtp.googlemail.com with ESMTPSA id
 s134sm32478404pfc.110.2019.05.21.07.17.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 07:17:05 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8188eu: os_dep: Replace comparison with zero to !x
Date: Tue, 21 May 2019 19:46:42 +0530
Message-Id: <20190521141642.26726-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change comparison to zero to !x.
Replace (x == 0) to !x.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/rtw_android.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/rtw_android.c b/drivers/staging/rtl8188eu/os_dep/rtw_android.c
index 7a090615dcbc..daf6db354982 100644
--- a/drivers/staging/rtl8188eu/os_dep/rtw_android.c
+++ b/drivers/staging/rtl8188eu/os_dep/rtw_android.c
@@ -67,7 +67,7 @@ int rtw_android_cmdstr_to_num(char *cmdstr)
 	int cmd_num;
 
 	for (cmd_num = 0; cmd_num < ANDROID_WIFI_CMD_MAX; cmd_num++)
-		if (0 == strncasecmp(cmdstr, android_wifi_cmd_str[cmd_num],
+		if (!strncasecmp(cmdstr, android_wifi_cmd_str[cmd_num],
 				  strlen(android_wifi_cmd_str[cmd_num])))
 			break;
 	return cmd_num;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
