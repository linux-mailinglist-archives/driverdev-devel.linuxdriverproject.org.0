Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F5518DE7E
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 08:27:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E9778772A;
	Sat, 21 Mar 2020 07:27:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vWkXOVZuTbmd; Sat, 21 Mar 2020 07:27:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9EE4786C5E;
	Sat, 21 Mar 2020 07:27:00 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38D3E1BF2B9
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3667C86C5E
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tx_M5Dq1SXqZ
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:26:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D44BE8769E
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:26:55 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id m17so1095590wrw.11
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 00:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g/dQaLewlZe6Lfr0nV8mju47d212qFTo3IfHIRiHgNE=;
 b=CYd1IfmEL0LHek8SQT+H56Zb27QBehCeF4C1TjV8Zllfwt2RZ4maGdsV36NryBjeFY
 TjXdMHXzBpOdvHbzossPmXYQ82w/is3Up2JAF6p25/kU2KdEUH2XQeEdolgEfowoQvgF
 S8vsteDruxwgMAuMMzpHa5JEu95uj6z2cNQd6CCMWvMxKA26Ce/gS5FjRjNvTic0bP6/
 sX0ZFRrFsw1OdYUKqfb5K1+uImo6NndssRvb66fJRECSGFUVjEwDD3peocROtywSxngm
 DodNDXcza8kefUHwpGu/ryGQRTNTEPH61TlszAQkDIjxTeGSapXsn1cmW6VkUn5bc2D2
 /KIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g/dQaLewlZe6Lfr0nV8mju47d212qFTo3IfHIRiHgNE=;
 b=AnFZT7ES4mM8v9SYWImp6+i6Apc+YA5dFUSnYMNuv3jpFUUx6MVTr+PZQP2ud/UKP0
 U3dO9kiDV1Nb3MytjGTlPzDd1cWu6FjAwbY059Ev+4Npz3KZiVroSzi95b7pAlVl87Bg
 1Z+o+L8lGBfGR0T/6o9KuYRMksZQGNJiMuFH6n2PxK7wWyam61qUii+mb8qSzN/aARsB
 +U3xu+pclTLLoezQldI8s0gxl91CManzA7K++AL/YVGO9n5dwym4Un+SBGnGP6YIxLly
 QGesgPaZKOH5aEnDVaYQ9o8PV5PPUh6oFkt4Rc6DEGIvXB722Hz/1bUZCq11m3qWAl3c
 u+fg==
X-Gm-Message-State: ANhLgQ1A/7jMPY3Wb3pShm/bG+XfBEgldooJN3GhxT1nssfrY7/5zz41
 px+4p3tVYlkQBDmAJoCxMSAYyOGV
X-Google-Smtp-Source: ADFU+vsw+a2YkT9dVaxcNCWbeAkTfttj2ZOvcg9CSAHtF8bMeZpGX5Or+LA8JYe4NFmoykhwvG/uhg==
X-Received: by 2002:a5d:6888:: with SMTP id h8mr6352250wru.159.1584775614366; 
 Sat, 21 Mar 2020 00:26:54 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id w67sm10723126wmb.41.2020.03.21.00.26.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 21 Mar 2020 00:26:53 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: mt7621-dts: gpio 8 and 9 are vendor specific
Date: Sat, 21 Mar 2020 08:26:49 +0100
Message-Id: <20200321072650.7784-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200321072650.7784-1-sergio.paracuellos@gmail.com>
References: <20200321072650.7784-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org, gerg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are three pins that can be used for reset gpios.
As mentioned in the application note, there are two
possible way of wiring pcie reset:
* connect gpio19 to all pcie reset pins
* connect gpio19 to pcie0 reset and pick two other
gpios for pcie1 and pcie2

gpio7 and gpio8 may not be used as pcie reset and are
vendor specific. Hence, maintain common mt7621.dtsi with
only gpio19 which is common and make an overlay for gnubee
board which uses all gpio's as resets for pcie. After this
changes release gpios in driver code is not needed anymore.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-dts/gbpc1.dts   | 4 ++++
 drivers/staging/mt7621-dts/mt7621.dtsi | 4 +---
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/mt7621-dts/gbpc1.dts b/drivers/staging/mt7621-dts/gbpc1.dts
index 1fb560ff059c..a7c0d3115d72 100644
--- a/drivers/staging/mt7621-dts/gbpc1.dts
+++ b/drivers/staging/mt7621-dts/gbpc1.dts
@@ -114,6 +114,10 @@ &cpuclock {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie_pins>;
+
+	reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>,
+			<&gpio 8 GPIO_ACTIVE_LOW>,
+			<&gpio 7 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 10fb497cf81a..9e5cf68731bb 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -538,9 +538,7 @@ pcie: pcie@1e140000 {
 		phys = <&pcie0_phy 1>, <&pcie2_phy 0>;
 		phy-names = "pcie-phy0", "pcie-phy2";
 
-		reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>,
-				<&gpio 8 GPIO_ACTIVE_LOW>,
-				<&gpio 7 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>;
 
 		pcie@0,0 {
 			reg = <0x0000 0 0 0 0>;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
