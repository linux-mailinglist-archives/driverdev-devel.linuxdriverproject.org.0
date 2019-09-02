Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC07A58CF
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 16:09:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B1F385F29;
	Mon,  2 Sep 2019 14:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AQAV0PyhCuqP; Mon,  2 Sep 2019 14:09:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7FC1F84475;
	Mon,  2 Sep 2019 14:09:12 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6410C1BF333
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 14:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5E23185F8A
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 14:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C9ebHNF2xxSf
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 14:09:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C23885F54
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 14:09:04 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x82E92r2026772
 for <driverdev-devel@linuxdriverproject.org>; Mon, 2 Sep 2019 10:09:03 -0400
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x82E8vuJ009102
 for <driverdev-devel@linuxdriverproject.org>; Mon, 2 Sep 2019 10:09:02 -0400
Received: by mail-qk1-f200.google.com with SMTP id t6so7305300qkm.7
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 02 Sep 2019 07:09:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=Y9piwA0T94Yl0x1NdJHb0vkU7Qu2Ju6kVYsO5PMTRog=;
 b=JIme6jK8gJRnPaBEnG2M7tU+KJYROORFPgQlG1ZaaZkKe2/0Yr44NozUIp8AHnEA95
 9D65yc1ENcfgWPRrU2M1UwQlV4gBZPF7/rX1c74SB4/TAZSW75cUfuxulzF35QcYCOEr
 xh2nNtNlobzcxoV3JfoHvRthXAzx0kAms0zU+PdtKBHVd+AzP+CvLPJn0e6uUZxoltVn
 4aokJ3YHXfwznuCbp/mvq0KdDkCTc9/024/xrFLolm1kzQm5KlIQpxtH+3FTZQVXtZ0p
 1pudzbPBMDAO8ZXiIVQLWzSPysfVPXIxOPY2z8k625o68WTkO7rU+GmSGALwxF37HjKB
 y4qg==
X-Gm-Message-State: APjAAAVihZLV1G3HXL2lqdxe0UIP94Nbr7CYwdKk7vMj+NXq7Q9xGTs2
 195YNOEnDhwRqJzRxDsweQLPbHNnE8MneZVbd3+xKESxD5n3MEQkS8PBFS6mRyL2A3iAfBY0mjN
 +X3Rl53scyIJXNParxQ8xF7RAebzRxD5t3QCEoy3vK4bZSFNK
X-Received: by 2002:ac8:31b3:: with SMTP id h48mr28817373qte.300.1567433337395; 
 Mon, 02 Sep 2019 07:08:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzEIZz7wUe6ozAuQo1Xbd7nV17cRFAitabF9mJ8QANd/k4zefjsozScTocyvDn0rwLXKR13WA==
X-Received: by 2002:ac8:31b3:: with SMTP id h48mr28817281qte.300.1567433336279; 
 Mon, 02 Sep 2019 07:08:56 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4340::ba0])
 by smtp.gmail.com with ESMTPSA id g19sm5415926qtb.2.2019.09.02.07.08.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 07:08:55 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Anatoly Pugachev <matorola@gmail.com>
Subject: Re: [OSSNA] Intro to kernel hacking tutorial
In-Reply-To: <CADxRZqyBgDEiZaK5At2RoCHPNquRA6OWvFg2SU3TZ9hsqEs8rg@mail.gmail.com>
References: <20190705025055.GA7037@ares> <20190719093658.GF3111@kadam>
 <20190722092923.GB22763@ares>
 <CAPTh4OtcwP_B7gY2HLDQvihuubCKbTbVgnF9LkKaFg=pqSs64w@mail.gmail.com>
 <20190902015137.GB14611@ares>
 <CADxRZqyBgDEiZaK5At2RoCHPNquRA6OWvFg2SU3TZ9hsqEs8rg@mail.gmail.com>
Mime-Version: 1.0
Date: Mon, 02 Sep 2019 10:08:54 -0400
Message-ID: <490137.1567433334@turing-police>
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
Cc: Kernelnewbies <kernelnewbies@kernelnewbies.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: multipart/mixed; boundary="===============1903842468998806037=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============1903842468998806037==
Content-Type: multipart/signed; boundary="==_Exmh_1567433334_4251P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1567433334_4251P
Content-Type: text/plain; charset=us-ascii

On Mon, 02 Sep 2019 15:42:19 +0300, Anatoly Pugachev said:

> is it intentionally that you use
>
> yes "" | make oldconfig
>
> instead of
>
> make olddefconfig

They do something different.  'olddefconfig' just takes the platform or
architecture defconfig and updates it for any new CONFIG_* variables added
since the last time the defconfig was updated in the tree.

yes "" | make oldconfig  does the same updating for new CONFIG_* variables, but
starts with the most recent .config - which produces wildly different results
if the .config had previously been minimized by 'make localmodconfig' or other
similar techniques.


--==_Exmh_1567433334_4251P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXW0idQdmEQWDXROgAQJuVQ//ZBKGZDGSTWRPKMW02OhRokN+dPP5/h4F
9+uV6+0ppyFqPnIJkqrz8llxiiZnRwdACWBe54puuo1EaclnGQiOrw5MPk00tHmU
JWZS9ZGip+HLOeOT/BwF9D5cLpaH6q0hctZeAB0V91U/96+eAt7dXOVEnyaE+/ZY
HL7p/oNV54GjEAXpKkobdqBGJue6lkt7LQm4I7/wMJpioySFgd0QLpUJ5bRRW1Mf
jF/YRdVXaKuyd+2EE23FatkLmVzNRN6zmJvRY/uJthBTpYxxiBa21r01qchB4Vcb
gZUABGQ14+H2dDYb/pAFwwqsko4No4R0YzPzqy+Gj0SHfNOEt+ORbdYDN2HxSMwK
6YdoezaDS/OZbljJNWNzL3CMHw+tF/etXjauLqC0gszekc/kaAOsaKWGnF4eIcP8
3on7Y7TgUC676YiQahLVVXx2V1Z5Hmg7Ne8VEn/9N3tBbUqJYuAjNJ2QjpkAX8X5
y9AmSOw4uIjbOgYSOnNynu+ladhGlaI7IaqVWowuIkPH/e3Ygc/qykBSnB1hvWUW
4kDRBozljP/q/2Rm4BC3A9UYKnjKCW6/QggGlZQdhJTwhMNNS9lHWEu/uDZsrm07
92ZoXRI8KDJui7cYpRWYmZO1ttir9zwBKxzqYNIqaciG3ZkAUKdOI3CWqxFImeEd
PyWXaxihe0o=
=1WgW
-----END PGP SIGNATURE-----

--==_Exmh_1567433334_4251P--

--===============1903842468998806037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1903842468998806037==--
