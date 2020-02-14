Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E69C15FA79
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Feb 2020 00:25:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C394F86ACF;
	Fri, 14 Feb 2020 23:25:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rgoAdli9vRmx; Fri, 14 Feb 2020 23:25:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD52586A15;
	Fri, 14 Feb 2020 23:25:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ABADE1BF303
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 23:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A7F398835E
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 23:25:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eK7e+gliTQ13 for <devel@linuxdriverproject.org>;
 Fri, 14 Feb 2020 23:25:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C13A38835D
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 23:25:48 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id 01ENPlqs026077
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 18:25:47 -0500
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id 01ENPgoM004063
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 18:25:47 -0500
Received: by mail-qk1-f197.google.com with SMTP id w29so7332166qkw.1
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 15:25:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=kVVJJc06uXlAboQIV2VK0QKZoPIKTMKcPo6lweP/h3E=;
 b=Vy92U1lx+eMH32LV1xde7U24pXFui/EOKU0jSnvpZCJCvOTtblFylgeERFPU5oY4MR
 TeF70KxtwGOoeAcaUX0BYIg+NhfVaxhRghVyyKOFk6Y09M5UeozyjJOUeq8TzSh0io3b
 NZ4EZ1YgkfdTgBm0lRoll0rZTSc6ViaHb5qGNYrjmkmMip6LbuJnq2l4kxCaGUtzCC85
 Vp0BZ05H+DSKtha9EDl0u9x01Bo+agGOBjGV4PwSbmHIYUX1Hlktf7BLu7fXyv/RIYRq
 UK38d/ywI9awGUf5x1F19FRybLErrzjOssqYK9a1o47DM/zTgdmMx4nfPtMcMZKXC3fZ
 LPnA==
X-Gm-Message-State: APjAAAXiimIEYh8d4WwdwqZOWcOgxNlRM3D9EVz7PKBaZqbT81SYPVBR
 hQVlQe8jqLh+BaV+rToJBuAFsUbFywZI33ijztIcasKtCPtjd5Fs04WaZ+DRaClGa2lSQ7ydjJ0
 s4e0S2wvnjw2T3i8Kf1OZXqvEWhN0n0c1
X-Received: by 2002:ac8:607:: with SMTP id d7mr4528917qth.271.1581722742394;
 Fri, 14 Feb 2020 15:25:42 -0800 (PST)
X-Google-Smtp-Source: APXvYqz1OE/nxm2Js8pfbIZcNF3j9fwwMaytLqhXDFRgrEOoAA7rmVH/ZQz4xkH3QAk0MZ+37+biWA==
X-Received: by 2002:ac8:607:: with SMTP id d7mr4528903qth.271.1581722742018;
 Fri, 14 Feb 2020 15:25:42 -0800 (PST)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id m204sm4343144qke.35.2020.02.14.15.25.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 15:25:40 -0800 (PST)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
In-Reply-To: <20200214224357.yv2lwyusi3gwolp3@pali>
References: <20190829233506.GT5281@sasha-vm>
 <20190830075647.wvhrx4asnkrfkkwk@pali> <20191016140353.4hrncxa5wkx47oau@pali>
 <20191016143113.GS31224@sasha-vm> <20191016160349.pwghlg566hh2o7id@pali>
 <20191016203317.GU31224@sasha-vm> <20191017075008.2uqgdimo3hrktj3i@pali>
 <20200213000656.hx5wdofkcpg7aoyo@pali> <20200213211847.GA1734@sasha-vm>
 <86151.1581718578@turing-police>
 <20200214224357.yv2lwyusi3gwolp3@pali>
Mime-Version: 1.0
Date: Fri, 14 Feb 2020 18:25:38 -0500
Message-ID: <89492.1581722738@turing-police>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Christoph Hellwig <hch@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1538729655789668206=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============1538729655789668206==
Content-Type: multipart/signed; boundary="==_Exmh_1581722738_27211P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1581722738_27211P
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> Idea is simple. Expects that we have a clean filesystem in correct
> state. We load primary/active/main FAT table (just call it FAT1) and al=
l
> changes to filesystem would be done via second non-active FAT table
> (FAT2). At unmount or sync or flush buffer times, FAT2 would be copied
> back to the FAT1 and filesystem would be back in clean state.

Somehow, scribbling on the non-active table for actual changes sounds lik=
e a
bad idea waiting to happen (partly because if you do that and crash, afte=
r the
reboot you remount, and it starts up with the now-stale FAT1 because you =
never
flagged that FAT as stale.

That means that if we started using the secondary FAT, we'd change the
ActiveFAT variable to indicate that.  And if we do that, we need to also =
set
num_fat to 2 because num_fat 1 and ActiveFAT pointing at the second FAT i=
s
*definitely* bogus.

And that could result in us crashing and leaving the device with a header=
 that
says 'num_fat =3D=3D 2', ActiveFAT =3D=3D second, and the dirty bit set -=
 and the user
next uses the  filesystem on a system/device that hard-codes that there's=
 only 1 FAT,
so it blindly goes on its merry way using a FAT that's stale and never re=
alizing it.

And that's actually the same failure mode as in the first paragraph - you=
 start
off using FAT1 because you don't see an indication that it's stale.

--==_Exmh_1581722738_27211P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXkcscgdmEQWDXROgAQIXsxAAnwJ6P42Kc48EOFVYv1sqnEgmMGQ91vRL
Y4QiUeK8AT/sRAa3s4MlvKBFZtI4+qytCf009UgdY9XWnZe4LymHel/ZQxerVllS
pRYWycRCy7RxlRMYycD3gpOR1zOh3W/ijHthSZSeMjwLhFoyypfVXXoj/4e8N/Jw
3jtKbikQWPBi7/agoPu9rLczip/xZlpIDp2guQ0QwJEPxWjneEkDp8K5TAQxxQqR
/EHNgP3YNarPwo8dp+J6IzIDZBLi9VKf+z+zrkmvKW30nCFEVvly3Eoaxwo04mVH
5ElA1VWqnC13rfE2A4CJKHgAKW46Jw9XDhHt3mk4lqzeLoB6s4crjpa94o+SOle7
n6XM45HAuVUhyIzAnRbr+tMmejYZhs6qIf6O89L6LFk+b4Qh9MuIS1PtuZe8964o
EAJlOpGgC8m2Cszz7ZZVisvLUkMiEkqWCWb/84hbv2f6V5EHSHDuRXPa/cSnwTYK
g39oJXDS0vr4coX3L+A9P1v38/dD+Dz13lB3XW+C9BFHaychrSVDBLmYpWf2mrbx
GN185jBn1QXSSJCElS/BDI2gWey4/ro/WpJ1kuZoqCiNcy5pqnd2LOVHxpeX3qNW
PWyZTsFZHwQIgvpqvcAPx+KHCAuAONW2ZQaAcl2/XKgFJp5DtOl0yrycWBRUA8bC
stu0iNTBrxY=
=VpDW
-----END PGP SIGNATURE-----

--==_Exmh_1581722738_27211P--

--===============1538729655789668206==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1538729655789668206==--
