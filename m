Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8835FED424
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Nov 2019 19:18:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD8A28941B;
	Sun,  3 Nov 2019 18:18:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2tBr0ksOMyft; Sun,  3 Nov 2019 18:18:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5EDCA89400;
	Sun,  3 Nov 2019 18:18:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C09D1BF5DD
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 18:18:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6544789400
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 18:18:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bQvhGoV3sOl5 for <devel@linuxdriverproject.org>;
 Sun,  3 Nov 2019 18:18:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A0BBF893F8
 for <devel@driverdev.osuosl.org>; Sun,  3 Nov 2019 18:18:22 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xA3IILYr006526
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 13:18:21 -0500
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xA3IIGGq002628
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 13:18:21 -0500
Received: by mail-qk1-f199.google.com with SMTP id 6so177937qkc.4
 for <devel@driverdev.osuosl.org>; Sun, 03 Nov 2019 10:18:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=8AL38a6nJyPHeAwNYJ+gkCOByLjMLoSRsdy7tEC6FCE=;
 b=o5drkQa9ffbrzKJoVGFHaomFONr8DSRzj0/3LB7IiKoiZEgX8DnmX4lqcYPICzidEY
 +laKtapltcTVIMcU2wgilsMvHGA44Up1GLqq9KyjSSnGby0Q63SpkX34absPnkVlKHWg
 FscRdDRCeRqDXmPoMBODO72E5hCj2Gexc1T6Fcks9Q9pVxkFG4NBpUHYtWUgEd1c/K7e
 BPtcaytPsLMKCL0Un5qQWmwkR5vkYzdvDMdXQvcpPHIW/62upu/2uwkACG6DVvI03hZG
 8gGSvP6qvUTz7Le1cwbWoIgCbAVxxkgb8Y7J2VtXtj6ZgNaRvNiqBL94flrEf5xLMiVb
 tzOA==
X-Gm-Message-State: APjAAAVqQxo4zaTjFXHDrXqITI2LfsDkhTRTC90dmIsgH12b2HaYkNYt
 C3CtUB6hJbtRVCmD16Ss1LFTuIHcc3vDiVtc4+auilmHx+kig8li2JkKZgmBhTVdQ+eBSamqQNw
 s0l/CEzVc8Ldud+mlnMqtmLs3/ZZJ2yRT
X-Received: by 2002:a05:620a:1107:: with SMTP id
 o7mr18657932qkk.272.1572805096131; 
 Sun, 03 Nov 2019 10:18:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqwWIVZQygxI+LqAGuqaC257K40MqFYJhgfKKk5CXE1n6FnJe1jlYbqDk0H+uuG2EfmkbFSLNg==
X-Received: by 2002:a05:620a:1107:: with SMTP id
 o7mr18657905qkk.272.1572805095791; 
 Sun, 03 Nov 2019 10:18:15 -0800 (PST)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id k6sm7132441qkd.38.2019.11.03.10.18.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 10:18:14 -0800 (PST)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Davidlohr Bueso <dave@stgolabs.net>
Subject: Re: [PATCH] drivers/staging/exfat: Ensure we unlock upon error in
 ffsReadFile
In-Reply-To: <20191103180921.2844-1-dave@stgolabs.net>
References: <20191103180921.2844-1-dave@stgolabs.net>
Mime-Version: 1.0
Date: Sun, 03 Nov 2019 13:18:13 -0500
Message-ID: <75389.1572805093@turing-police>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2501565210872776005=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============2501565210872776005==
Content-Type: multipart/signed; boundary="==_Exmh_1572805092_14215P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1572805092_14215P
Content-Type: text/plain; charset=us-ascii

On Sun, 03 Nov 2019 10:09:21 -0800, Davidlohr Bueso said:
> The call was not releasing the mutex upon error.
>
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Julia Lawall <julia.lawall@lip6.fr>
> Signed-off-by: Davidlohr Bueso <dave@stgolabs.net>

Yeah, I missed one, thanks for catching it.

Acked-By: Valdis Kletnieks <valdis.kletnieks@vt.edu>



--==_Exmh_1572805092_14215P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXb8Z5AdmEQWDXROgAQISBRAAiqmrcDXoatDlP1f/a/hg4uMYPPws/2jP
WCcaCQMvYa0x7XsEKjgS7pOha+huqXpuC2CsjMqlFQV26BOSIdtMCnF2qit99VOh
hbE0JmtGQXXfHrNA+3Flmm1ghrB1p+BppzDHs0eEYBweq2NIoblqDewbNFKHX0Sy
dxNlXn2VRDazGTfpZBPpgujfQGaZhxVjbcQXaKFh2Kw5Kr4rNQw7JwZKbMxkLUxu
beAYrAWn63NcNG7RtzH3pO5idnj6zUTUEaiG+zxj+jyCF0yzLVZAzVtbma54NXKu
TklaXalDfHFPsVf6Y/0gNiNVpxlwF1nBe22kgB0JxWalrgfGfKb85hkiOJPvFt+S
5WFh/OOXyVrLgH+H2YsKu9vq0BgqWz9UTMIFa0r7zbuBDrJE9P80lfZOJIK37uI3
+jFz+OBL3RLL6CP6rVUYVcm9n1jReY6ER5lq7n2+O1/ZFVat+Pa3Av8v+ZXVfQ/2
idATpuFgCpiW4Tsmr0pU7eVkhL0NULwNeM+MEVP6lbznWbanc8eR6n4R87Ga9sPg
hJ5ML0LLyy0OTOSWPnODCSVX4OWdZVOMIMkGYnW7gVUpeWI1kBAJxHab5eZes4y2
hs0S0wmQIMDZd4T2V46oLd6fKfPRa34t2KFu6GzvgY/foZLvv1xiNyWSKGsoA7WJ
Fy7PC4XRnl4=
=zLym
-----END PGP SIGNATURE-----

--==_Exmh_1572805092_14215P--

--===============2501565210872776005==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2501565210872776005==--
