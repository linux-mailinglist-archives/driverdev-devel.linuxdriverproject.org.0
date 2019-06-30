Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 599D65AF5E
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Jun 2019 10:13:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3313986838;
	Sun, 30 Jun 2019 08:13:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0MMGDRyRJwwk; Sun, 30 Jun 2019 08:13:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA2DD86456;
	Sun, 30 Jun 2019 08:13:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 64CB61BF380
 for <devel@linuxdriverproject.org>; Sun, 30 Jun 2019 08:13:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5F6A7203BC
 for <devel@linuxdriverproject.org>; Sun, 30 Jun 2019 08:13:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IwxCkqN9A7ia for <devel@linuxdriverproject.org>;
 Sun, 30 Jun 2019 08:13:32 +0000 (UTC)
X-Greylist: delayed 00:05:58 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by silver.osuosl.org (Postfix) with ESMTPS id ABF5320363
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 08:13:30 +0000 (UTC)
Received: from methusalix.home.lespocky.de ([92.117.55.254]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MMGZS-1i0fr21YaE-00JKk7; Sun, 30 Jun 2019 10:05:46 +0200
Received: from lemmy.home.lespocky.de ([192.168.243.176] helo=lemmy)
 by methusalix.home.lespocky.de with esmtpsa
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <alex@home.lespocky.de>)
 id 1hhUqE-0003rK-PM; Sun, 30 Jun 2019 10:05:42 +0200
From: Alexander Dahl <post@lespocky.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: Add 'rtl8188eufw.bin' to MODULE_FIRMWARE
 list
Date: Sun, 30 Jun 2019 10:05:40 +0200
Message-Id: <20190630080540.5208-1-post@lespocky.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Scan-Signature: aaba504e6e7ea76f790d1b1323b7db89
X-Provags-ID: V03:K1:6z8DdsxkdsCN9qq/jpISd91AghzPIx3L05TJ5E14JPKjCqsXCRx
 m07aGTvsFfYgmncr3U+F8BHSsBMSDm7aPcPlGxapufcWFtR9FlM1mQnQZ3nvBatVmtAGXkE
 K23uOq7k8LZnrfHKVOzhqIj+Imysdjr5bm6RH7jWld16fmPp5z1NJgx7coXhJ8SzT0PcnoM
 aJuWww+qTjHR/Y1Eot0/w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:wrexbDgJD3M=:GdPP/HgH7B8xOX42H8Tjlp
 FaIWV+c1zm8aXETdX3H/b11qqgOtPKIAnWtdtr+gVFotyGz34c4yIReey9oeRsTnZYulhsJ7U
 Y1mLun3Nh2kwdY3cr0YylyqZpDaUZdIAffGx54hFBSgvgNzOMPqvThfXJhzgSP/2X5SV/H+KT
 k7ZMxGBXte4pRKolmNB1YiccPs0vmZvtcVFdJSuRoXveGBMCFeMqjDIWzU2uHfyFsI4/IGkk+
 5sD24Nhkk644FrCczdORGQSGDrpKJ+JWmwvVhbWJDSxf/lWZlRAc+Zu9jun4eOkmqevIct5l/
 g65Zv7kx0ghIxURaOjYhMK8x1NhIIUucKWoE4l+E9SznLZnNmcgVqD1qonISyOUePt864Qb9e
 ACSh3siv0osl9GH10aEBUzefSqTISn7k04OtRhEg4m8fqjC+g7/M76O7IgXqQm54S45d12TyO
 pBsINdJ+EHyIqvzrdo2PwYfvXXoAvwneYkDARViUhwX3wZqO5kf3j43+BLdLLLjxl7NA8D8sN
 RXRycHdLdK+rdotYeW04iUL4jLovFyJHUs2sGxcSWmuIP4OrK119tD6PtsYUeDCuO4LyluiUn
 dctMF/m9UPdwOyvvCPsqdZN6GVh5Vr3HxPACX6jm2kpRULi4B7LL8ul145LQoVWhcLdR3FbuF
 ku2Da0HS2cwpcZ/aFt45xZUGORshnxNO8gHB183zIOh+e3LmZ4tt/BxZePR9aBSOGGHnSRvFM
 lIGLBejVD23S1mRRC1p+3RTAtbnp0hSBArzMAO33XNhunv+cJS/FifJhP4s=
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexander Dahl <post@lespocky.de>, Christoph Schulz <mail@kristov.de>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is the file loaded by the code anyway, but now you can use
'modinfo' to determine the needed firmware file for this module.

Spotted when packaging firmware files for the fli4l Linux router
distribution, where a script uses the information from 'modinfo' to
collect all needed firmware files to package.

Cc: Christoph Schulz <mail@kristov.de>
Signed-off-by: Alexander Dahl <post@lespocky.de>
---
 drivers/staging/rtl8188eu/os_dep/os_intfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
index 2c088af44c8b..8907bf6bb7ff 100644
--- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
@@ -19,6 +19,7 @@ MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Realtek Wireless Lan Driver");
 MODULE_AUTHOR("Realtek Semiconductor Corp.");
 MODULE_VERSION(DRIVERVERSION);
+MODULE_FIRMWARE("rtlwifi/rtl8188eufw.bin");
 
 #define RTW_NOTCH_FILTER 0 /* 0:Disable, 1:Enable, */
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
