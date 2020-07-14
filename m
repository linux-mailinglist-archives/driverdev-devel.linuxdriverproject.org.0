Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFE321F265
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 15:24:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 579228A6C8;
	Tue, 14 Jul 2020 13:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RxJr86N4INhs; Tue, 14 Jul 2020 13:24:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34B708A69B;
	Tue, 14 Jul 2020 13:24:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B3591BF2A5
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 13:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 920AF8A665
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 13:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aQ-zjS8-YuOl for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 13:23:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 94F1B8A660
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 13:23:58 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id x9so7031461plr.2
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 06:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=4tyb2WDwFS2aoAxOZTJuZZO8xIzZEBnfgQRrMTFVPy8=;
 b=gEkXrr3ujKnbFKozZYmYSKWkXIwMUEl0kj87Y52XG5O756MlCo18hrRS93htxsbthP
 kp8Sbtma0TC4EZLqrBUGQeW74DMIgtH6SX40KmCDNC36fvbt+2SDxIqe5AXVoIvyi5Sb
 pqgZpWSrs/LFzkuQJA+G+serReQq8+vo/oZONYqea/XLjYvffTxu1uYKfSptktwOtHwJ
 cZs77V21LVQHT/siPYiMZr3eguJyyeC/r3iFhjK3TU95rJD40CYI3dVfF8h5fWC367h/
 Rv1+YQ2bWX8iBFF0D2YvPUVn9cnu7xKdspxMvs9ikCeA0rnlzlItrwMQogYEQvTJbhsq
 wFSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=4tyb2WDwFS2aoAxOZTJuZZO8xIzZEBnfgQRrMTFVPy8=;
 b=JUEUxWeOp0biZZApAavB6HrzlCC7ScsEmeYoRxC6FW69WWKiYgfPjs9pX/XLuCA8tD
 qc2GDWY8VqOXtChexZje/P1oJdXHq6e5sWSlj8LtKht6HluWQzhZ2OqPU9GyY1C+0TjS
 zPTBqiu3IaW5S7LSwbYzbc4lQyKhv1Ktptq1CEsJ5IUi6lw3l85cymH6KJrjIPQCnL+E
 qeslaKRWEr/j3C+DJWOLdQ3cZrX1IDlsLtYtfrh2hVpCGV0XHBcf1yHQ8zd3ZaWjGbgf
 smnAhDjTRDdgmIdp1LIMXLR23iMghgBNPgQSLO99jaW654zDzyaA+yO9jp6PeaNs/Hjc
 hhmg==
X-Gm-Message-State: AOAM5305Axuhhc06McqtBlM+RS5TRFypA0RDkrr1U40ggoAkouFdu1mH
 nlW5b6Ak4OVhr9hGL9ps7tc7Vw==
X-Google-Smtp-Source: ABdhPJwzRaA4tJhjLno+GpL8qdTMO5ieciJeOHn1En2igShXXa0max+08dg16ajrcA9WvWEenrMkrQ==
X-Received: by 2002:a17:90a:454f:: with SMTP id
 r15mr4607372pjm.6.1594733037918; 
 Tue, 14 Jul 2020 06:23:57 -0700 (PDT)
Received: from localhost ([2406:7400:73:6b0b:30fb:46c3:cbfb:2554])
 by smtp.gmail.com with ESMTPSA id n9sm2631321pjo.53.2020.07.14.06.23.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jul 2020 06:23:56 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Tue, 14 Jul 2020 09:23:50 -0400
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drivers: staging: media: atomisp: pci: css_2401_system:
 host: csi_rx.c: fixed a sparse warning by making undeclared symbols static
Message-ID: <20200714132350.naekk4zqivpuaedi@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============0106282496276982942=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0106282496276982942==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="52gap7mw3pinsur3"
Content-Disposition: inline


--52gap7mw3pinsur3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

changed symbols N_SHORT_PACKET_LUT_ENTRIES, N_LONG_PACKET_ENTRIES,
N_CSI_RX_FE_CTRL_DLANES, N_CSI_RX_BE_SID_WIDTH to static because they
were not declared earlier.

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 .../media/atomisp/pci/css_2401_system/host/csi_rx.c       | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.=
c b/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c
index 8e661091f7d9..4d2076db1240 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx.c
@@ -15,26 +15,26 @@
=20
 #include "system_global.h"
=20
-const u32 N_SHORT_PACKET_LUT_ENTRIES[N_CSI_RX_BACKEND_ID] =3D {
+static const u32 N_SHORT_PACKET_LUT_ENTRIES[N_CSI_RX_BACKEND_ID] =3D {
 	4,	/* 4 entries at CSI_RX_BACKEND0_ID*/
 	4,	/* 4 entries at CSI_RX_BACKEND1_ID*/
 	4	/* 4 entries at CSI_RX_BACKEND2_ID*/
 };
=20
-const u32 N_LONG_PACKET_LUT_ENTRIES[N_CSI_RX_BACKEND_ID] =3D {
+static const u32 N_LONG_PACKET_LUT_ENTRIES[N_CSI_RX_BACKEND_ID] =3D {
 	8,	/* 8 entries at CSI_RX_BACKEND0_ID*/
 	4,	/* 4 entries at CSI_RX_BACKEND1_ID*/
 	4	/* 4 entries at CSI_RX_BACKEND2_ID*/
 };
=20
-const u32 N_CSI_RX_FE_CTRL_DLANES[N_CSI_RX_FRONTEND_ID] =3D {
+static const u32 N_CSI_RX_FE_CTRL_DLANES[N_CSI_RX_FRONTEND_ID] =3D {
 	N_CSI_RX_DLANE_ID,	/* 4 dlanes for CSI_RX_FR0NTEND0_ID */
 	N_CSI_RX_DLANE_ID,	/* 4 dlanes for CSI_RX_FR0NTEND1_ID */
 	N_CSI_RX_DLANE_ID	/* 4 dlanes for CSI_RX_FR0NTEND2_ID */
 };
=20
 /* sid_width for CSI_RX_BACKEND<N>_ID */
-const u32 N_CSI_RX_BE_SID_WIDTH[N_CSI_RX_BACKEND_ID] =3D {
+static const u32 N_CSI_RX_BE_SID_WIDTH[N_CSI_RX_BACKEND_ID] =3D {
 	3,
 	2,
 	2
--=20
2.20.1


--52gap7mw3pinsur3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl8NseYACgkQ471Q5AHe
Z2q9wgv/V4UWsixwDSiDh5IhJKpSctI49K7a+54UXQNdlMduZb2oJZA9jbN/PoRd
2hdgclHErUk54YcJpaVyooLd6HWJoz0lB+Nf4/rWrlEYsPAoeAo6Aoji76VgX+9I
HLBLPH20N9CTA584xJjiluVIdYnuKo/jX/hIDHuU8pZOJbqc8exnmkJVBO7o3mCF
Cz/VeL/GAuFglQ4mzlVFFWfEjEnsrbMiL3qZPgzvS10cjn4htz07hhrcWdmYtnr7
vICyPutw7y3wLchTKwCy3hRwap6Bz2mst2ViYFGkX32iAomdL5ZHCzlPC6xneQq0
EOfN9OAECH9Kw+AjnxFN6EDyIYCGXmC88c+l3u9fJeHqPjY7tKXdVOerC36dOSJa
MJouVcyOxKR54eBVy60F+2mM22SUqQJ0r1c9FIkzj9qF+snEFCQmz6BPXjNvNKIY
u9hBEyu+RsalTLzIwvgZa6xKVfCPFDD+tLoAtxBGAZdh6UYnJgtp0QS2hmx+ZnM2
03gE5VRj
=6ueS
-----END PGP SIGNATURE-----

--52gap7mw3pinsur3--

--===============0106282496276982942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0106282496276982942==--
