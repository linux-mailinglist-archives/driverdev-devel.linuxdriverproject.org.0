Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA6D224B7A
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 15:26:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 746EF86151;
	Sat, 18 Jul 2020 13:26:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mO6vvFo_6Mie; Sat, 18 Jul 2020 13:26:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC7078621D;
	Sat, 18 Jul 2020 13:26:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF1C01BF283
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 13:26:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AB8108807A
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 13:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LqztBbTSCP5a for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 13:26:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2BC3988076
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 13:26:47 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id f16so7681106pjt.0
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 06:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=VqTT9IDO19+ZA5nv21Pkcu4zf3MDPeHk42EblBrQa6o=;
 b=vMdwLDXf4i+qqdF9QRcnYNvVqSlfE3UZbAjpCea2Y0sRSKi72vS5GeC+Jx9gWKRa+P
 Zld5FgXZylg48gUhK2zNTIa48Etg3GM8Ss0KeI8JxhyArKdjQ+jnXhhiobotZFvkQMMg
 PoyNyG4/tb/bwlrMgc7qBvaJkIdOK2fi1aVNzOCQXPMj+eP/OyuD/q4rtehnQbetlCyY
 US+7SZ5B9pYQPPs3oHQIsMucKEvn2TlDkXcngQTV+Fljq9EWBcOYRohnVyGRH0tQA5RH
 cP1qsp0exsNvg2TANfA2mfZfmZG5kxD5ClubDHmFMMfE20zPZ+y0hlaaLmXKi96LL6fi
 QzkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=VqTT9IDO19+ZA5nv21Pkcu4zf3MDPeHk42EblBrQa6o=;
 b=J8Hx4mIl/uxXGAVTLXPrZieQuiHTt3e/UUFVn5+rFxpQCOlxRwJxgPHHsjcnWstTPf
 2GbJDnHVGIWJtm9OcrDeNxQYKFXwBk+5Xa3gGiveV5AuOMC6mjGZePG9TYJOpfX/DEvm
 BOz5tGT96EN1KmHFOh1+kyfMZz5OQU2MUV3+MS+8ECUPV9PbTDZEudXvroLOhjqrW8qF
 0MNj1gUO5F1/+/RavBsOTczYZiB/Ts3hZbDUJ/fRG/oDb7+LHM40PQKsbSjhUsr8AYYu
 c+cRGSBNySRRRUnwm1qzAjv8aGoJut9/b/XKi9b5JIC9JyMEDhGhJQyQH3/p1DptWIpH
 pqQQ==
X-Gm-Message-State: AOAM533FUgfDzFrfQEuvXP8GmDNf3nogaNq/9pKMUIkxDiSRWZf3rNG3
 VLEwasLl5P+P4KRbirBRux4=
X-Google-Smtp-Source: ABdhPJzeybE3KLlfLyt/wu1z/T750bC+P9qMn09ZZOMxoP6gjGB9PqzQN9GYsQPNUZIx73shhE86AQ==
X-Received: by 2002:a17:902:8a93:: with SMTP id
 p19mr10489452plo.275.1595078806642; 
 Sat, 18 Jul 2020 06:26:46 -0700 (PDT)
Received: from blackclown ([103.88.82.25])
 by smtp.gmail.com with ESMTPSA id r6sm10381569pgn.65.2020.07.18.06.26.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 Jul 2020 06:26:45 -0700 (PDT)
Date: Sat, 18 Jul 2020 18:56:32 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging: media: atomisp: Replace depracated MSI API.
Message-ID: <20200718132632.GA11527@blackclown>
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
Content-Type: multipart/mixed; boundary="===============5092604832104580751=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5092604832104580751==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline


--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Replace depracated pci_enable_msi with pci_alloc_irq_vectors.
And as a result modify how the returned value is handled.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/sta=
ging/media/atomisp/pci/atomisp_v4l2.c
index d36809a0182c..b824c6f78a9c 100644
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
--=20
2.17.1


--ZPt4rx8FFjLCG7dd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8S+IcACgkQ+gRsbIfe
747Fmg/+Iujb0Dr/xwic1iWp0UM+FI1nN4E28i0EBw7trAm3ocK1bz9awuN2ieqf
7jZKBvoBdYbCVdTkPqPpneXP9JAT/Gwv5JyUtuqk8TUyau5i8MUhjjuBf3LCdSmn
UnoEoszx3VuNXp0n8jXL2TD/Od2CR0TAAG7/iGVdkHsQ5CAOKNk8MLCAz27DK7Zf
NVfF+CqczCzrJDH2D7Ubyrv34bE2i42qt1TTHeSe26kdc3Wc0runexaU5Gzntdtl
yO/5qxkbD6zFqrshu9GGv17Xa8RWi3leuPsoF4UWuKZHHUWxKSFmEy/dvbOlgAB2
kDGDtaJgTo3POGjJ6eb2x2Pexxq2pc5uBtjve2l5FI1xcEOS2tltYjkvApg03Bmm
wjAuEx/VLaHc24uU8CCQWRQCQRxfEBNH/sHgr67ZwZIvnaQmtiL8ufNatfiGY08K
Bzr5XwfoZS4kOeApvomqY9qXOjwn9FQ6HS8lLpFOXgSYn/HV065NzJORNMzM4xGQ
XLpCoq8ae8NQI3H5x/pPLG3jSLlhpNssynTXBgR+3QpDPM85xSIDDgL+JI4fQkti
z0c4bdDppEz3w4+QNQtT6OuTRtVniRdeQLa2QmCAwzGort1stDX9P47cqtZ5k3wz
pRTfmv7w4IcHpnhMiLcwHbrSzaqNmQ6FmFHIaV13kG4W7iUJld8=
=aeBi
-----END PGP SIGNATURE-----

--ZPt4rx8FFjLCG7dd--

--===============5092604832104580751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5092604832104580751==--
