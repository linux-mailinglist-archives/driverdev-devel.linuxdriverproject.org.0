Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 010ED224CAB
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 17:50:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6928C20429;
	Sat, 18 Jul 2020 15:50:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id adV1tSeC6Ewe; Sat, 18 Jul 2020 15:50:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E45432036C;
	Sat, 18 Jul 2020 15:50:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0652F1BF5A5
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 15:50:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D154620026
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 15:50:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ON0Pfwg1Z2OO for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 15:50:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 2DEC820023
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 15:50:04 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id m22so8142768pgv.9
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 08:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=PU89rIZ7UicaR18/w3oKDai0PyxcTqFg/JkstWArQKw=;
 b=hlG1QL4BszVlDSU8mbGgFsI9e4IJf7XAZr8kJDvOXBYaZEHXTJ+W/JTlzbvLyRM5hd
 PG4XTKp0qMCyuHkuq/6pIOP3H/QWw+iFLc3y7q1EScxo8x+BbJXwF8mski5ALjv0m7sc
 wbvK93vjtblwEmR8Y5qcu8I9AmtZY71A9WXpKsgoxueDXZaxoLMqauUs0D1y46BSFtRp
 NnsFLVyk8fto8lqdACEDvX5nk/vqbsatjcN4K+BnM5H881ZlQk8AMf5vegHTGO3MI2wG
 x5U6sEkc4c7MI5t+PShqUR+889DN6wE+IJNmVUz7jPW3Haq7qDj4RNQW8GOgCDccnoye
 +EEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=PU89rIZ7UicaR18/w3oKDai0PyxcTqFg/JkstWArQKw=;
 b=WCqmZ+h7WavqcmqfeZoQkN1LIcDxVeq6JlIraP7sFTbopSJwSBwRP5s4WqQVBJqrAj
 6TjnvVr42mWLYenmBkuJcM3CtAXReAQubbcDSUHSG974ZFOYOgqmPRxqN7nWdstyGLNg
 q0Ojr8GF8cRQ7UaDl2rQphF3GDp/xEQ6xUz80Ij8j43iXtkDNRw2ycf/Evzvo+T3SwnN
 t+NIOY6fRQRzIJqAgCRh72Iw3tXercMuWKfh/m5Mx0eCYGfXlU6W9X80V0h2v7x4hldM
 zRtldM0K/VVAxDFZ5xu1feUUuIq0aZxfAFnqI3Bfy5gc4njxjp6Z/JatFa4FcJ8xO0dW
 v4Dg==
X-Gm-Message-State: AOAM532koQsd6triDBvUPcxTFhodthgrlNuMU7+q6+ni9XAyexQtcYEq
 pLb/XGks6m1YPLRnhCEWTJ0=
X-Google-Smtp-Source: ABdhPJyK6HBWXLxtHkvs/cIBSk8hjcHqVpv2FTRmqJIxuoPhUdC8pR1XR4J2Lu1TuMZjyUjIenvfkw==
X-Received: by 2002:a65:6645:: with SMTP id z5mr13182086pgv.123.1595087403546; 
 Sat, 18 Jul 2020 08:50:03 -0700 (PDT)
Received: from blackclown ([103.88.82.25])
 by smtp.gmail.com with ESMTPSA id b8sm4900270pjd.5.2020.07.18.08.50.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 Jul 2020 08:50:02 -0700 (PDT)
Date: Sat, 18 Jul 2020 21:19:51 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: kpc2000: Replace depracated MSI API.
Message-ID: <20200718154951.GA28857@blackclown>
MIME-Version: 1.0
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0175005651629003764=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0175005651629003764==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oyUTqETQ0mS9luUI"
Content-Disposition: inline


--oyUTqETQ0mS9luUI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Replace depracated pci_enable_msi with pci_alloc_irq_vectors.
And as a result modify how the returned value is handled.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
Changes:
	v2: Removed the undefined variable.
	    Reported by kernel-bot.

 drivers/staging/kpc2000/kpc2000/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc20=
00/kpc2000/core.c
index 358d7b2f4ad1..8339026ffb41 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -440,7 +440,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 	dev_dbg(&pcard->pdev->dev,
 		"Using DMA mask %0llx\n", dma_get_mask(PCARD_TO_DEV(pcard)));
=20
-	err =3D pci_enable_msi(pcard->pdev);
+	err =3D pci_alloc_irq_vectors(pcard->pdev, 1, 1, PCI_IRQ_MSI);
 	if (err < 0)
 		goto err_release_dma;
=20
--=20
2.17.1


--oyUTqETQ0mS9luUI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8TGh8ACgkQ+gRsbIfe
745NJA//RO45+2ZAODj98WtYa0DZkQvAHz/y+yO2eV8BTv4FFl3x2b+iajiyC+w/
gGObRdNsAJgsQ8ayyHAtIh/MVw0DCW5CKbXvaEu5HdgwSlVRN1rSqg2UCJAZb9XZ
a3/6e+L54JAtnf6mvI+1I4q0JI9Xvok19+lAFTesbikA/EP3E0e0S/8q/B7zkvPc
pcby0yFsOQK/b5rX/zKeQzLb2wMPTo1PnQv2atbXMuvAsL0PWB8J/kJMIG2sYvCh
+mh4E4q81+d1j0IYx0bttEGFjU7C4BoWlfXA05fZGHwgF+Ay3CVlON8upX3OfqM3
2nBsAVzvq4N03083usPys6iP1ueYvPNwfEIPrhfFU3JSeaQRlqu6XJ8tN73ZZF6Z
tx9hxZjLLa67wrhC5pxYhk6FJL8BoAf5X9U6WpUPssbVS2MU0Q5vzLsooPAMUO12
j2mQSuhRSD4BECHWKKG5mrbn8bG73h3xABNRQtiP5FJE358i8TYNUZFZB3Gt9n1W
jDPAjJwRApO2TmS/yT7hljLp5sRauxSU4vVKgXjBiQSi8POwdKeOodBiCT35TBSb
XfQ3SrURK1fDdHt01aphHvdoZi/FKqeGLJiSbFyjbM8LGs07ONX+qv+wi9GH3slh
AD6VqlsJPhdvAnlWjMvx3D/Gt2n5gVbKflJ99f/CTmaEuxwkgcY=
=IRn5
-----END PGP SIGNATURE-----

--oyUTqETQ0mS9luUI--

--===============0175005651629003764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0175005651629003764==--
