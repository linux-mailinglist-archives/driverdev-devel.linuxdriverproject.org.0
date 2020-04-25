Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B021B870F
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 16:33:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E7FD86AFE;
	Sat, 25 Apr 2020 14:17:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TAqnEP6KbJoS; Sat, 25 Apr 2020 14:17:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E538D86840;
	Sat, 25 Apr 2020 14:17:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3660F1BF5E9
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 14:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 31EB48681A
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 14:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WQyL8ic3EExU for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 14:16:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B1FF3867FF
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 14:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587824136;
 bh=IWQTeuFzj3IxK0YDbZnpgKnVOiUTK+tBGaUm0YMS1Po=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=IIVUyI9TgCaWJ+Pa39x+2sBjdplJhLA0bZmfVWz9iarkCsb6CwA2R/DFN4GMOWI6g
 U9JOiwY8CJ4Kb2SMjvbpo62yN4/u8QJ2koIWt8iQS3FMsjL//ZeRr8HeKNX48xxzM1
 tM4UBrX3RVxYaR40GS+wc0sWdeICKEvAZPcBdrW0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MIx3I-1jmdMY1tIQ-00KOK1; Sat, 25 Apr 2020 16:15:36 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] staging: vt6656: Add formula to the vnt_rf_addpower
 function
Date: Sat, 25 Apr 2020 16:15:14 +0200
Message-Id: <20200425141514.5528-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:zaJ9e5GSSCmq7FylQ3qk0AEDJdvYTo8X9vCSWiONP3IrKhH7cGH
 2z9NLhlyhqMIjKypZuU+ASCo9UhL9fdvklN+LTmKYbSEE6P4rhn61QfipfMQPIF6fYA2fw8
 6toaktOR039LC4AKhNTbGhv1vjSVJ3QQYSvaFVtAE5ZWYjAC+3aVV3eqlhIVBMtssDfYE/u
 RdP6xVLa9K/6TFOtJL7/A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:fYwMpEDHYMk=:fDA2L151AazJs6IPY6aL38
 2a2p8qy0axLJN3xhDEZwRV37XRu8IX5SUeByiwphE6wXieG6rJ5X4yZeQBdNSns/BDkwKhVTi
 XY6UVoyUihXeiYOO8FblzkEQPmEe1U2YFoXlU7Z1S3+knbt9dbOGvDHTZO1FQbnQ6fojSV5Rk
 x/OiJL5ekcC3EOwL0/qLfWGiA4K4b/iH+tPpKOMsC2Z2QUoavu+II7mUVUGIj7ZZYVmgVTw0X
 ohIpOgXJ9iAThg5pJrbWtnn8Fr0M3BbNhUb0XR1eacLwYgnoV/DRng3g4kbwG5IRFrrU8x7pP
 0tRcBlc5nE66Z09U/L5mrb4EtWlEUQdbyyQoDQ+Df/ghxE4BDAazOnXXqgqPRt6dPP+ewN3Zk
 xv6bz4K0IDEIjKcfvKAY/PG4z3qIowB6vsRnjHu8+59R1tp7pYmtnhviXH8kWWbrebx17gAEI
 1UOEiYSHecXX011Bxqcgw8qcxks5E5YcEQQULO0/LbGvDyJJMZC6RnrVo2DPN+JdiHWvYhOXI
 yPKiC/Jw4SIOXkvoj0jTvS/DfM1w/4+HoBS3wKAG+zR540yZkgCq+8r0G7piXra9q7GaKdF1x
 VI7XwXuVfXHGv97U6lIuH+MrfTv7IrAr8h/qzU7EVz8IoZ8OjzJCnyYpWsr9zbluDCZros/6E
 Q2+w1mhSypQmPMUNNXaCTI9Q8qQP8mxnIl59rVTsGIbVEsMD5Givf+te1/2iJcic+5t4yIg5p
 AEWspC5+C11d5LmGVQbS1hkTwQFDicyIoGVO7spYDmnY6qRkkWqiEbUapOtHa43eapgeXPZ9U
 IDwHbSauP7IkWWk2UEM1aKTqKOxa7256rY8DNs2C03GqE48Cyoe9tclM5feHqmxfRkcmo7hQm
 hybAonLQEGOvTasQhv3DLeZGxsPCwE17kOCpGiC01UcbGFCCVBQzZ1znpwNtzpphgfpT3SYGv
 qkihfYyZ/9oSUhqdHSzX5Ru3AGyhjf0Te7nhhHJzWfHB1L0Nodsfw37AZ2vkWTww+kHk7p+mC
 I1vp860Fgy0CmW+ERzG6sMsxGwZkZtYUeBOpigcPLpwWQCDPYdht/gdTL7DeKCy11aziTrt/i
 MsaGEO8lkOMCHCHRyhhhql4whAS5n3qunMNFIgD8YVWW4qSEhUDUbY7U0U11To/dKXzEIO4yp
 8u6xhBqDNZCcMNLfEV2ndXM2RmgQ/c/Sp9ZVSws+Myl+2AfeiZ88hdxXdaMEXx4UJe6TvwYqp
 XO9Kgqbr1TLE8zSwt
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use a formula to calculate the return value of the vnt_rf_addpower
function instead of the "if" statement with literal values for every
case.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
Changelog v1 -> v2
- Change the type of "base" variable from s32 to int as Dan Carpenter
  suggested.
- Remove the "--" postoperator and replace with (base - 1) as Dan
  Carpenter suggested. Also, as this expression has a minus before the
  parenthesis, remove it an apply the minus operator changing the sign of
  "base" and literal "1".

Changelog v2 -> v3
- Replace ternary operators with the equivalents "if" statements as Greg
  Kroah-Hartman suggested.

 drivers/staging/vt6656/rf.c | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 06fa8867cfa3..05c9d06f84dd 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -538,26 +538,19 @@ int vnt_rf_write_embedded(struct vnt_private *priv, u32 data)

 static u8 vnt_rf_addpower(struct vnt_private *priv)
 {
+	int base;
 	s32 rssi = -priv->current_rssi;

 	if (!rssi)
 		return 7;

-	if (priv->rf_type == RF_VT3226D0) {
-		if (rssi < -70)
-			return 9;
-		else if (rssi < -65)
-			return 7;
-		else if (rssi < -60)
-			return 5;
-	} else {
-		if (rssi < -80)
-			return 9;
-		else if (rssi < -75)
-			return 7;
-		else if (rssi < -70)
-			return 5;
-	}
+	if (priv->rf_type == RF_VT3226D0)
+		base = -60;
+	else
+		base = -70;
+
+	if (rssi < base)
+		return ((rssi - base + 1) / -5) * 2 + 5;

 	return 0;
 }
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
