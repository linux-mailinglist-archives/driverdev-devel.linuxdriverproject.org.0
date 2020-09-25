Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 363D82790EF
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:41:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CFD182E18C;
	Fri, 25 Sep 2020 18:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JyhrPUYhAQR8; Fri, 25 Sep 2020 18:41:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AC9922E181;
	Fri, 25 Sep 2020 18:41:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 65FE41BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:41:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 62B4786E55
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:41:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GjcB0hZb1gsh for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:41:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E0D6786D2C
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:41:35 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id n14so4024562pff.6
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xR6EMaCnGVufYq99NXULxv+YlatOQC8lYjKs2v1Lyho=;
 b=rAgmu4pHNqZ+1cKh/avPUCHuk5OAhQXuq+sWTvqh3t3Jjz3diyv58LFpWHBvvraGtI
 ctdq/YWWzvbYEZ0kUhwULgZKS4Jdhf4oynyHmP46aJ9t+rdJ3Xo2bhb87ZE58snCcAdp
 CPmMxfizpIi9qQc1J2y16VQjtZd19onywe2o8Rmtks++r/+IDvoZygcwfQw0481oIi0A
 +r1i6YKor9nysChq69Gu6TtYDKwTpJqi48TQLSl0YjHFeTVBh0q5dosXicnRkI3VQ8G5
 WefZh8S8NzQWsF60HCSiG0CYaxJDbZ+hbUsI7S0S9G7RIC2ieYFDfYna1wPTTlDxvroa
 ew5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xR6EMaCnGVufYq99NXULxv+YlatOQC8lYjKs2v1Lyho=;
 b=OwBwD8n7ArB7gGz2D+tPfDfxRGZ++Gn9X0UV8uyTxpmFI8gD5z68uoqjPaKDRJM9CP
 gd7lq20k5GeIPVI8J63yvPwaxN8sDczENov1OlSwhsHsH0BlCJ83X+lW2hJL5Q14p/X2
 IiqSuVLoRkX+tFtMFiHE7Tl7C1S++lbRN2Kq4O6IQ3J7EQcWFjP9mvdQlL7kG8Et+lzH
 P3QQzD4K0vFgCzBirxyX40uSdy0mrQn/LWqeSCiaF+XgM2jiyn6WKpTpTxAIAZblW/1C
 fR9EsA8d52H5afJrsKS5hNpSpGQzVSZiL90q9o0mFa/OYOSDa1XwnjjeLKemRyxc3/15
 nK+g==
X-Gm-Message-State: AOAM533g9zrVvPIRqAAq0+qxgaMxhTsYDvAY4HLx4US31ACk22ZVb4d3
 hJ/EJ22z5/Jr30/aXddgAkp4gkfo+hicyQ==
X-Google-Smtp-Source: ABdhPJxDP6bhJHcTflXKJSNrLvLPtFybrGDdwIdvlW1c1OEuQkae8BtoII0afWUs+wwfbquOE/2u1Q==
X-Received: by 2002:a63:e813:: with SMTP id s19mr233034pgh.33.1601058836989;
 Fri, 25 Sep 2020 11:33:56 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.33.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:33:56 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 27/47] staging: media: zoran: convert zoran alloc
 to devm
Date: Fri, 25 Sep 2020 18:30:37 +0000
Message-Id: <1601058657-14042-28-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Allocate the zoran structure with devm_ functions permit to simplify
code.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 706b040f5baa..fe0c5a7c967c 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1024,7 +1024,6 @@ static void zoran_remove(struct pci_dev *pdev)
 exit_free:
 	v4l2_ctrl_handler_free(&zr->hdl);
 	v4l2_device_unregister(&zr->v4l2_dev);
-	kfree(zr);
 }
 
 void zoran_vdev_release(struct video_device *vdev)
@@ -1109,7 +1108,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return -ENOENT;
 	}
 
-	zr = kzalloc(sizeof(*zr), GFP_KERNEL);
+	zr = devm_kzalloc(&pdev->dev, sizeof(*zr), GFP_KERNEL);
 	if (!zr)
 		return -ENOMEM;
 
@@ -1298,7 +1297,6 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	v4l2_ctrl_handler_free(&zr->hdl);
 	v4l2_device_unregister(&zr->v4l2_dev);
 zr_free_mem:
-	kfree(zr);
 
 	return -ENODEV;
 }
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
