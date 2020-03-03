Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3E1176D9A
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 04:39:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D674887590;
	Tue,  3 Mar 2020 03:39:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LeFmaQhuKpSR; Tue,  3 Mar 2020 03:39:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 27419872E8;
	Tue,  3 Mar 2020 03:39:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B813F1BF2E5
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 03:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B3D50204ED
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 03:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iEilNYJBtB99 for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 03:39:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id C89C420243
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 03:39:28 +0000 (UTC)
Received: from mr5.cc.vt.edu (mr5.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8400:0:72:232:758b])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id 0233dR4Q030320
 for <devel@driverdev.osuosl.org>; Mon, 2 Mar 2020 22:39:27 -0500
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mr5.cc.vt.edu (8.14.7/8.14.7) with ESMTP id 0233dMo6026859
 for <devel@driverdev.osuosl.org>; Mon, 2 Mar 2020 22:39:27 -0500
Received: by mail-qt1-f198.google.com with SMTP id t4so1371482qtd.3
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 19:39:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=FTbJOMePSTPFZUgojgxvDoh7xnLDmsFnL2EoLai2PSI=;
 b=Im+v1cn6Agz7hkM3DXj95N08M59teOFH/zDGYrWLlkIKMH1q/jevJu2M9VtNeE6BkV
 4NqNcBvXFznMBGDSUtAQDXYjP/hNE14JGYhlt20mPNlQQdb4aRwhD3KeF5RiKZC4wmeZ
 Bib9J73UMM6qhQGAlibW7AdaOIlZ2zRkBYIQHxSe7mpOH85YUH1bX+3nr+Kq/0q/S9jl
 256Op3ZUE/g6yq9qgGy3iwNC06oTkk3sjjWVo4Rs1m5Ay7xFIjMSFROpGSI85XasYDK8
 31xunY0l4cSpW+iSBVib5OGg7yHUpOi2U5dwO1g5U1wZc9WkrTr9//wdMjaNpEafY+Ag
 vLHg==
X-Gm-Message-State: ANhLgQ2aEMPQaqYHfwiFAd5XmeYrQeU00hc3YPUYrw3IsIhiKKI98oLC
 D34ql6oVEcO7qmnv0we8fIOlmu9ZdVKwRpnKESOq3po0pqUqEH39d9K6FKnpY3f1ig4ylasajjd
 OhjXSflp2Up5yp5uGBfC/7c4hPu5oCTLb
X-Received: by 2002:a37:a7d2:: with SMTP id q201mr2452446qke.144.1583206762107; 
 Mon, 02 Mar 2020 19:39:22 -0800 (PST)
X-Google-Smtp-Source: ADFU+vvwQMeMav5A4bTYMSAhdKnSSxWMCEzktF52MG9KJML2CW3SBd0QJ/NKuQgC8ICg1bjcB7PuLg==
X-Received: by 2002:a37:a7d2:: with SMTP id q201mr2452435qke.144.1583206761795; 
 Mon, 02 Mar 2020 19:39:21 -0800 (PST)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id w13sm4637470qtn.83.2020.03.02.19.39.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 19:39:20 -0800 (PST)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: "Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp"
 <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
Subject: Re: [PATCH 1/2] staging: exfat: clean up d_entry rebuilding.
In-Reply-To: <TY1PR01MB1578983D124E99FB66FB707190E40@TY1PR01MB1578.jpnprd01.prod.outlook.com>
References: <20200302095716.64155-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
 <240472.1583144994@turing-police>
 <TY1PR01MB1578983D124E99FB66FB707190E40@TY1PR01MB1578.jpnprd01.prod.outlook.com>
Mime-Version: 1.0
Date: Mon, 02 Mar 2020 22:39:19 -0500
Message-ID: <295313.1583206759@turing-police>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Motai.Hirotaka@aj.MitsubishiElectric.co.jp"
 <Motai.Hirotaka@aj.MitsubishiElectric.co.jp>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Mori.Takahiro@ab.MitsubishiElectric.co.jp"
 <Mori.Takahiro@ab.MitsubishiElectric.co.jp>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============4073788606700715976=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============4073788606700715976==
Content-Type: multipart/signed; boundary="==_Exmh_1583206759_2391P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1583206759_2391P
Content-Type: text/plain; charset=us-ascii

On Tue, 03 Mar 2020 03:07:51 +0000, "Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp" said:

> > Are you sure this is OK to do? exfat_get_entry_type() does a lot of
> > mapping between values, using a file_dentry_t->type, while
> > fid->type is a file_id_t->type.

> The value that vfs sets to the old_dentry of exfat_rename() is the dentry value returned by exfat_lookup(), exfat_create(), and create_dir().
> In each function, the value of dentry->fid is initialized to fid->type at create_file(), ffsLookupFile(), and create_dir().
>
>  * create_file() <- ffsCreateFile() <-exfat_create()
>  * ffsLookupFile() <- exfat_find() <-exfat_lookup()
>  * exfat_mkdir() <- ffsCreateDir() <-create_dir()
>
> > and at first read it's not obvious to
> > me whether type is guaranteed to have the correct value already.
>
> A valid value is set in fid->type for all paths.
> What do you think?

OK, that's the part I was worried about, but I hadn't had enough caffeine
to do that analysis.  Thanks.

Acked-by: Valdis Kletnieks <valdis.kletnieks@vt.edu>


--==_Exmh_1583206759_2391P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXl3RZgdmEQWDXROgAQIYeRAAkZo7uu42LhGq9PsreYrqUXNm0xB/XGj6
NZAvcAtGjsf20gasBoa0nkBE+yxBisOxu2z25nTVC6blNonyQPjBWf8S5iQVb5gd
vmC/yboWHfQHRXhPmOSod8FK1FjrqnAKV/+EBcHvcRcpqR3BJpBN89pckVAuFVKj
N5WJ+Guyaqhm8pNdllTla8uL5TvvpH3BOu9+y7l4vAgkJvkfjM3crScCXAlpxzmY
EBx4NL8RSvUuhcE4PTszpYebplIe8FmfmVGBb2YoOMVchKS72swX0ME7vy2KdaoE
7ZvAggB02ZuqSucoZonDTqrK5jLYcl7xbQBWfuBlQN10mi+wxL66HcKmsehLjjlS
q/qJWiE7cHjSPz+3cIVWqogYazOHF0j8clQGRbTPgo/SDBca/pAVlHOck80HCGTl
5YQWWBehNiqNC5UAODnQz4e0/RmORnecgq62NLaMgjUo6BoxgW5SEJxPJFpriACH
NwjVHB4km/xJwOSulIOIsMki59GoXSyaBtRVPYGV/ZqenE2rCBn9TYY1JKoLtXKQ
OLDnkSmN4VOxBh6RPZWNZ5hKDdbZ0TpyoqmpM+jxm6t2IvGG11ZZcgFWB31ZrD4d
dD1oX7QNpXu6CxAFWzBEk6sIGIdFNGHQ1NdMQYXTF/9Zhis0zufS/tmTtAhtNylk
qgb07J+8a1I=
=keUw
-----END PGP SIGNATURE-----

--==_Exmh_1583206759_2391P--

--===============4073788606700715976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4073788606700715976==--
