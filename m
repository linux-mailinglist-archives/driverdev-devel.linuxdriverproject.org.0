Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F59C21D59F
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 14:16:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E8BF3260C5;
	Mon, 13 Jul 2020 12:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xmOCg7fj1TKL; Mon, 13 Jul 2020 12:16:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 596AB25C83;
	Mon, 13 Jul 2020 12:16:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 283681BF3F6
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 12:16:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 11D9425C83
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 12:16:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oN6y5XwX8Al3 for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 12:15:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id CD520203C2
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 12:15:58 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id g67so5939511pgc.8
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 05:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8Bd18iG9vCcX0nUpR3BP+ydXyAf6vRysHhu6KUZ92qc=;
 b=PYbQPk6ScnkaZ4g/BA4ZnrmiKRDnyFP1vGNS51TnxTLOaf/FhXfGQCPiInMeMhInUw
 YWGPgDiD8owQvMxBBSP8JfZGshWG4OhVT7bTlhkY/dvIrMzVYsbEHdSOOi4cQ9LqIseY
 VkmdUczIMpynaZWH2CpC72K8FL3LPVFRwG0AKrDfrRmg/Vix6kPRhljczObw2Gjh+0p/
 VGKMuMKdaVXs02GVks/+TqVIG/Kln1w5RrYwjDa8eCt4+N8mvc6YU5NT3393qDnEv6s5
 JTy/6KjGc7TlEbjpQltup3qWFFsC5oQoJka2nLLTPSHH0KZAocKSj2jvQ8i5armd4nVt
 YhYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8Bd18iG9vCcX0nUpR3BP+ydXyAf6vRysHhu6KUZ92qc=;
 b=Zglc1XHzZeb32i+5Hr12sc9iK18cp7EoJghEPZwb0S0JsXfDIOOKTq8Zux4+38Fxoo
 dSLLC4FQvo9UwDERsRK6f3/clfOhnQoCJF6yfGeYjNg9PchsD/J+JTq0Owj9rTnOK4O0
 67SeDRR+Vn0V9jYyBe2aEQNVXAbBkCzBoAzwfW2u2SSW3uUSxLryWU+0L3SQp0ccwJQT
 pcdqs92HvhvS2Z+l+mrRj2Yd/jkBLoJavB/kCCvLNcSljFQJc0M5/j8e3N9O8RTsBjE7
 m2z8Py185CpZVDzF2iUR1/mA6OU5JUOgTVJp8h3/OGFDQ3gVRtUF7m3fVfMqC4YgMJFB
 8kYg==
X-Gm-Message-State: AOAM530ioZFC13ret5v5ZpMn1xz5r3lnlzRFTyXBxNqzMjY0XfO0Jcie
 x/nwY7OAvAyW5xYda0IJxUU=
X-Google-Smtp-Source: ABdhPJyJRRXa0cl7yhntHQcF3oG/uPqhQK13oumMobVmU8Mqr++7rCVUKqBoOrNVCddrm3coSm4lrg==
X-Received: by 2002:a65:5c43:: with SMTP id v3mr31606569pgr.214.1594642558445; 
 Mon, 13 Jul 2020 05:15:58 -0700 (PDT)
Received: from blackclown ([103.88.82.220])
 by smtp.gmail.com with ESMTPSA id s6sm13986189pfd.20.2020.07.13.05.15.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Jul 2020 05:15:57 -0700 (PDT)
Date: Mon, 13 Jul 2020 17:45:45 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org
Subject: [PATCH 2/6] staging: qlge: qlge.h: Insert line after declaration.
Message-ID: <d14343ed4ea3d4428f93a63bf1f52804ed5938e9.1594642213.git.usuraj35@gmail.com>
References: <cover.1594642213.git.usuraj35@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1594642213.git.usuraj35@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1697043856814475791=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1697043856814475791==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UlVJffcvxoiEqYs2"
Content-Disposition: inline


--UlVJffcvxoiEqYs2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Issue found by checkpatch.pl

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/staging/qlge/qlge.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 48bc494028ce..483ce04789ed 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -2224,6 +2224,7 @@ static inline void ql_write_db_reg_relaxed(u32 val, v=
oid __iomem *addr)
 static inline u32 ql_read_sh_reg(__le32  *addr)
 {
 	u32 reg;
+
 	reg =3D  le32_to_cpu(*addr);
 	rmb();
 	return reg;
--=20
2.17.1


--UlVJffcvxoiEqYs2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8MUHAACgkQ+gRsbIfe
745RYBAArLDStnRrNs1xqDmmdNjPhVZIoGicIdNlVVrpmanuab3e5V36Ey3JlE2D
xk1NmfPNHTh1OwJylsAJA/CyRUDU+prtrIdoAMkkGsuxH6tKv9u8XeWXkQW6aO9p
EHRsqF+b1CMSz9k9ZAPI05ctRCJlXwaGMIkg5AJkjTni8pOVzibPchXJt3GmnSjo
roWck+1OkwWfxT9D4MXVYNncJx/ztiwfGb+rdWRhvWbi4XUU2d+5n+5SkV7gz/71
oBrpxwEf2GP5u6iHmY9F0YMMGC0HxDX7GpMeiNoRQiCHxCiKvyWT1PeFpRZ7wBPO
BwED/l0kPMeGT+1E2YsJCouLbZ9/9VaHBibL1SVous2/vyfa0ajXWU5keQhIDZX9
UmvdBw0xLCaYOKfYhmsAzIOSsG1DnZnGSNz3ND4QLvS6vgA/Y6iCzrLLZCWOHaFo
sSEdQi2iGfNp9qb6qRQ1l3nvZj923KdkbbIkGKJ8Gv3dKJAXhK5yKe2NnAf1bTlC
jBvkmRD9NWHSgQ7NcvEOWbvG/XiXwZkAfaZ/OBrrmz4d12u7r+K2X/SsMRQib4Vh
b3XAvIXLI/6y4cJg0XGhWvf+xH8hIYsK0olbZWG9KLGiMgvzL0sNikzy2A38+LoO
p1J386gnLtIiWis1K1UBtAKWXRqx3kfVztnWtGxsW3LgOk9Sq88=
=zD9S
-----END PGP SIGNATURE-----

--UlVJffcvxoiEqYs2--

--===============1697043856814475791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1697043856814475791==--
