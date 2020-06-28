Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEB120C5F4
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Jun 2020 06:38:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A90D62153B;
	Sun, 28 Jun 2020 04:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3b+AZm+BXIUM; Sun, 28 Jun 2020 04:38:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1B2DD2012D;
	Sun, 28 Jun 2020 04:38:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 76E801BF282
 for <devel@linuxdriverproject.org>; Sun, 28 Jun 2020 04:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C45B2002F
 for <devel@linuxdriverproject.org>; Sun, 28 Jun 2020 04:38:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kZG5Pqk+hI7c for <devel@linuxdriverproject.org>;
 Sun, 28 Jun 2020 04:38:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C6D51FCB5
 for <devel@driverdev.osuosl.org>; Sun, 28 Jun 2020 04:38:41 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id x8so4905748plm.10
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 21:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=HpMMZYRbzQ/bcdlkqQv+0ue6DbtFqUzMKo2iWLbzeLo=;
 b=CzI1RdSgDpgduvsNwIZoh/8jkiOyCbjTIWeVQhjLWnNWcF3W2lnJMXg3/XiCX9PbAJ
 PIMUbRTsUruQyMATe+jlNCQCmChUOfjKnCx2Ww1ILhip/iE3fL21if3CvY4CMkLYo84S
 mW3sWo5fB1fVS/bxWPoYqOh6Y5dXfGw8cnWUV/C1Cda4KVWEjgksz5Rrw+Ht52aAxQVe
 PBtGnIMPZ7mL1/cAq0jEvfTWnDtw3cIo7rkqCTPysBjYwtbq/nxKl1XCrqOkTH9Va3jp
 rBsUkjTpL0ndN4+k5GWDacYqQoqWxq4CtqZVKez0A7RdihYiVgWWqHKEiZgo9RX4UXpN
 95Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=HpMMZYRbzQ/bcdlkqQv+0ue6DbtFqUzMKo2iWLbzeLo=;
 b=pJ1/MdnX+bXljU63jn6Tj2cuf8CcwupJ1OsAGih1yndIg6pRWP4FkZhO1mHSw1ldrE
 Awu/8Y4qpHw28XFOfzUV+sCjNjBhl6Fa+5S/y32THwCO9KN2NA2AvboBHnEvXVYPRRcI
 v8qmI8EicifZPE1DsYniuL8efRcv39cLLLddQnhn3pFccZo85XFxNpz5dNuDTW2BLOcw
 uSwmDC4kcTChLpVAp734k4nDF3JQrArWBtodQmwzxaoBSdYbvGlD7prw59K3t4G7JHJ0
 zx0xvBxPn/z8+Jyyy+XU0lCUO3Ad8AiBrcxSF45IV4DTodKmt8VYgC+OrSD8s4D2ooTm
 +lLg==
X-Gm-Message-State: AOAM531Rkx7Yy+/GoF6PMwWeiL3tdqIG65w93kLWsaptcmTwmOXovOsQ
 kPxjzaLuXYVL3FZe+RFARoG7jw==
X-Google-Smtp-Source: ABdhPJwqyisUZBL/qB5SDxO8FQpoVPLJsZlI7dCcD5F6JQ1ZePzGnIsmX7YpJ3dqlmE3TeQt9X0ekQ==
X-Received: by 2002:a17:90b:3448:: with SMTP id
 lj8mr10880938pjb.163.1593319120296; 
 Sat, 27 Jun 2020 21:38:40 -0700 (PDT)
Received: from localhost ([2406:7400:73:a66d:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id y200sm4521437pfb.33.2020.06.27.21.38.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 21:38:39 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Sun, 28 Jun 2020 00:38:33 -0400
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: media: atomisp: i2c: atomisp-ov2680.c: fixed a
 brace coding style issue.
Message-ID: <20200628043833.3dodctrmkec6aoe5@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============5843173707376042365=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5843173707376042365==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="j63puneg2vpssyww"
Content-Disposition: inline


--j63puneg2vpssyww
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Fixed a coding style issue.

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/media/atomisp/i2c/atomisp-ov2680.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c b/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c
index 90d125ba080f..c90730513438 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c
@@ -495,11 +495,11 @@ static int ov2680_h_flip(struct v4l2_subdev *sd, s32 value)
 	ret = ov2680_read_reg(client, 1, OV2680_MIRROR_REG, &val);
 	if (ret)
 		return ret;
-	if (value) {
+	if (value)
 		val |= OV2680_FLIP_MIRROR_BIT_ENABLE;
-	} else {
+	else
 		val &= ~OV2680_FLIP_MIRROR_BIT_ENABLE;
-	}
+
 	ret = ov2680_write_reg(client, 1,
 			       OV2680_MIRROR_REG, val);
 	if (ret)
--
2.20.1

--j63puneg2vpssyww
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl74HskACgkQ471Q5AHe
Z2o3zgv8Dymrr9Re3CvjBKnfHsbHRE4sqJi/Ro6tYF71Lt7ivGvG/ifDyn6YM9wX
EMHC+KIxMMQHfVdcr0hf+2F7EhU7NkbGKGtb2ONJduh91V7jBNlTyJBX+itlGjoy
ZPMYuP/H7LVoxGMltlHzWrYJxOeCWnzdUzE7HQmSfsXwa9AhEPNILN/dNaYf16TL
lywM6qwwDWwezqK5MVrSLWrtF5pKT3mz4ziR3YP0UoNrdb87Oc4aFleqJLrYCCFe
rPalVYkBewnjL8kj2hBtxKWLn85ycZyR9zTbPdh55qVTiDJJBm2sXVCjeZuu8dwa
n4FGQFRdv6qwFbUaIQafhSwE46f2WcLockJa1/h4udXOD1uy3TCDBPFJ6siN2/ay
Xb+aV7ugY7vAtl4ZN1i2eAnbTN4vZzh2HifOSbMV0nIfBJ9AgwWFMNMXvVn/lrPD
fv1Lis0rQE84odycbWHKUHW4JiO22TEqNyMMmsAlHa457Dv1YWrE6bUyuRcA10Vt
CtnwnGzt
=1LYK
-----END PGP SIGNATURE-----

--j63puneg2vpssyww--

--===============5843173707376042365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5843173707376042365==--
