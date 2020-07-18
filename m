Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39475224A18
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 11:19:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F845880CA;
	Sat, 18 Jul 2020 09:19:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NaMd241oaMTb; Sat, 18 Jul 2020 09:19:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F4E087FD2;
	Sat, 18 Jul 2020 09:19:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D5A1A1BF5F5
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 09:19:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CD82C877D0
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 09:19:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GfZhXSf1MX-h for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 09:19:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 91E3C87773
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 09:19:03 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id 72so6465144ple.0
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 02:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=I4G2b6oiLn56qyVJ03FL/mQFC6Pc1n0o7UjqfCoRgAY=;
 b=BPMOItQAhvY6zTZ1HSTtEEfAlAI9uR1IILHlQbQBoU9OPVJVYSEXZQfgK7VWMYCqE2
 bMJADR/POLnQ8HDQtIxvAExu4Xuw8Lo9o7S2vwTiwWqqWwuXmxp7SvPI7/Vw3lb6usD4
 7EO0iNKYovcjekXGNuFlSWo/gDa4ub3QM9mTClHcr0U75KexMIl0ZuNa7xiPa5AMvMCH
 DWcfRRlc+ce424pw6rp8jPvBz+bJqfTLH5VsdrTla/cJHB9PLcu6CdDjMVY3f2cF4qe+
 CmiSZ5U9SrxxSKETeeVslFZvWWAqVb8xSCEh+1oO5GwB/j/DNcuEC2qb9dt0wMdJYnhG
 4KFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=I4G2b6oiLn56qyVJ03FL/mQFC6Pc1n0o7UjqfCoRgAY=;
 b=HD+rylh1Q6iHEZibpjiCsT0eCof/bE3eUTTKsGUeYSAR4zXdpEuJ/aEcEmDEMF3MBV
 RVnNK0eWpZ+ZbKP61HApOfCRyW1sPyixyhgu7oysji/fbqePP/CCZsZaC4QcxMerurS4
 x1oPhAXBdKmTnGHF9S9saxZCVW9YCzSYbAsark8oe7RXKLDxx/Bf19BFEL3BP0QZrupf
 mFFC2PfGIGWja27ll022xCjW4GKVKoqQu/XyiiZOxsQXpaHrIsbItKY9yJEZgfYkwJ+t
 0uuXaITlrPCc8hOImUSbHqE4XBTKq8twLMUVmX+8KMFATnnPv/GgPJXlkvTrENFYqA7R
 u2Gg==
X-Gm-Message-State: AOAM531ec+m9ROypXWkDPg8zLySJoPqjJoj84xQR4myCGDSL8EvA/u4/
 hSccX8RbOyx3JWIgwIrN+Q0IGA==
X-Google-Smtp-Source: ABdhPJz6xCqd+mSY3e2SdNv8u7rqS8LT9NQEm8Rqlozz2Sv8U2owqVag111ocm/k68phBDhiehEIOg==
X-Received: by 2002:a17:90a:1b2c:: with SMTP id
 q41mr13784566pjq.195.1595063943120; 
 Sat, 18 Jul 2020 02:19:03 -0700 (PDT)
Received: from localhost ([2406:7400:73:207:8b43:3062:877d:c647])
 by smtp.gmail.com with ESMTPSA id s131sm9876087pgc.30.2020.07.18.02.19.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jul 2020 02:19:02 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Sat, 18 Jul 2020 05:18:57 -0400
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] staging: rtl8188eu: include: placed constant on the
 right side of the test in comparisons
Message-ID: <20200718091857.quzs5sqvkjzngd6k@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============5775110991401249975=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5775110991401249975==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bqcc3kjngupm4gpm"
Content-Disposition: inline


--bqcc3kjngupm4gpm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

placed constant on the right side of the test
to fix warnings issued by checkpatch

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/rtl8188eu/include/rtw_mlme.h | 4 ++--
 drivers/staging/rtl8188eu/include/wifi.h     | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme.h b/drivers/staging=
/rtl8188eu/include/rtw_mlme.h
index 010f0c42368a..1b74b32b8a81 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme.h
@@ -266,7 +266,7 @@ static inline void set_fwstate(struct mlme_priv *pmlmep=
riv, int state)
 {
 	pmlmepriv->fw_state |=3D state;
 	/* FOR HW integration */
-	if (_FW_UNDER_SURVEY =3D=3D state)
+	if (state =3D=3D _FW_UNDER_SURVEY)
 		pmlmepriv->bScanInProcess =3D true;
 }
=20
@@ -274,7 +274,7 @@ static inline void _clr_fwstate_(struct mlme_priv *pmlm=
epriv, int state)
 {
 	pmlmepriv->fw_state &=3D ~state;
 	/* FOR HW integration */
-	if (_FW_UNDER_SURVEY =3D=3D state)
+	if (state =3D=3D _FW_UNDER_SURVEY)
 		pmlmepriv->bScanInProcess =3D false;
 }
=20
diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl=
8188eu/include/wifi.h
index 677827900607..dcef3da21970 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -326,7 +326,7 @@ static inline unsigned char *get_hdr_bssid(unsigned cha=
r *pframe)
=20
 static inline int IsFrameTypeCtrl(unsigned char *pframe)
 {
-	if (WIFI_CTRL_TYPE =3D=3D GetFrameType(pframe))
+	if (GetFrameType(pframe) =3D=3D WIFI_CTRL_TYPE)
 		return true;
 	else
 		return false;
--=20
2.20.1


--bqcc3kjngupm4gpm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl8SvoAACgkQ471Q5AHe
Z2rNtgv9Hd8w71e1h+llsOzTFBkJmx/DbNSr2Jc1k4R+GzO/BtAa4Zak/iL+KZEb
wI888iW7DKC6R68lzjQ1bRS3rGxxwEQK9rev/y8tzckdiZ0103kFjhmpdYmDxB7r
mehKoABIH3aTK9G7StXCeDScgqWYwfU6HmqfEeSzr66+XpdiMo+pcPZZTmawXTtK
Q26PV437be9J0PmX/ofCLJU5uCW/9YnVgCyKY/bqnT8Xg/wg66ZlhT0PhSzyIE61
PRVWQRpWm0P/vvXogjdAmHTyMXvkUK1Tkr+mRCorUQkvJRe5T3fu7V3QzY2rcoRn
1EI2dzpMmyCu68n7f2X+DNCffW9TBdxNLKi3kLfrHlQIjPAA16MJySzfulLguwPl
88oPoBY2WYtI8Lv3vHYLEPabUneZ/WxlubZ9CZono5YYKQqsP+LZf9+cx+DI3Clu
VKZHV9BRsS5i/ddZt7/XUdrR//cNZWSmSbOnxuI4qmjiDGlGo4kYR85853ly0Rfb
JESky8Ar
=DdPu
-----END PGP SIGNATURE-----

--bqcc3kjngupm4gpm--

--===============5775110991401249975==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5775110991401249975==--
