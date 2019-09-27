Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD00FC0D7E
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 23:45:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A5E18820C;
	Fri, 27 Sep 2019 21:44:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Y6wXf4wbS3v; Fri, 27 Sep 2019 21:44:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0449988166;
	Fri, 27 Sep 2019 21:44:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 211461BF841
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 21:44:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1DA7B881BB
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 21:44:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OkLv4JbWxEpW for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 21:44:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7255788166
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 21:44:54 +0000 (UTC)
Received: from mail-pf1-f199.google.com ([209.85.210.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <connor.kuehl@canonical.com>) id 1iDy2m-0004kv-9g
 for devel@driverdev.osuosl.org; Fri, 27 Sep 2019 21:44:52 +0000
Received: by mail-pf1-f199.google.com with SMTP id s137so2807906pfs.18
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 14:44:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uQvH5eP9xpiy0f1cPY42CaQQPMr87X6kYcWUTyFt77M=;
 b=hwN3kwafSjUwR9gu/ywXVoIbko1ohOssyrSPoDm04zRNabt7tZzoMaWHhLpyHauUMW
 mBmZDBLItPTa5uQFfZHoM63yd+JOw/BPi6t6iHN8Nhkmj1Uv26oY0yA0lrjPySfswpkx
 uYnFuZYqahUUgaPwEG5CHdH8uWjDVXZ4ohBNjzfe1Ct5LJtUUT7XPXv1eAk+TxR5FNhG
 VS8dx3mhNNOK7kotY1zXx2T3swMmAEJjPkti3k/TqCR8HCScgC5TlAaMU9c+DciBKsFP
 rF29aq3p88yJMs5D8euk4ZVVj+yT81jC8f5s8DECo2MqZpz27WLykJ85XQhp3PNonvXf
 cE7A==
X-Gm-Message-State: APjAAAUFmUhrg0kCHoQNzrfEmccaN2oMRvOIy0pNz4P+DD55PfWeGteF
 hXais/36nA3lWFU6Q1cMAoCCCyOsud4E8zy8p23Q0YydHDgGm9ljv4WkvwSutw3fzQaXvynqv3d
 chHjV4D5Y3xlp3HyRamFJEW43eYeIAKeaFKE67Lc=
X-Received: by 2002:a62:2ad6:: with SMTP id q205mr6844806pfq.46.1569620689696; 
 Fri, 27 Sep 2019 14:44:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw5fadg5CEjQhSH0zmkl5ewNifNh5xW4jmDcza4yWN2DbT2bNZYx2VRVKTGjCnUlTYTBz1cWA==
X-Received: by 2002:a62:2ad6:: with SMTP id q205mr6844794pfq.46.1569620689563; 
 Fri, 27 Sep 2019 14:44:49 -0700 (PDT)
Received: from localhost.localdomain (c-71-63-171-240.hsd1.or.comcast.net.
 [71.63.171.240])
 by smtp.gmail.com with ESMTPSA id p66sm7150579pfg.127.2019.09.27.14.44.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 14:44:48 -0700 (PDT)
From: Connor Kuehl <connor.kuehl@canonical.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8188eu: fix null dereference when kzalloc fails
Date: Fri, 27 Sep 2019 14:44:15 -0700
Message-Id: <20190927214415.899-1-connor.kuehl@canonical.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If kzalloc() returns NULL, the error path doesn't stop the flow of
control from entering rtw_hal_read_chip_version() which dereferences the
null pointer. Fix this by adding a 'goto' to the error path to more
gracefully handle the issue and avoid proceeding with initialization
steps that we're no longer prepared to handle.

Also update the debug message to be more consistent with the other debug
messages in this function.

Addresses-Coverity: ("Dereference after null check")

Signed-off-by: Connor Kuehl <connor.kuehl@canonical.com>
---
 drivers/staging/rtl8188eu/os_dep/usb_intf.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index 664d93a7f90d..4fac9dca798e 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -348,8 +348,10 @@ static struct adapter *rtw_usb_if1_init(struct dvobj_priv *dvobj,
 	}
 
 	padapter->HalData = kzalloc(sizeof(struct hal_data_8188e), GFP_KERNEL);
-	if (!padapter->HalData)
-		DBG_88E("cant not alloc memory for HAL DATA\n");
+	if (!padapter->HalData) {
+		DBG_88E("Failed to allocate memory for HAL data\n");
+		goto free_adapter;
+	}
 
 	/* step read_chip_version */
 	rtw_hal_read_chip_version(padapter);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
