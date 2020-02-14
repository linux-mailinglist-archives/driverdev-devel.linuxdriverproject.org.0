Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B94B115FA0A
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Feb 2020 23:57:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C30B878E5;
	Fri, 14 Feb 2020 22:57:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MG1Vu2a0c2WN; Fri, 14 Feb 2020 22:57:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A509878D0;
	Fri, 14 Feb 2020 22:57:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 279261BF5DF
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 22:57:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1BC7E22636
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 22:57:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id czdc6tOKFhhr for <devel@linuxdriverproject.org>;
 Fri, 14 Feb 2020 22:57:40 +0000 (UTC)
X-Greylist: delayed 00:41:11 by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id F1FE3203DD
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 22:57:39 +0000 (UTC)
Received: from mr2.cc.vt.edu (mr2.cc.vt.edu
 [IPv6:2607:b400:92:8400:0:90:e077:bf22])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id 01EMGR34029158
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 17:16:27 -0500
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mr2.cc.vt.edu (8.14.7/8.14.7) with ESMTP id 01EMGMHC015917
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 17:16:27 -0500
Received: by mail-qt1-f200.google.com with SMTP id p12so6847685qtu.6
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 14:16:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=eJQfIN4vckK3hUkjct5X1Ay1QWrTD3wdbdr+ZOUlltA=;
 b=LyxnEdmshYTTeTEsO+5Ens9Au8AJBauklvuOSfULrZKkAyl+TdmaikPDj7VLcPf+S2
 jiOyWpP8YseMDp1awRALhgyec8g5wZ5RyXPC2zD2qNFjh0ELP8KXo2ud5hO2QuytFmid
 bPCzURfGGYg8B53mAmuqBUe4jEjRi/wl+kZcy/jjRgspd73OfbwH9uDsdQI2wr6oDAPv
 b5MUDCAwnmRpu7eUf2b7S3UgQJFmZ/a0xUpqI5VHLjSOyOZjhxKryUCl2gMAQ8D93LHA
 ydwRf41jKNJUEOqO8IKCWtYMqficYn82D/BBYngo2ae0VV7dCAEZSz8YQGawAaZjaWc/
 AHQg==
X-Gm-Message-State: APjAAAU1lyCM2VAhm6zSkRdrJKkX1M+zPA/Cp3pEkAIJu/GW/qM98VCV
 HxBEkvOB6m8GsuKa85dUmEOZjAfTZvN6EvriMz0cc1ojI4LIlu5l8yOUa541OY9UIWX6Dy1KLYy
 Z9ktzkCQzsbWKjXriSOP7A+ZoxI1/sv02
X-Received: by 2002:ae9:dc85:: with SMTP id q127mr4618894qkf.460.1581718581957; 
 Fri, 14 Feb 2020 14:16:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqyyXhf9ySjiOcoYhCw3Npb8sBi+pCL4GfySWR4dtPZqBKpxKv5rWOUxYeNMQvsuo/hmv53Wiw==
X-Received: by 2002:ae9:dc85:: with SMTP id q127mr4618857qkf.460.1581718581514; 
 Fri, 14 Feb 2020 14:16:21 -0800 (PST)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id m204sm4224406qke.35.2020.02.14.14.16.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 14:16:19 -0800 (PST)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
In-Reply-To: <20200213211847.GA1734@sasha-vm>
References: <20190829205631.uhz6jdboneej3j3c@pali>
 <184209.1567120696@turing-police> <20190829233506.GT5281@sasha-vm>
 <20190830075647.wvhrx4asnkrfkkwk@pali> <20191016140353.4hrncxa5wkx47oau@pali>
 <20191016143113.GS31224@sasha-vm> <20191016160349.pwghlg566hh2o7id@pali>
 <20191016203317.GU31224@sasha-vm> <20191017075008.2uqgdimo3hrktj3i@pali>
 <20200213000656.hx5wdofkcpg7aoyo@pali>
 <20200213211847.GA1734@sasha-vm>
Mime-Version: 1.0
Date: Fri, 14 Feb 2020 17:16:18 -0500
Message-ID: <86151.1581718578@turing-police>
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali.rohar@gmail.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2648829777224240579=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============2648829777224240579==
Content-Type: multipart/signed; boundary="==_Exmh_1581718578_27211P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1581718578_27211P
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Thu, 13 Feb 2020 16:18:47 -0500, Sasha Levin said:

> >> I was hoping that it would be possible to easily use secondary FAT t=
able
> >> (from TexFAT extension) for redundancy without need to implement ful=
l
> >> TexFAT, which could be also backward compatible with systems which d=
o
> >> not implement TexFAT extension at all. Similarly like using FAT32 di=
sk
> >> with two FAT tables is possible also on system which use first FAT
> >> table.

OK.. maybe I'm not sufficiently caffeinated, but how do you use 2 FAT tab=
les on
a physical device and expect it to work properly on a system that uses ju=
st the
first FAT table, if the device is set to =22use second table=22 when you =
mount it?
That sounds just too much like the failure modes of running fsck on a mou=
nted
filesystem....

> >By the chance, is there any possibility to release TexFAT specificatio=
n?
> >Usage of more FAT tables (even for Linux) could help with data recover=
y.
>
> This would be a major pain in the arse to pull off (even more that
> releasing exFAT itself) because TexFAT is effectively dead and no one
> here cares about it. It's not even the case that there are devices whic=
h
> are now left unsupported, the whole TexFAT scheme is just dead and gone=
.
>
> Could I point you to the TexFAT patent instead
> (https://patents.google.com/patent/US7613738B2/en)? It describes well
> how TexFAT used to work.

I don't think anybody wants the full TexFAT support - but having a backup=
 copy
of the FAT would be nice in some circumstances.

Actually, that raises an question....

What the published spec says:

The File Allocation Table (FAT) region may contain up to two FATs, one in=
 the
First FAT sub-region and another in the Second FAT sub-region. The Number=
OfFats
field describes how many FATs this region contains. The valid values for =
the
NumberOfFats field are 1 and 2. Therefore, the First FAT sub-region alway=
s
contains a FAT. If the NumberOfFats field is two, then the Second FAT
sub-region also contains a FAT.

The ActiveFat field of the VolumeFlags field describes which FAT is activ=
e.
Only the VolumeFlags field in the Main Boot Sector is current. Implementa=
tions
shall treat the FAT which is not active as stale. Use of the inactive FAT=
 and
switching between FATs is implementation specific.

Sasha:  can you find out what the Windows implementation does regarding t=
hat
last sentence?  Does it actively use both FAT sub-regions and switch betw=
een
them (probably not), or does it read the ActiveFAT value and use that one=
, or
does Windows just use NumberOfFats =3D=3D 1?

I'm assuming that the fact the doc also says =22NumberOfFats =3D=3D 2 is =
only valid
for TexFAT volumes=22 possibly means =22Microsoft thinks that's hardcoded=
 at 1=22
given the death of TexFAT.  That would make adding alternate FAT support =
a
major challenge.

On the other hand, if Windows actually looks at the NumberOfFats value, f=
inds
a 2, and ActiveFAT =3D=3D1 (meaning use second table) and says =22OK, wha=
tever=22 and
just uses the second table from there on out, it becomes a lot easier.



--==_Exmh_1581718578_27211P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXkccMgdmEQWDXROgAQJrXg//bPrYDkf+/qHxzc4KiI24Rxtqdm4U7Az9
dKL7V6gOwwbrxTrr+xIZvmIKJv49976Gx1CTVDVrWaXt8TssINoO9jmJlQOHMQ4P
DzgVhXgkzZuLbiJ5mFMMrNT5JLiCnx3clSkgSTVXxKXXsfKNFFtC3N6RqExxSB8R
mh3bU2o5kyu3+iIwstusdTjHOc6pyUDSTmJ4IgptP1GCiVxUmvzpeNR3MxcPPt0Y
y8gI2si8AxK9koQHPxmQxrfviTvcBhqZ9dnR+Ap+aLgdPCea1MgXW9/zReficgj/
sUsdqKOrKvS8lyIZbninbaXqht6jUdnyHmENqvmGfKDz0b5OZjFaS62OAkd1DHPM
2rtFlgRCNMVcbu3p+pxbl1QiGb+xgakOzYiQEHjKFKQRcsXNcHUp/wstMOQsboF+
SdnxDhKdK4Vagwur9ZyPeGZfHEOk1CCM4/VCNCOqs+qZo+YBqZbxC8uhMd53/fUl
231KAF796DKrCeIsMdoGSinaGJOqXvuHzQoXTPKYcpGglnvvje35DYxhkVs33WFU
U+b0IIoofQhzNBIJeniKpqNai5AsNNHjA4Mrnpp72sb5DA/Zll36RgXIn/+CG52/
aF2BJpOWIJdCa1X3KGoae3dNdU6n95ZHdTsKqh54ZeITB+El0BwB1uNyzHhgVjhI
e9fqc6Jcr+8=
=pN4u
-----END PGP SIGNATURE-----

--==_Exmh_1581718578_27211P--

--===============2648829777224240579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2648829777224240579==--
