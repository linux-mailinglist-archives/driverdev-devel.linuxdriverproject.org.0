Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 246A820BFF6
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 10:04:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 57EE38724A;
	Sat, 27 Jun 2020 08:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Boa7ezWllr-Z; Sat, 27 Jun 2020 08:04:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 346E28685B;
	Sat, 27 Jun 2020 08:04:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7EE481BF2A5
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:04:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 768F5887C8
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:04:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RN7JX2vEdCj5 for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 08:04:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 80B39887C5
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 08:04:03 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id u8so5645778pje.4
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 01:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=UsRF0j4rrxRKvA1UyS8rhzR/RWgKiuyQcFsgvNg9glY=;
 b=TbpQiRi8NY0HFitXaKdcmNBluTQudFq1u/tH2uayiKU8dVJlJOtd3gwc6Y1QT+I5EG
 fOrNKfvN1l+8mqWTcfmWF5byvMqGYFe/nT3zUAeGzn9b54faJGauy6uIhcXuVPDIXAok
 Hkh9Vv9hmoVSNMmn90OzT0txBUuaTHtgQbQsbToVzLRwSETBqC9XyAxemNEB5ldvs07v
 +A+tT/O9OWWD39TUgfd3Qo5mBoCejJYDUbNa8LZOwB8Qk1ion9pIPM7dyf9ufWEp5yBN
 I6ar0gcbe0RIuv2OPIlLtEC0oEFDmQh1hVuzzoElVfOgSkbbolUNKaOnJEZqjhS4wgRd
 CxjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=UsRF0j4rrxRKvA1UyS8rhzR/RWgKiuyQcFsgvNg9glY=;
 b=dW4Lze77LwvtVE1poyD3XE9Foke5lUT9IHFGBRTFmz/5tkNwlcgzU1TNrQojSSP1G+
 cotoXyoN0YQPGbnwg+t1V70fGhbUFp8Zz0hqVIjzNJSaAgJL2HVZ0xzF6JATNFJbpcyD
 P8XU5Ojox3Kyb1WViJGE+gtvGq8m+vrgczDK07+Gzqw/YhknKVROneH1W5I8vjKJcdxO
 UkLxI5t/4QPq/T5ai7Fy2UWNfGViQiz5BaCmD5UHSTy4xr+F2U5GlUCX79IAqviLI7iG
 fZ/S1ITubRGASNzumT8Gb9uefgKbFDq3UEgyf6uJ9l/RmBxw5sKmAe7232Jf+VbULESW
 uFDQ==
X-Gm-Message-State: AOAM5316B02OswUfWlTxpaMjR4TcDuAtQT1dZWgIWxOrdXhGIuy3+9Q9
 l1a9xU2ddu8rTVcWRmpPK46kEA==
X-Google-Smtp-Source: ABdhPJyCmqo+SjeH+EGbrQbqZBnhVubIDT/KAeIFgl+KTsUqRxLet/nO6XHMvIXIYO6xsFJEwQVy3Q==
X-Received: by 2002:a17:90a:fcc:: with SMTP id
 70mr7100898pjz.106.1593245043079; 
 Sat, 27 Jun 2020 01:04:03 -0700 (PDT)
Received: from localhost ([2406:7400:73:59a9:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id f14sm24865722pgj.62.2020.06.27.01.04.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 01:04:02 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Sat, 27 Jun 2020 04:03:56 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8712: rtl8712_recv.h: Removing unnecessary blank
 line
Message-ID: <20200627080356.6xn3ycyl3zgaddmw@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============1988623851341996705=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1988623851341996705==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rjfoqw5l3upm3eni"
Content-Disposition: inline


--rjfoqw5l3upm3eni
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Removing unnecessary blank line

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/rtl8712/rtl8712_recv.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.h b/drivers/staging/rtl87=
12/rtl8712_recv.h
index 3e385b2242d8..69d3d5b287d3 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.h
+++ b/drivers/staging/rtl8712/rtl8712_recv.h
@@ -84,7 +84,6 @@ union recvstat {
 	unsigned int value[RXDESC_SIZE>>2];
 };
=20
-
 struct recv_buf {
 	struct list_head list;
 	spinlock_t recvbuf_lock;
--=20
2.20.1


--rjfoqw5l3upm3eni
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl72/WwACgkQ471Q5AHe
Z2pHXwv+KY4+qlPWcAThMVWYxSkx8O4R96Z1nCUBRAlZx3VCxUmf9bnSTlWi+6MT
hKE68qKIg4llOfzdaFjTbg4vx6BC3LURgotRHIQSi2XN9zQQbQEWC+/cxIyeDLAj
S1ToLulbFeqiyJLQ749eoAag8C5aEM3q/Gsgy5h9BJMNKCadC1gSC9p/yYgHeX0X
wSxQi2sh7Fu1VNNnYPJ72RguKswDBW0laoTg1nZh568DhRnyYDdIzMghSyHcHRXz
ILX5HyI/RZowpWBtYuAjQdjYIHZhiBTRVDhC+GL3KuYrSsD+Am15BnIGjkWLjv6q
8MQPn/JkgTZ16YocEYLiUUqNtjgoIt1DXapqy7c1xtAZt2OqLKbG/IYsDxq8f+dz
k423wr28iSuFq6GmXi6AaBEgdxXSnbDQVTWAJ251AuT4ftdPzxz2Iuob73DHVrAJ
D7SHgdRXpWM6X0LOdWjI4F+O7UQ1lGIlzUi0sncYR3P5CifN+kjhYveCCRPxqetO
SBguEUOk
=Uso4
-----END PGP SIGNATURE-----

--rjfoqw5l3upm3eni--

--===============1988623851341996705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1988623851341996705==--
