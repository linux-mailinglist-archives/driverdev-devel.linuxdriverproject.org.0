Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B2720B39E
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 16:32:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6F955248A1;
	Fri, 26 Jun 2020 14:32:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w1SGHfvUEsSz; Fri, 26 Jun 2020 14:32:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 90AE820360;
	Fri, 26 Jun 2020 14:32:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 51AD21BF3DE
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 14:32:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4B7C62010E
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 14:32:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ZDH+qW6nRIP for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 14:32:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 4A1AE203AC
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 14:32:14 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id x8so3448522plm.10
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 07:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=GKpkeXKWO0/iDRkI3q+gRM2gA+nsT7NG+tuZI+pAMYk=;
 b=jV/dxvtVMQcrfjcqcVVv9uXznboRU3/s79VY2/M4aoMhDnKykFxMlGw8Xzjziq9/BZ
 n8eFNGk41n8LQKrYlMlPT+UnKoR7wzOMCAHbsCJu/8Da7gUsd70JQjUHoMKOfUY+ID9P
 8fQ5XwgrDVoGtws730S5vRbPWks+ZurBnfGK6g4MXkT5JsDmVc9+PTBwyfgfg/JUESTV
 9ASG8Y4TLo3B64ybtBO7CSqa22k54VxE9afF+ZLW3igIoPOrb/QsilDPpB1P7dRsSpDm
 KZqyqTQaMmLi2shuTrSciE9MnNqc8IQNgB+h/RmAJCPmWwDW/n9IM4mR4/gRXaWe/A3P
 KpiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=GKpkeXKWO0/iDRkI3q+gRM2gA+nsT7NG+tuZI+pAMYk=;
 b=ds6e3TlWFErq0q0puN9QzTgtpxCeVNqixlrot0YWJ6YzzQhYdM/rmUYWYYfUIZZphm
 Zl7fR+Jx+VgfjaUqRvPmQ5CpeW+xeQYMtGOpavN9SAqq76LgeF/MF5DSQPjwShQ/N4Dk
 qMB6QPdtjmOkTZ43grGIlrPKtePn+NDvogFo9/g3ZKbgD9troscWEm6zqhXcz6nzlpOp
 9HGwAyddGzuX70kVOCED3cmS2rxxZxzmfeuPiGa2ArCCc/Z7iTZ4Sw2lHgKpM4KuLWvU
 yePoZInqtZ6uq2SgNOM9wWdWNeYCREymsfzSvgfjhhC4muIKPsBVQJsFYXKqvmBjehuZ
 qcyQ==
X-Gm-Message-State: AOAM533n4d6Ff9xUvwoM1tkrqhg3IPXFAyoorpLC+0TORTCgSMQubejv
 L70jVpsMypMhcChZx6i9SSqUkDm3Dwso1w==
X-Google-Smtp-Source: ABdhPJwPdgnkxqxpQw98XN7dwymyUdzZYUz1a8GyNPp65VYN6Gww16MIcnFmXN0iHxPz98RnvJfBlg==
X-Received: by 2002:a17:90a:f014:: with SMTP id
 bt20mr3855879pjb.135.1593181933623; 
 Fri, 26 Jun 2020 07:32:13 -0700 (PDT)
Received: from localhost ([2406:7400:73:e1a0:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id g17sm11640913pju.11.2020.06.26.07.32.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 07:32:12 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Fri, 26 Jun 2020 10:32:05 -0400
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: media: usbvision: removing prohibited space before
 ',' (ctx:WxW)
Message-ID: <20200626143205.xns6nwggskssujao@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============6392570539890578645=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6392570539890578645==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yqjlajrqt7jpyhif"
Content-Disposition: inline


--yqjlajrqt7jpyhif
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

fixing ERROR: space prohibited before that ',' (ctx:WxW)

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/media/usbvision/usbvision-i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/usbvision/usbvision-i2c.c b/drivers/stag=
ing/media/usbvision/usbvision-i2c.c
index 6e4df3335b1b..010ad03c6ec1 100644
--- a/drivers/staging/media/usbvision/usbvision-i2c.c
+++ b/drivers/staging/media/usbvision/usbvision-i2c.c
@@ -32,7 +32,7 @@ MODULE_PARM_DESC(i2c_debug, "enable debug messages [i2c]"=
);
 #define PDEBUG(level, fmt, args...) { \
 		if (i2c_debug & (level)) \
 			printk(KERN_INFO KBUILD_MODNAME ":[%s:%d] " fmt, \
-				__func__, __LINE__ , ## args); \
+				__func__, __LINE__, ## args); \
 	}
=20
 static int usbvision_i2c_write(struct usb_usbvision *usbvision, unsigned c=
har addr, char *buf,
--=20
2.20.1


--yqjlajrqt7jpyhif
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl72BuQACgkQ471Q5AHe
Z2pDagv+PATulRWVHbym5HqDKtCQ4CL05+yOdlD3xp6SzMjbBVhHVC20gEDf//cb
NDNUriJZSVyS16k/PEDmbMKC3wuuclKzLKwBBxGWQC4X9Y0jKEN9oO44gdFmSrED
GvqMLgfRiQSCiVqmkUeKiQxAedfA+Yx7gJpRI8t6HsKF1RaDvimq5iH2ru7BVx9K
TcZ5weEujvWVjsliZGO5+EEnX5Zlx2by2JpLHcsOzVFecCB9YqvYVFBXfLJOmW1H
9tVuPoIt2mme3lu5HEK71pUqjR/M/NoyobwoKpkC+zH4Cf/9nl72eEjbHzJoC3pX
o42J9+yeGVzWdywIH090qeeiTfcdb++hrFutlMFYJ5enB/pWO5zYRHF/0irompAW
y00L9i4RJR4ynHAQ1A3SWhzGlXxzOx+ntqfZ6cSiGaitChwvl4KjuskTfYcwZfW+
xL4Z8rzYFU7GQXzlK7TVOGGZ9wzveyFUhaUI8kftnwhOeJ/mry7vdu/fiqagQesK
00mlR7Aa
=DJTk
-----END PGP SIGNATURE-----

--yqjlajrqt7jpyhif--

--===============6392570539890578645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6392570539890578645==--
