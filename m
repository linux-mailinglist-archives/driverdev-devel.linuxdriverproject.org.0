Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60960211B49
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 06:57:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB1E58908C;
	Thu,  2 Jul 2020 04:57:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9m9UOUQp_Fz6; Thu,  2 Jul 2020 04:57:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 89F458901F;
	Thu,  2 Jul 2020 04:57:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A59C1BF59C
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:57:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8783C8A29F
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 04:57:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GaNiUYuc7OMJ for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 04:57:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A020E8A269
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 04:57:43 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id cv18so5982495pjb.1
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 21:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=vpDDToAY/0u64vxOMayUbLKI/kNwLx2pDUSMO68DWgQ=;
 b=TuqMrwUEQPpanmCO7On25noMwjp6ZmTCErpmiNBMGb3Tfx04XJFPys/h6Q71d+CLjU
 cpB+8rOqlaMHvYOE9SuBmOB1VE2bX7HHm4LPVguw8jNNfKjdmheItvU33j920+ehQ+8m
 bq0pkR5CrxIW1pdvpOmdSmk59Dv+KQUFYs9IbdSQAIGtb5xfVDrZeY72jfEG6fynW5wr
 ktchQ4uZDf9BlTMULXGszN5OaFYw0EAp+KCFWmsbuo90X/QEGNTHqZEDyPIEbut3K0Zo
 qYPz8aSIjQNBJgfeLnxeE76zCa/gW2oglyZ2lO7OFFuPC2Dct/ND9REbLs+cQYmq4RJf
 z0vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=vpDDToAY/0u64vxOMayUbLKI/kNwLx2pDUSMO68DWgQ=;
 b=FshYj+BPtdP6Apois1phi2uoz1aSGWh2/M29Y5oZQXoyFSTliLvaFcvqkIjT27K4q8
 smhqO4ykwlVjfwtoJRZvSOS7OvtbFCUQw1PTG/RYGLhA3rRBgQ/bwgDZ30DOHSqVS1SH
 Wb6m2w+pH1pmgWtdcbX4V38FlOhjueGJvUINLBVkWlP1dfIpu5WBCLt/reEEM/mBeXRh
 QXlXY271QDeRaGLX7BGrBwbFxPUQqhBpB//HTYZrOl5HamVUZrEIt/LShZZmrSgJUILE
 RJABF6WMBM1TNi8hhKqXc6Q2g+ao9u/uoEBZjoSXxj2/FaFYifOGxLot7Ulmy8XEqO4e
 eJqA==
X-Gm-Message-State: AOAM530bMClKDlTMHJFW8APx5k91KLaEc/wHPup5Ma8wv9sKbRPqjniS
 VNMemFiXeHmV4hV5pxMHw8g/7w==
X-Google-Smtp-Source: ABdhPJzXnSxuxbeuYQzBRza19+FnQTYRi03xOU3FLeHv46bFK7OAiDWEOiMMTE2RYuR9C4Rd6KX/gA==
X-Received: by 2002:a17:902:c405:: with SMTP id
 k5mr8896916plk.233.1593665863227; 
 Wed, 01 Jul 2020 21:57:43 -0700 (PDT)
Received: from localhost ([2406:7400:73:3271:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id z8sm7684354pgz.7.2020.07.01.21.57.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 21:57:42 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 2 Jul 2020 00:57:35 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 Kees Cook <keescook@chromium.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: include: rtl8188e_xmit.h: fixed multiple
 blank space coding style issues
Message-ID: <20200702045735.okpfchl5zmrynaam@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============2738296215370517749=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2738296215370517749==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gzuhorb3v7t6g5ly"
Content-Disposition: inline


--gzuhorb3v7t6g5ly
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


--gzuhorb3v7t6g5ly
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl79aT4ACgkQ471Q5AHe
Z2rdvQv+OKWpXlbme4xBg9lJ7aY5c4dS7Lynr4cMPDKm6SgohiefNuGH+rAxTjPz
DLmBlwnFkGWhzDY1qFAgnQVCseqYYMDKXAncBIjOnl6fsiIalGyU5k0Xm8roThsQ
cscI4o6yL8ugWWe5o0c+CIU/G3qZ1snqWUhNdGSZbND+ql3CM6+zBvGJp70g5FHY
LRRSAMak1TFmvbUTzRah6UD8GRnRNBrOGZbHM0YkeSKyUhKC6nANy8+x7L6YDKAR
5tPplL+jtVH+RJjihvGaIEGbyTrvQj8a3aH0TEmr1/yBTHMqc/Vgg0OkpN8dRtLD
oHI3JWVWOFWlj3LjbJK3/QjPT3OVQhNCGFKfOIvYJjfshujmrARvZxbUwdyDZ926
Wddws3/r917j5BpwWRtEHftNjo/gGlx+nQHnlDyA30mEsdmtYL/WVPMEwHGlk6os
y/+W1zmNalh90KTAV+o2x4G5SGfRRqpMThNdPrxMfG6xgrrdJgN0NNdg+Hfg5P0o
3ysR0bcZ
=cYvi
-----END PGP SIGNATURE-----

--gzuhorb3v7t6g5ly--

--===============2738296215370517749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2738296215370517749==--
