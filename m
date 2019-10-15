Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2A1D74E8
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 13:26:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 199E5864AB;
	Tue, 15 Oct 2019 11:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YaKRN6kILwBP; Tue, 15 Oct 2019 11:26:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1B4F8504B;
	Tue, 15 Oct 2019 11:26:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4D381BF2F5
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 11:26:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AE0898757C
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 11:26:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dUQfS8+j8pKH for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 11:26:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C97A8871DE
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 11:26:50 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id p12so2630955pgn.6
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 04:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P78Ogbx/JUEYn/bIu/iC6vnYMekh5viyN9GtdfVO390=;
 b=g1Xy0PgWMT0Wi5ZbRL9lcQNlTD1b9pM7Napp6DJ5oapxFeZr/4gbjJCfWG6U1iMYds
 kEUWZkyiqoQUQRNL5MZtmplu7HQGaIDudCFUxOc3/uC7xxBKmtvupqjm9gMtQwRGnlB5
 tWkLitMdEWshU0ms96HXAPYAPwGoSeTpkm6oKG/XzWtdq23BLuPDjNLRVg0xt1uIzFTW
 YNspxlU1tJdkY0l3W6UzCh4x/JS1uFK/XMQ5EVo31PkSIri19xSP+LAki18uMpy6NPch
 cxiQo8CnUaz37vy5qRC2VWUz4c3duMxUMnzno4EPId5f1DKqI+KrwGy4lPbRgPlaicb8
 F5aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P78Ogbx/JUEYn/bIu/iC6vnYMekh5viyN9GtdfVO390=;
 b=XAan0XP/EX/gC60HZpePpSiOSOjLEUMSUqO6tPu8LZF2M/icztovidF9wYus6qR1Y3
 YkHkExPOZFa1451LvmBj55FsGTBSnitymevdK3lVmR0dFXAJaTL5JXr/OJIklZpIXls3
 kmTPqdBi4BA9J+8uQ5jXjmCulUWR9oaURrFh6LB1scEgcx7xIjpNuF6aBvgBmNno9RGq
 7MLNSQM8KIFBJIl28mFYJaTe688mvhpvkZtX801imjqa322zjrTqC6v4ozpBWi7GXw8F
 du4+PG4LlNrk6KeuRYmEwg6nDsKLHGF9olewtldeGL4xirbHCX8ykVoVfJ/9iPN23uJS
 GPdg==
X-Gm-Message-State: APjAAAUEnSAOfIjyu++JLZVrQG9lVaUlXiMTPrI9L+kn3QVMJ9HnCLE0
 DTtYPlrB/Yc7U3ECkYvlEyg=
X-Google-Smtp-Source: APXvYqxVLK4cdlaaXsSaRoY9F8T3ZEuahptUYY9sDukuxATKWJIOx3icdsmU/GDvo7lg5q4Lduu45w==
X-Received: by 2002:a17:90a:8990:: with SMTP id
 v16mr42084195pjn.119.1571138810266; 
 Tue, 15 Oct 2019 04:26:50 -0700 (PDT)
Received: from wambui.brck.local ([197.254.95.158])
 by smtp.googlemail.com with ESMTPSA id y2sm23864541pfe.126.2019.10.15.04.26.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 04:26:49 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: remove casts to pointers in kfree
Date: Tue, 15 Oct 2019 14:26:37 +0300
Message-Id: <20191015112637.20824-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary casts in pointer types passed to kfree.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 3030ae5b6b6d..71fcb466019a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2155,7 +2155,7 @@ sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
 
 	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
 	if (!psetauthparm) {
-		kfree((unsigned char *)pcmd);
+		kfree(pcmd);
 		res = _FAIL;
 		goto exit;
 	}
@@ -2238,7 +2238,7 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
 	if (enqueue) {
 		pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
 		if (!pcmd) {
-			kfree((unsigned char *)psetkeyparm);
+			kfree(psetkeyparm);
 			res = _FAIL;  /* try again */
 			goto exit;
 		}
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
