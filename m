Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB6F20BEED
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 08:08:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D03EC25784;
	Sat, 27 Jun 2020 06:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bTOCD-Ccvu0Q; Sat, 27 Jun 2020 06:08:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 45F12204BC;
	Sat, 27 Jun 2020 06:08:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 71F4C1BF418
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 06:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6EDAD86EB3
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 06:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n8r7HQZc5q1f for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 06:08:08 +0000 (UTC)
X-Greylist: delayed 01:16:11 by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3AE0786EB2
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 06:08:08 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id i4so5841299pjd.0
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 23:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=gtmGpW21SyNiDgvXMh+8DiMIETkQ9kJybZA1frDwgbo=;
 b=pDNCTrB3ZFp49fu1m/cIDeOovHxi7U2+qFg3Y1RBH1bVnUf4jiE4QdPPtF5aT9cuDs
 5Y855FtE7yLDZrDbsrqVZlk+PLkC1bkU1WxXdm1yj7u+D6efBtITTOdp1iJJIiTxG3FC
 uRLHn/PNBZwwZG1fbYA1WBy0xHVWLDHfY4RbyczyvfMCmQVGahZ1OZ+ftk0ZSZd3KQre
 LBsrRUdVl4ZXr9Uao4E2lHEBSwm7gqqlOI3yzD/Va2VLn7fNTkU5S+bEKWJMzL4iNZS8
 /miqRlnZHNXhHe6/94aUYx5Kyq+jNsnGQaCMrblKS5Z3vnvdXnuhh0lFyhwD1qYEcvBF
 KbvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=gtmGpW21SyNiDgvXMh+8DiMIETkQ9kJybZA1frDwgbo=;
 b=pRsRfKrdTliWeoKcjQY9rZ5t5v0OW1RuWv68yYqrKyhqpnwKNRykvrVUn6eNF6gnPW
 8UEYd+FzAS0PSoW9p+ftsQlwkIrXALf1RQXp7X2o8IteOAqREKN3atN7FySt69RRgpAa
 WL1iVWaAXzSTaskoRv7cPsQPDZZyKi2vrNOtRkSAeHSpU7BPqrKy3bG6HhLhOuFjSzME
 3pik+J1LHiu8MZdy0mkjwYlIYXJr77Zz5fBXs0/n4Nj67gOUppDeMaUaR88UMyGPbL67
 HSzAd3coTRUQxUg3VkqRdECLzg8DCSS/Aq1e0b58lYWfrNVN1/OmHLyrHFfSmTBMyZ+H
 olMA==
X-Gm-Message-State: AOAM531ZmTXlXbb/bp0XgS0j0dEpHzyFulv7NM6XNF8yEUgRNmHBDskT
 IIuRoSZqwWe9uPF8UVQKKsvDR6+QYZxPpQ==
X-Google-Smtp-Source: ABdhPJzOj7jeZpv1+qG45pcMxryGt8tD6hrSSPeZ1vjoz3D7oBfTKsDKIdE57PLoNbpgdqliPbyhJQ==
X-Received: by 2002:a17:902:854c:: with SMTP id
 d12mr5535900plo.343.1593238087725; 
 Fri, 26 Jun 2020 23:08:07 -0700 (PDT)
Received: from localhost ([2406:7400:73:59a9:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id x17sm12623639pjr.29.2020.06.26.23.08.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 23:08:06 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Sat, 27 Jun 2020 02:07:58 -0400
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] qlge.h: Adding the missing blank line after declarations
Message-ID: <20200627060758.aqcqs763rjoxn6cp@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============6928252500014799042=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6928252500014799042==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uc3xmhwmmyrchpyj"
Content-Disposition: inline


--uc3xmhwmmyrchpyj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/qlge/qlge.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index fc8c5ca8935d..0b971a633001 100644
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
2.20.1


--uc3xmhwmmyrchpyj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl724j4ACgkQ471Q5AHe
Z2qsiwv/ePdacbSqM7HjdTGbMfaQorE4XMc5+PfBqp9J4zHmenJXvSWW5dBhoS3r
PikmkdGfXpx95NW4V9i6FKWvikrMv/4wSwhkA9IwzLX8UXm/hK+qUBd8axHf2lxI
TQiqvIZYRi29CveRcxedUk1ABBARBCG4ULtleTJ6SSS8ISWUGRFek52FkKaoM0Pg
eHQqZJvBo3bQjpZdq4337knL0Xt3la1ZZxfz8ku6Ihd3CcQ/qa3Sq+eVzPtr/qpG
E90WoWBKMpjbyzjPpcZymW0nEHroIvryPRCUdGYomoHq+ep+VllFAxANTlOKpS+z
UnylebC5mFe8YZsvleF4Sj5fR0VUp8q0NIqCfnEQdhdESn5hX5SfutLXE5hcWOhI
l0AzFcaknLaTUXAHPfJ4vsQaGaCS2yKal07y2y55urwe7Vv9AnbZAjg2ZF4AzVRm
gRJfNEToUoYSFP7MAhQu6zLvToI7m4Mu6XV0yfKPX5c39a/7p68WaBGNrzN+Ybaa
yy7DoEiq
=35Tf
-----END PGP SIGNATURE-----

--uc3xmhwmmyrchpyj--

--===============6928252500014799042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6928252500014799042==--
