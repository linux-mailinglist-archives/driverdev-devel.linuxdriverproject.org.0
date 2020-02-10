Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B79961581EF
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:02:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5DE25860CE;
	Mon, 10 Feb 2020 18:02:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y3y7-qeYKwfE; Mon, 10 Feb 2020 18:02:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 12F79860FF;
	Mon, 10 Feb 2020 18:02:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 155301BF304
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:02:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 128362040E
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1BSVJnNASzOA for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:02:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 35AD92040D
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:02:53 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id z2so10049048oih.6
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:02:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dQekwqZh4rEhoBj4GEkVjbrCnvdh2ERgwV+8ur0WBBk=;
 b=vUJLSruUL6FxNLr9kXzL/KT0r+L1HzeDE014Umwml3+uSDLb+pm0f50xDGucs8+2It
 zyiMIqtH3p41SbKTO7N9HO6UEv1HZIso5J2FU2Xyxp0sgEr1ot4K1p6HQmlwNUDYxUrV
 rE9Lc9w7wm7UGB3WjzIzza+EQnlGaBWmH4P5M4+i3KOaCLS7WlDfBnfDKfgGYje59aPo
 NPVP6urNpEayFveaNR0i8cf6TSyaooXNcN7/OZh5i+BkHtoATVqJ8lODEpswSMl6ICUD
 SrNt0geBYr2X4wxYYnzzIxNvdomnZs2t8JuExMkcNAc0b2NIEYx9dAz/pLANZnlt8Jm5
 +14g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=dQekwqZh4rEhoBj4GEkVjbrCnvdh2ERgwV+8ur0WBBk=;
 b=uktdKiihX6GVoLTxj+SPPAKRgQtKlQ987s2nfltCcwKP4Pc78R0zS/BTnPwd0wxn9h
 STR3JHs84PHqwZM9VzZZNA83FUWXX9ktoqh2pCROgV3DVI4+eHJIfPmfDTh73AQv+2Mk
 TfibP4X3lNSU6zxatb9BMxvfKCrFE76NWo5hrq3gUI3fyXmmb70UmcyIqBWWDkTAgJvA
 JXRqpxskQkUhfUw4YJE5/xVzgkhDAL0Rk4xko9KPTZW2NAQ8L6bnUWjCsGY7W1W3LNzo
 wc8nw4QAcnzv9uzxjUGdi6R1XRI2hFoIoppBnWLWw/6IRzuTM9FLLO4H8wjB8f3mARMS
 Yaow==
X-Gm-Message-State: APjAAAX8gINZHDGSebTet3TQ/pEQdG2m4GBkGnFhvbS58v6NJb6ATEzZ
 FMubUEclEAs9riCe9ImZ/vg=
X-Google-Smtp-Source: APXvYqx968in8J8EQqEB4kZPw7DUzn7BggowcCcKFFiuWwO6Bhwk1geUE/Jc4ubxQqL/Fpwphihjiw==
X-Received: by 2002:aca:fd4c:: with SMTP id b73mr186838oii.33.1581357772474;
 Mon, 10 Feb 2020 10:02:52 -0800 (PST)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id d131sm313031oia.36.2020.02.10.10.02.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:02:52 -0800 (PST)
From: Larry Finger <Larry.Finger@lwfinger.net>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/6] staging: rtl8723bs: Fix potential security hole
Date: Mon, 10 Feb 2020 12:02:31 -0600
Message-Id: <20200210180235.21691-3-Larry.Finger@lwfinger.net>
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
Fixes commit 554c0a3abf216 ("0taging: Add rtl8723bs sdio wifi driver").

Reported by: Pietro Oliva <pietroliva@gmail.com>
Cc: Pietro Oliva <pietroliva@gmail.com>
Cc: Stable <stable@vger.kernel.org>
Fixes 554c0a3abf216 ("0taging: Add rtl8723bs sdio wifi driver").
Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index db6528a01229..3128766dd50e 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -4207,7 +4207,7 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 
 
 	/* if (p->length < sizeof(struct ieee_param) || !p->pointer) { */
-	if (!p->pointer) {
+	if (!p->pointer || p->length != sizeof(*param)) {
 		ret = -EINVAL;
 		goto out;
 	}
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
