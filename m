Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BA0639B5
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 18:51:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D5F3580AC8;
	Tue,  9 Jul 2019 16:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G3e36Z4JIAWJ; Tue,  9 Jul 2019 16:51:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5428B80EC3;
	Tue,  9 Jul 2019 16:51:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F0C71BF969
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 16:51:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 46EF880AD3
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 16:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 579BgSAfglCe for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 16:51:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8206B857D8
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 16:50:52 +0000 (UTC)
Received: from mr5.cc.vt.edu (junk.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x69Gop2L028057
 for <devel@driverdev.osuosl.org>; Tue, 9 Jul 2019 12:50:51 -0400
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mr5.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x69Gok67013455
 for <devel@driverdev.osuosl.org>; Tue, 9 Jul 2019 12:50:51 -0400
Received: by mail-qt1-f197.google.com with SMTP id x10so19877761qti.11
 for <devel@driverdev.osuosl.org>; Tue, 09 Jul 2019 09:50:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=pYyupce07jX+WDxPtqdtXk3hG5t417BkTzPivM8p47w=;
 b=Ubml95z40N5gSDx12dkSRSiA+XdyVHkdgkvZRiq2I8ZkA2FwJHR5qzan0Boj5Bchiv
 FTorgAyKPQeYFNA9zG1lBKwV/Pujxu6G3XLMCHRvazIw39sySoFbAoxGN4eKMgZSKyTr
 6H0rsitK7V6gSyTrQ/OOhsTqIgT2wyykXguoeskRqZ0BdXL7d19SKUq2B7COMyclDiXf
 QFj7o3/GDc0qirpG28P4fdWXyvjf5lUDV105+CEWb5EuK20ih1mKxmf7kxOHkUTbawJa
 de/A6J/s4BAfAVYtnsbSR2/irosfbCXMoF69MxuQsG1N38OEvBahkbDZazopRxD1WxFm
 B49w==
X-Gm-Message-State: APjAAAW+UZC9LWTUvjTvJazlO7mYIBxJJ67pacq8HIqjePxHpCyKb4wr
 O9rkoSGBhfahho7R4fOvdqztFid2g+09+BqLpiuOepsJdyEW6gbLXqdRRwtZi9DUdAEEyEVty5H
 w6T3ItRdLUOdcbVKP1QB9pq3koQ6REwrr
X-Received: by 2002:a37:4b46:: with SMTP id y67mr19205097qka.66.1562691046234; 
 Tue, 09 Jul 2019 09:50:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxgaCF5Vy7+up/DCAY/qBFZBrxFfhiU0tMqaxFR0G0zFt+i3kSSn4l5D4I+4TFTR5M97RMWjg==
X-Received: by 2002:a37:4b46:: with SMTP id y67mr19205078qka.66.1562691046042; 
 Tue, 09 Jul 2019 09:50:46 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::7ca])
 by smtp.gmail.com with ESMTPSA id x10sm12844861qtc.34.2019.07.09.09.50.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 09:50:44 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: KY Srinivasan <kys@microsoft.com>
Subject: Re: exfat filesystem
In-Reply-To: <SN6PR2101MB10726033399AEA1D0BD22067A0F10@SN6PR2101MB1072.namprd21.prod.outlook.com>
References: <21080.1562632662@turing-police> <20190709045020.GB23646@mit.edu>
 <20190709112136.GI32320@bombadil.infradead.org>
 <20190709153039.GA3200@mit.edu>
 <20190709154834.GJ32320@bombadil.infradead.org>
 <SN6PR2101MB10726033399AEA1D0BD22067A0F10@SN6PR2101MB1072.namprd21.prod.outlook.com>
Mime-Version: 1.0
Date: Tue, 09 Jul 2019 12:50:43 -0400
Message-ID: <24605.1562691043@turing-police>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Sasha Levin <sashal@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============2648638863672738847=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============2648638863672738847==
Content-Type: multipart/signed; boundary="==_Exmh_1562691043_2389P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1562691043_2389P
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Tue, 09 Jul 2019 16:39:31 -0000, KY Srinivasan said:

> Let me dig up the details here.

In case this helps clarify the chain of events, the code in question
is the Samsung code mentioned here, updated to 5.2 kernel....

=22We know that Microsoft has done patent troll shakedowns in the past on=
 Linux
products related to the exfat filesystem. While we at Conservancy were
successful in getting the code that implements exfat for Linux released u=
nder
GPL (by Samsung), that code has not been upstreamed into Linux. So, Micro=
soft
has not included any patents they might hold on exfat into the patent
non-aggression pact.=22

https://sfconservancy.org/blog/2018/oct/10/microsoft-oin-exfat/
=20
(Link in that para points here):
https://sfconservancy.org/news/2013/aug/16/exfat-samsung/



--==_Exmh_1562691043_2389P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXSTF4gdmEQWDXROgAQL54Q/9Hlj0gpg86LJ/QMJSgnF2F4/8RSnWxUX8
XORTc3xuKuh0usDDWrb00semHxVT8dQfISpM7bvfiTGB1p5RO522PA/QI2bU9vTk
tIZzLLDmqk/ambCGDF6SdKaPtTTw2Yx4KSkhzjUc3i1CBg2R9YUfpST/Y93NAtwr
Vx64TgufPWmNtU7/sUiEKSFV2T6EIdv3gHoog+/JoPioRwmdVH0DhxgVWy7lki3s
vMkJg3XJYsPDHe+P8F30RRSTQAwq/5HmtbF4nmFAASBYuD2vyAAraVtOxkkcyLKb
DMhFbw7LyScyYVv9C1W2GfCjySjmacHDr7E0tZqfZFqj0/JiA+/McjxEWydrZLae
80LU3QBR0jIM9TX2y/IWOA+A+YAlzaYE+HY1JrnqqmsuS0ygF2CU093F1ebYmEFM
XvdjkVWZRocxZW/RAE0PurJKAJvqoNm7PjJEzOqdgZsP9a2g39OxoXdA8OoMNsgv
0dRH92veXFLgbyMbAjwNYgfmUyJi1n6AEtflZW4tdBCo5yTs2qyQNgzpZ8/9nxzM
YzfKeGSIomxWvPPmi3Ku9JY5y6MHaaNNo/DshPKYjZflZYBdVA5OBsEXhHKf1ANt
aWUe43IU19mQm0zIHSQaTgKcXbpzhEEvNZqnEzBwyULgOETjg5Nda5VZbFziukup
qBtKuW2QIiQ=
=x5Ci
-----END PGP SIGNATURE-----

--==_Exmh_1562691043_2389P--

--===============2648638863672738847==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2648638863672738847==--
