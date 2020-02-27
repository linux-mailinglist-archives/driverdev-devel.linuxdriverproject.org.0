Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 230BF1710A8
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Feb 2020 06:53:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8ABE522C44;
	Thu, 27 Feb 2020 05:53:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id otdPqyvopBec; Thu, 27 Feb 2020 05:53:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E167A220FB;
	Thu, 27 Feb 2020 05:53:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E26DE1BF867
 for <devel@linuxdriverproject.org>; Thu, 27 Feb 2020 05:53:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DF71886B76
 for <devel@linuxdriverproject.org>; Thu, 27 Feb 2020 05:53:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Teu7mfiigoUp for <devel@linuxdriverproject.org>;
 Thu, 27 Feb 2020 05:53:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 920B3864EF
 for <devel@driverdev.osuosl.org>; Thu, 27 Feb 2020 05:53:39 +0000 (UTC)
Received: from mr2.cc.vt.edu (smtp.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id 01R5rctE007324
 for <devel@driverdev.osuosl.org>; Thu, 27 Feb 2020 00:53:38 -0500
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198])
 by mr2.cc.vt.edu (8.14.7/8.14.7) with ESMTP id 01R5rXRh016213
 for <devel@driverdev.osuosl.org>; Thu, 27 Feb 2020 00:53:38 -0500
Received: by mail-qk1-f198.google.com with SMTP id m25so2559101qka.4
 for <devel@driverdev.osuosl.org>; Wed, 26 Feb 2020 21:53:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=ptwIgNl4i28mcg0Z1zyc5XtWjo/QODMLAPuj6bjdS1w=;
 b=atMENk7tgkMwWZq0mgPEiUuBfZ9NGsCzhOAZZ8Y0rXd0YWYBIfg6271OXFC0Gt+hsH
 04Fe6kIoODuweTdzOqdxdMEN8LhK/E/ebjqFYBbMpl8vGa+EdEkP6jVItJp45k2mXhoU
 6WtlQN511FKZ+QgtKuTWPAviiSchFqu2wsFPMsCq8ZZkxDXWRM15aJWHLmm+/gRSFb4T
 dskgt9KQF+WYoUWvinSZMb5pNoLeh8gmDp7D456ZgEYvNzk+7sHMC7jnObafnLCnqTaT
 uK4uD5Nl/SdIkD5bMuZfFw4n2Bv/nUwdb5vU2sjEu9ykL7Ji6PHL2VDE5thqARpInJaE
 Obsw==
X-Gm-Message-State: APjAAAX0mSb70GydGUdCU5nHT5cRklW/sCzHCEB42CJuvN328Bd60Gwy
 gDwYKoPtzLDtsIvN5WLdMyv70Gq/nmhrz/jL5Pzncn7nzhjMFQ+1H2djjcZ4RtEu8He8/WQvd6S
 caCaD+j2uOPXT2bvcM+plM3B4NlTQiHwK
X-Received: by 2002:aed:36a5:: with SMTP id f34mr2937479qtb.57.1582782813082; 
 Wed, 26 Feb 2020 21:53:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqyKZNWw/Ucu3Q9y81YAA8eBCVTAtZbF4AqqV3+ZJLEQt/+PiY3p3EXhCgITppc1rAjYtpI8dA==
X-Received: by 2002:aed:36a5:: with SMTP id f34mr2937463qtb.57.1582782812775; 
 Wed, 26 Feb 2020 21:53:32 -0800 (PST)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id a23sm2500067qko.77.2020.02.26.21.53.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 21:53:31 -0800 (PST)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: "Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp"
 <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
Subject: Re: [PATCH] staging: exfat: remove symlink feature : Additional patch
In-Reply-To: <TY1PR01MB1578C8F3D1A9F130C5844C6890EB0@TY1PR01MB1578.jpnprd01.prod.outlook.com>
References: <20200226063746.3128-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
 <503049.1582701983@turing-police>
 <TY1PR01MB1578C8F3D1A9F130C5844C6890EB0@TY1PR01MB1578.jpnprd01.prod.outlook.com>
Mime-Version: 1.0
Date: Thu, 27 Feb 2020 00:53:30 -0500
Message-ID: <59586.1582782810@turing-police>
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
Content-Type: multipart/mixed; boundary="===============1126800598484122779=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============1126800598484122779==
Content-Type: multipart/signed; boundary="==_Exmh_1582782809_2726P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1582782809_2726P
Content-Type: text/plain; charset=us-ascii

On Thu, 27 Feb 2020 02:14:02 +0000, "Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp" said:
> Thanks for comment.
>
> > Then this should have been [PATCH v2], and the fixed version [PATCH
> > v3]
>
> 2nd patch(Additional patch) not include 1st patch(RFC PATCH).
> And the 1st patch has been merged into 'staging-next'.
> Now I can't decide.
> a) Add only version information to the 2nd patch.
> b) Merge the 1st and 2nd patches.
>
> Which is better for v3?

The first part is in-tree, so we don't re-visit it in this case.  You want a
new patch that consists of *only* the second set of changes, and the changelog
for the changes for that patch.

--==_Exmh_1582782809_2726P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXldZWQdmEQWDXROgAQIe9g//Wa+udzeaAQxzyO1/RnzWU7l+jHb32Ajw
CvOd+3qd7H0qwL5/yvAXUs23rioz3kaCVYVFfqVUMtVZJx6dju+rSvMAgRC6OLb9
akWUEM0iL85V4NcjcQfwkf6koYb6wBrC0OKzfT1QRqUT7yeYTjqUxf2e+loHCHd/
uwGX60hksVsr4IgGRo8+7BISvbR+4DMrc2S6d/Ha2RtXi4FnnOldNcpXMjozCHrS
IdyqlkAmS1nG3RQsQ1g+iJo9CmwwZ7BL/OWft8yAMq9DBy2JvmhQmCq/dUeKaFnc
EM91Zh6lr2NYuwia+ff51ERDibuWJW10uxKYlnu/yl/0JUtmY6OHWxMxcD5QGaNy
F5KgTaRuCaxAsxb5mySNw2xrgu7bdOxVOKr5dSnm1dYeQYzRNG6o8mGsHxqH4JD0
Kbo8Ftr/RYkJYkhEHcpNKxxiwh/+nAFP5g72af1h605hLUJGAL2QsbBFu+/4aK5q
x4fsyUvfM78/Q+3tWwR8bPhmEx1hjuD5DNKIKbgEtYE9M9u93YzKcdY34KsE/yIk
2Ycy9IF/mnP2MCUBcqgQmgZaGmjgeqT4qgGWENEzFRR1qYT6T5cvZkCNS57TVqTJ
+trmkqBVc2aJD/zYibq5kymmBzGnI11N0lq7+nAnYwIEiUrEmzMXuf90vI7ocaP2
vKVSFcGO0u0=
=mg3v
-----END PGP SIGNATURE-----

--==_Exmh_1582782809_2726P--

--===============1126800598484122779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1126800598484122779==--
