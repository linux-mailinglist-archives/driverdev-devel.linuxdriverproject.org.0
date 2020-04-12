Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0A61A5E0A
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Apr 2020 12:29:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 82260204C0;
	Sun, 12 Apr 2020 10:29:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vG3seGNauack; Sun, 12 Apr 2020 10:29:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 50EFF20489;
	Sun, 12 Apr 2020 10:29:33 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 696EF1BF5A9
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 10:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 61D1E87E63
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 10:29:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5cEa3l2DgY4g
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 10:29:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5F98487E19
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 10:29:30 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id e5so8162189edq.5
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 03:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=63au4wPGLQ/KENm1SJrrBizzMVegM/lZ4dR++ZfoeHo=;
 b=r25S01lt5mXpa75N2sc9IpvV4ROKhp6tM4RtSAzeIJZ1DSRhF5ORqGu6DzyGmcrLMK
 DqWJD4M2ts036BBYT0GrYKZu69nJb2aBUOFEOKU1AGsrNQJWwLcQY612sBQ35uEaVKTX
 WCLF1mlAGH+76OkWA9uSlPJkRmIO7ihsPOK5hnbrF7Sw6l5nGlSr7iixjC+tP9qKOwwx
 3LUkva/QTJABL0UXZcqlie+1dYUY1xj3UPUOihngBYuQANQC2F/aFFa5DKYRh6CiDq5v
 YkqfGacX3zcaVqs8LDSsaOXrO0XhkkBpHjYj5qVKWUFElax1sGmd2/Dh3PecEcT1E8D1
 HWgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=63au4wPGLQ/KENm1SJrrBizzMVegM/lZ4dR++ZfoeHo=;
 b=fQOI9Kgk+NVhpqfsUUiOXNrT6mggMC0ujvt+dFaqLil6VhBNyxBTuXz5gj+ynNygjL
 3t31Y8VMJEiSGAAAqHklkAWRbfEcDbOIPynOjHKM4sh82C3NJYgr22tKV/w2o7uKjG0x
 vlUl3wIlLZQo2fxLOQxTWykPWxMY36tUrI9ozX2ko4TF1HgJAkS+Ndx6OMnulLf3EfJm
 XB4AAEn5ZVsMmdguGh80x3Okml/mvgD4BCnA1PQbZjDevo2JTH9M96qTcr+mCkDbwesS
 d6Zb+kAuEaXstaNZKQaCKyPrXEuIueT+iZdQO5kpOU4LSt2h5RCErbcnAt/B5O+aTufB
 QzkA==
X-Gm-Message-State: AGi0PuYaKpfL4bcYgZAt3O47zTcxZxWabEdtnLVya1ZeeTdji5bXJhOK
 AR6f7BDejsuYFKZqLr3QaAo=
X-Google-Smtp-Source: APiQypJz86bttdI9IE7oY9x5GuvxgrC86uKW/Irl+AvFu9jN5s65A7b/6DO1UWT1YRtuZi0TzrKzEw==
X-Received: by 2002:aa7:de01:: with SMTP id h1mr5265873edv.62.1586687368731;
 Sun, 12 Apr 2020 03:29:28 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id d20sm19078edj.17.2020.04.12.03.29.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 Apr 2020 03:29:28 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-dts: fix PCIe interrupt mapping
Date: Sun, 12 Apr 2020 12:29:26 +0200
Message-Id: <20200412102926.15346-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MT7621 has three assigned interrupts for the pcie. This
interrupts should properly being mapped taking into account
which devices are finally connected in which bus. Because of
this current information of these mappings is not enough and
should be a little modified to properly got interrupts working
for any scenario. For example, as it is now, if we only have
connected pcie1 on PCI enumeration will get that bus 1 is using
slot 0 for this pci device and the interrupt will be wrongly
mapped to the one in pcie0 istead of use the good one for pcie1.
Hence, add interrupt map information to pcie child nodes and
properly update the global pcie node information.

Fixes: 46d093124df4 ("staging: mt7621-pci: improve interrupt mapping")
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---

Tested in gnubee pc1 (which uses all the buses and also worked without
changes) and tested also in ZyXEL LTE3301-PLUS which has PCIe and a
mt7615e connected to second bus on the first phy where the current
mapping was failing and this changes seems to fix the mapping problems.

On gnubee we get:

# cat /proc/interrupts 
         CPU0       CPU1       CPU2       CPU3       
...

23:          0          0          0          0  MIPS GIC  11  ahci[0000:01:00.0]
24:          0          0          0          0  MIPS GIC  31  ahci[0000:02:00.0]
25:        279          0          0          0  MIPS GIC  32  ahci[0000:03:00.0]

On the ZyXEL LTE3301-PLUS before this changes (wrongly '23' (pcie0 one) is assigned):

root@OpenWrt:/# cat /proc/interrupts
          CPU0       CPU1       CPU2       CPU3
...

23:          0          0          0          0  MIPS GIC  11  mt7615e

After this changes:

root@OpenWrt:/# cat /proc/interrupts
          CPU0       CPU1       CPU2       CPU3
...

24:         85          0          0          0  MIPS GIC  31  mt7615e

Thanks!

 drivers/staging/mt7621-dts/mt7621.dtsi | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 9e5cf68731bb..bee7731eb60a 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -524,10 +524,10 @@ pcie: pcie@1e140000 {
 		>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0xF0000 0 0 1>;
-		interrupt-map = <0x10000 0 0 1 &gic GIC_SHARED 4 IRQ_TYPE_LEVEL_HIGH>,
-				<0x20000 0 0 1 &gic GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH>,
-				<0x30000 0 0 1 &gic GIC_SHARED 25 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0xF800 0 0 0>;
+		interrupt-map = <0x0000 0 0 0 &gic GIC_SHARED 4 IRQ_TYPE_LEVEL_HIGH>,
+				<0x0800 0 0 0 &gic GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1000 0 0 0 &gic GIC_SHARED 25 IRQ_TYPE_LEVEL_HIGH>;
 
 		status = "disabled";
 
@@ -544,6 +544,9 @@ pcie@0,0 {
 			reg = <0x0000 0 0 0 0>;
 			#address-cells = <3>;
 			#size-cells = <2>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0>;
+			interrupt-map = <0 0 0 0 &gic GIC_SHARED 4 IRQ_TYPE_LEVEL_HIGH>;
 			ranges;
 			bus-range = <0x00 0xff>;
 		};
@@ -552,6 +555,9 @@ pcie@1,0 {
 			reg = <0x0800 0 0 0 0>;
 			#address-cells = <3>;
 			#size-cells = <2>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0>;
+			interrupt-map = <0 0 0 0 &gic GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH>;
 			ranges;
 			bus-range = <0x00 0xff>;
 		};
@@ -560,6 +566,9 @@ pcie@2,0 {
 			reg = <0x1000 0 0 0 0>;
 			#address-cells = <3>;
 			#size-cells = <2>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0>;
+			interrupt-map = <0 0 0 0 &gic GIC_SHARED 25 IRQ_TYPE_LEVEL_HIGH>;
 			ranges;
 			bus-range = <0x00 0xff>;
 		};
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
