Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED7A327F70
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 14:27:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D18C8606E8;
	Mon,  1 Mar 2021 13:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bPLbyL2A9wa0; Mon,  1 Mar 2021 13:27:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D6CF60673;
	Mon,  1 Mar 2021 13:27:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 613EA1BF372
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F8E24F07E
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lyBm17ZxDaQz for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 13:27:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E271A4ED66
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 13:27:07 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id n4so16168354wrx.1
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 05:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1XTQYvzenTvAy+uzJCG3RPCHtA1WmUP3E0AtneiJNGY=;
 b=Gmj4Jvo9jICmWc2pFSDtMVB76Lbb8gRC6Ty+B04Dn2d/dk0hbMYQEqJUmHFpt+77q9
 Jsn1OOzbczH7qxbGvgSHzIiwHJ0zYmVOUTJsvGM4ShrTn9kq0ZmbEwBXn0I9KCxMpgGZ
 ccgiTKE1ORTIa54/B+QOm9YqiWNP49LhOhEZ+NMLgZSzmk5mMDiX9OdJbyV1hgw5ySXt
 X172HtSbHDdHUSfBu76roE/r26QP5OhA49z8PZvZxdQ6PYH7klWR3/Qp8nZg8lIs84Xf
 6kUr53onk/MunaCynNOW1Magv5ssOiQA7WbH+lJefpcCHSc5O70fNN/0rP2RpSE72KwE
 cRiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1XTQYvzenTvAy+uzJCG3RPCHtA1WmUP3E0AtneiJNGY=;
 b=pg0SnxCsBgDmOt8kYZhiuUf8F+RjncAz7csgm+E9+jgBidyBNu1wVMAnUoouQVyExs
 VxgUKnvniuHwn1Othk7ndvydeD0x8fygIeFLdjbyz0Nx+yGeo6XQoh73FHLOTWxBRT9S
 waCNSrmg8RWYE/U7KBjDIax0i9fl0hrfq7STQbn9jsLG/AdOQIRtvCdV+Buz9TIyhWOL
 4mBldT0Vjsmkaeq+9UxcKd4wuPBbsWfyA26XJJ2NucI+gGYS8RnEWNuy6rpFCOzzQlXe
 QLQGwYFAxeJ90zKxHSomempDcCXvWfBSe+npscqvchnlzKItVW6a2cvNNyLnkPfbLj8W
 oTuQ==
X-Gm-Message-State: AOAM530uAdeEtFuQZVenyyr6wHaoCWaCnfNJbF5W/Qim+dPDJTdqP9Sg
 V+0kdJpSyblUv2p9rWUk0LE=
X-Google-Smtp-Source: ABdhPJyOEoYKKJ0kUS7Rk4hNwpcSBxHgqnu+ej6Kl63ww7AtMPsjhbnikAn1Hi5GE+XQxy8NqpAiXA==
X-Received: by 2002:adf:f2c3:: with SMTP id d3mr17094844wrp.380.1614605226099; 
 Mon, 01 Mar 2021 05:27:06 -0800 (PST)
Received: from ubuntudesktop.lan (205.158.32.217.dyn.plus.net.
 [217.32.158.205])
 by smtp.gmail.com with ESMTPSA id p10sm11253288wrw.33.2021.03.01.05.27.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 05:27:05 -0800 (PST)
From: Lee Gibson <leegib@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8712: Fix possible buffer overflow in
 r8712_sitesurvey_cmd
Date: Mon,  1 Mar 2021 13:26:48 +0000
Message-Id: <20210301132648.420296-1-leegib@gmail.com>
X-Mailer: git-send-email 2.25.1
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
 Lee Gibson <leegib@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Function r8712_sitesurvey_cmd calls memcpy without checking the length.
A user could control that length and trigger a buffer overflow.
Fix by checking the length is within the maximum allowed size.

Signed-off-by: Lee Gibson <leegib@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 18116469bd31..75716f59044d 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -192,8 +192,10 @@ u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
 	psurveyPara->ss_ssidlen = 0;
 	memset(psurveyPara->ss_ssid, 0, IW_ESSID_MAX_SIZE + 1);
 	if (pssid && pssid->SsidLength) {
-		memcpy(psurveyPara->ss_ssid, pssid->Ssid, pssid->SsidLength);
-		psurveyPara->ss_ssidlen = cpu_to_le32(pssid->SsidLength);
+		int len = min_t(int, pssid->SsidLength, IW_ESSID_MAX_SIZE);
+
+		memcpy(psurveyPara->ss_ssid, pssid->Ssid, len);
+		psurveyPara->ss_ssidlen = cpu_to_le32(len);
 	}
 	set_fwstate(pmlmepriv, _FW_UNDER_SURVEY);
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
