Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AFF2226EB
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 17:26:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC7CF8AA7C;
	Thu, 16 Jul 2020 15:25:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AAJ946CMRRIC; Thu, 16 Jul 2020 15:25:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 217098AA39;
	Thu, 16 Jul 2020 15:25:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 508EB1BF38D
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 15:25:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 447C325ED0
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 15:25:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pOsGZhhtW-eq for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 15:25:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by silver.osuosl.org (Postfix) with ESMTPS id E011823BC0
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 15:25:55 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id o22so4838706pjw.2
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 08:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=RMKMbC5jYSfPNsKIURX7KQu3FS04i/MQG7VAJB3u/Kg=;
 b=XurTJMQXdm8hRwI+aCQKonbNg+WUWjOVflr2fLG+ZlavH5vJ3sZWzyX8e+3lQT6nww
 Fqaj31wduC2ih/0GDg1qJMsLORsBrfa9THtII199vpWx1MCYgYjsB4Zer9F0fd+/9zwJ
 JtBNxeGVCMYFrwK2cFVnWg3Bt1uR53YWvWjQ+L6502WZcuvEkX1zhOn3zFxCdFrtZuIm
 tgso+MFNt5TccK0rKHVHCf15jJO02Sfz3O7no3Nrq0H5WM6Qq7osal444fjhMmWUmZG3
 FwYshoN8R/vGAbjfoJOF8pUWL/EJ9PmS3O4VRft+4l0vnVI35R7kDBnuB3K9O+I07Kl/
 mFag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=RMKMbC5jYSfPNsKIURX7KQu3FS04i/MQG7VAJB3u/Kg=;
 b=ONp7qFyK2StmqqYw7cyarB31aopc2o9jMkavnahsoihUUrY+WCJKuIzlWO3rSSFBZV
 sFX5u9c8sd+EhPoHMxRAUJkbCvDMA5dQppXYiP+HvUgq/RCitFiAHJ+nxU/OPCDo2QQC
 ve6kgHDpAbgEq6uzHgB2z/4hnK0viVdr0UP7pa4OlDNHdlXBptPWFcM1UqF7ZYUXqBKU
 a54oBDIfYNLVal8ZgRsw06mTjcFFEC48jBjedB8ElzHgck5j0IO5cXL7gDnvFQn3IBGs
 cocrrBWloJF4TaHqfmJD6GNLZU/wTUkW/xvLIUHah6dfjhlkYf+yRz62uUGBLzg2sFqC
 6hFQ==
X-Gm-Message-State: AOAM531C+jeGQhofZNfm+u/H2L/WhpjWvY02yCedkEKkpoogl60Omk8l
 AgYzLDLTaSTNLG8xG3Jyh112qQ==
X-Google-Smtp-Source: ABdhPJw5Sm980CfM4G+paonG0HR3QSkTZxo5X/EFbD+kPoIcLmEZimn9jiNJgAXAORDPwlyuaB3YZQ==
X-Received: by 2002:a17:90b:196:: with SMTP id t22mr753125pjs.13.1594913155420; 
 Thu, 16 Jul 2020 08:25:55 -0700 (PDT)
Received: from localhost ([2406:7400:73:bebb:9750:968d:7cd5:3ec7])
 by smtp.gmail.com with ESMTPSA id c207sm5162589pfb.159.2020.07.16.08.25.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jul 2020 08:25:53 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Thu, 16 Jul 2020 11:25:48 -0400
To: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Vlastimil Babka <vbabka@suse.cz>,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>, Michel Lespinasse <walken@google.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4] staging: comedi: comedi_fops.c: added casts to get rid of
 sparse warnings
Message-ID: <20200716152548.mzau4zhurwkzp5p6@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============3866557070342924446=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3866557070342924446==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jmkhzignupuhzb25"
Content-Disposition: inline


--jmkhzignupuhzb25
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

fixed sparse warnings by adding a cast in assignment from
void [noderef] __user * to unsigned int __force *
and a reverse cast in argument from
unsigned int * to  unsigned int __user * .

v1 -> v2:
- Add a reverse cast in argument
v2 -> v3:
- Change commit description as suggested by Ian Abott
v3 -> v4:
- Add versioning information in commit description

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/comedi/comedi_fops.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/=
comedi_fops.c
index 3f70e5dfac39..9cdc1e8a022d 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2956,7 +2956,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
 	cmd->scan_end_arg =3D v32.scan_end_arg;
 	cmd->stop_src =3D v32.stop_src;
 	cmd->stop_arg =3D v32.stop_arg;
-	cmd->chanlist =3D compat_ptr(v32.chanlist);
+	cmd->chanlist =3D (unsigned int __force *)compat_ptr(v32.chanlist);
 	cmd->chanlist_len =3D v32.chanlist_len;
 	cmd->data =3D compat_ptr(v32.data);
 	cmd->data_len =3D v32.data_len;
@@ -2983,7 +2983,7 @@ static int put_compat_cmd(struct comedi32_cmd_struct =
__user *cmd32,
 	v32.stop_src =3D cmd->stop_src;
 	v32.stop_arg =3D cmd->stop_arg;
 	/* Assume chanlist pointer is unchanged. */
-	v32.chanlist =3D ptr_to_compat(cmd->chanlist);
+	v32.chanlist =3D ptr_to_compat((unsigned int __user *)cmd->chanlist);
 	v32.chanlist_len =3D cmd->chanlist_len;
 	v32.data =3D ptr_to_compat(cmd->data);
 	v32.data_len =3D cmd->data_len;
--=20
2.20.1


--jmkhzignupuhzb25
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl8QcXwACgkQ471Q5AHe
Z2pXMwv/dD/m/gD6ll7ullSAXYCoCM7i9lvWbRpA9dp3rk3rmqQnig1pL0sM5NfN
O+ce32drCrgL41P41bKYbZA5FzaLZnsyobrp+4uDIN4dsy+tYOxqXevIW1+7la0F
8NsA3hbZwrTWlxXCuiGysLN3axa7/ZkVFTdgvbmo1QyZaWIUn0GEGM9Pu/+VuHJu
X6zo0C4wgdHdxwAVOWE9q8Rf7AVC+cqLCmD32+OvyAxDONgdflijKJRJaFYnBitv
9tcxrrvxMDcFcUp3k03NIeMj6gtyOmXjR8/6jSouGolkdwPSXe5en1f6WkciGC1N
D6WsfImiVaOzrtZG73ga7dUPyRqj5Ra0KA2MZSuPLks1H6dGz1W4gzCO0r1FRGM0
acxoIlW0fuFDnX2qUehcLN7ZnFy3dnVazNzzKqE3jSUIJ0Drzwljr4udE7btBITO
LCzrHlJJVZHeUpGam5Wf/1SvDoKk0sf15Y9TGLEWXc4HYnw7ghC12L4JdvBbeKxg
uOH84aY2
=RRHD
-----END PGP SIGNATURE-----

--jmkhzignupuhzb25--

--===============3866557070342924446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3866557070342924446==--
