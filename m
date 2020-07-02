Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA022121F0
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 13:16:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7798C27344;
	Thu,  2 Jul 2020 11:16:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6F6u5FxBqC10; Thu,  2 Jul 2020 11:16:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 48D5F26BD5;
	Thu,  2 Jul 2020 11:16:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB2E41BF59B
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 11:16:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D7F2F88FAD
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 11:16:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 56fpUABHSRu3 for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 11:16:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2D94588FA9
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 11:16:04 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id u5so12414454pfn.7
 for <devel@driverdev.osuosl.org>; Thu, 02 Jul 2020 04:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Qrvb9nofOcphMhPvn7rhmWkgGEuaksdRhmOaMZHUskk=;
 b=q1tlZJccCFLKiPQ/B2sC/vDQU5b/O+7mvoncg0hJaJt6QweyYmQV4qNQmntWnC2ZG6
 620otiEomwaTtEn6zINRnpFA37xc059rchr5UYDrEMiKHffYM0YthZ62ESZQ8JfxSxvI
 4yPqmUrnbvrzKbexHh/xqmTd68zs9trc1uVdUuxiHfUqeoKSTal1YPYH96umePhBtVLg
 MBeQBh+6Oij38m453JqZ4UpklIksz1WSIjdkB3H0VNrXldSIdZImcld/iM+H5Xpi5AMj
 j5gE/TeJIzVlu0emm4UqUkGz2Bh1iHv6100K3hhnmUgRyFlvo/pPlVrtnz7wXM8vy1rW
 jlSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Qrvb9nofOcphMhPvn7rhmWkgGEuaksdRhmOaMZHUskk=;
 b=uYPrjaObvtMMaAspn9SVU7TsqE7x67WuARTnz8aFGeMp4eqLQV2B9La3cNUG1DKOhQ
 tMDPyxkcJWTGVfHDrMIt6vLf22EqgdcuxlZWhEPcBrDWNRWeScoYPsiOBmAYao5lr9r3
 +1/IbWqcYjhOljB8Fd/7Z6stNwzLvfR6gpfweNS9gvo3VTc8I2Bzx/Mc0iG/Ab0G7YyS
 nX1KkGVDvAUM4KjHrVQNjx6Z0UWY3APkcWI/8rYyzfFIcE8EqvfiFiCP864V9Qv6u6r0
 TcCYHqyt964q+5IxkL4oloJPpunYxhtpV3uHnM6+gbG6Y2aRgh9Xl3NQ3B8P26xS2vXP
 lvgg==
X-Gm-Message-State: AOAM531ZAnwZeAuX9IJeUyoVhWUZ01OJfUg3xX4peoL5xgx+SYjkHJKZ
 uggBNMKBsLoqVFoKxT03GFeEBw==
X-Google-Smtp-Source: ABdhPJyhLd/8NX87aLg4uj6IPzpgTgUg5wAdDZI704xXtpl5sgn32mtenwtWMbVTFLzfDJMFS9r5Jg==
X-Received: by 2002:a63:d44e:: with SMTP id i14mr9483301pgj.280.1593688564494; 
 Thu, 02 Jul 2020 04:16:04 -0700 (PDT)
Received: from localhost ([2406:7400:73:3271:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id s22sm8492352pgv.43.2020.07.02.04.16.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2020 04:16:03 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 2 Jul 2020 07:15:56 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Kees Cook <keescook@chromium.org>,
 Michael Straube <straube.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: include: rtl8188e_xmit.h: fixed multiple
 blank space coding style issues
Message-ID: <20200702111556.uswbq7umpigltvfk@pesu-pes-edu>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
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
Content-Type: multipart/mixed; boundary="===============6878122001800420758=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6878122001800420758==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xqnxwb3h3522s2yn"
Content-Disposition: inline


--xqnxwb3h3522s2yn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

added blank spaces to improve code readability. (coding style issue)

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/rtl8188eu/include/rtl8188e_xmit.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h b/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
index 49884cceb349..c115007d883d 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
@@ -30,11 +30,11 @@
 #define SET_EARLYMODE_LEN2_1(__pAddr, __Value)			\
 	SET_BITS_TO_LE_4BYTE(__pAddr, 28, 4, __Value)
 #define SET_EARLYMODE_LEN2_2(__pAddr, __Value)			\
-	SET_BITS_TO_LE_4BYTE(__pAddr+4, 0, 8, __Value)
+	SET_BITS_TO_LE_4BYTE(__pAddr + 4, 0, 8, __Value)
 #define SET_EARLYMODE_LEN3(__pAddr, __Value)			\
-	SET_BITS_TO_LE_4BYTE(__pAddr+4, 8, 12, __Value)
+	SET_BITS_TO_LE_4BYTE(__pAddr + 4, 8, 12, __Value)
 #define SET_EARLYMODE_LEN4(__pAddr, __Value)			\
-	SET_BITS_TO_LE_4BYTE(__pAddr+4, 20, 12, __Value)
+	SET_BITS_TO_LE_4BYTE(__pAddr + 4, 20, 12, __Value)

 /*  */
 /* defined for TX DESC Operation */
@@ -100,7 +100,7 @@ enum TXDESC_SC {

 #define txdesc_set_ccx_sw_88e(txdesc, value) \
 	do { \
-		((struct txdesc_88e *)(txdesc))->sw1 = (((value)>>8) & 0x0f); \
+		((struct txdesc_88e *)(txdesc))->sw1 = (((value) >> 8) & 0x0f); \
 		((struct txdesc_88e *)(txdesc))->sw0 = ((value) & 0xff); \
 	} while (0)

@@ -138,9 +138,9 @@ struct txrpt_ccx_88e {
 	u8 sw0;
 };

-#define txrpt_ccx_sw_88e(txrpt_ccx) ((txrpt_ccx)->sw0 + ((txrpt_ccx)->sw1<<8))
+#define txrpt_ccx_sw_88e(txrpt_ccx) ((txrpt_ccx)->sw0 + ((txrpt_ccx)->sw1 << 8))
 #define txrpt_ccx_qtime_88e(txrpt_ccx)			\
-	((txrpt_ccx)->ccx_qtime0+((txrpt_ccx)->ccx_qtime1<<8))
+	((txrpt_ccx)->ccx_qtime0+((txrpt_ccx)->ccx_qtime1 << 8))

 void rtl8188e_fill_fake_txdesc(struct adapter *padapter, u8 *pDesc,
 			       u32 BufferLen, u8 IsPsPoll, u8 IsBTQosNull);
--
2.20.1


--xqnxwb3h3522s2yn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl79wesACgkQ471Q5AHe
Z2pFJgv/emdhtEWGrr3W/IhgH3IZ9XcWq4f1F7W1J998aP05iui9L01qxL2vvmmZ
pXRGfhAtSDwpES+AoBP0kdVpbRhAQswAwHhyD1YIa6muiJifKJaCL8HrI5qnlA+X
5Q+PrHIfqS5FD4YrjFIckf+AZ26F5npD/BtYASVDCq+9r7/gcqeLhPYqsVVSh7+0
Sb29Qw3WMrzlH8YG6F3H47VKZMktJsqNsjqqc2DcJGXdooghpAqbXq8EEcR1ciTU
EUdUKwUfbqKKUJriU1aBxD3RtMBdVkNcL1oBV3gfqeQoIXGZNxOTMg7nGv49Qrvq
vAJHnMMykBfhkA/p1q4tb1drA0iG77DzhLe1GOXpWxdao8Dfy42jP9FKr/AGhNjN
PcSTqs4bjxWTxkLDdPzzi4XK9k+U+Lu9qQu7P1Vl3brjlloKmnaXVu1nOEv4DjL9
V9WgDiqtYvOLsO/vkBoP4KA/ju05YaV+T7V6n6F/InGwQNhfTf0PgW4eZOxp+7Kw
vPyFW8AL
=N8aX
-----END PGP SIGNATURE-----

--xqnxwb3h3522s2yn--

--===============6878122001800420758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6878122001800420758==--
