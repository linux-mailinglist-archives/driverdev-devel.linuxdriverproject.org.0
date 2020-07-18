Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6D3224A0E
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 11:14:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD4E686228;
	Sat, 18 Jul 2020 09:14:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qmb3XJEPLrVv; Sat, 18 Jul 2020 09:14:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F3C586200;
	Sat, 18 Jul 2020 09:14:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6CCDC1BF5F5
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 09:14:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6905385AE0
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 09:14:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W2fdxQqpL0QA for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 09:14:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4734F8528B
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 09:14:49 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id a9so1976772pjd.3
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 02:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=cKEpENRz6Co+TfaAIpmLq652jkpOnfh/vQOlcll5dLE=;
 b=zJhihHkos9vaDBR1NxjLfxGiRdluMRMauT1pn/C2UAcGOQVfDGFtWKDErCsYB/CJsR
 sbsS9X6kOuLNJ/Gv0iJrVo9CWjxRxasVJ7kYhhRPmBh2Ne7rwlnB8/q7CWz6GSfXZund
 LizhfmigqKmg20Qz/CO3yxYPWCBXxHwqBmIuegiM8YmzJAmUj2UzevEwmcYjJTAFYXHT
 /HOilfkZ5hahtLP8IzPwXZPqgkhsId6zT4Z2j/Lr9yVi/40iPkOwA2BFR8EX0JGWHry7
 nN26pMy0SgOmjzK18oL2xrnPQc8f/URxMF6G0GTlQULUHqm5NINs5RIUR7wkZe33V1MM
 zybw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=cKEpENRz6Co+TfaAIpmLq652jkpOnfh/vQOlcll5dLE=;
 b=ftBf6Q4rX1YBdqjx1cia02tWt8E4w0/E8MugopN/bYA/ZIzZlZzp+VJ2uuSseDdsGm
 JSIcNEbc9zncK8yCov9kkKM68R7FySLD+Kms+Ht/zRgbajNVpkrWInE1lXf4QM9zOxvA
 W3NtZHuUgoJfHJxSyCAxgNjhr3BfQamIuZsr8yWlkgHTNoQDVQtFvgJHKmptelbc8QCT
 k2za41yyze1+pY1vF8Rl65brm2d5l/0q0mmdagio6hjENwYSa6rtnbaPLWViv5+ckAey
 iSAXoKoBggdjcIE/Ox5Se4RkoOO6A52mqh4apPvPzcbfKWckdAV+hOAqIviEuebitBq+
 tBeQ==
X-Gm-Message-State: AOAM532+uRVktq2Tc1/Cx3biw+iCytUTscpWVDZDHuGpnmCBT1kH3vkQ
 bTjmXdtzg6su0WMBVEgxjexyyg==
X-Google-Smtp-Source: ABdhPJw6ja/5O5yRBq5e2Ea4nArJXAFPCBBMagd931AXnWOtYQEEWcFYLwOL6mpoHhHwShsW8ZT77g==
X-Received: by 2002:a17:90b:33c2:: with SMTP id
 lk2mr5751576pjb.122.1595063688633; 
 Sat, 18 Jul 2020 02:14:48 -0700 (PDT)
Received: from localhost ([2406:7400:73:207:8b43:3062:877d:c647])
 by smtp.gmail.com with ESMTPSA id r8sm10220303pfg.147.2020.07.18.02.14.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jul 2020 02:14:47 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Sat, 18 Jul 2020 05:14:42 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] staging: rtl8188eu: include: fixed multiple blank space
 coding style issues
Message-ID: <20200718091442.xamnoawpguo42k7v@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============8015752121358491340=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8015752121358491340==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ocvxayynsj2aaq3w"
Content-Disposition: inline


--ocvxayynsj2aaq3w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

fixed multiple blank space coding style issues
reported by checkpatch

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/rtl8188eu/include/hal_com.h       |  2 +-
 drivers/staging/rtl8188eu/include/osdep_service.h |  2 +-
 drivers/staging/rtl8188eu/include/rtl8188e_hal.h  |  2 +-
 drivers/staging/rtl8188eu/include/rtl8188e_xmit.h | 12 ++++++------
 drivers/staging/rtl8188eu/include/rtw_cmd.h       |  2 +-
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/hal_com.h b/drivers/staging/=
rtl8188eu/include/hal_com.h
index 542e6e93ff8e..da772a6ebad3 100644
--- a/drivers/staging/rtl8188eu/include/hal_com.h
+++ b/drivers/staging/rtl8188eu/include/hal_com.h
@@ -81,7 +81,7 @@
 #define	RATE_ALL_OFDM_AG	(RATR_6M | RATR_9M | RATR_12M | RATR_18M | \
 				 RATR_24M | RATR_36M | RATR_48M | RATR_54M)
 #define	RATE_ALL_OFDM_1SS	(RATR_MCS0 | RATR_MCS1 | RATR_MCS2 |	\
-				 RATR_MCS3 | RATR_MCS4 | RATR_MCS5|RATR_MCS6 | \
+				 RATR_MCS3 | RATR_MCS4 | RATR_MCS5 | RATR_MCS6 | \
 				 RATR_MCS7)
 #define	RATE_ALL_OFDM_2SS	(RATR_MCS8 | RATR_MCS9 | RATR_MCS10 | \
 				 RATR_MCS11 | RATR_MCS12 | RATR_MCS13 | \
diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/st=
aging/rtl8188eu/include/osdep_service.h
index 0d3e4a6e7e85..31d897f1d21f 100644
--- a/drivers/staging/rtl8188eu/include/osdep_service.h
+++ b/drivers/staging/rtl8188eu/include/osdep_service.h
@@ -82,7 +82,7 @@ void rtw_free_netdev(struct net_device *netdev);
=20
 /* Macros for handling unaligned memory accesses */
=20
-#define RTW_GET_BE24(a) ((((u32)(a)[0]) << 16) | (((u32) (a)[1]) << 8) | \
+#define RTW_GET_BE24(a) ((((u32)(a)[0]) << 16) | (((u32)(a)[1]) << 8) | \
 			 ((u32)(a)[2]))
=20
 void rtw_buf_free(u8 **buf, u32 *buf_len);
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_hal.h b/drivers/sta=
ging/rtl8188eu/include/rtl8188e_hal.h
index ba7c98712934..3be28a6dbd49 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
@@ -104,7 +104,7 @@ enum usb_rx_agg_mode {
 	(WMM_NORMAL_TX_TOTAL_PAGE_NUMBER + 1) /* 0xA9 */
=20
 /* Chip specific */
-#define CHIP_BONDING_IDENTIFIER(_value)	(((_value)>>22)&0x3)
+#define CHIP_BONDING_IDENTIFIER(_value)	(((_value) >> 22) & 0x3)
 #define CHIP_BONDING_92C_1T2R	0x1
 #define CHIP_BONDING_88C_USB_MCARD	0x2
 #define CHIP_BONDING_88C_USB_HP	0x1
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h b/drivers/st=
aging/rtl8188eu/include/rtl8188e_xmit.h
index 49884cceb349..1472c597cc53 100644
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
=20
 /*  */
 /* defined for TX DESC Operation */
@@ -100,7 +100,7 @@ enum TXDESC_SC {
=20
 #define txdesc_set_ccx_sw_88e(txdesc, value) \
 	do { \
-		((struct txdesc_88e *)(txdesc))->sw1 =3D (((value)>>8) & 0x0f); \
+		((struct txdesc_88e *)(txdesc))->sw1 =3D (((value) >> 8) & 0x0f); \
 		((struct txdesc_88e *)(txdesc))->sw0 =3D ((value) & 0xff); \
 	} while (0)
=20
@@ -138,9 +138,9 @@ struct txrpt_ccx_88e {
 	u8 sw0;
 };
=20
-#define txrpt_ccx_sw_88e(txrpt_ccx) ((txrpt_ccx)->sw0 + ((txrpt_ccx)->sw1<=
<8))
+#define txrpt_ccx_sw_88e(txrpt_ccx) ((txrpt_ccx)->sw0 + ((txrpt_ccx)->sw1 =
<< 8))
 #define txrpt_ccx_qtime_88e(txrpt_ccx)			\
-	((txrpt_ccx)->ccx_qtime0+((txrpt_ccx)->ccx_qtime1<<8))
+	((txrpt_ccx)->ccx_qtime0 + ((txrpt_ccx)->ccx_qtime1 << 8))
=20
 void rtl8188e_fill_fake_txdesc(struct adapter *padapter, u8 *pDesc,
 			       u32 BufferLen, u8 IsPsPoll, u8 IsBTQosNull);
diff --git a/drivers/staging/rtl8188eu/include/rtw_cmd.h b/drivers/staging/=
rtl8188eu/include/rtw_cmd.h
index fa5e212fc9e0..002a797c6d0a 100644
--- a/drivers/staging/rtl8188eu/include/rtw_cmd.h
+++ b/drivers/staging/rtl8188eu/include/rtw_cmd.h
@@ -115,7 +115,7 @@ struct	setopmode_parm {
  */
=20
 #define RTW_SSID_SCAN_AMOUNT 9 /*  for WEXT_CSCAN_AMOUNT 9 */
-#define RTW_CHANNEL_SCAN_AMOUNT (14+37)
+#define RTW_CHANNEL_SCAN_AMOUNT (14 + 37)
 struct sitesurvey_parm {
 	int scan_mode;	/* active: 1, passive: 0 */
 	u8 ssid_num;
--=20
2.20.1


--ocvxayynsj2aaq3w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl8SvYEACgkQ471Q5AHe
Z2rH6gv+JB9f+nV+qCQ5xtnIgag9pexlAWAX4Oeq1xoikQAIHLjugaLCyThe4oAy
AfuhaVgvFMBXIwCYACz7bZB0fDZFW9wBv6yhjQKDgOkXrHC1Zgnnb8MfA0rT9oDJ
vwweeEs1XuURsFu9aq2nTFpFdKebD3GqSx5T4cyZpQf19ClKFDGhtF3pZjmn5xmk
MB3qEzYs5h2zoY0TH/laeUL1TR7fzzLGFbnSGrkfSfYxShqlr9abIiYRsGmfkm+G
OgLgniwYIXG1TVGCgwTucDdt1G8gBHqR+86NemvfSOdjiI577aWcBqcWUrCqlQZA
BS9bcdKPlKVxq+ty60UeBJd+cKgfJdjZmhROpG3M9H8TQc9XNbn28vkua9bugG+r
qBPMAlmmASKpYxz4zNa6zSRMw3Kf4MrJ3qug5JnxFnn1L58MN4CHE4SRWZrebOdN
TM8Xa7pkRzOtmHfSyHD0L7Aozu7p9GarAfmSIY9EvrVz0JJPynMrwXjeyxBIzuPZ
8xAlwBsJ
=39RY
-----END PGP SIGNATURE-----

--ocvxayynsj2aaq3w--

--===============8015752121358491340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8015752121358491340==--
