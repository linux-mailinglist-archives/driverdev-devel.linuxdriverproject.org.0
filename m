Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D4122041B
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 06:48:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 18FDE2152C;
	Wed, 15 Jul 2020 04:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h72s2Q8VQb5m; Wed, 15 Jul 2020 04:48:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B6024204B0;
	Wed, 15 Jul 2020 04:48:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1EB881BF3AE
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 04:48:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 013B3204B0
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 04:48:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wqgOuiVakNJN for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 04:48:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id DDBB42048E
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 04:48:20 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id n5so2359158pgf.7
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 21:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Ucz8GbnPJF4zpNltFDDoIlnK5RPRDiSbEKeMvIDNSms=;
 b=G/qxY342vJe0TGREY3YmbBetGnnrWnYSMmwtMiu1E1yW5Q5crieV0sU2SkdHMzW0Zm
 9gIEsyWvRKIURZHMCvBXhuhAnKVtiX3Nl6+tVZuhs73soWS77lUp9wMeNlf/gZ9sjsKY
 RT1WWIZNFYIH6AXDEt3JQMg7sNkbjS2JZTMfNs3MmC2jgrWUP5G3CqGtbL41Ic3J8yM2
 6T7WS5EiY0T/Nyym6YQOFYay/46bTJdcmG+yAawqz716GKwD9n0Ca2LHFGC50ukOvkiD
 zrOkfVX+Fiu7EaBNQnk0qXc1ZUNfQZac9zM0+2rnkg7QDV0XlNFXtwW1k6aSlajzKNwV
 dlEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Ucz8GbnPJF4zpNltFDDoIlnK5RPRDiSbEKeMvIDNSms=;
 b=N75wbrKmLYvT6h0Nba/0gwxhpvwXq/Pmeb0NY9rxwAD9du/MwFPdfezf2+AAKpttbc
 1e+q34ZiiQGNhxstH0O95xBt726ygfkvW2QaDw6Lv2QCYcMKddLSgtJbyAy7ureRRRp6
 CvyBhuINAo341yZcS3MAv2zDCxCDB/O0Mk+y4pPMtbrc4JUTP7XegIS8jMiAb6wLL7+d
 zuI4ZL19LS1zxWUOD8VLMJtoIlvzJi4TPoOTmwtYqQTa6Co42mQniVGGRj6/nd4jwoAN
 dg+xTpmrVEiIeyfb+XXskpAqFj5BctP0BP2JvDB171oAFmngU12GJFOEDJ65xhaW7i07
 RoNQ==
X-Gm-Message-State: AOAM533w2ioF0uliEhH3gHerwv//FG+Abm9OTzJPPbREc/hK1fCamGb3
 973ZjG+6+QPomFF4uW/CHyoqaA==
X-Google-Smtp-Source: ABdhPJwhxsdWIPA0yjJiDKhAiqbCVublwsYTTGrB9SfJ7Gbn06a2TZiNwmlaBW6lpN29tcgxAhs+cQ==
X-Received: by 2002:aa7:9ec2:: with SMTP id r2mr7263307pfq.265.1594788500190; 
 Tue, 14 Jul 2020 21:48:20 -0700 (PDT)
Received: from localhost ([2406:7400:73:524b:c130:77cd:11f8:53c3])
 by smtp.gmail.com with ESMTPSA id a11sm584795pjw.35.2020.07.14.21.48.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jul 2020 21:48:19 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Wed, 15 Jul 2020 00:48:13 -0400
To: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Xiyu Yang <xiyuyang19@fudan.edu.cn>,
 Michel Lespinasse <walken@google.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: comedi: comedi_fops.c: changed type in assignment
 to unsigned int *
Message-ID: <20200715044813.fww3regsgsbgyp7b@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============1983023164706180173=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1983023164706180173==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xc3ogj6of4zis4qg"
Content-Disposition: inline


--xc3ogj6of4zis4qg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

fixed a sparse warning by changing the type in
assignment from void [noderef] __user * to unsigned int *
(different address space)

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/comedi/comedi_fops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/=
comedi_fops.c
index 3f70e5dfac39..4cc012e231b7 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2956,7 +2956,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
 	cmd->scan_end_arg =3D v32.scan_end_arg;
 	cmd->stop_src =3D v32.stop_src;
 	cmd->stop_arg =3D v32.stop_arg;
-	cmd->chanlist =3D compat_ptr(v32.chanlist);
+	cmd->chanlist =3D (unsigned int *) compat_ptr(v32.chanlist);
 	cmd->chanlist_len =3D v32.chanlist_len;
 	cmd->data =3D compat_ptr(v32.data);
 	cmd->data_len =3D v32.data_len;
--=20
2.20.1


--xc3ogj6of4zis4qg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl8Oio0ACgkQ471Q5AHe
Z2pzTgv/bcR7Jh7Awo66b4++4R0Rse5QDht5KJ4JwMALghXs0bUeKiIILQJ42zDO
wmpv/4hNFndKAB2QOWbE8gdTV/MQCLlWzOCT7g0o7JMk9DZfa6ZQJsRQ+bcChj7c
FLEOXx4kTuX7TY5YiEy5v8xGv8y5CScIg3t8ZndHb11Rem54nyE1d6EkdNBT6jfO
BDAX2eLv6AT68brxcIUYpj+ZN1Ak0a1krSmfeVqXirf8m5taeOdf7FmZwU35VwjY
wS3+U0fvjo+2oCnzsUYEmhNbA99fZCuOk4ZnvIvnHlvyWmFaP40Qa7hiSZmYwpaA
vlQU6ugQ41RsrUVmyuWXqa4k7oo2SsaSDABRzEUrjgQzunNQOJQ+lFQEoMCUBi5u
3qtPnxMqe89qMV4BHhZOBzT9NRu5n6h5nfPKOwPC2eaU0kzJPFDeIzDsBScp9neq
hm39BGXzIZzWMxhZcHWD3XuBtR/WxdLaSjZn5Cl0Xsp4s1QfGBf9pjgOntbUC/JC
OjTP/gje
=WlRW
-----END PGP SIGNATURE-----

--xc3ogj6of4zis4qg--

--===============1983023164706180173==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1983023164706180173==--
