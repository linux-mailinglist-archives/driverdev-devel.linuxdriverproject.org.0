Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA42224B8D
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 15:32:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9269888168;
	Sat, 18 Jul 2020 13:32:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eyOjLWC3rmcH; Sat, 18 Jul 2020 13:32:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D807F87E46;
	Sat, 18 Jul 2020 13:32:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00D191BF283
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 13:32:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F12C886207
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 13:32:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PWcti1JGIFGU for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 13:32:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C60D85F2B
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 13:32:54 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id ls15so7842128pjb.1
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 06:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=GX7yez5X9ql9EcvciXmb6Gd1L93T6OzAX6ibX57rbPQ=;
 b=ZY3Y/FC1Lwnkm6dQkh4u+0S0oXj0z4ncjsGsOMNjCdooJTh65GqHkedkCNP81WXS98
 n2ejrZ8T8GFdCfiMQXNFXjwsTGbvk05p8Wmu+378uO1ilYuJ7zFsk/V0XU+haEgynerR
 m5ot6W91v/QS0qoRXMS8C610RtIabaGvxd5X60icmDFmh6w4VqkIBZngSYyJn5IvxwDD
 6Mpoklmvj44ICRM+SpKXWJ1fsuusy127z+EsEBnD+zVfe1gzP/RWMOQUnkMrgDzV0i8Z
 459I+EtxMpt+KZ+mWMOGkxXjmXUk1k3oZnde42iH+ePyxQraB5+EQhtFERqOiGHAOl+0
 /cxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=GX7yez5X9ql9EcvciXmb6Gd1L93T6OzAX6ibX57rbPQ=;
 b=nSFF2xZR3ch9FsCJ8G+JaLzYzjs6ZKrsLg8vR58kb+gNnGVZmSAclL/+5uailJhBWV
 aTBUdoEu1BTvpYtj5sOyQW9a6mDD1tVJlM2bUr9FoXHPgcO72ixTApEQyWBWBk2lGUAC
 0QpqWppmQaifSArlBy7DWBUOndH2oZk7AfvAXh36KNhCoXOywvurQH0JG7pIqoRP8VJQ
 rwpOueKA9+ySb262XqAjT17zFZ0mw89p5zoLaA2B4zfLAEjH0XiJgs9BDVReSHuy5YgS
 YBd9XJiHPk5FWVK2w6XyXvggY51F08LjJMY1s5IacHw+ks/dZ9CJTgL9Chb/RWAJEEjE
 KxjA==
X-Gm-Message-State: AOAM5305COXdMqF/WUSCJWNwDdTMePzPEGjCO8LoPa4AKPfwThiscXj1
 g14J+gRd8t8IDbidWY9vVEo=
X-Google-Smtp-Source: ABdhPJwyHspTs0owbnia19HlErjk8ONGVAAjGQH4tbwAhB81gov0I2Nas4/RWujZDESmokW6cBD3Tw==
X-Received: by 2002:a17:90a:14a5:: with SMTP id
 k34mr15218415pja.37.1595079174064; 
 Sat, 18 Jul 2020 06:32:54 -0700 (PDT)
Received: from blackclown ([103.88.82.25])
 by smtp.gmail.com with ESMTPSA id 137sm10722296pgg.72.2020.07.18.06.32.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 Jul 2020 06:32:53 -0700 (PDT)
Date: Sat, 18 Jul 2020 19:02:38 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
 tian.shu.qiu@intel.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH] staging: media: ipu3: Replace depracated MSI API.
Message-ID: <20200718133238.GA11982@blackclown>
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5702757157909106759=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5702757157909106759==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Replace depracated psi_enable_msi with pci_alloc_irq_vectors.
And as a result modify how the returned value is handled.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/staging/media/ipu3/ipu3.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3.c b/drivers/staging/media/ipu3=
/ipu3.c
index ee1bba6bdcac..54690e7442be 100644
--- a/drivers/staging/media/ipu3/ipu3.c
+++ b/drivers/staging/media/ipu3/ipu3.c
@@ -602,9 +602,9 @@ static irqreturn_t imgu_isr(int irq, void *imgu_ptr)
 static int imgu_pci_config_setup(struct pci_dev *dev)
 {
 	u16 pci_command;
-	int r =3D pci_enable_msi(dev);
+	int r =3D pci_alloc_irq_vectors(dev, 1, 1, PCI_IRQ_MSI);
=20
-	if (r) {
+	if (r < 0) {
 		dev_err(&dev->dev, "failed to enable MSI (%d)\n", r);
 		return r;
 	}
--=20
2.17.1


--1yeeQ81UyVL57Vl7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8S+fYACgkQ+gRsbIfe
746prw/8C/HY3bZaEpdYpHHSDI6ZZC1gsQki6rnqZBb3KYtGG9YXeNOAxs64ddZa
vV+ZFo4WNxCeR0tSIEsFbDb6XnVAg6yFWrnVfOjmjkOYMYMyLLBXLYadmH24TOPb
Ty00ZSy3GXSZ2jTQOkUVXzedF8UuWv9Br9dUfJnF1xky2a2S79HBjFL6MzacKvSF
CsGAqrZyF7Fn5JEcU1fY78E3ma2bdhp8M/didwaixH2w1Ya1ifbwJ44hlYEtrezU
+E6DGUh8dZgx7TVa2dqgTLR6xkrW9gUM3/U4NZ+PsTTKEzD1g+iQZaAViktldXH2
G1qSW6qR9W26MLKEmtGWe+uwM07jnIhKc0z4GZfZv9LRNXUvKJ88fm1fomPeLiEY
CW6vV2V3BSBSXhmrI+jVhJij997QhXFNzdVSAZkkiDOvG7ml3+LnFc4EXRE0jXGV
cxDbjTgS/xj9seOfwzqcEeDANWPPvNCN9SClptNU/XMew5+zfVaVx0BIWwzkZiLM
j7aPMAuya0LKbRBRIqrWrDJEjPphlVQ8PQM1bcDlb/el/IYwYcvmIWcQKQUNihX2
Kpz77+2ww8wbbGW80EORd149V8/Gw40OAQ3T/p8ve4vJL7dhabARwFZ9J7mHP1BF
GFXkTShwUtTqVbivZ011N1mDCUb6YjjSUoYVZP431J2cMb17sos=
=Fu6m
-----END PGP SIGNATURE-----

--1yeeQ81UyVL57Vl7--

--===============5702757157909106759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5702757157909106759==--
