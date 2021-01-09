Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 534CA2EFF53
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Jan 2021 13:13:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A35C58750A;
	Sat,  9 Jan 2021 12:13:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AhWFT6huxz0q; Sat,  9 Jan 2021 12:13:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C936874C0;
	Sat,  9 Jan 2021 12:13:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B6B731BF2F5
 for <devel@linuxdriverproject.org>; Sat,  9 Jan 2021 12:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AFE4186D81
 for <devel@linuxdriverproject.org>; Sat,  9 Jan 2021 12:13:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fKfj86rK3V7u for <devel@linuxdriverproject.org>;
 Sat,  9 Jan 2021 12:13:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EF73B86D4E
 for <devel@driverdev.osuosl.org>; Sat,  9 Jan 2021 12:13:52 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id y12so881216pji.1
 for <devel@driverdev.osuosl.org>; Sat, 09 Jan 2021 04:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=zctrNyZGNRXLLOpyzhP9Lk7+QAPBbJgpD9SsDuS4des=;
 b=hL0JeNtjtg8dLCHAfWnPsW4hRMEPCLiV2gLD8rX2CpivUSriIMbUyJ7aavOZ29TAS0
 zMEqYpObsL1hUN9A8RsN3mWAQGDtY6jKQsXwrRlYQexh3wg+5YQyo8dPtO8UUvFY9vU/
 lHkjYqD8GvnLB42C3rreCWh7GPwl3EZbwJ3QLTOwZd9efOlphNfKAxGmbegBLTi/beuc
 d1Pl1xDjMVMybYtZ5AWP+q5KqTnRqlfh/U8IU/x5XazI2UXkW1jLwqswn54OnfAZEMwI
 811PSx/O2mWD0lCEWp5w+ZcTswMIjXFtqxnPsleiBNtmjMZMteZKjor5Wz3VGCmuVtRw
 q1Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=zctrNyZGNRXLLOpyzhP9Lk7+QAPBbJgpD9SsDuS4des=;
 b=k3Zvj7dwi2vWvpTEkqNj+waGPp2L3m+lqJpoeUK1W0o1SKhobzyxAC7vBSCSGLOVuZ
 nH02TyA8gZ8cn/juPdFhWKyk7fW9XaLNU+dPFGFFJ1ON1XOz17mcPjnWxQe2Eo4BKf3s
 vACr8gY7ighZwmnBkadP6NBitSEzKamUT1c+45peOM/t41BBtZhG1YcVmqNT1nvLGtNt
 YKkzLoGy6kbldf9gGkX1U2AIKR4kj9w3vZ0PdAhqVUJBegJUpfYV2rUF3QQPCqYyvP1x
 97wFfHJ1rBUgQXu8ULfrGqgXuMjcaKSHA4THnm6TW8e5nCkQXvz3dXPBcM0oGzJs/ZND
 7phQ==
X-Gm-Message-State: AOAM530aDuADUFGqtLGAyahlXP5A/KaiJQnCrKK8Mu33JiIXsh8Ym1p7
 mCh0fXXk2ZS1JYE418P4Ku4=
X-Google-Smtp-Source: ABdhPJyiNs/So4oCQvhV3GtWBG4CWOV4A/nDoh4W8LIPRbOqFzQZVT3kmCWWBGdZBdxpck1qlt+d/w==
X-Received: by 2002:a17:902:ac98:b029:da:cd0f:b6a4 with SMTP id
 h24-20020a170902ac98b02900dacd0fb6a4mr8378468plr.71.1610194432580; 
 Sat, 09 Jan 2021 04:13:52 -0800 (PST)
Received: from localhost ([183.83.253.110])
 by smtp.gmail.com with ESMTPSA id r123sm11963982pfr.68.2021.01.09.04.13.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 09 Jan 2021 04:13:51 -0800 (PST)
Date: Sat, 9 Jan 2021 17:43:49 +0530
From: Sri Laasya Nutheti <nutheti.laasya@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] staging: media: rkvdec: rkvdec.c: Use semicolon in place
 of comma
Message-ID: <20210109121349.wuf7xpkqicjadlnf@nutheti>
MIME-Version: 1.0
User-Agent: NeoMutt/20171215
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
Content-Type: multipart/mixed; boundary="===============6266827541157020186=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6266827541157020186==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zugsqpbzv55qcogp"
Content-Disposition: inline


--zugsqpbzv55qcogp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Line 146 had a comma in place of a semicolon. Fix it.

Signed-off-by: Sri Laasya Nutheti <nutheti.laasya@gmail.com>
---
v3: Corrected email recipients
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/=
rkvdec/rkvdec.c
index aa4f8c287618..d3eb81ee8dc2 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -143,7 +143,7 @@ static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, st=
ruct v4l2_format *f,
 	memset(f, 0, sizeof(*f));
 	f->fmt.pix_mp.pixelformat =3D fourcc;
 	f->fmt.pix_mp.field =3D V4L2_FIELD_NONE;
-	f->fmt.pix_mp.colorspace =3D V4L2_COLORSPACE_REC709,
+	f->fmt.pix_mp.colorspace =3D V4L2_COLORSPACE_REC709;
 	f->fmt.pix_mp.ycbcr_enc =3D V4L2_YCBCR_ENC_DEFAULT;
 	f->fmt.pix_mp.quantization =3D V4L2_QUANTIZATION_DEFAULT;
 	f->fmt.pix_mp.xfer_func =3D V4L2_XFER_FUNC_DEFAULT;
--=20
2.17.1


--zugsqpbzv55qcogp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEXx10aON5ycvuBoyzehMF4uTokeMFAl/5nf0ACgkQehMF4uTo
keOvJwwAkBRovj9NfA2rSfBazuDwku9DOkGh5se9ma/zz7Lcs1iva7OE+p8HG2/e
m0SP+kH+mdKJMt2oxLwHfSNppCE+n3YImInVgkhnOT86cO6YQRGjcy/ONHSFFWVW
YyUSSMKOgAtPweSoeo2+cQHg4v2Pjf4bajgfqArXSel8ayhWgqJFB1cyxUwtekxl
lhG7vfOTUk2c9ySJz+T8uKQnWkxg6dzrSgHfCh4Ho5ylwKMRos3KtsG9REI6Uly4
qdGvMmfkOShpPdhYZq00ZMrTzZ67JPqPrySBjdtBtK6zDJnYZZfO91GgRsL+AmLT
fVuGWrd47JwuIOwnVabKQHZYdu4J2EnbH6t1unQRYIhHx4Illd7XOxn0KYCd1QbV
U9f+JcAIkHu97NNl7ZhjtJwoiCewwzoo+Nm0RqooHXZ6ZyXRcXr7k961n6UHtjNE
JXBEGLkA3LVojJv3tNcPNtin4sRpKCceaK3iBWE8UGqDXAHHnk+4TNT3cMHXFYAa
5CzjVree
=E7I4
-----END PGP SIGNATURE-----

--zugsqpbzv55qcogp--

--===============6266827541157020186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6266827541157020186==--
