Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A01231581F1
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:03:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0A875204AB;
	Mon, 10 Feb 2020 18:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A47XYplXGjeQ; Mon, 10 Feb 2020 18:02:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 503CB2040E;
	Mon, 10 Feb 2020 18:02:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C7CF31BF304
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:02:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C4BD285085
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BUuztodzibRG for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:02:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B69EC84FDE
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:02:52 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id b18so7295323otp.0
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yQNvgm53xLH5GOW3/l9QmzzClUzION0bcZc79/JOpE8=;
 b=lh2qP7+TdqUtuWk7IJr2E17NnZSH7Se4VZxOfbE6m+FXVvHYns4wblSHp1SU2BnnQT
 xjP19UDg35gL2yz3jW+Gpk3i6Nmzhu54XvsFAnooSAhDqKl8od4vc4WJMplredof0gJq
 StQWYk+rGIzSB0iOEikULAyhAaEYDSA0Ul3K/Dvz+iXLlh3vNEXOR3Bhm6ENRtizhuDB
 F4LJFjAnGouU6y4IrlYZKJjGb0j6NWoP72GpzM8GOm72BW7LC60SSceOn0RVIsX29Q00
 fOLaH6Kyhjwys3Y2a38LGsrrhsMdrGT35Son5iP7OxaTwnAxOZIiVHI3Tguqe2ndL18X
 pRqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=yQNvgm53xLH5GOW3/l9QmzzClUzION0bcZc79/JOpE8=;
 b=RZXH7SBmmgUuMNLkkrGujmY7EQnP7gtekLy7uXj9bA7NEnjGAQZH6oKnPjp2YVNlaa
 oDLOhG1GInztO/j2hmzDDmEZ3eN6Xw60ETw4tILexbZ9mQNPCKyRHyJeKItIPAlJ/Nj9
 lzp75jbsd9Wi0LktFbOkzu+aGPqofOmWGuADa8sZV6HkswzrpsnxG8FI7xEJk7lHsIoo
 nJp/LNxWKVpyNaj0WQlj9DgY6uOcBYXQtM0td/YcSREJZO+I+SictKCTPYaYm4boJbxG
 p+7h/ZmwWS7ckT6w+LKZOiUxD3M9WRaI5GhEo5xIAB9PZh5gb7SAXDm9UuhJvSBr/nZc
 n4Qg==
X-Gm-Message-State: APjAAAXuOGTVEAmNei2IV3qDnn2R+57ll8/Dj1ZazeEUznypd83I8LSx
 5RaGwcsZbjUYA9X1Z9K4dmY=
X-Google-Smtp-Source: APXvYqwvFSr6sC8VY/oBSzY7TDiVs6IkW3CNRpoGZmsEUJNFS988f0N/ePJ3ngHcccv00TJeK9aj3g==
X-Received: by 2002:a9d:7f81:: with SMTP id t1mr1823493otp.95.1581357771634;
 Mon, 10 Feb 2020 10:02:51 -0800 (PST)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id d131sm313031oia.36.2020.02.10.10.02.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:02:51 -0800 (PST)
From: Larry Finger <Larry.Finger@lwfinger.net>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/6] staging: rtl8188eu: Fix potential security hole
Date: Mon, 10 Feb 2020 12:02:30 -0600
Message-Id: <20200210180235.21691-2-Larry.Finger@lwfinger.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210180235.21691-1-Larry.Finger@lwfinger.net>
References: <20200210180235.21691-1-Larry.Finger@lwfinger.net>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 Stable <stable@vger.kernel.org>, Pietro Oliva <pietroliva@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In routine rtw_hostapd_ioctl(), the user-controlled p->length is assumed
to be at least the size of struct ieee_param size, but this assumption is
never checked. This could result in out-of-bounds read/write on kernel
heap in case a p->length less than the size of struct ieee_param is
specified by the user. If p->length is allowed to be greater than the size
of the struct, then a malicious user could be wasting kernel memory.
Fixes commit a2c60d42d97c ("Add files for new driver - part 16").

Reported by: Pietro Oliva <pietroliva@gmail.com>
Cc: Pietro Oliva <pietroliva@gmail.com>
Cc: Stable <stable@vger.kernel.org>
Fixes: a2c60d42d97c ("Add files for new driver - part 16").
Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
---
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 9b6ea86d1dcf..7d21f5799640 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -2796,7 +2796,7 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 		goto out;
 	}
 
-	if (!p->pointer) {
+	if (!p->pointer || p->length != sizeof(struct ieee_param)) {
 		ret = -EINVAL;
 		goto out;
 	}
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
