Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D452458AAD
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 21:07:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70660874E9;
	Thu, 27 Jun 2019 19:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i9O9oB+tqOMN; Thu, 27 Jun 2019 19:07:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8EF908759A;
	Thu, 27 Jun 2019 19:07:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C09B1BF41B
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:07:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 86CF887587
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mMoi+dtG+QVR for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 19:07:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C8FDE874F7
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 19:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561662412;
 bh=yqq7RYAhnRBUGET7ItFqghQOuPnMkR/UpSH+qOl5n+4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=WaGhzEXjY+wqWa7PSn38NDpZqD2AYifWeLC0inYxETkj86n+jvJmZBYUnui7iau0O
 Izac6ZjuS85XersZNOwLyZ1mAOxzKoIo2k1pTP1Qqf/ni7My29ZSZ1hZk3/CjuS3DD
 zpPKIQv53GfbLvl0lj2OvpHvBtdL/6FC/+gt9mNg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MLB89-1hgIcH02nR-000Nai; Thu, 27 Jun 2019 21:06:52 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 20/31] staging: bcm2835-camera: Add multiple inclusion
 protection to headers
Date: Thu, 27 Jun 2019 21:06:15 +0200
Message-Id: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:PJBl2hs3AQ4EP3SFhfIA7tzboj8+7feJbCUjaXtAD2tI8TZP5y9
 1TrfJ6IoFS1cuG0qC/ACSo6Yg0KbMmTpsBDdMqRqUJrk2T6xPwzgqauR+TpXpxcPPci+YT0
 SS8nCvs59R6vzUhi/unJzHscK0EpHIwyNaXcqrQvUVSGvY9HnDFQhwM2Nlo3CrXmXKDalNb
 i3QClroEqRxyqkwUVDhPg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:YaI4J7jV4gw=:wHXzSVjhJlBreliQ4fwn1i
 40EHq13B/jmrNcobHNiF0yCsv/7CQJKTaWzXabibvyZEqQ8kdAP/RdlfpioOh0pPDbApM77ke
 mHa7hOSq+VvO+Xo9gEsIoUiL2+eWEtDSE+1BUiC39TAmc0VvTORtCt/GxmShVpWLGVX0hB6oE
 eT83LuuKi6vlocfC0WkdGzm6QzgSXbQ7TdR1yFN1+MFvFodBhYEiuuDFgVuV1Upaqw/o1Wero
 qA/d35DZR4tPRJHYnG5mdHxhESljsYZeVoByETCU9p0X+shFB3+BrQdDy7qvie2n0etFdT58h
 BnrQJhrRH54S03dZqVIc8hAFdjK9YaUaoB5KFQpKLEB3dC8k2f/RmLyynXtL2Alm2x8Dzul9r
 gJq9OWaW75ReGrcwtKeSEC5HblUPbwjcr+Whkk77iIp1OOv/27snJswgj3ZvsRFJp6g8d6Xvx
 j9q4EGR3FRiJME1IzXeiEev8naCBKnzeBcd+f5nrO7ih6UrObHm5RiwWS0xdL1bOlFCBD7SnC
 yi9y2XdANio9qUJaZST1y+HLGKjtDOHZLMM9xhieWRicVOTJWFSYc2zOHO6Z8QNKYXviUgJAn
 /+yv+dM6IyMD807i+UYWcpKL3RrEdY+Cs0qB+/r7NcKvf6pYGBwpft1yFqFtLhUPICiPNriqk
 /SGCkeD66NsxaGpjgOrinX3LqHS6F6wiz5+6DlBVfAX8sAm7VS2kHLhyJGQrZmOjvUP43JOJW
 2Pi3Mi5qrmgelpJj7cq2DL3nxHV1cuwk8NfkvKfNV6kVpKUvHEt5TzjW4HCQnQYRtiKttIb0I
 pbu0n4sCRMSO8zbRtb7fBOZCIs/0j0N3CtFk06tLXJLEn3dZu2+Url7q7hG7+JcqCxsPhrdkI
 ZafdHiIk4PVWJNt6KkPPnYFICMABjPIPRG9TfNgdUbv+7c25ojYqfA0xzxnBx1xlxUy5JT1z5
 rCJuZdWUQsf7MFP5G0UO2FNxDWnz/p6q0jSRYWkYSYLdhO4zhX89GZPzJwlRAF7kdw28pZ6us
 Kr6Z2lOIuTbqyI0Kob+ZcEyDoiKQdHu5o+HFm4cwhTifYcisKkMOTO3gIqYei/zOZRo9u9/R0
 y4XqR5IYgYt3Gg=
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

mmal-common.h and mmal-msg.h didn't have the normal
ifndef FOO / define FOO / endif protection to stop it being
included multiple times. Add it.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-common.h | 3 +++
 drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h    | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h
index 858bdcd..6f56c51 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h
@@ -13,6 +13,8 @@
  * MMAL structures
  *
  */
+#ifndef MMAL_COMMON_H
+#define MMAL_COMMON_H

 #define MMAL_FOURCC(a, b, c, d) ((a) | (b << 8) | (c << 16) | (d << 24))
 #define MMAL_MAGIC MMAL_FOURCC('m', 'm', 'a', 'l')
@@ -56,3 +58,4 @@ struct mmal_colourfx {
 	u32 u;
 	u32 v;
 };
+#endif
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index 8e0aee8..43cc593 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -23,6 +23,8 @@
  * implementation uses fixed size types and not the enums (though the
  * comments have the actual enum type
  */
+#ifndef MMAL_MSG_H
+#define MMAL_MSG_H

 #define VC_MMAL_VER 15
 #define VC_MMAL_MIN_VER 10
@@ -401,3 +403,4 @@ struct mmal_msg {
 		u8 payload[MMAL_MSG_MAX_PAYLOAD];
 	} u;
 };
+#endif
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
