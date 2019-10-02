Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB7EC9149
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 21:04:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B912986366;
	Wed,  2 Oct 2019 19:04:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jQCj8E3w2toW; Wed,  2 Oct 2019 19:04:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2B498626D;
	Wed,  2 Oct 2019 19:04:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EEF691BF9AF
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 19:04:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A981986038
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 19:04:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nr7WmBWDmfya for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 19:04:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D650E85DE0
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 19:04:26 +0000 (UTC)
Received: from mr4.cc.vt.edu (mr4.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8300:0:7b:e2b1:6a29])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x92J4QYX021109
 for <devel@driverdev.osuosl.org>; Wed, 2 Oct 2019 15:04:26 -0400
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x92J4Kss018905
 for <devel@driverdev.osuosl.org>; Wed, 2 Oct 2019 15:04:26 -0400
Received: by mail-qk1-f197.google.com with SMTP id 10so65634qka.2
 for <devel@driverdev.osuosl.org>; Wed, 02 Oct 2019 12:04:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=dobeNOp3H7EgZ2CD0/RvF0nXbG/3YQqE1zu1Q3zAY9E=;
 b=XoLNWXXrJHwSjjVKRX/GVDR4om99pekRO+oB0pubS7m5g6+imJPytBgbRYuyuFYEYr
 B7UyaZkaUrvjp51Cy2qSVqZZJBm1lE0EqsNnDIn+llYcKSZcjojeebSCqr2PPB+iZ/6X
 jBe8gwFM0oHZ8KIb8FaWkzzs97kf/ZI3MW5asaCtjMWhxjoRTaLrZe1DukbJ+4UAu+u5
 3gUPEn1dzZlgi4pp1tB4odxvjbBLD/RSqDqMGtaOSKdHn0/bHT218/03derbdQssjDBe
 dq3vPPLVde1SFaZV6UWlM9Pxr+rWgajXEwWcZDjXMTWQFVvetDoZSojw11F/8X7Wp4Hy
 TJUQ==
X-Gm-Message-State: APjAAAVThFo/hjJF64X8peeNVGJi/FnTBmFEGVXMcLxuFwAGIOxf34rb
 wRJ/W6IcWhfwHPThmNal3K6K75G75RlEzWOqhmNPb7fe2YBj/b1KB6U5o+ty5xcXyixD++FU8Cf
 94VrI+JRXaLE4S3fXxMhFw7UocPEreD1s
X-Received: by 2002:a37:5f47:: with SMTP id t68mr275523qkb.497.1570043060033; 
 Wed, 02 Oct 2019 12:04:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzfdEnd5F+47KVCHpyvKRTi+Y0IF9ayDTCSW4G25pB3tGXL/763JGRm19HdEr+JSJ2z/oBuDw==
X-Received: by 2002:a37:5f47:: with SMTP id t68mr275488qkb.497.1570043059705; 
 Wed, 02 Oct 2019 12:04:19 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::9ca])
 by smtp.gmail.com with ESMTPSA id t40sm131106qta.36.2019.10.02.12.04.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 12:04:16 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Saiyam Doshi <saiyamdoshi.in@gmail.com>
Subject: Re: [PATCH] staging: exfat: use bdev_sync function directly where
 needed
In-Reply-To: <20191002151703.GA6594@SD>
References: <20191002151703.GA6594@SD>
Mime-Version: 1.0
Date: Wed, 02 Oct 2019 15:04:15 -0400
Message-ID: <9938.1570043055@turing-police>
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
Content-Type: multipart/mixed; boundary="===============3866664242112216466=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============3866664242112216466==
Content-Type: multipart/signed; boundary="==_Exmh_1570043055_7127P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1570043055_7127P
Content-Type: text/plain; charset=us-ascii

On Wed, 02 Oct 2019 20:47:03 +0530, Saiyam Doshi said:
> fs_sync() is wrapper to bdev_sync(). When fs_sync is called with
> non-zero argument, bdev_sync gets called.
>
> Most instances of fs_sync is called with false and very few with
> true. Refactor this and makes direct call to bdev_sync() where
> needed and removes fs_sync definition.

Did you do an actual analysis of where bdev_sync() *should*
be called?

The note in the TODO was intended to point out that many of the calls
are called with 'false' and probably should not be.

 #ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
 	fs_set_vol_flags(sb, VOL_CLEAN);
 #endif

Consider - with this patch, we are now setting the volume state to clean - but
we've not actually flushed the filesystem to disk, which means it's almost
guaranteed that the file system is *NOT* in fact clean.

Changing all the 'false' that happen before a VOL_CLEAN to 'true' is
probably more correct - but still totally wrong if DELAYED_SYNC isn't defined
because then we *aren't* syncing to disk at all.



--==_Exmh_1570043055_7127P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXZT0rgdmEQWDXROgAQIBKg//X9lHdUpw66i/cHOTZ7lqpmV2mkPQ5/+p
fG58bja0kg2YSZrHSWHzvD93HZmV228K1vBOitP2kjsU1IUFJ0qicx5irJzZzjdk
qZ3G5e3o6on3BuyP7b5uF+rI/+v+4HMZ3xLwCSEH9rRk1u5vPwH8BT7AXGp3YXNw
zZI65DtJB6nNnqSITc5tIXluDeSo11AjJ6E9nINYJWyL053UcV3ScsABZUJdCUQE
RsaFDhNv7pM8FwMdYMXT8aapB8BG4aUT/RiSHboa3dQ9AcQSlmBKs8w9lTSt2I1Y
aPCfkY2+VrGvv9Hn6EiiZKsPf3dBnHbVa/jEthcB+sfQwUqvQMZXZ1ketqhC4Do3
QJ+n3Blj1tAoN/ibXAEBx/PLzbzMxVfw6dOXCetx34cpb1waQ79kGZtcte/sWEAD
zQWKQUJLbCtHJwder/DX5TjbESmX3U7twxgSTTFhxyl0IQ2gRB4ZUN9NcRWJFDQV
thldWb65CcJP1rHfC/lembJIvIB6TGaaI2GCFvEqAHjUmWBzgBGhNfpDakTDekwU
zLTljhXFyEh/VgTxh3Cv4JMB1gqiAZPzlEiJn/oolBok3OeAjhXzJIj3Pkvp7tVs
+Jv4NBNxl3B4xEpay5lDK7VhcQAa5/Gah5HhJIxG+9QMNGDFqD638XpIxoN6MN0I
OOGl4QJUGIE=
=eIW1
-----END PGP SIGNATURE-----

--==_Exmh_1570043055_7127P--

--===============3866664242112216466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3866664242112216466==--
