Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A20D83C7
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 00:34:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45CB187F92;
	Tue, 15 Oct 2019 22:34:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UvtuIJaaQvm3; Tue, 15 Oct 2019 22:34:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FDD887E53;
	Tue, 15 Oct 2019 22:34:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D3B71BF83A
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 22:34:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7A2C3863FD
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 22:34:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id snzgIIz74rF9 for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 22:34:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7EBC486091
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 22:34:49 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id r19so716892wmh.2
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 15:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BR/+JcLXGlF7qNlnYNXPVWo3Nql+mobYo3ybFiUKVk4=;
 b=XE5sn3iXKdNmwXYBgSR/Fm7Fn+i5kb49u8oZLnlZNLAqvDO/yQY3vXi0OryQZUyTyz
 1Rqv3gw8NiClH2JJsSE6iIGkl/rPMP9B5ndr7PlbXe8b4bwU8b1Lw9LLhUSqPuL1ATdP
 m0iWdn8fkmAC9HeT8IZWVRJ49WmpPdU44Rb5zGopErJYhidVQlOaOctQ+Fgp9D+kDgHj
 h0zXwqMNPIbo0tzROn/kplccKVmXownn0VSmLlqB3zlxfB/txeQ0L+MOgjN2C6khacyw
 YVtmSb86Uh/LpT6tqbeIkHhVzDHH1hjbX5uTnFE9/0A6QibobxjJqtQd9LSGnkSk954Y
 pRPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BR/+JcLXGlF7qNlnYNXPVWo3Nql+mobYo3ybFiUKVk4=;
 b=PsGY+apxLFnjAf77UB25/EG4ta7+ciF9O8hR6jwZj3We/Vo6UNmrB9m9qeiL6o+qoU
 bRCUqJWhDDdFJQ6/BymoLjziMbptFALsCLyhcaI0O0Bq6N4c6bVA7anFkJewgLseQiDa
 apiNKynUcXtsXOTTH+zPIkHdt4J6ROilR4Fs6Mc5Hv86vGdxRYrNFyjx+ocegIyXlTDQ
 za62vlM3Lu+wETburJUNlWrdwXlAbPZLb5j/Dbj3XXLjXsvcf9BrWOfyLkEns6IhIxsO
 GqFpyL1bfDsoT/spYwKB1ipSGgKFpfy60pxm7zAjYsZ3twDpTQZN/n+kqCzUGe3cj+7r
 6k/Q==
X-Gm-Message-State: APjAAAUvW9ylD2iTxIxQJvBH1SxHqcifMvrOAawitNagjfcDcc0RURHe
 qDW86Cog8t/eTgho/V7pew==
X-Google-Smtp-Source: APXvYqzqUGoPSLX+7JYm9yA0K6F9C1MPGaKFQPDRoDB+p/yP/3sBWaNiiSzVRo6x6Tx4Npz6Ljp4fQ==
X-Received: by 2002:a1c:7219:: with SMTP id n25mr543117wmc.33.1571178887899;
 Tue, 15 Oct 2019 15:34:47 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id m18sm35667084wrg.97.2019.10.15.15.34.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:34:47 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: meson: add space to fix check warning
Date: Tue, 15 Oct 2019 23:34:33 +0100
Message-Id: <20191015223433.18784-1-jbi.octave@gmail.com>
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
Cc: mjourdan@baylibre.com, devel@driverdev.osuosl.org,
 Jules Irenge <jbi.octave@gmail.com>, gregkh@linuxfoundation.org,
 khilman@baylibre.com, linux-amlogic@lists.infradead.org, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix "alignment should mactch open parenthesis" check.
Issue detected by checkpatch tool

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/media/meson/vdec/codec_mpeg12.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c b/drivers/staging/media/meson/vdec/codec_mpeg12.c
index 48869cc3d973..21e93a13356c 100644
--- a/drivers/staging/media/meson/vdec/codec_mpeg12.c
+++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c
@@ -81,7 +81,7 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
 	}
 
 	ret = amvdec_set_canvases(sess, (u32[]){ AV_SCRATCH_0, 0 },
-					(u32[]){ 8, 0 });
+				  (u32[]){ 8, 0 });
 	if (ret)
 		goto free_workspace;
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
