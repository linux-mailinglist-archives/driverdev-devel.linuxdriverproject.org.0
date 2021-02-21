Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE8D320BA6
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 17:09:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3BF683415
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 16:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eQI-FtdocMkY for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 16:09:41 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id 65B9983490; Sun, 21 Feb 2021 16:09:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C06A983410;
	Sun, 21 Feb 2021 16:09:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 269721BF95A
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 16:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F27D6F506
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 16:09:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w4ypThpqWZPm for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 16:09:09 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 3FCB760701; Sun, 21 Feb 2021 16:09:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A92F6F4D5
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 16:09:04 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id v15so16523238wrx.4
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 08:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Sv5R25tb69L5zIBRbD9nuQtFYamGcuLKxZMloYIB9r4=;
 b=tWDixXkJaJu8Z9AG+QVMih7Oap/vmdfIG95G62gx/3D593HhcolUV3IOaN0xojjxaV
 ieOTmedvdTrP8O91erVJYKaS/nL8UfkiQ3j4A/bx1zUCkpDKf3WeadhGYYTKqeAo0pvS
 w1ncUMSc9QjxwVUvopFENmSpLF8TnDlFe6jGNarCcmaNbrO9vNxisZPSmPuaaATJA4ic
 FcIPESMurFJZbF80/WBk7+gT9Ne1jDCVRXTNoNzSRGBCUw3WetAiNBe81qlZEdii5zLW
 2P/yEHG6sa4p/gBXQFeApdlazxe9/g0JOgM7q5QiIM9f0WeatUCFZDYsfV6p6KknjfT3
 V0bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Sv5R25tb69L5zIBRbD9nuQtFYamGcuLKxZMloYIB9r4=;
 b=jNkbB77biCaDMIS2DZ3ZV4tWggtB8HFtRNJRSjIASsU7q93snnfBrxfloYwa1bkVxP
 tPWodnWhtiWoxtPlN+0zGGH+ahe9fwtaQfvGB833G0q6JHvykskRPGxeJMYSANd6z0fM
 9FCtLLIviTBJdIm0prVe9RyeHPRcdxO1mzsieZihi2Y2RYa7KbuEx0X0Hp/mk80uPZ2x
 L5rGNf6MWb2Zz+5V6U+EfMfivFEli4LLRGYRY/X3k7KqQpxJqStJ3M8PRwieW33zX6TV
 eJCOKaAwaUCoIp+8RP7RQn14jy75/N+K5dCtgkp4CxPkWgCuu83dnUbDR/6hyekFZ7jo
 z8LA==
X-Gm-Message-State: AOAM533+QNIYWYJk+x3fvQPqUcWp/ajUx8G5KMTteVhd9aZVHjlMlTl2
 v4kZEkrUzAi4bediqtqtZqA=
X-Google-Smtp-Source: ABdhPJyZgiQzj33uipdLzTLJoyCAfH+9cAGWbq9n2MZ6/sSiUqlpsI6yz+RLSoLQwtC6deM0gDksJA==
X-Received: by 2002:adf:ce85:: with SMTP id r5mr6617422wrn.18.1613923742362;
 Sun, 21 Feb 2021 08:09:02 -0800 (PST)
Received: from localhost.localdomain ([106.51.142.238])
 by smtp.gmail.com with ESMTPSA id m4sm8961401wrb.87.2021.02.21.08.08.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 08:09:01 -0800 (PST)
From: Shreesh Adiga <16567adigashreesh@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: octeon: refactor interface check logic in
 ethernet.c
Date: Sun, 21 Feb 2021 21:35:44 +0530
Message-Id: <20210221160545.2967003-1-16567adigashreesh@gmail.com>
X-Mailer: git-send-email 2.30.0
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The check for interface is duplicated in 3 places and has been refactored
into a function.

Signed-off-by: Shreesh Adiga <16567adigashreesh@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 5dea6e96ec90..af546ef41843 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -228,6 +228,12 @@ static struct net_device_stats *cvm_oct_common_get_stats(struct net_device *dev)
 	return &dev->stats;
 }
 
+static int cvm_oct_validate_interface(int interface)
+{
+	return interface < 2 && (cvmx_helper_interface_get_mode(interface) !=
+				 CVMX_HELPER_INTERFACE_MODE_SPI);
+}
+
 /**
  * cvm_oct_common_change_mtu - change the link MTU
  * @dev:     Device to change
@@ -248,9 +254,7 @@ static int cvm_oct_common_change_mtu(struct net_device *dev, int new_mtu)
 
 	dev->mtu = new_mtu;
 
-	if ((interface < 2) &&
-	    (cvmx_helper_interface_get_mode(interface) !=
-		CVMX_HELPER_INTERFACE_MODE_SPI)) {
+	if (cvm_oct_validate_interface(interface)) {
 		int index = INDEX(priv->port);
 		/* Add ethernet header and FCS, and VLAN if configured. */
 		int max_packet = new_mtu + mtu_overhead;
@@ -294,9 +298,7 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
 	struct octeon_ethernet *priv = netdev_priv(dev);
 	int interface = INTERFACE(priv->port);
 
-	if ((interface < 2) &&
-	    (cvmx_helper_interface_get_mode(interface) !=
-		CVMX_HELPER_INTERFACE_MODE_SPI)) {
+	if (cvm_oct_validate_interface(interface)) {
 		union cvmx_gmxx_rxx_adr_ctl control;
 		int index = INDEX(priv->port);
 
@@ -346,9 +348,7 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
 	union cvmx_gmxx_prtx_cfg gmx_cfg;
 	int interface = INTERFACE(priv->port);
 
-	if ((interface < 2) &&
-	    (cvmx_helper_interface_get_mode(interface) !=
-		CVMX_HELPER_INTERFACE_MODE_SPI)) {
+	if (cvm_oct_validate_interface(interface)) {
 		int i;
 		u8 *ptr = dev->dev_addr;
 		u64 mac = 0;
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
