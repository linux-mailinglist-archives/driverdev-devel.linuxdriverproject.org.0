Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D35E8225233
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 16:26:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05E0B85ACD;
	Sun, 19 Jul 2020 14:26:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qOqDxf-xiWVO; Sun, 19 Jul 2020 14:26:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C900585A4B;
	Sun, 19 Jul 2020 14:26:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ACAFC1BF422
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 14:26:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A5EBD867F2
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 14:26:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QmLChrCe35lj for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 14:26:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2C714867D4
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 14:26:36 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id k4so7491218pld.12
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 07:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=oMMdTXZE/SgKfnyt+CE5RFRImiPbBYVyuLwDLtnU710=;
 b=EzbcabwlmwC4jqxRbOKtvJ9MHzIhodmrDdUcgAmLM7KNPfhOf12UERa6e+Ix73WN99
 B9CSgpa2wp9J/0RnkP0Giyq5HOdZ9bamkCAQ8ZEqTndO/2iLTkzT4OzbIbOPE5KDk6GZ
 8Lhzctls2OlsbcjVBq5wKft7B8bM37sc/RhFniR5D+QF7PstIxVh16+ggynEcmdoR9Kx
 p/7dJdFEhohOU6UjjBsTBRqWhiqjKVUdJLas88BLok+H7qiL4cFc7JFv9kWMYeV0W8jl
 Htef5Pn9jHZAx3WYZgCbwV++4wrRI057lL6Z4CHM0vBQWafwwmpyIvDDmwBvGXFtFuxz
 VRTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=oMMdTXZE/SgKfnyt+CE5RFRImiPbBYVyuLwDLtnU710=;
 b=Ghh/bMU3Z/tYC/TBZCWk81NlwSeigHFZnCiYLNkMxfkLSwHA4gcHcWZS869uEM82op
 cZ6hz/spykHO+2Mp1RxqQA2Ongsl6f2wqLZSnduV7QuZvekhTXv1w4y4qm9ejBxxrFzk
 g94o/UPWVO35V5+Fetm1D1agNcslmU6Oa7G0XWyOAcR+VoTGz1r3HA+uyJSkDfGyVgy3
 ya1jwIVLMM0lJ1CBzUSfIiV1i3OLe7B/CxMH1jRwzHjv/kHxdhNnzEzrqp2PS1mJM8nr
 GRis+hkzhXgnnuz3ZBtabWI1UYpwDW5UbqVHNHNvK8ho84WuGm+6ho7DIL1XfnolPdAO
 vpFg==
X-Gm-Message-State: AOAM530p0nW4h7eAbuXT7j9ufU+bA2fVJPYHJO03znAs2KAP5CI06kdI
 r+QdVtYsf7QZDMkS3qhK950=
X-Google-Smtp-Source: ABdhPJyHkJphjwrwB3Q6cZ2Xn4DmrvnkvjiU+j1n+X1klm3CGtABSJZW31khrbzX0PEBHQ68heFfxw==
X-Received: by 2002:a17:90b:3c1:: with SMTP id
 go1mr18153119pjb.129.1595168795748; 
 Sun, 19 Jul 2020 07:26:35 -0700 (PDT)
Received: from blackclown ([103.88.82.25])
 by smtp.gmail.com with ESMTPSA id f207sm14031419pfa.107.2020.07.19.07.26.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 19 Jul 2020 07:26:35 -0700 (PDT)
Date: Sun, 19 Jul 2020 19:56:23 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: media: atomisp: Replace depracated MSI APIs
Message-ID: <20200719142623.GA31565@blackclown>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1293477755978018632=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1293477755978018632==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline


--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Replace depracated MSI IRQ enabler and disabler
with pci_alloc_irq_vectors and pci_free_irq_vectors respectively.
And as a result handle the returned error as appropriate.
Compile tested.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
Change:
	v2: Replace the MSI IRQ disabler too.
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/sta=
ging/media/atomisp/pci/atomisp_v4l2.c
index d36809a0182c..a5dea5521b36 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -1735,8 +1735,8 @@ static int atomisp_pci_probe(struct pci_dev *dev,
 	pci_set_master(dev);
 	pci_set_drvdata(dev, isp);
=20
-	err =3D pci_enable_msi(dev);
-	if (err) {
+	err =3D pci_alloc_irq_vectors(dev, 1, 1, PCI_IRQ_MSI);
+	if (err < 0) {
 		dev_err(&dev->dev, "Failed to enable msi (%d)\n", err);
 		goto enable_msi_fail;
 	}
@@ -1857,7 +1857,7 @@ static int atomisp_pci_probe(struct pci_dev *dev,
 initialize_modules_fail:
 	cpu_latency_qos_remove_request(&isp->pm_qos);
 	atomisp_msi_irq_uninit(isp, dev);
-	pci_disable_msi(dev);
+	pci_free_irq_vectors(dev);
 enable_msi_fail:
 fw_validation_fail:
 	release_firmware(isp->firmware);
--=20
2.17.1


--ZPt4rx8FFjLCG7dd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8UWA4ACgkQ+gRsbIfe
7460DQ/9EUsPrIHgSxSfS3NIWg+/PaRCXfxS4V+3voUz57aoINkqRJcbRxs2uTYq
1mBfCNTE1WlNQfplnGJe4VCwamF9sniqn1/DDUDJhpqJibsjuY1OXkOyXRTZIk1e
AUGjbbdAEo05UOPOqZPAOvm8mlCjZ04btYOHA4x1jIetCFAKj+A1/f1rwvy1UGiP
LJQJSlZCPej4kyKjdd7AHy6w0LYMJ8LcjXW5aGG3031ne129InLPNJROd+ZCiqbK
2HGwy34MjgU6Uxtr6x++sSI60iJa5rsO0AxzDF5y4usCxSdcutMThZVUjM4K6tBS
M1/cXgfzBWLHZXkJxlbxOCT8H1R4vLkpovo6TaSq6Kdhktt6vyu3YfWLpR/OWike
KD0W6Kia8Kkfe5IGHJoqOHunwxBc3fXmFumWNZyqtCZND3KNy77WlnPtncAZNN0J
fKOstp1XNTUNJAqGiY8uA029Fy/34EK5M/Pts7LZjlpY+Zz9Fy0xwuqmpOG/HijS
jUwYKZhj+h7LaktU/PFZ4Ag8/UVlwL0yHtgRYvMHFpFcAM3IyhxKU/WL94f6wZ4P
5n1OTPuvgkGSjGI2v7tFMELzMomYt8TIF1WJI4NpaKVo06gwbcGLFCEHXrMYpUWi
ZFmub5PWOOI3BMxk4TS3HVAt04lES0GWvTXoY6E9/8idDSe1zDU=
=ajNK
-----END PGP SIGNATURE-----

--ZPt4rx8FFjLCG7dd--

--===============1293477755978018632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1293477755978018632==--
