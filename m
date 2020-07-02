Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBE3211F04
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 10:40:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A5F1F8B29A;
	Thu,  2 Jul 2020 08:40:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OKi+hSWwLHQR; Thu,  2 Jul 2020 08:40:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2EC9C8B27E;
	Thu,  2 Jul 2020 08:40:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A1211BF3C1
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 08:40:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 669FC89192
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 08:40:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lbnaN3PA4Q-i for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 08:40:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6971689186
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 08:40:38 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id d4so13126251pgk.4
 for <devel@driverdev.osuosl.org>; Thu, 02 Jul 2020 01:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=AeaSQtniWWM8/+wvy+sNNOb5mUXTofHpZfTaKxLBkbQ=;
 b=kTA4ijKUtPHNOdbN4/HxBECG3ezs51LEBwwhOeipwdFlT36npD9ZKZ2+qmhO1450ps
 RL/Dem+OAh+3tbDe+BCkAOcuyXCFAninLQcVRea4hlxR8Fe8uo+nCvtfq43NJ4DEWYEU
 w7kD9FGt7st0z+uIplB/Es5l7RQh+PlaC/kdZYNPFDSFSNi7AkenrrEvglQ5w8OxS4m4
 3Oc53SufLILp0GEgwJd5+5xHMJ46N+lTccv22o8rFf+ecZLfK1R62Mk33tEai8Uhmphu
 PRJVK3NE87HKldsnSF6D1Q35G8Pl9eo3VO0GzolZHZhzztTA6xqNcO1wSY1BvfxLxtnL
 /E/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=AeaSQtniWWM8/+wvy+sNNOb5mUXTofHpZfTaKxLBkbQ=;
 b=nLqbYHOY/bu5GSh/51igEYHzij1HP6Sc8NMOsOij77EwGvpfdrFYwRzRoRIL9vXch4
 KRhqiS/SZ94QA4kiwOdFhlKEgphSjtsDTAbl0g5KsZbrEIfFkWEFRrP7GIWc2v5BpeHa
 HabwX6HZ6MeB3qyo75maZtY/teREvmTxYTU4eA6bWpGTEOpy8bmTKKJxb8ViwsY9YeyR
 0yu3L0Fw7xIvoAhGJIUyh2rfP6cK+6qgTWF2Pyn4vzb+h45uv5Wa1xU6Z2W9ECRqCrbK
 mdgNj9NeSJ9Xw2uZEr3IOJVUnSQknUTqUpgsrUjxT9z7m0AashPHcyr/NweFFKFLztI6
 YnQQ==
X-Gm-Message-State: AOAM530oWuauXCQizmmiVS0vs8agRt6HnLBQSQaNtRjcsDM/P/gI7JBR
 +WmJgKmxRqUARv7bbHsORYxX0/VgOM1c7iWi
X-Google-Smtp-Source: ABdhPJz/MSY1IXTrNWGABV1mCQ83a+iIMGDqFayYtGn8InuPZTa1IJZ+Y39vR35ar8BjH5EGMNm9nA==
X-Received: by 2002:a62:c584:: with SMTP id j126mr4164201pfg.213.1593679237913; 
 Thu, 02 Jul 2020 01:40:37 -0700 (PDT)
Received: from blackclown ([103.88.83.142])
 by smtp.gmail.com with ESMTPSA id ia13sm7153883pjb.42.2020.07.02.01.40.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 Jul 2020 01:40:37 -0700 (PDT)
Date: Thu, 2 Jul 2020 14:10:22 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: manishc@marvell.com, gregkh@linuxfoundation.org
Subject: [PATCH] staging: qlge: qlge_ethtool.c: Proper indentation.
Message-ID: <20200702084022.GA1586@blackclown>
MIME-Version: 1.0
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
 GR-Linux-NIC-Dev@marvell.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0288130375649210401=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0288130375649210401==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Remove extra indentations from if-statement.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/staging/qlge/qlge_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlg=
e_ethtool.c
index 949abd53a7a9..16fcdefa9687 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -528,8 +528,8 @@ void ql_check_lb_frame(struct ql_adapter *qdev,
 	if ((*(skb->data + 3) =3D=3D 0xFF) &&
 	    (*(skb->data + frame_size / 2 + 10) =3D=3D 0xBE) &&
 	    (*(skb->data + frame_size / 2 + 12) =3D=3D 0xAF)) {
-			atomic_dec(&qdev->lb_count);
-			return;
+		atomic_dec(&qdev->lb_count);
+		return;
 	}
 }
=20
--=20
2.17.1


--45Z9DzgjV8m4Oswq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl79nW0ACgkQ+gRsbIfe
746epxAAqhB9h48Tx5kPCpUxqOqszOxrTaar0H8mC+KqZmVXOyjquvNRKpeV6Lg/
D5ImRvLVMkWzMu7hqxFY0S89Mg/CQznGJJeaBaU8WyVfR7UJJOTk5mlRDMPc5IlW
E++xnUQtf786os2G7DZBYoBWGompSWFVb8/aI+nef9yBPaUSJVmxcp3HNM+UW3pb
Sl0h7oiHfHVDSgvV1mWNurUSX9u6sGutK0DXPkeeJEbt33x3GPRNcKbIDTH19mfA
GHYY+aE+xpLim9Jt9oVFjR2d/Q2YGz7bgxoQaEIBmRpHU4xTPKwph31cTmO/e6PJ
ebHHsFaeEQVIEWYoSKZI+1fi1FY2NWk8ySnbclCqG/itFLCDlXomV9rhBeEYT0KY
xEEPZYTtmTuECjPuDAyw5ii7KwTDWE0ja2rqrt515kEr5uV5RCHNucmzUn9kH6+3
HLsk8JfzQU2y1uCwI8QfXSF5nSJSOFp4QWoScF5vHvhpC3u4TSQELzXv7iyunXNV
Cy2OBT9HgdK+HF/XvmyQ/dQUHkAH+UB5sif8Pdjod7z+KKnqjTO1vHR7sCqTjrUO
wB/zIJWiSd4mz4aMoDiLyoHE9HiBLvDFbSwF2ueqGGEEGMQv9nn7EG7FaGN9vQ1P
cSpXrKQ2zwfG2HrLjZ7SB5bAx26rhnd/cCgvwvzveuQlfhOnUIM=
=blIl
-----END PGP SIGNATURE-----

--45Z9DzgjV8m4Oswq--

--===============0288130375649210401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0288130375649210401==--
