Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF9F62D38
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 02:59:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 09FA585A72;
	Tue,  9 Jul 2019 00:59:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pfdkKoLub-fy; Tue,  9 Jul 2019 00:59:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D94AD853C3;
	Tue,  9 Jul 2019 00:59:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B6D7F1BF232
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 00:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B36F8844CD
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 00:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R2c1poIhurXQ for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 00:59:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EB09D82157
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 00:59:18 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x690boqO026034
 for <devel@driverdev.osuosl.org>; Mon, 8 Jul 2019 20:37:50 -0400
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x690bj2x012939
 for <devel@driverdev.osuosl.org>; Mon, 8 Jul 2019 20:37:50 -0400
Received: by mail-qk1-f199.google.com with SMTP id v4so17876806qkj.10
 for <devel@driverdev.osuosl.org>; Mon, 08 Jul 2019 17:37:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:mime-version
 :content-transfer-encoding:date:message-id;
 bh=OjZRbgABpZBvMDOAUmYBmnCF4ZS/G+yWz40tVt9zM7o=;
 b=La8Bvd1UzWfA+yV6mZG6IT0QGAHwrNvrjuIoNiC/NyzRNG5v16yvc19xToODlpHIOT
 T/iZ08/YsKfoQZbDCTaavvPtucjrX0WK/DWwAPloOsA3R3BmZUOmjQxUjZ9pSAxrygeN
 oKs2wMEmMtHR0FY+hYiJNrHot1qR1AxU0pibY30ec7XIdPYGT4xvV3GPOwN4DwqiTzoy
 WyPoBR23UnYn9JZEeKBR+oKJIJGTvK69IlKH3CIlcplA9rC3FySs+XoGiP2+Le9aqDn5
 AkL/1u7qk6dq8+HSNJ0v7LyJe7kkXk9Y/9TqPLuqAB6Pt6gsyyBnK/R4WlpkojW3eBDE
 O7Vw==
X-Gm-Message-State: APjAAAXB2zz+WGk9QUJBfDQeTNmhCzPoRhunOxNmrrA+yDrGpDtlW9OP
 mSM1yw02hQ2WmwBt+GQpBMFnihjBpGijFWSpLed2YckZ70ibQ7Gn/lcW6DBvoF+Xj3NVAXPNjrf
 caUae9akqYP+m1niNyTxCl92b2AtC73Af
X-Received: by 2002:a37:6813:: with SMTP id d19mr16780988qkc.454.1562632665370; 
 Mon, 08 Jul 2019 17:37:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzbFEeUXsRnbhMMEq2850586hL282ux6U2bioRM0L8JU0Om9HCOlfHqXfOGUn65sn/AuySwJA==
X-Received: by 2002:a37:6813:: with SMTP id d19mr16780979qkc.454.1562632665165; 
 Mon, 08 Jul 2019 17:37:45 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::7ca])
 by smtp.gmail.com with ESMTPSA id z33sm6958980qtc.56.2019.07.08.17.37.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 17:37:43 -0700 (PDT)
From: "Valdis =?utf-8?Q?Kl=c4=93tnieks?=" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis =?utf-8?Q?Kl=c4=93tnieks?="
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Procedure questions - new filesystem driver..
Mime-Version: 1.0
Date: Mon, 08 Jul 2019 20:37:42 -0400
Message-ID: <21080.1562632662@turing-police>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8672981638648836611=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============8672981638648836611==
Content-Type: multipart/signed; boundary="==_Exmh_1562632662_2389P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1562632662_2389P
Content-Type: text/plain; charset=us-ascii

I have an out-of-tree driver for the exfat file system that I beaten into shape
for upstreaming. The driver works, and passes sparse and checkpatch (except
for a number of line-too-long complaints).

Do you want this taken straight to the fs/ tree, or through drivers/staging?

--==_Exmh_1562632662_2389P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXSPh1gdmEQWDXROgAQJUtQ/+NuCpOp32phoMWYvnTb21fwNfIzCEPXBH
RSyAHXRkx17XhCx4jgTbz6FN95SGVNdlTuMF0GJPwHthtfdmHLql1QB2ROHELCjY
faIk6BGAuTnHlAExeC4VgMBUA+SBgfMwaVTs9d4i4yQ6+Uy8whEPcdgeuKecctFi
jt76tj+gRgpRIhTTAKq+DlpaIu/tpORttvGv23x/a8txU2Y0EaBRkcWbUVXWYI8G
IQ4Sk1J6T1J/n8trp/nHdG3vriAv/w+iUcjVFSDikSrp2tVG4OdbFUzsFC4P+wR4
7cuBLC4cgYZCX2tj45Tc9qTd6SpvdEozR/SQfW1r4lL1j0N05TZpcsYKzLibIegi
xWHpAMqSkhwfC2mF8c9ZCvq1wakHaTLN18OxKM/dPUKUxrSPPnvYiLoQsORH9pUK
JLXY2YlEwdY6SroUfZMBssL8MgGBx+dDcfimyJ1D6oZx1ss4wPRccuk6BmQYBzyH
hyYbNiKcPGimgZEwg2tVnn86X7FCcAhFza+UuzqJ37c0g4ldr/CYa2C0RXsPHn2x
eiKlV99LYR0SDugx8rs74s+bSi41Qi1GvSPy4zDWhBsCwwqxo1xFVAcndAk9NIVL
pKkzVh/nJIoAq724EW2C9dOtasEJx1ogOSUH48hNigytNyLhmOK/gVb9LO8A0vSn
fKUr0veoCZo=
=cgVZ
-----END PGP SIGNATURE-----

--==_Exmh_1562632662_2389P--

--===============8672981638648836611==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8672981638648836611==--
