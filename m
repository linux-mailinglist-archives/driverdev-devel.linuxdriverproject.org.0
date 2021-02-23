Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA087323440
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 00:41:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B372183A8C;
	Tue, 23 Feb 2021 23:41:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bMHkQuWwl0aB; Tue, 23 Feb 2021 23:41:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D028830C2;
	Tue, 23 Feb 2021 23:41:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A6661BF3C4
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 23:41:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A06A42FAE
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 23:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4avaOslH4TEx for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 23:41:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 99F1842FAC
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 23:41:22 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id 7so141983wrz.0
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 15:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ivtcAcwQWmGrm6490xrL+jxa5SoD16u6STwUQ2bWY3Q=;
 b=BULrNi7p1JtqhjQ5ZrzbKfsDyTzp1gaO8yxtkAYZ3SzkgPX3IJOcZ27dSSqqJAUUn2
 h4RkgrDY98XqkAtnVH4zrGfycSnd2Vxz5+gY3xsGlpYfUyQ8JTktpsRJI/mbLQw5d6nv
 iRqOFW5nFwoHxxJRmU7Hl6iaeLuIYeDOkwJz9gdJRaFs0NNA5N2ZLtn57OrqfmwpP59H
 sU829jD6sIDZS3/AtSo+mmgmq3dtHiWSSqXxnxAd5FFVZw2B7D8CGpZZ6QdbAeXT8+PH
 MFTFr8VR57LUuQwyPXITue59+/u3JXAWs0Fo0HsxngQZ1uRfe/sJfxhl+w5WKEDbYXMx
 9/2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ivtcAcwQWmGrm6490xrL+jxa5SoD16u6STwUQ2bWY3Q=;
 b=NSp9ZwDIZIBTuVoEyOrEkDx1qKdmX0Hbdql9ELppO+K+jBHpgiSh7G6rIxIMDE1NBQ
 iHNsQwtEQA2aKt3ngaL8LpJckKmrbX3mqpoyDyma46Sln3Ml9JLH108+SAQA6biaNjwY
 Gkh50yxc2ZqheY3rMTobjz6aRGURE1RcND8V+DPvFgEWvfOUMb2lxx68iWOZwxj4ceYR
 ll3h5YmoQHBgTgEWlkAljWdaCy+GXj55gD3xKya4qlRI28AcQ7dSsWNXiDlOtBJmHX2n
 5NcrgQWBxNXh2mTQffKlpfXXtLImusUkSFNrULB7bxwrZeqTkUDRFNGbp4Vhw+pE1nQq
 GnzQ==
X-Gm-Message-State: AOAM533Jt4apJKk0EOkZRSoTHxKSVG5O7EPUxKSKpqxr5FsUABi4s34q
 Y4cLkwBnenU1vVV3pjZm7Ao=
X-Google-Smtp-Source: ABdhPJw98GxEM/T8w5qdluZDdfq4QEvMwCdPgh/d3I2Ay/HsXGkIrBX/P/vMh6cicQAvXd3erEHpZw==
X-Received: by 2002:adf:e64b:: with SMTP id b11mr7908053wrn.272.1614123680704; 
 Tue, 23 Feb 2021 15:41:20 -0800 (PST)
Received: from simone-latitudee5440.wind3.hub ([151.24.203.213])
 by smtp.googlemail.com with ESMTPSA id k1sm338618wrx.77.2021.02.23.15.41.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Feb 2021 15:41:19 -0800 (PST)
From: Simone Serra <serrazimone@gmail.com>
To: gregkh@linuxfoundation.org,
	straube.linux@gmail.com
Subject: [PATCH] staging: rt8192u: Move constant in comparison to the RHS
Date: Wed, 24 Feb 2021 00:41:02 +0100
Message-Id: <20210223234102.15784-1-serrazimone@gmail.com>
X-Mailer: git-send-email 2.27.0
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
 Simone Serra <serrazimone@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes checkpatch warning:

WARNING: Comparisons should place the constant on the right side of the test

Signed-off-by: Simone Serra <serrazimone@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index d853586705fc..175bb8b15389 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -726,7 +726,7 @@ static int r8192_wx_set_enc_ext(struct net_device *dev,
 			idx--;
 		group = ext->ext_flags & IW_ENCODE_EXT_GROUP_KEY;
 
-		if ((!group) || (IW_MODE_ADHOC == ieee->iw_mode) || (alg ==  KEY_TYPE_WEP40)) {
+		if ((!group) || (ieee->iw_mode == IW_MODE_ADHOC) || (alg ==  KEY_TYPE_WEP40)) {
 			if ((ext->key_len == 13) && (alg == KEY_TYPE_WEP40))
 				alg = KEY_TYPE_WEP104;
 			ieee->pairwise_key_type = alg;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
