Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7870C211B3A
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 06:49:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0AE4B8A9E1;
	Thu,  2 Jul 2020 04:48:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9A1XXy7XnKT7; Thu,  2 Jul 2020 04:48:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 107F78A6C4;
	Thu,  2 Jul 2020 04:48:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE97A1BF59C
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:48:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CBA7E8856F
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:48:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jqA6y-tXB7JE for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 04:48:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16F3C8855F
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 04:48:51 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id 72so223856ple.0
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 21:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=oQ3N4vXqTW8GG4DAXes6EoCpeKFpzlLKogoAV6Wjej0=;
 b=2C6v/dC0WBh8tmgsHO2L7EIic6S67c2zrKy/mXfjGdJihoULveOTuW6sLGy+nGfRk2
 jVvhJrPupjTKGELHIJFwt7+xz+Q8t922rpmxTKAeUn7wX3CmjWpQCNAakgji7OxVXoBT
 Vk8V/NWjmMrZCxsvXFyYxL/z0l30LG25/rXmyTsONEuPgDHlrwjklQ0aFByGrvcgjoBU
 d2TZuGH+UzZCvnLg01E/Aa9mTXsuZ2dXcTSc56XuSCgOsl+Chw2ASpD9Vur/VXfxvfw1
 x5qHmxp2jE6gYbwhy+NGg0jWDnhCFpsurphqRpfzEOvjQBo6smsouW6dX2OFYgp4CiMm
 z5mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=oQ3N4vXqTW8GG4DAXes6EoCpeKFpzlLKogoAV6Wjej0=;
 b=KpjRwQpffKz9XjbzFlXQ5iNFlMCPdkZPA/gilqIIk+qVMKWQPL56vpN3HcXJc4bXXr
 qSjJ8cyMHW9iBfvBP3QCu5UOb8wYVkR2cC5kFA1KkehgzDaQVenNohOLzMo9wqmYndr6
 uGUxqMsFtio9Dq1InZSgGWddPMDoGTbOkpwBe+hcP5tV5G8BsswkjXQ1M+6xeJhPpxRT
 EJO0pGxIbOwyBHYzmqJmBacXqp5HHW+8hjNamQWdpmPXXq3uwzuX0ww7LDQpU1GKuN8A
 tgQYN735IT9U8IHalCigMRYI/8fyysHb7cxhhHBBLvADgPEXvYMBJ/XCiVGsuMR6i9TL
 PIwA==
X-Gm-Message-State: AOAM531pho/y2OmDzzIP/nDxNoAZoha1NUuq1PVUzFXthahbw0Rve77Y
 2nhCSHV7PKuGgVBmFcQPtUXtAw==
X-Google-Smtp-Source: ABdhPJw5Jn7mqfNG+tXD2LpL1G4eOtznyFzNWvzJLMgoEiEnIpQ+X7NJjIjzFWG6/bw1+n0mJ2stvA==
X-Received: by 2002:a17:90a:ba92:: with SMTP id
 t18mr14633976pjr.121.1593665331413; 
 Wed, 01 Jul 2020 21:48:51 -0700 (PDT)
Received: from localhost ([2406:7400:73:3271:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id 10sm7278800pfx.136.2020.07.01.21.48.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 21:48:50 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 2 Jul 2020 00:48:42 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 Kees Cook <keescook@chromium.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: include: rtl8188e_xmit.h: fixed multiple
 blank space coding style issues
Message-ID: <20200702044842.fbafuffk7zercbi7@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============3528163160039771367=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3528163160039771367==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iu7gfz62fcrlikq2"
Content-Disposition: inline


--iu7gfz62fcrlikq2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

added blank spaces to improve code readability.

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
+	SET_BITS_TO_LE_4BYTE(__pAdd r +4, 0, 8, __Value)
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


--iu7gfz62fcrlikq2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl79ZyoACgkQ471Q5AHe
Z2o2cQwAqSC3lz0HlNCcPFsaauk3Z8pcofy2MVL9gkQets+iIpd1e1hOuylVNQDL
fBcAZ8y4KGn8faaSEYmtT6m80aDAtMp3Qs62PIFV5cQ9/B46QH9apqRU46A9sqFl
/Zc20teXz+dSCRHFzsCucg7wNKWMofngdkehwEzK0FShND/9vTpwl3os9t/KXpSM
UbUksuCAiQEF3qAKSuI3uhxQ2IMjiLqL8V/PeX64T+aab9UWUFh1BxEOQe6SIAW7
OhfliYjcDoUA8+lmFbIA2PuJU68uqZDUZCAIWjK2oSZ4vMM7gu8xkEtzMj2ctL7T
th7Db5ahOxqPYI/aLxUQwi4xV7dO3IZazIYrRYJG97vdRFr5zPKmldWqr8MsqsrY
ctna0dpN3+RugiQpNmYOwCdaKXRPNYYwysGIlnbT2xKAym1Fejg3aN4sBLKbSDN1
CkWszngTVJ1U9wamOBb77UeZHYr6o3WpgT5iX2mVkdB8ufadGZ3OJEhqE8kgs1LN
E6arixhN
=Czbe
-----END PGP SIGNATURE-----

--iu7gfz62fcrlikq2--

--===============3528163160039771367==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3528163160039771367==--
