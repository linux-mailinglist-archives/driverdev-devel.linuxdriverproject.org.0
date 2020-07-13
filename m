Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE7921D5A1
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 14:16:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 976EC87589;
	Mon, 13 Jul 2020 12:16:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id spBBgPXhMDao; Mon, 13 Jul 2020 12:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5DC878709E;
	Mon, 13 Jul 2020 12:16:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE7271BF3F6
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 12:16:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DB47A8709E
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 12:16:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z09OkqocBF5r for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 12:16:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7F64F86F73
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 12:16:34 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id k71so6172734pje.0
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 05:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lLOk7rW4/byxbGdkeQSwDePJbFv55lWDJWAbGgIeO8I=;
 b=E08jUUD9Guyz5JlCO5wNfxTPFIyn/hzpAYddrVpcRIPdARH3MJ79H0G9rkb+jcKutN
 dqpK/KKV+hXC1EbeA4uw6qCjoI+nBirFUDDUyyfm/Si2zu1a0nYGG+zGGUaJeXY5IFSW
 3aaf6LpCIMPPlT4mOm87cgnGrzRbqZhXm14eVy7oe+cdYuiwwH79ibQNth7115eGwV0O
 KW9Ap0Wa4mGkKrldpWqKAvvrXVUsqkfzNaDqn/PUQDj8U9IvVzmWDsQQKaR8gDIXEtPF
 bxkyNnyUePp9e+cjycLDZ59UW7vsx7XGiVRvQ7nEo3pSuyIU6x9T7VmGYXiXQNQmBPYC
 Iemg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lLOk7rW4/byxbGdkeQSwDePJbFv55lWDJWAbGgIeO8I=;
 b=uS7vrNT8yCi7PmLRINpnrmxfq8MsGn9orFZrtG9zg1P2rP+5ooNsjvdNEdK0YZhSLh
 H7Ir/ZXX3XifN9YrrpI52sv+LI/chArNO4KDjcje0Ak3I1REecVbPvhOY1lQRUoVxie5
 5PxC7BmyaYxLdT51jYq4y1qsBHWPCZe6um/ZgaGl5Izhv201ZxpzYXZsAvDxxBmAjbTb
 Ojt79X05pAduoVy/SFSdq1i6/VOW3/uO/a9r84c8LGd0KD+1Xx12Qx1wyNf8GmzuCWQG
 UrhsDh6R0osYoUdjDjMzGUTrXZq+8NoIB9eKIWH44DxQhM08HI3seVfZbMioXaeXfqlY
 Dt8g==
X-Gm-Message-State: AOAM5302dr3X8uBqPc/ieN38+lFyALA5MqoCaY6mS430T9b6pXhQHeO4
 fxPX3w+2IgUjProOvmjxjAc=
X-Google-Smtp-Source: ABdhPJxNO1ea46TfHeaFd7sxGBVN42EIq2/b736PE7owHtr4DVTpsXBHt8g8O7bkhcVKZgrNPP2ISQ==
X-Received: by 2002:a17:902:243:: with SMTP id
 61mr13222662plc.29.1594642594128; 
 Mon, 13 Jul 2020 05:16:34 -0700 (PDT)
Received: from blackclown ([103.88.82.220])
 by smtp.gmail.com with ESMTPSA id k100sm14960073pjb.57.2020.07.13.05.16.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Jul 2020 05:16:33 -0700 (PDT)
Date: Mon, 13 Jul 2020 17:46:21 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org
Subject: [PATCH 3/6] staging: qlge: qlge_dbg: Simplify while statements
Message-ID: <79e35c695a80168639c073137a80804da3362301.1594642213.git.usuraj35@gmail.com>
References: <cover.1594642213.git.usuraj35@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1594642213.git.usuraj35@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0191220069034012391=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0191220069034012391==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Simplify while loops into more readable and simple for loops.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_db=
g.c
index 32fbd30a6a2e..985a6c341294 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -42,9 +42,9 @@ static int ql_wait_other_func_reg_rdy(struct ql_adapter *=
qdev, u32 reg,
 				      u32 bit, u32 err_bit)
 {
 	u32 temp;
-	int count =3D 10;
+	int count;
=20
-	while (count) {
+	for (count =3D 10; count; count--) {
 		temp =3D ql_read_other_func_reg(qdev, reg);
=20
 		/* check for errors */
@@ -53,7 +53,6 @@ static int ql_wait_other_func_reg_rdy(struct ql_adapter *=
qdev, u32 reg,
 		else if (temp & bit)
 			return 0;
 		mdelay(10);
-		count--;
 	}
 	return -1;
 }
--=20
2.17.1


--rwEMma7ioTxnRzrJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8MUJQACgkQ+gRsbIfe
745D1w//XhdUHMBxnx+36FHOhbFo/mXsfM9kHZmUBYmQKRdsquDqK0Rv+go3p6qf
L1i6E+6oLh/r7ZL0u3wXbNx1KsorCNsBmncK53AxzpzXag8Atu4rtwGiYVJvcaYU
rH3/PqoMWRj2yPhMWDZUuZf1IqDaubGAd4MtR5DMhCpI94qp9DDJ+m4N71ys4NAl
B3EK6lZ5AIim5FFk09CdCi1BgvZna1BxngQS1xa3HnCoLf9GRm570E3xJ/1jTCOE
5wYEkaKbfE+3Yn+MgkeBTos2CLw1Fv2lCLQm3FyKoCr2TxZfWSIjVL6/xZBXA9d5
7hwsuJOSl/gRsE5hw4dLNxnzvcDSo4zsWDb6HA4akwaL6CZGr2KnuJOVU+Fxuu1M
ZqUgBga5D0dFbkJEGZi96KWLWjWrsbo20gmnmHwsYtdOc2YkDLQQ4eKoJfV3nBsV
lSWCo2k9lncMvbRrl1N3Frbx81oQYTe690X7N6lU+60fasMy/pIhZC9Gr+A/yu8R
AGwOKyg9rLhdr5iPnFXmQiKBnfypePnXEohAFKuSDDIbwsGbuz4kQcIVK0XG373R
K+VKPI1Z6HuZpCFJruQYAgsXsu/GUFBznuvq36+Gk3d39jlVv/fe0CiSxVcwbl5I
V/XpFnTUN1FqEYFExL4K9XvJcCn7Zola4dBZu0eev2cM/AQUqB4=
=p1SM
-----END PGP SIGNATURE-----

--rwEMma7ioTxnRzrJ--

--===============0191220069034012391==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0191220069034012391==--
