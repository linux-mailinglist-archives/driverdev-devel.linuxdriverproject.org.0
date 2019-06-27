Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B473458AAB
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 21:07:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D06787598;
	Thu, 27 Jun 2019 19:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TC0tKR-wljtt; Thu, 27 Jun 2019 19:07:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A5AA87587;
	Thu, 27 Jun 2019 19:07:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD1511BF41B
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BA6768757D
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:07:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NoV4dnV529EL for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 19:07:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BF4FD874E9
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 19:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561662412;
 bh=jDTS8viFYqrDbHal1MRfayty/onAySUVJktCMM7U9LA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=boyR1b1cVnoKHMYAWqz5F14XVnOO+5f+PR5CnjctNVZzad1WK3Vy7CadjSAX0ljbH
 O6Pk7QST70wbzg6ci6XpQ7XmQsQeBk2s1EDQ7PIn9caoY/6l/g8chMvCYxfyYKa1Qe
 nXUBRA9lg6F9vG3GD28ROjT+q8WtCG8Ph6IZqkdM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0M6730-1iVuty1hPe-00y91P; Thu, 27 Jun 2019 21:06:52 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 21/31] staging: bcm2835-camera: Unify header inclusion defines
Date: Thu, 27 Jun 2019 21:06:16 +0200
Message-Id: <1561662386-23045-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
References: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:u2byLpeY81owIOe0u0m7dsEbi1BMOnsvUw8J/3/4FrRXeaW/irC
 LoXykJgzLFToxCJLBQfNgDO3MuvZJ78slALKTqVjV5Ln8lJCa+ONkMb4KLK03VBpkYLIPqV
 waJKxhxujuJXV29xe7NALB9W7esBFPD46qUJ2wo6/K35MUpWRSo0Lub26e+9NpeIWqsv6ax
 klNVgSeMRmS0FU3LTlYSg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Dz6jkUEmH98=:d5Jk/boCMg8s1Sc0nJL9K3
 7TrzZunCtfiu8SMe6z4qS/qwMuGih7CpkVhHJEYspFnnOmcpIlWUAuYXbR8M7zMyCWqo3om+D
 FLmBcTKDSiLvqdrGhi/X4Xvjtsd0xS3w07bPiN1ozjF/f0n5yE6eVPOJid1U6wAASNavjUpj/
 CR7YbVBNyMp42Hqf8XKIUiTXFS/4VE0m1pfaCq1XavTj5VLhuzafPwXV9hJmR2E2OAy52MhlA
 fZzg65dtHyahvFzYW6ynkl7XLJmYNw89JjC04300NJ6AwBuqAik6r9gdPctofRfU42x7K5cz1
 j88PIsx4Is56WQhjskTfBlRnt/ZnQFrUkw0gAqtgWj29NrF5zHd2HLA40dWxfeUV5T31lG4OT
 pWR+YpzY3FNQoiK6H0BfxOabM9p+9/OtZRIgG74EPRKFPSYX5NhPDZw4SHzTbLbdXANiNsb45
 g2IJjijr72WX48pUWcK0M0Y0XaaH983wsXm+pCn0u5SYwy0CbyAL0aykZNF7AeA8M58U+ExTz
 o0yb0VzKrqtVwqVz5Nmo4y7S1+eCUSo/UTAJA/RptPhfpm1RgUB0mIbDWEvaG6tvUAm7xBxjM
 akVIGlzgI1KD2hJj9LHsJWSLDvgyvFh7Fsg85s2zluAYQgvJbNPmr5u0Ak+w1yQPvkknhB4u6
 49QoIoKiEhWJR0XzH+0htR3i24EvPG69+hfVug1pi1k5BL2sRhxMaaKYg7OYf0qS4xmfPHCKw
 WvuCZfVTQ8nzaB3ehfiYDN71MjwY+RMy2qNEro8DUzpiE0rEd72vIP/N7HPrKFEYlpGgFoqA/
 7XFd8EGLrdyj3rfLN5AOrM+3xmBNWCCbrbFW6vWyoqcZ/jJ2CwmXyzjdSR2jcZSsT7h0UuwAe
 KVj2bo5C9c/igB4fv5EtOgXYhBSCOMOu+J+7ozqGdxKhIuXZsbSs9B2Nr3EYmxpi/VUKH14Zm
 wEXAcUsuIx83vHacAWD+pKiXNBTRi0LF7TPGZ9vFnNyZz3lhMf/BtSeyBJsAlOFruHPzPlDB4
 kIPrfg1P/18XBzQzRvJ5RiZunT0pBQp9wdfskaK/GcKwvvTZX4zyedAsaksY+9veSBjYXxO7/
 KSQppR5fjlZh00=
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

Most of the headers use ifndef FOO_H, whilst mmal-parameters.h
used ifndef __FOO_H.

Revise mmal-parameters.h to drop the underscores and make the
headers all consistent.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
index 6d21594..da21ec5 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
@@ -19,8 +19,8 @@
  * @{
  */

-#ifndef __MMAL_PARAMETERS_H
-#define __MMAL_PARAMETERS_H
+#ifndef MMAL_PARAMETERS_H
+#define MMAL_PARAMETERS_H

 /** Common parameter ID group, used with many types of component. */
 #define MMAL_PARAMETER_GROUP_COMMON            (0 << 16)
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
