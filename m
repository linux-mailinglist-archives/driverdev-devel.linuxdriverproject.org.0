Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEC11A6EAD
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 23:53:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45EF887BC0;
	Mon, 13 Apr 2020 21:53:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ArgDMlQwELkB; Mon, 13 Apr 2020 21:53:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 691BE87B4F;
	Mon, 13 Apr 2020 21:53:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60A5F1BF3CE
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 21:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5B37286489
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 21:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J1105UZr0qlL for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 21:53:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 832748647A
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 21:53:01 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id y24so11676469wma.4
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 14:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8bBfsyF1VnA0cKxAcKLlCIJxhfaA+R7OwaF4oqvEAYA=;
 b=eCUthXOwxMffnOIqflw2IQSqLcsHKwp4Pltp5HYZXQ4zho5w5FHmZql3uCivXzUWdf
 oBpJaG+DaG5QxCpqzlIKoBrGqvFOd38Juny1eqUEN6816sou6WEyLteZufCt5z+TJ/AO
 X4poODJfVMql0zn/+nuOIhS4/9cafu0N75GCAEKMbCNa+675oIJOZM0eZCFBsmbWNL+S
 Ae26hqpsKq6AnhgfQ97ro+Z6DNUVgJu1LWSfHsBwrpUbDDw53GA/ITiNDU/6y2nqINfI
 NyJDlH7uhe9bue+bXHHmr13OOYm885KbeKn9zb5rYXFuPmHsvXDjwhxT2sz3xz5mHxpt
 4IPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8bBfsyF1VnA0cKxAcKLlCIJxhfaA+R7OwaF4oqvEAYA=;
 b=Fm6dar0FmQE7ujk+d22HMHnPsTvK3WZ4VkEK8cN8HCd7IBCHlhyw/d1wNkb6+3nx/v
 822yfeObSq1hJWayGWaCCQGDV2tSFSmByNH1/+j+Bbfi8l3TkBSlk8QmlG76MPYkLYPk
 tNK9Zi9fTAi7CqyfkVLTSDIsv53EVJvottrGaQgtAFGOf9nHlmlPMdXLuIS/ecilMLvD
 5IUryGLrMCq9q8ZQXE2lUr+obeQyIihUcAO3aV3gblC+RQJEYwlxv3myK9k7tQEU6W8C
 D0LEhowo+jCwH4f2FYoQm0PkKbRUPWBC/nX8W6rMDl7joWcN6W/m63QMtjPmt0cbx39t
 VYGg==
X-Gm-Message-State: AGi0PuZT+/30gB/FHRZsjPD41LvrT4ISwYkA+ANxHKDX2lw16RKezHNA
 aC7AmgwYBAPH7tYAvskYT2o=
X-Google-Smtp-Source: APiQypIGXAB/N+85j0VAxukuJmGY9h8Tv8exBNIABHZmUjSCM7xKGKHtWcvx4oB58soriuP4rhj/aw==
X-Received: by 2002:a7b:cc06:: with SMTP id f6mr20303735wmh.65.1586814779881; 
 Mon, 13 Apr 2020 14:52:59 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-092-073-054-241.092.073.pools.vodafone-ip.de. [92.73.54.241])
 by smtp.gmail.com with ESMTPSA id q18sm9732790wmj.11.2020.04.13.14.52.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 14:52:59 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8712: correct spelling mistake in comment
Date: Mon, 13 Apr 2020 23:51:09 +0200
Message-Id: <20200413215109.15749-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.26.0
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Correct a spelling mistake discovered by checkpatch.
attatch -> attach

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8712/usb_halinit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/usb_halinit.c b/drivers/staging/rtl8712/usb_halinit.c
index 6cc4a704c3a0..313c569748e9 100644
--- a/drivers/staging/rtl8712/usb_halinit.c
+++ b/drivers/staging/rtl8712/usb_halinit.c
@@ -58,7 +58,7 @@ u8 r8712_usb_hal_bus_init(struct _adapter *adapter)
 		r8712_write8(adapter, SYS_ISO_CTRL + 1, val8);
 		val8 = r8712_read8(adapter, SYS_ISO_CTRL + 1);
 		val8 = val8 & 0xEF;
-		/* attatch AFE PLL to MACTOP/BB/PCIe Digital */
+		/* attach AFE PLL to MACTOP/BB/PCIe Digital */
 		r8712_write8(adapter, SYS_ISO_CTRL + 1, val8);
 		val8 = r8712_read8(adapter, AFE_XTAL_CTRL + 1);
 		val8 = val8 & 0xFB;
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
