Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D94E33FAF8
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:22:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E13B26F998;
	Wed, 17 Mar 2021 22:22:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AZZKn0UZzcg5; Wed, 17 Mar 2021 22:22:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F3EF6F9C9;
	Wed, 17 Mar 2021 22:22:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D0B01BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C6D784150
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o7WgXd_ZQ0uB for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E1A9840FE
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:25 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id y6so4223251eds.1
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=X3R+920XzClvvyH2OqRC8m95yN2mPvSdTmzwo/TAWIg=;
 b=WuL06d+wOMfhGDD5GAFNGW87ZLp2nWB4dxPSBCMZGrxyLDMkHp3zXwq5Zh7RBuE8j+
 Qa6oZeswjOo2/jPXZkphygOfv0V3g2tUyK6vSQr/PAhzDmE7DmT1HXueRr7v7imFRQdf
 hyNumbtswKaZO8LwMVHFkXHTN5jHo6IyBwXF3AoHK8HLNc5193fZ/RErnITWmPU7U/uc
 QlMsFRucRCTNd4S9+wlKA8+CxqOWSsKYei+p6jVvOQlO2ZEef/EhJh1rWpUdFDFDOAAz
 4HutIcQB2K9MbPYsHWm8g2t2a3pb9kYz2ZxIObvnS7z0zPyb7YsU2W8u+6/qddYM7RE1
 EvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X3R+920XzClvvyH2OqRC8m95yN2mPvSdTmzwo/TAWIg=;
 b=XpZprb9C7l4SlPRd+hNcZb/iN/xwCMAsAZ9i3j5dMSEhn0pIEHBBNq6C8hllB0A+zr
 iFhr4Pzaq+NXRA+CiL+LGo3ET6eSqhaO3PwZ4H0xuy/uNwsyzUfZOO61WxA93TGjKbWd
 fuu7jrQsfmOzLnZAqFGSO+L0QVII+zQVDorFiB9h2vyeZUmMvrMhCnEMNZvIIAqNU0/B
 XUAr5vpJfNSE9z8yoN7TE82QeixVcilEUvaahVkNQKRnpvKATuMl5vv+zO4hsSgXGApq
 ikanYM6w3pMmlnfDI9qQpclE8udxteGCkq4w70mEexKRvS5Spyx7NK6gq49LchhAjjgp
 u4Ew==
X-Gm-Message-State: AOAM532jzp0hhSfOumabAU7aBufzVxsoYVynOE2TGmExxrD6ed853uEv
 1xuSd5mbjSXvJieLlKI+Ff/G1iz7lfs=
X-Google-Smtp-Source: ABdhPJyAW8rDZvpFumopGQsJVlrpe3wGE+fOft3LTwEmKUGRYg9rW1yw8tPe6xd1aL0bpLGw6KYs4w==
X-Received: by 2002:a05:6402:1283:: with SMTP id
 w3mr44480096edv.340.1616019683421; 
 Wed, 17 Mar 2021 15:21:23 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:23 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 07/43] Staging: rtl8723bs: fix names in drv_types.h
Date: Wed, 17 Mar 2021 23:20:54 +0100
Message-Id: <20210317222130.29528-8-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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

This commit converts names of structs / enums
in include/drv_types.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/drv_types.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/drv_types.h b/drivers/staging/rtl8723bs/include/drv_types.h
index 9d482a6115ab..49f10ff6d54c 100644
--- a/drivers/staging/rtl8723bs/include/drv_types.h
+++ b/drivers/staging/rtl8723bs/include/drv_types.h
@@ -24,7 +24,7 @@
 #include <wifi.h>
 #include <ieee80211.h>
 
-enum _NIC_VERSION {
+enum _nic_version {
 
 	RTL8711_NIC,
 	RTL8712_NIC,
@@ -359,19 +359,19 @@ static inline struct device *dvobj_to_dev(struct dvobj_priv *dvobj)
 
 struct adapter *dvobj_get_port0_adapter(struct dvobj_priv *dvobj);
 
-enum _IFACE_TYPE {
+enum _iface_type {
 	IFACE_PORT0, /* mapping to port0 for C/D series chips */
 	IFACE_PORT1, /* mapping to port1 for C/D series chip */
 	MAX_IFACE_PORT,
 };
 
-enum ADAPTER_TYPE {
+enum adapter_type {
 	PRIMARY_ADAPTER,
 	SECONDARY_ADAPTER,
 	MAX_ADAPTER = 0xFF,
 };
 
-enum DRIVER_STATE {
+enum driver_state {
 	DRIVER_NORMAL = 0,
 	DRIVER_DISAPPEAR = 1,
 	DRIVER_REPLACE_DONGLE = 2,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
