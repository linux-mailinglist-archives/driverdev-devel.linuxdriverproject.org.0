Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D287F0939
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 23:21:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B150689160;
	Tue,  5 Nov 2019 22:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5pV8GyC0uxw0; Tue,  5 Nov 2019 22:21:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8199388D2A;
	Tue,  5 Nov 2019 22:21:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B66CC1BF2A0
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 22:21:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AA2C920386
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 22:21:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3usLalrkikPf for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 22:21:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id C5E8E2036C
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 22:21:08 +0000 (UTC)
Received: from mr4.cc.vt.edu (mr4.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8300:0:7b:e2b1:6a29])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xA5ML7w6021529
 for <devel@driverdev.osuosl.org>; Tue, 5 Nov 2019 17:21:07 -0500
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xA5ML2En009580
 for <devel@driverdev.osuosl.org>; Tue, 5 Nov 2019 17:21:07 -0500
Received: by mail-qk1-f198.google.com with SMTP id d144so22715424qke.16
 for <devel@driverdev.osuosl.org>; Tue, 05 Nov 2019 14:21:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=vyZgv1MiU+dLASUlz/w5fhHaWpJco8awE8e8/l18HM8=;
 b=jzkUivxcNcDMyviiSsFRr0PlSHzEGaviF4jEM5X+8M0PV4j6o0J17rZbejRwZlxg0U
 O9bMukL/zXMKAip5o/Lhe3iF5kkvpVgIFs2tgOWTJ7cR6S4k7P+WUZCjZ6H+8YLkjYWw
 8HJuhWq5pp9Xpq2wkmxBRjiIWeFXE6HLEzk4Vb1Ii7fMpKfVW49D3mH5+Ppu4KwMr1ql
 nyeaMsE3ja00HG03U58fSBvC65pIYMUDpEXtEqB3VAF9ZR07+lUehuu4OcLzT3mU9Udf
 7edGcnlaZFZR4ZmQJfKglPyFLWlUhfj+qXvFayFmJPfzM/phUS2tHbqhYrlmUxqdUGfP
 X3vw==
X-Gm-Message-State: APjAAAVEs5/dsNAiGim8g4n1qOl9JAajbUhpgeMM33nMv12w1eVhS9Ze
 2pDri9UgTRAkEZTPG3eEnzEpdNm/RY24Y+oMZazVpznYtlNX840KiItCfwWr05mbTLS3rOBv6ds
 ujj5Jw1wKjJqgt+EVAvZVPsGB+FDRUJ6y
X-Received: by 2002:a37:4a03:: with SMTP id x3mr8462589qka.301.1572992462005; 
 Tue, 05 Nov 2019 14:21:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqyPsD33kXaQMHPELEvfE/dIKy+dRschpRCQh2Q7Ve/jTW1IiTuRxbnvGU6B68MwsWvRCSASsA==
X-Received: by 2002:a37:4a03:: with SMTP id x3mr8462563qka.301.1572992461718; 
 Tue, 05 Nov 2019 14:21:01 -0800 (PST)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id w30sm7962787qtc.47.2019.11.05.14.20.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 14:21:00 -0800 (PST)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 01/10] staging: exfat: Clean up return codes -
 FFS_FORMATERR
In-Reply-To: <20191105170515.GA2788121@kroah.com>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
 <20191104014510.102356-2-Valdis.Kletnieks@vt.edu>
 <20191105170515.GA2788121@kroah.com>
Mime-Version: 1.0
Date: Tue, 05 Nov 2019 17:20:59 -0500
Message-ID: <254569.1572992459@turing-police>
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
Content-Type: multipart/mixed; boundary="===============0941451013291083208=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============0941451013291083208==
Content-Type: multipart/signed; boundary="==_Exmh_1572992459_14215P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1572992459_14215P
Content-Type: text/plain; charset=us-ascii

On Tue, 05 Nov 2019 18:05:15 +0100, Greg Kroah-Hartman said:

> This patch breaks the build:
>
> drivers/staging/exfat/exfat_super.c: In function ‘ffsMountVol’:
> drivers/staging/exfat/exfat_super.c:387:9: error: ‘FFS_FORMATERR’ undeclared
(first use in this function)
>   387 |   ret = FFS_FORMATERR;
>       |         ^~~~~~~~~~~~~
>
>
> Did you test-build this thing?

Yes.

And in my tree, that section of code has:

 385         /* check the validity of PBR */
 386         if (GET16_A(p_pbr->signature) != PBR_SIGNATURE) {
 387                 brelse(tmp_bh);
 388                 bdev_close(sb);
 389                 ret = -EFSCORRUPTED;
 390                 goto out;
 391         }

but 'git blame' says that was changed in patch 02/10 not 01/10, most likely
due to a miscue with 'git add'.

Will fix and resend.

--==_Exmh_1572992459_14215P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXcH1ygdmEQWDXROgAQI1kA//Rfa96SA6XLx+Daor411E3eDVKUZtliYZ
g+je1j8mXFOcy3OfO7yWz6d9LFZ7/NIWIif7veH3RMe0inn9iLDuxNUKF0Pw3Ceu
yy1NMnS+UT7YbO2PZuiWf/mmjW5FJ9nQ8zyHbiNhF886+5FWAmygDyHJzzNP90pQ
ZaCSTlMPHCviDPPJIwOCiw66sT6loNLRJPiYAzjhgRgQ5QMNpH32413GGKx+DQFj
34LAI7SAVJWGOEK6dE3HRAn+jmTayN2o/9SMqewgaTFh9JNVYHytH24mDLLQFDYu
IdbCK5zU6/IDFJn5TcPbzkH+K6R/2ZY3RU8MFZFaJ/jrtR54gG40MX/8BdHqVp1/
nsMhHaBLnh1GAmZy7QRGHhCsCCvJOozMzL25k9943hC7WBw9hhR0XgT6UDsiFhNU
i/YqUu5KN7gzjuflDHvQ+9ot4YL6sreuTM5Oq7MaQsS6UhHWLGK7f2K0dhrokvVC
cSLedpOuqgXZ7CWt9X7ZPWf/W3LzX6URoJi4ou+CJHjAX3/bRCeUCiPXdFoKFLGl
yo4Xe2jxuellQ3HHgBEVkKTDMw63gGFY2/pRMT8LmHYn/36A36DI6UDB88snqu9U
vHtS1JpXq32lEzcidLSLB7Kobn8vM85ZutaiV+L1eB6hPuy6mo1qXDVLauKGxc3p
UesLLDPlgn4=
=ZmFx
-----END PGP SIGNATURE-----

--==_Exmh_1572992459_14215P--

--===============0941451013291083208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0941451013291083208==--
