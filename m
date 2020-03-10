Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D409D17F63C
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Mar 2020 12:24:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E138860C8;
	Tue, 10 Mar 2020 11:24:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Tp8W1J1thl9; Tue, 10 Mar 2020 11:24:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9786086155;
	Tue, 10 Mar 2020 11:24:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F0E11BF5E0
 for <devel@linuxdriverproject.org>; Tue, 10 Mar 2020 11:24:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 445E72044F
 for <devel@linuxdriverproject.org>; Tue, 10 Mar 2020 11:24:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H1qTuVE39Vzc for <devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 11:24:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id DE32220343
 for <devel@driverdev.osuosl.org>; Tue, 10 Mar 2020 11:24:33 +0000 (UTC)
Received: from mr1.cc.vt.edu (mr1.cc.vt.edu
 [IPv6:2607:b400:92:8300:0:31:1732:8aa4])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id 02ABOW80015901
 for <devel@driverdev.osuosl.org>; Tue, 10 Mar 2020 07:24:32 -0400
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 by mr1.cc.vt.edu (8.14.7/8.14.7) with ESMTP id 02ABOR1G007684
 for <devel@driverdev.osuosl.org>; Tue, 10 Mar 2020 07:24:32 -0400
Received: by mail-qk1-f199.google.com with SMTP id m6so6101677qkm.2
 for <devel@driverdev.osuosl.org>; Tue, 10 Mar 2020 04:24:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=OesXhfFfB1ZZgxnRfuwwLM+t7VkmSIoWuSuAcfzfaQ8=;
 b=KA2qEresbvrVUjO5TjaM+a4PIjJhbrurkfeS2G2SIUIs0eOoqSkW2Zn5TfiazFnaD1
 N21Um/KXPDv7KwFzh4cJ5+iInGkQjvW9x9JKjtJ28rHZIsiMgolJEpib1TZcDa8gDibG
 kJizxz1Ta+QZZg4lqJO33CHi3dp9Do4mbjfQnN/ONB+f3dHn9YhoTgQJIxEUguDjaptR
 5FG9F7l9W2Ie7jA2Z910ylCOj2T9IGB+0aoPWJOEBNT8ym2rsx+vR20T9gK5k8fS0lYy
 IO3kc9q8qBK8F9txEekOZ8LUakortB8fqJus2H+DjMS4NCEJxyerxH8kLaciKG2u/TpJ
 1EXg==
X-Gm-Message-State: ANhLgQ1e3TZjXVS12K2x5oPcPzRijYhHmwYs/AOMcSaOHCuqIDDg41/1
 aQrWeOJaAVxyI5hXmeNpazMNjdyR4GVmUQJqAlOlFdtYZKi/2wn6h5JuAJ/PQOlsbk0o9aVCKvT
 Cj0JQhFC8eciPwHorqJtOhiw6fHioxLoo
X-Received: by 2002:a05:6214:60d:: with SMTP id
 z13mr5971518qvw.183.1583839142733; 
 Tue, 10 Mar 2020 04:19:02 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vto9Cc/inOPkYfcSZLmhvSxM16DJD9Z9E7y4/q01ZrjcE60oTAT3RepCU3XjTs472qHoHtnOQ==
X-Received: by 2002:a05:6214:60d:: with SMTP id
 z13mr5971506qvw.183.1583839142428; 
 Tue, 10 Mar 2020 04:19:02 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id w2sm23859201qto.73.2020.03.10.04.19.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 04:19:00 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: remove staging version of exfat filesystem
In-Reply-To: <20200310105421.GA2810679@kroah.com>
References: <20200310105421.GA2810679@kroah.com>
Mime-Version: 1.0
Date: Tue, 10 Mar 2020 07:18:59 -0400
Message-ID: <35151.1583839139@turing-police>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Namjae Jeon <namjae.jeon@samsung.com>,
 'Linux Kernel Mailing List' <linux-kernel@vger.kernel.org>,
 'Linux Next Mailing List' <linux-next@vger.kernel.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Sungjong Seo <sj1557.seo@samsung.com>,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: multipart/mixed; boundary="===============0646381249387840569=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============0646381249387840569==
Content-Type: multipart/signed; boundary="==_Exmh_1583839139_13328P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1583839139_13328P
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Tue, 10 Mar 2020 11:54:21 +0100, Greg Kroah-Hartman said:
> Now that there is a =22real=22 solution for exfat in the vfs tree queue=
d up
> to be merged in 5.7-rc1 the =22old=22 exfat code in staging can be remo=
ved.
>
> Many thanks to Valdis for doing the work to get this into the tree in
> the first place, it was greatly appreciated.
>
> Cc: Valdis Kletnieks <valdis.kletnieks=40vt.edu>

You can stick my Acked-by: on that. :)

And thanks to Namjae Jeon for graciously offering to take it off my hands=

by providing a better version, and to all the people at Linux Foundation
and Microsoft who did a lot of behind the scenes work to make it happen..=
.

--==_Exmh_1583839139_13328P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXmd3owdmEQWDXROgAQIhLhAAkEefL8MqDbPRHTLSuvJEcgA0wOk3+Y5q
NaIlQZ3VNZQkIguUEEKq4Ic+mpBl9+r8rWIbJiDWYe2gZRq+b4BFi8Dlc9T46yst
rW9YWLIGLsVwnCjvVRyZRO/S+6oSzFh6yTdkxQIBBOmWhhITLvIKoJozoSFTOwwn
I0G97lwb9++mH2r9n87/3NHOfTyUB061TU3l5/fk/a3bpWWYrR+NXEuEli8QGukl
eDwRMUvegpPBt/iPN7PTznuwbVKSYigB17Wopr+gAEnS3rZ2YeG2lkQFe7vnoevl
6FNTcq2W5hJU2Jrb2eAuKMrW4LVg2rSis8jHmM7Eeoi/Pkyko/Cdfw1TD5L0Uqc/
QYnofVkQrni42j8gCSTTHvzeag+rjmeSK/YEsjyYzVGnK3Hc+27mmMoHYTYQo7JI
k2r4nZCZINc67E/DeBb1hWEnlbjdfeKwQLrW5qAm/x9jumGPto+nfqyaNHKwfmW1
OMq9FCU+7HW9lG/FZHbOY/l0+yMlBeg3fM5YmiC0+aotmHPZiQoVMYDOThdG0ukc
z91DNBW2rsqmrfc83U8nxnNxfnYyfWuNJ03IuLIhRY6BsrsUXLKZiFRQUPjGAs7i
u+oBYngj9OUyw58ks8S5KYgoFZbqe1oWKBQ+fiXXKXqRt4CbagiSOeYcaVQPcctT
Sy9zO5MRsa0=
=l13Y
-----END PGP SIGNATURE-----

--==_Exmh_1583839139_13328P--

--===============0646381249387840569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0646381249387840569==--
