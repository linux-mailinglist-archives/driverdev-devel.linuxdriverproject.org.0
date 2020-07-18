Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F9A224B94
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 15:36:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CD84C88167;
	Sat, 18 Jul 2020 13:36:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W+p+pJ+g+r95; Sat, 18 Jul 2020 13:36:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 53CA087E63;
	Sat, 18 Jul 2020 13:36:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1AC221BF283
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 13:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1728A8780E
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 13:36:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zWmBQBMPH88Y for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 13:36:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9CF4C87727
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 13:36:43 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id p3so8080975pgh.3
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 06:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=hf1JlkYLKT1Z4ZHTIAJh4Na1qYAPsAkz6yljdjIDt2o=;
 b=bEGsFDVFOa/GO/5dvpcQ3fnipAJp3/sVkjMbf3aLVvV8oGwggcXOvPkVWzNYHVm2zG
 nvTY7VuRHwtUEXJ6QQPBkY4/pnJ76Rd8TQ2upkpObuL8XXVMKmxzrIJYG3AtzqL5FS8y
 n+POXa9uGk5BddZTYrl14aZDSu0fnKYFkfFf0HVwxgRxDbU5HmseHF2LhWVZTr7OKj5K
 HDm5mPq/APcpGCxmNUICfYFcs8u6tkM/xq/KpEx1vwN8ZoAjhhHGE6SYykrjpG2GVpIy
 e8scs4rwExsnhqO29GtYjmhhUzHw9gi+OLRYIOtAK/cPqjnntOLvSdGJ5DmLIOEhpXmC
 G8bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=hf1JlkYLKT1Z4ZHTIAJh4Na1qYAPsAkz6yljdjIDt2o=;
 b=cOAYNdQDbnuwELO85CudOhM/WOzq4jcY578k3XX5ih7nmS0IhNb3cVpe1YG1kIoFQm
 BuOKpFCijmsbMxMnqsiOnrPFC8Nlc+f7/YxlriIzq2uFWlUDosFKo9l96euLBYzeGFlu
 0O8RJP86t2gmjo3B5rlnmVAYB2DAT54kwxCHLF2eTrL2iaEMUgxu+xxQmFUJHRgqi0Tv
 NTpX5zUP6EfNbNNPETYEMuFXDUf9V/kTjL6SZMgwZRck69K/NTZ+0IjM+aqC74AwT6uQ
 QGxHWiYbDLgxq630bauCarZn/aM4KlSZ8pkJA899Yml3g3wIAc+hr9tg/Y0/PG5bMqV1
 RJ5w==
X-Gm-Message-State: AOAM531dKtIoEgBpJoHhZEXq0zNAAfP32+IRPTHbg+NbmJWSQILh8ZG+
 4yupX0kUrvtctBgZrSXr9gY=
X-Google-Smtp-Source: ABdhPJy4LoGIB/Dskjj5ges98ogVIQLWn5k29RGdbXVt3GaSg15jfcqzNFbu+J6NHP3Ou6ZRJwr7ow==
X-Received: by 2002:a65:67d9:: with SMTP id b25mr12728135pgs.311.1595079403038; 
 Sat, 18 Jul 2020 06:36:43 -0700 (PDT)
Received: from blackclown ([103.88.82.25])
 by smtp.gmail.com with ESMTPSA id m140sm10610952pfd.195.2020.07.18.06.36.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 Jul 2020 06:36:42 -0700 (PDT)
Date: Sat, 18 Jul 2020 19:06:29 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: kpc2000: Replace depracated MSI API.
Message-ID: <20200718133629.GA12522@blackclown>
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
Content-Type: multipart/mixed; boundary="===============6623673981829400919=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6623673981829400919==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline


--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Replace depracated pci_enable_msi with pci_alloc_irq_vectors.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/staging/kpc2000/kpc2000/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc20=
00/kpc2000/core.c
index 358d7b2f4ad1..bf21cdc5546f 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -440,7 +440,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 	dev_dbg(&pcard->pdev->dev,
 		"Using DMA mask %0llx\n", dma_get_mask(PCARD_TO_DEV(pcard)));
=20
-	err =3D pci_enable_msi(pcard->pdev);
+	err =3D pci_alloc_irq_vectors(dev, 1, 1, PCI_IRQ_MSI);
 	if (err < 0)
 		goto err_release_dma;
=20
--=20
2.17.1


--LQksG6bCIzRHxTLp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8S+twACgkQ+gRsbIfe
747C9w/+N/0Qx9ZzK/dQGEasiWXA8l34Sqz1DL3FNxdPoCWAOC/zgQclA4BQWrF/
hhfOcTJWPN7BbZigR57pWzHdAw2mCnHGFwS1IsWlY8UadYlHK6G5zkP8cxf0W9m4
IKf550lcnd2D3Q3PUI9oZIfO+lBe5f+2mc9nagcP2PSxJbcv2xMp7CTFA/NPz/Lh
BRL3bIxUodVdKu1X7GTwCR1OhqT8SY8Smyi5r2pp7QvPvIAk4FgyY78n4yBBGkvk
KDmu46uHVHqn2JMzYvKPR3l32OeXsLVMtlABnpSGeO20RVWIZUmsEb215NYYTG+Q
vpWv0+JkhsBZJrW5BcaCRj0dZ4KaVqJ4iHR9t77ZbGuu66BMw2szenbddiKfm8ls
+skEdCMsZjC6kH9RiRa7i/+6RueTr6rWu915ty+pRCEyLCsO1XDmZVVMGhkj2gnr
W9EDcOzYFcHbH0WobOzyBnvD8iVCeXowjYKDZgLMCO5VUknCIKauaQOmi4is13w1
Cgv1RQJK3IzZ3xmZcdaHt3BPcDrZe3KKgLORYUwTMxJ2Ba/FvDpDQeRi8t4CFMW1
6JJP+arDwU4ygwnI5nxeLshbIktS03LaxVz1zNtlLDJY/3EGDJMN3Q3JkpsWvNsH
NS+9kn6ELPx+PWYlM40Ggo0gBt/pL7JzrCNR8OuEFbPcemKdJZM=
=zo+Z
-----END PGP SIGNATURE-----

--LQksG6bCIzRHxTLp--

--===============6623673981829400919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6623673981829400919==--
