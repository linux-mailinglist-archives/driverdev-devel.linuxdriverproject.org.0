Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B4D21F6D1
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 18:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AF6B52A1AC;
	Tue, 14 Jul 2020 16:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GDnc94ky2MFV; Tue, 14 Jul 2020 16:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EDB9F29CAB;
	Tue, 14 Jul 2020 16:12:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E1121BF405
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 16:12:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5865788D49
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 16:12:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g2AVZXu+SG9I for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 16:12:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3655688C5B
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 16:12:02 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id p1so7219619pls.4
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 09:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=0pMER59zTEFCPAzYOXTvQjgFvMsQNU2wxnyfGlWXCK8=;
 b=odhsBOK7Dgsk9AwMGr6lT8saTB5fWsOT0qaMckMoW6gEv0VosvdF/0M53UbuqlY+13
 b6u0P/6n1Iv6RfwD8Bc/WTYPsTkvhKzvh879nKylvzD21IiRuMbX0M7P/Qq5a9Ou86t3
 tHv3vxSVAgNd+xlKnUkQxu5hfscMjOUmFELAVErVsfbbBFnKvLq1E3NhNuQu176rE9wx
 lU9ykeW3g9HV1r+lPXz0LELG7I04T3yKx4C9b2OmAy8ljGsh1g6XHppS7V5uM9cFGFdL
 ixop94+RbLFBWtg5g+zoZYZelkVIg97i3btZZpY4tkKnODWFMYm2JbHbww+x6fZdXJJR
 4+uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=0pMER59zTEFCPAzYOXTvQjgFvMsQNU2wxnyfGlWXCK8=;
 b=AZ8aLVqPZZbR1u0RmxnSMxTBzCFKhZ0AhX5nW+ScVHmrE8gyZhcDjrNrVqaPC9FF+i
 hHpmUjJ6LqPpWWMFck8B2ig/MPg7vXJ5bCEOXmqF8PAHYE77DAFL/i0gOW4ZkWppPST7
 2oBQswoKptpsOymbVbTOV3X6PFquW5AZt2dBeUsnH1kd85SihQGywJcfyVXwd/LR9lTK
 tKaSInZnis+uh0H8FexqxFqEYqt2TTYdmP5hdhGtooPRnAJ5ygqpmlWO0zcMndZV4l+Q
 mHDoCFpBojwcBk7vVvJs66hohI31+diDPavvu5UzoXU0PUQ6KouBkxjhZoTWxvPLrl4o
 3VYQ==
X-Gm-Message-State: AOAM532gdjH7qKuZ3+e4L/rPTAKZl0mvyT/pDlo4bSbWo7Sr53HoGnfz
 di+Orf+LJIeuUaQx+psGaahyCg==
X-Google-Smtp-Source: ABdhPJwGhiWPsgEzHtTjHbl/LDABD/mDIC/JjphsdqGqk9EGUNuep6PXsbtiLe0c0diUGLTwra0wRw==
X-Received: by 2002:a17:90b:388d:: with SMTP id
 mu13mr5168726pjb.187.1594743121720; 
 Tue, 14 Jul 2020 09:12:01 -0700 (PDT)
Received: from localhost ([2406:7400:73:6b0b:fdf7:8080:deab:8a49])
 by smtp.gmail.com with ESMTPSA id y63sm16208541pgb.49.2020.07.14.09.12.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jul 2020 09:12:00 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Tue, 14 Jul 2020 12:11:55 -0400
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: media: atomisp: mark some csi_rx.c symbols static
Message-ID: <20200714161155.bnxojp5ajyaeli5k@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============0099858150215793495=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0099858150215793495==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mw6ahgc7ryjyq7cq"
Content-Disposition: inline


--mw6ahgc7ryjyq7cq
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


--mw6ahgc7ryjyq7cq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl8N2UoACgkQ471Q5AHe
Z2o8nwv/bHYM3mkUPZQMYVj6GOap6AfTeZIjZsYk9EqSvK93TxVV/IxHnKHBvXER
6GXyP5tJfgF5SiSC9Fz5wcA6fm7jJ4O7Q4P59Joac/Jcuo04RQ/IbpnMQDVvL2mO
0AXd/ZKj5Y/FBVHTW2qVyiywLh1eurO4D+q8A85y8DX8utVDk0obA8P3V17DsmIa
tllk98eCGAnpENnJTAR5JaCvCMtECWrR9qCN2KP1dcaZEJqMo9HUjmNAe/jhalLh
ofzor8oiyYPMCtOr0OaucpwxHgSAYctFMr5GES3DJcsqd4f5/tVNRzowU39YSfJo
aJpQGXMQKkyULjr6pSCfgOfsDs1H8+lsP/+6hndV0YMojYntnF5bweLkRdMro7Kb
6N1btTG1f1pXyDm53KuGAXNPeQrn7LO+mHc7vtOTPLzF8gfQ01TeZEGxfd3Yfblk
aX/XjWnqwRFC6lN0/ZvDe96/YxJ0QmrudM23iTMG2Fugm6f9bMThtLY5X33j/4vq
TL2p7CKP
=4I4M
-----END PGP SIGNATURE-----

--mw6ahgc7ryjyq7cq--

--===============0099858150215793495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0099858150215793495==--
