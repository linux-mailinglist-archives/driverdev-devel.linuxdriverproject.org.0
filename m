Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AED2220AA6D
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 04:23:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D76A86DD9;
	Fri, 26 Jun 2020 02:23:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KnFZAX07GOCx; Fri, 26 Jun 2020 02:23:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCE0386DA3;
	Fri, 26 Jun 2020 02:23:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B00431BF2FD
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 02:23:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A560787FB6
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 02:23:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rc2JmFFJcSXA for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 02:23:13 +0000 (UTC)
X-Greylist: delayed 12:32:12 by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BF2E587D36
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 02:23:13 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id u9so92435pls.13
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 19:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=C9cKwuo46T4OQrYiN0jf2d+XY2/rTSOAO5/07IXErvU=;
 b=E9IDCNPQpqP3Bmq1JubBLUBuabW2Gp9yfeXWaGS+Ca3o4tXDoyzU4KFTn9e5GBXiob
 HTiI7bkgOza+4JTxAFlf2i4AG6AAsWbVulxePySyjzKh1U9Oaw1/khBoxjd1yLp7SiH2
 wYzmX2dCzYNHF/7+kBx7F4UTgl3Dx81kmsJF8V4PZqvhVCm4SbomesBNboWU/slBlY4E
 /coqKN+MZbwGG1W+pmAHtiahyNhySVmNL6IL7bAQHBl7Do/HK0ZKgRJfjzm3Y1wIovKs
 2MDa9nlofzzLGl+jNQIt1sXdfZQ8yipLNuB/xLWEUlu60tg60WYfVRg1T59c63AbSSg1
 +qvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=C9cKwuo46T4OQrYiN0jf2d+XY2/rTSOAO5/07IXErvU=;
 b=c6o+IeGhJMkYon8JRTLRL2vSw706ADBq+YzikzWUC8dprcVaaNAJ1avTnVVnaxvdJK
 eTSLMxmKVzjK5v7RbM643gDJ2m40MIMAu22DVSxjDNYN8AOGZhvhtMWS4BoR7OHoJA6V
 OErg2oVnz8sYh/KO7/z18pNV//j5zJtWCNto0zSo+Q2vf0Z08f1+rkBgK1CPJuGlvVB0
 wrj1vgu+u230KOnW7p1iP4cXHqPuDAM+K+YBkVPVEwvcvanxL5LroziHvMG8evEPuiXG
 1791+iwAwsdhOkdNo1QvypWeZY/JJQn1Uhm0Nqyy+7GjuK1+LEH5k464XecnzJTaCsEX
 SgIQ==
X-Gm-Message-State: AOAM532PN6K3VywqJ3nlhvjuzNNmghk+gQlwBUCm939ZhQUHyEAJUiip
 b5q3MZBR6N4FEntvppiAkvPYmxfpTHdD6A==
X-Google-Smtp-Source: ABdhPJzsojEVWEwDErVET3M62SJCkzIEavMN3mExLU5NPys9mAJyxcRvlnQsml/NFgA9Wp6Rd43sCw==
X-Received: by 2002:a05:6a00:15c3:: with SMTP id
 o3mr609027pfu.304.1593137850548; 
 Thu, 25 Jun 2020 19:17:30 -0700 (PDT)
Received: from localhost ([2406:7400:73:e1a0:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id m7sm21416701pgg.69.2020.06.25.19.17.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 19:17:29 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 25 Jun 2020 22:17:23 -0400
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] fixing ERROR: Macros with complex values must be enclosed
 within parentheses.
Message-ID: <20200626021723.len2cts3ffq4wimq@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============6674877529382890567=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6674877529382890567==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wtu5diuv5qrhk3yt"
Content-Disposition: inline


--wtu5diuv5qrhk3yt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

soc_camera.c:

fixing ERROR: Macros with complex values must be enclused within parenthese=
s.

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/media/soc_camera/soc_camera.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/soc_camera/soc_camera.c b/drivers/stagin=
g/media/soc_camera/soc_camera.c
index 39f513f69b89..f609ecf6691c 100644
--- a/drivers/staging/media/soc_camera/soc_camera.c
+++ b/drivers/staging/media/soc_camera/soc_camera.c
@@ -238,8 +238,7 @@ unsigned long soc_camera_apply_board_flags(struct soc_c=
amera_subdev_desc *ssdd,
 }
 EXPORT_SYMBOL(soc_camera_apply_board_flags);
=20
-#define pixfmtstr(x) (x) & 0xff, ((x) >> 8) & 0xff, ((x) >> 16) & 0xff, \
-	((x) >> 24) & 0xff
+#define pixfmtstr(x) ((x) & 0xff, ((x) >> 8) & 0xff, ((x) >> 16) & 0xff, (=
(x) >> 24) & 0xff)
=20
 static int soc_camera_try_fmt(struct soc_camera_device *icd,
 			      struct v4l2_format *f)
--=20
2.20.1


--wtu5diuv5qrhk3yt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl71WrMACgkQ471Q5AHe
Z2rirQv/QQcRtEifvypBhlZr7yuzX+8HlXqUu66cTwep5gDD2GoI/xmoiGSbzQic
AOIOMWsTQYKGU6VATt4FfVmsrSuXXiFcWwYJwmtlp51oAmph7quEXEiwQgYPjURT
YLEXzPt4OcK2VTJFm4nveRGzsIhJX3Zh1SqQ2/Jx1mr9mRa3AyBPCrLarx+wmkbf
LAg3jNHVq778Q69YyEfIpVMw1l39zh/OZnukEJF1JHPXIRIKwxwAluIT9E12uWgv
KJwYZKtXvCCE+PEA5EZeXGE00N9ZfUO98JfVShwddu4YuN7b978ukqmNZsaz1dY5
EX2HByFbOMQbXrHe+58QA7Qqw2K/d3RmE+66cq9xCbSctdTerUkzkbM4wEeukBCw
81PQIHIp0fupT0TGNVgPRZXm8jcpOd7R7pQDYMM5j/R2iCFiR+Bq+zq7ZkZOTBec
OGD1q1DiOZpr/kBA9Fxp1OHfj9KVaUHI5o7dZk79XErxfkCgghLeEHG8ojsAwytI
YWOpUkjF
=N+em
-----END PGP SIGNATURE-----

--wtu5diuv5qrhk3yt--

--===============6674877529382890567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6674877529382890567==--
