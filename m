Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9515A20BEAB
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 07:00:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86B0F87358;
	Sat, 27 Jun 2020 05:00:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ax3nG7wPP23n; Sat, 27 Jun 2020 05:00:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3733D87313;
	Sat, 27 Jun 2020 05:00:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2CECB1BF20F
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 05:00:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 29E9687313
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 05:00:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9o5zu9iOQpCP for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 05:00:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0D94C87330
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 05:00:06 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id e8so5906172pgc.5
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 22:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=2m5JaK8rotSonwx/sP/f5LHubDWMPNymxIpTxYlUo6A=;
 b=HdfxoZlWJQlGoozkGi3XYW/MiGAw4euyHjR+e7WfgPMw4zz7LBb41nC1qVtih34Ur5
 hjqDXgcA4iJ+/fBCVjwza6b9MLdjCr3cVosVUp+58OnQbYqfiCIV0GAYT0Vl5knrZFyH
 KIs4SYsGgUqG3SKmHTefnx5j1nrHsmYMlVrwzfpXZnhOZBon23SQUixaExCdhWp7v106
 SHnIOxAi2phCuEUz8VxTz3X75sbCPQpi1YMx3MuhPIwwOPPy5VTeCyf+RYpt8+I8EAk+
 DzxPZqDVcw4JDutORo9PvNVEWKEPsXRm8d94LgzyCQQAnuOramTHpu346Ii8zhHeFD4y
 Q6/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=2m5JaK8rotSonwx/sP/f5LHubDWMPNymxIpTxYlUo6A=;
 b=qQZqjjHQmpM7jtOZZbv6ruQT2s6hh3wNUfUOWjx2dBuqMWhim9WcLfS2YcIblbmKhO
 jSbuOspDU5tOTj+OkLZswm3KyAxGu/F3W9AdlGEuN4F27caDRmi7T214Pe5FunVNkR31
 ZsavJCDJiHe+yWa+t5XEDk3dNF4/5c0OYJ4eJNHGykvj7+z4HY6SDhVu/AKWRP+CFebp
 yVLh9SlDtyf3b+fY1ro4LEmAliCdYPdvsYZXy+kwhpAdbgnORilL2vFbgF05XqBZquqw
 ZE6FEEE48K/56MmsvZYta5FGxJT89GzgXf+4uWyMRecodSt0GMP0zgWBHzbqBtnQboAR
 yijQ==
X-Gm-Message-State: AOAM530ysiHGq1AcptBBLtp3loX/76X04sICiXQDulFfuIONkPlAHmQ8
 dZy/9hv/eoqyB6Ynk5vdueGirJFYMFf6Kg==
X-Google-Smtp-Source: ABdhPJxHyMwtOzx+gAvFq1xBuRoB6v6iA5rKjZad34+AZjGjKrJ6P0JsrDQTjuK5Sur8logNECvRNw==
X-Received: by 2002:a17:902:a585:: with SMTP id
 az5mr5227052plb.207.1593233516708; 
 Fri, 26 Jun 2020 21:51:56 -0700 (PDT)
Received: from localhost ([2406:7400:73:59a9:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id t5sm5499821pgl.38.2020.06.26.21.51.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 21:51:55 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Sat, 27 Jun 2020 00:51:50 -0400
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jan Sebastian =?utf-8?B?R8O2dHRl?= <linux@jaseg.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] fbtft-bus.c: Removing that prohibited space before ')'
Message-ID: <20200627045150.ysqvd47o52f4a6rc@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============4051060912779272269=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4051060912779272269==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t7rr5fenqhwyb57p"
Content-Disposition: inline


--t7rr5fenqhwyb57p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

fbtft-bus.c:

fixing ERROR: space prohibited before that close parenthesis ')' by removin=
g that space and ',' in line 65 and 67.

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/fbtft/fbtft-bus.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtf=
t-bus.c
index 63c65dd67b17..847cbfbbd766 100644
--- a/drivers/staging/fbtft/fbtft-bus.c
+++ b/drivers/staging/fbtft/fbtft-bus.c
@@ -62,9 +62,9 @@ out:									      \
 }                                                                         =
    \
 EXPORT_SYMBOL(func);
=20
-define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8, )
+define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8)
 define_fbtft_write_reg(fbtft_write_reg16_bus8, __be16, u16, cpu_to_be16)
-define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16, )
+define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16)
=20
 void fbtft_write_reg8_bus9(struct fbtft_par *par, int len, ...)
 {
--=20
2.20.1


--t7rr5fenqhwyb57p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl720GYACgkQ471Q5AHe
Z2qzmAv9H0yKGQeZE/+LG3U87JdxsfJKO6l2V+1+Bqb4T+jrD52zcitgEaKaPkMd
y5JqgAPxpFk1YNpSFbw+j4xsa36+TFKGYIDCuPIPmYhEtUfUG1Aj8roQPdqrs2Ir
oiGfJ293xMBp1GDYOMAAdB55BWNGHGiEgJ1GG++9AVSXz1Nm0R9SIJwPddoPq9yA
Ez+tYms6eNVfnk+CVEpsEjhUf6rk+WARb+UgfJ9lxzebU1damViQda/naEiIOPm5
MRt1V5PUUZcYYlGsrisCbc8DhTrMrD82j/j3uKyS/3Wm/+J39bq7WZO2t6kDcl9k
2vdUFUinO9szZJR9bfEbsZkRVZzkv3j5Qyqg4Sur09vy04se6JZWod2vTBaepnnx
vulIXywLvtsnfyZLVsBsRPit8zyO1BI2P+o1T+NRjfQKUuvkmzChmGt3DanuvGBB
Fop35oDLMjcbK/KIH8lQGXzt51kpQ8M5sCc8DAWxGlGJFK7h0bVUnOe5w/3G1S5G
YWNuuvZC
=Tfl7
-----END PGP SIGNATURE-----

--t7rr5fenqhwyb57p--

--===============4051060912779272269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4051060912779272269==--
