Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 451C0AD164
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Sep 2019 02:28:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8FBC920517;
	Mon,  9 Sep 2019 00:28:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hot-+Xu9+BA4; Mon,  9 Sep 2019 00:28:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 54CB0204D1;
	Mon,  9 Sep 2019 00:28:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C1C3A1BF3CB
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 00:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BE677204A3
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 00:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 09dDftfK8bZE for <devel@linuxdriverproject.org>;
 Mon,  9 Sep 2019 00:28:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id DBD2820478
 for <devel@driverdev.osuosl.org>; Mon,  9 Sep 2019 00:28:18 +0000 (UTC)
Received: from mr4.cc.vt.edu (inbound.smtp.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x890SIuY028326
 for <devel@driverdev.osuosl.org>; Sun, 8 Sep 2019 20:28:18 -0400
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x890SC1K011279
 for <devel@driverdev.osuosl.org>; Sun, 8 Sep 2019 20:28:18 -0400
Received: by mail-qk1-f198.google.com with SMTP id o133so14369561qke.4
 for <devel@driverdev.osuosl.org>; Sun, 08 Sep 2019 17:28:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=2qj3aNALrf/f9RF7uRhfWtV/evjrLhtA15jCcsHYHxU=;
 b=OEt+2fWR3eNcwMq4y36l1HAjZsGQb3LFGsRKtPaQU6BB/+Un4FV253PIndqNdF3GpR
 X2qXPHWeSLSZ4D29azWREgiaL2zlxC9lIqnFfy97uxa+SoSJFp8KNZXrbEV7KofuvqBO
 qx/MDvGwUKFI1ldVPQDL6ElXpW+ywxovqfyyRFdCY8Y4NT7igyVSOrU9IvumcRrzH1N3
 Iu3ydhYCvg+WtziU9cwOugavXWG9eSeTx0OG7F4zZCUnT4UzMTxPt5Wua+ZWMvzzQBlq
 Ko1UxYl5a1aLmViPztL5Dofgou1Wri532GbkeiDmVXg5qooBN7OSgTx9vCwJ39jzuztF
 L/bA==
X-Gm-Message-State: APjAAAVkOP/DMfBrdaicobCD2gVFDz0YEx+oySQkZIplfLwtHeqDOGi7
 KNe1m42UEzG/OW4I/U8TAoRW/HWiReE/a2jhqhoOcq3cdO4U8XrFMSUmZQZpAIWku3/xOOWPTTI
 /M/8nvlpm98g98KoDdixbdAAlEdrkYpin
X-Received: by 2002:a37:a8b:: with SMTP id 133mr19973969qkk.365.1567988892836; 
 Sun, 08 Sep 2019 17:28:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzIPph+Hs7rM0sGOPlTKO9sE3dnlz13RZ/elpHjIRjiMU3X9F2wd1DsQawuYESSYZVup/Me/w==
X-Received: by 2002:a37:a8b:: with SMTP id 133mr19973956qkk.365.1567988892613; 
 Sun, 08 Sep 2019 17:28:12 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::359])
 by smtp.gmail.com with ESMTPSA id f2sm5566650qkj.58.2019.09.08.17.28.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Sep 2019 17:28:11 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Valentin Vidic <vvidic@valentin-vidic.from.hr>
Subject: Re: [PATCH v3 1/4] staging: exfat: drop unused function parameter
In-Reply-To: <20190908173539.26963-1-vvidic@valentin-vidic.from.hr>
References: <20190908173539.26963-1-vvidic@valentin-vidic.from.hr>
Mime-Version: 1.0
Date: Sun, 08 Sep 2019 20:28:10 -0400
Message-ID: <1050051.1567988890@turing-police>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0041898663477616697=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============0041898663477616697==
Content-Type: multipart/signed; boundary="==_Exmh_1567988890_4251P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1567988890_4251P
Content-Type: text/plain; charset=us-ascii

On Sun, 08 Sep 2019 17:35:36 -0000, Valentin Vidic said:
> sbi parameter not used inside the function so remove it.
> Also cleanup unused variables generated by this change.

Tread carefully with this sort of patch - there's still a lot of places in the code
where we have matching pairs of exfat_foo() and fat_foo() functions which need
to have the same signatures because they're called through a function pointer.

This particular one looks OK, but there's other functions that come in pairs that
you need to watch out for...



--==_Exmh_1567988890_4251P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXXWcmQdmEQWDXROgAQJCng/8CeSZINMSRLpC4Gdwu5ZZVwb78Vt8Filw
yK514YilCPGy4/6BcfJasIL9fXy1slV70sB0M5cup5pfExfkx5fAUConuZjvZNMt
Nr3BPLvXONO/F4Ke+tipEchub130gzxZ47ztkk8/JsFB5dymzyV2Kx/i8h5LVWLA
m+VnIgrs8ZTeYdci+a5HtWNUDnz+G0wjki6GHNFCyKhWFxaC7FvTiFRM0gPZB3g+
MSafpcGC7Mg7UTA23nj8tYZf1goWtpCLiXYN71dUy21vyRQToISnyKffuL+zGS/m
fp1cl5/5xQPMF5wrzhYdkVFQJP4CUutP5EGoELzfX9DTgQNbs0S12NXa861+ispM
Woebtr6xNQk5nZdU/Zm+GlCUJWRu+uiFTTUWQyfSZ/UPton0zixOPX6IIADCfK6a
+SBcP4Upp/Eks2Wzgr+SsRodxxv9NDWWCU8R9ApDHtvqi4eCLX4KWyG/6QXbPTFB
Z7kr9J3LRr8vvSK6cO0DW1tfvE9Y3PbsGpl8d9mphGMxHlV3nWr58FxOWga9J1wm
1+4qiXny97+QEJwy9oVtw7fRLhzILAlU57v7I2rzcAacZ006q9Xz5V8MO/rHZBKF
rctgjt5bXZHRnW0qeKMf/N0sw+0YB1j5s0/zJWbk29fBAFQo3zvnX1CZ0jx7SdT+
zQGWFyRUVzU=
=mv4+
-----END PGP SIGNATURE-----

--==_Exmh_1567988890_4251P--

--===============0041898663477616697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0041898663477616697==--
