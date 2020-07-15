Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7315E220C1B
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 13:48:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 891E78B2B7;
	Wed, 15 Jul 2020 11:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gvd7qyYzjCXb; Wed, 15 Jul 2020 11:48:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87EF08B2AD;
	Wed, 15 Jul 2020 11:48:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 568B01BF868
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 11:48:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5325289458
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 11:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tp2cG8To3-bS for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 11:48:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A493987B5A
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 11:48:30 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id cv18so1871834pjb.1
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 04:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=YYh9K8cJouoOanNJX0CMw+9EzOB1DbASwVmDnH3JRbk=;
 b=odw7MW7iFK3zmx91a4C2xDaTDcR6UlRD2QAZp2XnTclmxathnkyBOnifzt/D+sd/Mv
 eTB8vgKNQ7504P8E5iSg5+ZK7WhbJPYkGkePe4E9e2YlV9O2HQdRYiFPz8mmXZfjWuTe
 QJBcY8+dXOhdiitGuRZxXew79DF4rrSsGbqmh9BzF+yP3klVBX1jEGstuAEpIkS3bjOM
 KZH0qxZNffLwO6RXnGq996M+Nb5UdR6NXb5YgncKa4e/rckTVBhBtMhTelokZW1Rl7dT
 zf9P9ZHTQRKmfrUc1AcDBGOY9b8U02P/Dtd5Yzo0TxUX9lq6ONo0nr63fGDSZe22+RJT
 fOAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=YYh9K8cJouoOanNJX0CMw+9EzOB1DbASwVmDnH3JRbk=;
 b=ZmHLSG4Z557DXfshdXhJEWuZ8pgoUEldl9Vdl0pBpja1nQkkB4t9iCz6Cg9clYHb/q
 ChMliOK0ZlLjir+MgeEvCed7GhVGW1EXcjrShVvh0vsAUBhv85riIB/NATxgBKfc48oK
 WshdPpW3I3hTJ37F633sW0CYfm7qFfpWkvAEs90p0ZGSbLu6vN7tCrPOBJv8/F1HxmRx
 eceCsRCzg7uSHKgffim+kJcsHPC6UXxkgre37b+eiEZGkQs7BOXI4CjWXAlgNWdcNs8D
 IZHSkGADaHhw1eF/DBtz+prerYsN3zoID3iSj4/R+p0/BBCEriDFVI0TGaHL3utUIxtR
 okEA==
X-Gm-Message-State: AOAM533T6Or76m+VyWRITCkcoHKDrLMVvNt4x2/SvOVN7BpzqzJtFYBL
 +w2/Sd5zfId9PrwOzBMmaFw0Rw==
X-Google-Smtp-Source: ABdhPJzbaHWSVCNl0ayrHSTvHmubCUPfeQCQiKCGpmYgmIE892fHY6/zH2nTYHV9cd0t2lrty8DOcQ==
X-Received: by 2002:a17:902:c389:: with SMTP id
 g9mr7682257plg.317.1594813710204; 
 Wed, 15 Jul 2020 04:48:30 -0700 (PDT)
Received: from localhost ([2406:7400:73:f0a7:2c34:cf79:3b68:d4ff])
 by smtp.gmail.com with ESMTPSA id t1sm2071063pje.55.2020.07.15.04.48.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jul 2020 04:48:29 -0700 (PDT)
From: B K Karthik <bkkarthik@pesu.pes.edu>
X-Google-Original-From: B K Karthik <karthik.bk2000@live.com>
Date: Wed, 15 Jul 2020 07:48:24 -0400
To: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Xin Tan <tanxin.ctf@gmail.com>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>,
 Michel Lespinasse <walken@google.com>,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: comedi: comedi_fops.c: added casts to get rid of
 sparse warnings
Message-ID: <20200715114824.rwqemojowcivbc3z@pesu-pes-edu>
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
Content-Type: multipart/mixed; boundary="===============5680645894235744518=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5680645894235744518==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sbo5b73lqh4tgbyq"
Content-Disposition: inline


--sbo5b73lqh4tgbyq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

fixed sparse warnings by adding a cast in assignment from
void [noderef] __user * to unsigned int __force *
and a reverse cast in argument from
void [noderef] __user * to  unsigned int __user * .

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


--sbo5b73lqh4tgbyq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl8O7QcACgkQ471Q5AHe
Z2rUcAv+Mv/M4IjR2LBnDKEVt0y5x7f5ni8mu0VrvPhOvSnsRugubeoQAlDw+n/+
dCwDvB7tRwmNazanRsMepcG/2OOBO8iCgCsgckzYFplln0YhkNc1lwGvgn3/0UaZ
hpifMxOOHb5lTquUDRmcywVWVCleQ7Tod4VljlAjcWYLaEK2JSClvjIvxXYpG0FH
L/Ry0okp9qFDa1QLxlHF/K6Ts/MLfaQsQW1Rt8iwzdCC/gfcREp2p7ufQJoUXPPT
A0f12d0ubbd4ZFO02O0lonxr5QpEa7B0HsS6gQmtTjKLGxUm+/YC8O4rElGoL+I/
NzbPmpTchEFQyH9cq2aiICf9yndb/xlUrj3YtiZdjR4MhdOytohF1nI80pUsYADc
QPxf0CrA+IZyrfV27n03F8LKKdi2K7dNUf0a9Al0hnk4ch+dXnX0nxRor6DxpjUA
Q8PtHqTl3m62kWA8CcQDY0XkyadGaIPoIatfLkQAnowqtiCbi3tL9vUnCSBib8Ym
Ix0vBQHQ
=KGUY
-----END PGP SIGNATURE-----

--sbo5b73lqh4tgbyq--

--===============5680645894235744518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5680645894235744518==--
