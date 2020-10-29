Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C870529EB3B
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 13:04:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 41201862F4;
	Thu, 29 Oct 2020 12:04:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aqXuFrszLO6B; Thu, 29 Oct 2020 12:04:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9B5F85DBB;
	Thu, 29 Oct 2020 12:04:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE8A31BF3D2
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 12:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CB2C58484B
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 12:04:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZPw40upcMWtt for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 12:04:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EFF2F844FB
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 12:04:23 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id e2so2176686wme.1
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 05:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/fBEwjdUnJetUpnGDQAmLObEbyNOiNUb8MREdQ0fM5Y=;
 b=F0jRz+malxZMdZurANKSbPQLjBRgPIMu32fGJrJT4SMfWEMZqnrsSevt/MVVUntbiu
 Rg9WVRh0NfdZk/8Zw85JD9SPg7qkz+EYs5k361RT8tPT4O40pvDdURcRu29XWHC4F6lb
 Ikmm64nW3+IKdpwjRdxuukpKgCEeyrKCe3qrB+qwoeofjCozErXjJYC7/lYggDgxJLl9
 46KDS0wcjh3fzldPKh2AfakkEWGm7xZdG9O3vB5s9rPNetoSf7la2UaWL0l8/K5DQlTR
 eInIeTXJVtcu90dQzOIHgb7hVX/edsokD1nbi/qd6iDgMlxgnrZq9reGKWLWF70qJ9Ck
 ht6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/fBEwjdUnJetUpnGDQAmLObEbyNOiNUb8MREdQ0fM5Y=;
 b=mAt4uWEe9thD373gCaBVYK85jJaobPLQrNiq0XiYzoQI+eYN6hGPz2wyr+aA/y38VN
 g+5LumtgbgcYAJ3AImnrax6trRGwnWC6D+oHRikw58LwzKC1AZfw4zLmazUy2OARRmWO
 2sZC1ye+qoUn1BXrK/ln7sy8chSoJgd+2YaEenQX4PDGy6NYako2uET4SNYkV04+tE1o
 OsFaYZR+rUFkefkJhfrax4047VwMCZFi+feD3hxb1aa3WrmdPEpcGPTNJSn5UFH/0alA
 SECdGtFAdm1WSvOLfBe0BkLQF3j7iAR9wKL7T1kMnwnbenxlpxZwXPDHgvRDntFbe8sX
 PbHA==
X-Gm-Message-State: AOAM531m+lcA66AzUlrZB8sHAIQ1Bzg8AZsj0u1g5tgL6ghnv5EVNQdv
 YVqXSm3n70CNJJk8x2Lep30=
X-Google-Smtp-Source: ABdhPJyUNWoEn05cWcwLgOHPOMr7TIlKg16tY9g6oExp0v6KDfsq/ZM+MpdTp04ObHhlP33k6Z2Fmw==
X-Received: by 2002:a7b:c00b:: with SMTP id c11mr4012526wmb.96.1603973062311; 
 Thu, 29 Oct 2020 05:04:22 -0700 (PDT)
Received: from localhost.localdomain ([109.175.166.67])
 by smtp.googlemail.com with ESMTPSA id i33sm4987218wri.79.2020.10.29.05.04.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Oct 2020 05:04:21 -0700 (PDT)
From: Manuel Palenzuela <manuelpalenzuelamerino@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8723bs: core: rtw_cmd: Fixed four if-statement
 coding style issues
Date: Thu, 29 Oct 2020 12:02:28 +0000
Message-Id: <20201029120228.7029-1-manuelpalenzuelamerino@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Manuel Palenzuela <manuelpalenzuelamerino@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed four cases where the if-statement coding style wasn't following
the guidelines.

Signed-off-by: Manuel Palenzuela <manuelpalenzuelamerino@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 4cf09d947d32..55142faa2213 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -344,7 +344,7 @@ int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 	cmd_obj->padapter = padapter;
 
 	res = rtw_cmd_filter(pcmdpriv, cmd_obj);
-	if (_FAIL == res) {
+	if (res == _FAIL) {
 		rtw_free_cmd_obj(cmd_obj);
 		goto exit;
 	}
@@ -460,7 +460,7 @@ int rtw_cmd_thread(void *context)
 
 		cmd_start_time = jiffies;
 
-		if (_FAIL == rtw_cmd_filter(pcmdpriv, pcmd)) {
+		if (rtw_cmd_filter(pcmdpriv, pcmd) == _FAIL) {
 			pcmd->res = H2C_DROPPED;
 			goto post_process;
 		}
@@ -908,7 +908,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
 		res = rtw_enqueue_cmd(cmdpriv, cmdobj);
 	} else {
 		/* no need to enqueue, do the cmd hdl directly and free cmd parameter */
-		if (H2C_SUCCESS != disconnect_hdl(padapter, (u8 *)param))
+		if (disconnect_hdl(padapter, (u8 *)param) != H2C_SUCCESS)
 			res = _FAIL;
 		kfree(param);
 	}
@@ -1249,7 +1249,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
 		res = rtw_enqueue_cmd(pcmdpriv, pcmdobj);
 	} else {
 		/* no need to enqueue, do the cmd hdl directly and free cmd parameter */
-		if (H2C_SUCCESS != set_chplan_hdl(padapter, (unsigned char *)setChannelPlan_param))
+		if (set_chplan_hdl(padapter, (unsigned char *)setChannelPlan_param) != H2C_SUCCESS)
 			res = _FAIL;
 
 		kfree(setChannelPlan_param);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
