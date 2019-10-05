Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E850ECCCC6
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Oct 2019 23:00:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3114C204C2;
	Sat,  5 Oct 2019 21:00:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H7Lr91zdN6YY; Sat,  5 Oct 2019 21:00:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0791520468;
	Sat,  5 Oct 2019 21:00:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 410341BF418
 for <devel@linuxdriverproject.org>; Sat,  5 Oct 2019 21:00:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3CB4B203A9
 for <devel@linuxdriverproject.org>; Sat,  5 Oct 2019 21:00:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z4PIR-pUs-Wq for <devel@linuxdriverproject.org>;
 Sat,  5 Oct 2019 21:00:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by silver.osuosl.org (Postfix) with ESMTPS id C396A2010F
 for <devel@driverdev.osuosl.org>; Sat,  5 Oct 2019 21:00:52 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id w2so9154584qkf.2
 for <devel@driverdev.osuosl.org>; Sat, 05 Oct 2019 14:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D6Ua1I+2M2qoT07tdXa/jnXqB1E3SjZfA0FzE39UU4k=;
 b=HDe/bectkhxOTjQu81H1au6waX8eiM8mrl9C1ALRX5Wd2J0FUzCU4sr3uq+zFmitbC
 lQQ5/fxF1klH+2MBcgyQGIlgZZu9H7rcsIgrh/FKkhxRBhBItv/71LUQYw5A+YTcl1Wy
 UlWGhnp4Z+ZgeHSsLWJBd6WMGWMHgBpoMLkpaIoECSM6DRahXkgxdHPhoqNOm3F8uFxw
 Hw8x3K+rBXhn2E+Z4LkuvH5Q2UfNFMowEkOvKe0FSPNxmznMEEa7xBABwN0G54sEKCI9
 dj0mLhzh9v3DJ48Y8hAM0h2Mq9TiOzPaRBYJefM617RJ6A9zWH9Wca+IXbQ6w0zKcWS6
 Mu+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D6Ua1I+2M2qoT07tdXa/jnXqB1E3SjZfA0FzE39UU4k=;
 b=OayTrlH5GTYH4sYz5y0/gCBEO9oXM6xM2WTj+b+0qcriZCBwdFtzlwaKu6SSW203wa
 TC634ig2TgEqYIcZutQsaeJYzKJmfEq0syadE8rrlsdhCNsPZUMmvFlUEteDj3/inNp7
 9p7295lXTWarxMqouSp5iJ90krHWVubCfChRrQh2FdRBeoHBkVJKgNF+ADqjeS+j+QSE
 wmy4YNfRGaCPaoO4kkfhpWWCb8WQtJj2LpjDpyogUE91o0LFkXgMGm5Xwhie9J5XbhEE
 fcZ/v+MECsBB3Pb1UGdOpYMYNwwfIYnGznzkNim3g+uubI0+E/l9SaNLH6ZhR6MT/hYv
 +x2w==
X-Gm-Message-State: APjAAAVgayafuzL8iQT7YSVPCIJq0JfPkBnNwsjS5NyqG9rk0UJRJOo/
 TSY3BuK71oPk9wGcMFOmfBk=
X-Google-Smtp-Source: APXvYqxJun7iRszFAI9NdRXgTWDsFzTwVD6yJc1NlRlXkMp9xw5DzxO2sm5bQgmXLg5mHif4LC/uTg==
X-Received: by 2002:a37:9e57:: with SMTP id h84mr16952030qke.226.1570309251624; 
 Sat, 05 Oct 2019 14:00:51 -0700 (PDT)
Received: from GBdebian.terracota.local ([177.103.155.130])
 by smtp.gmail.com with ESMTPSA id l23sm9285014qta.53.2019.10.05.14.00.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 14:00:51 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, johan@kernel.org, elder@kernel.org,
 gregkh@linuxfoundation.org, greybus-dev@lists.linaro.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: greybus: add blank line after declarations
Date: Sat,  5 Oct 2019 18:00:46 -0300
Message-Id: <20191005210046.27224-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix CHECK: add blank line after declarations

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/greybus/control.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index 3a29ec05f631..5a45d55349a1 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -24,6 +24,7 @@ struct gb_control {
 	char *vendor_string;
 	char *product_string;
 };
+
 #define to_gb_control(d) container_of(d, struct gb_control, dev)
 
 struct gb_control *gb_control_create(struct gb_interface *intf);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
