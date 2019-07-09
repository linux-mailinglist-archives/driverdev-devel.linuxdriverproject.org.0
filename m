Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A75663938
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 18:22:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB90287B4C;
	Tue,  9 Jul 2019 16:22:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JmeJPQmTltSG; Tue,  9 Jul 2019 16:22:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4EEB187B39;
	Tue,  9 Jul 2019 16:22:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 98A461BF576
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 16:22:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9539286804
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 16:22:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KhL-nj4nxntM for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 16:22:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B6D718542B
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 16:22:09 +0000 (UTC)
Received: from mr1.cc.vt.edu (mr1.cc.vt.edu
 [IPv6:2607:b400:92:8300:0:31:1732:8aa4])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x69GM8OQ014058
 for <devel@driverdev.osuosl.org>; Tue, 9 Jul 2019 12:22:08 -0400
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mr1.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x69GM33g013918
 for <devel@driverdev.osuosl.org>; Tue, 9 Jul 2019 12:22:08 -0400
Received: by mail-qt1-f198.google.com with SMTP id s22so19764315qtb.22
 for <devel@driverdev.osuosl.org>; Tue, 09 Jul 2019 09:22:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=AeNqLIavBQU2jaz1EVONE/nn9rzf6yeKY0A80d2Rc5I=;
 b=UoEDjF2oIb9HDXX+90qoA/YgCm3bxY68hsCf+y00yAV8AjwEnWL+Ld4NGuv0ZPxfZf
 apyp4TNb6afvtKtDiad1F5s5wnmwTxr4lI+le0QXlrj0mwboiArW3u/YFQ9QjxVRHPqs
 LbK+o280w4eXG3QTZkcK9A45we1+IJwGMZPlqFgUAu81Pejf9khXH4r9B+cubtiu3wy3
 EkvaC8Yhvrsmki3zM8XRRwHUS9cbksUbErlutRq1111FggjiPUq2mC1agXh5zJu3icS5
 Ct0Kl4GGIBahLvER0XU9Z+/MELjI0YXDBbj6/DPiLpqCEzFK+1uGIKiVzuq1fsyxIvj3
 Jxtg==
X-Gm-Message-State: APjAAAWlIejHYkLVWo4Bi3Xbs9lDkyv3jWNyhrQHf+Nodj5flJyMt4EL
 8B7WMtIFj7e/Sy1hw+XhB/tkSWd3qHXMD9Hd2cWt6VPe/rvPoROAmak5uWPlH375k7pQC5tnsRK
 mU3rCIa3MnzbYf7gzOY5/65weRrGjHt27
X-Received: by 2002:ae9:d606:: with SMTP id r6mr19014444qkk.364.1562689323237; 
 Tue, 09 Jul 2019 09:22:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz73ZAgK9eZK6CI+vjMNwlRqTNw895f8ZNT6RNkI7Yk9A4kFfUyb9h9brqr19IgxqlljVxO4w==
X-Received: by 2002:ae9:d606:: with SMTP id r6mr19014424qkk.364.1562689323029; 
 Tue, 09 Jul 2019 09:22:03 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::7ca])
 by smtp.gmail.com with ESMTPSA id x42sm2490742qth.24.2019.07.09.09.22.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 09:22:01 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: exfat filesystem
In-Reply-To: <20190709154834.GJ32320@bombadil.infradead.org>
References: <21080.1562632662@turing-police> <20190709045020.GB23646@mit.edu>
 <20190709112136.GI32320@bombadil.infradead.org>
 <20190709153039.GA3200@mit.edu>
 <20190709154834.GJ32320@bombadil.infradead.org>
Mime-Version: 1.0
Date: Tue, 09 Jul 2019 12:21:59 -0400
Message-ID: <22959.1562689319@turing-police>
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
Cc: devel@driverdev.osuosl.org, Sasha Levin <sashal@kernel.org>,
 Theodore Ts'o <tytso@mit.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7270138304043792962=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============7270138304043792962==
Content-Type: multipart/signed; boundary="==_Exmh_1562689319_2389P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1562689319_2389P
Content-Type: text/plain; charset=us-ascii

On Tue, 09 Jul 2019 08:48:34 -0700, Matthew Wilcox said:

> Interesting analysis.  It seems to me that the correct forms would be
> observed if someone suitably senior at Microsoft accepted the work from
> Valdis and submitted it with their sign-off.  KY, how about it?

I'd be totally OK with that....


--==_Exmh_1562689319_2389P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXSS/JgdmEQWDXROgAQLYWA/+IsHeZtVAiVMZ6bjpDTfWqg6B1nIV/psL
Cqhyj5AcsxgpCLQHrtFhyDIB4suPWa9Mqlglg00eTBsQe1DYRwVK30IQRXHrgXaV
xwIuN38RaP3XQjFeczUUTghvPhirnQ2CDrV9q13jgKs/AvPIFotNG/XDawDK2zvK
nTAepX1mJ9zIom4xcZIz4nc/m/qsmwQAoVEGywmeXGcapFTVpI3yErsOnwW5B8V1
45zsfLrZOU3GuSZ61EMSJRe3UH50kNppQbmUCfVEE3yoHI7kqNM1Qhhjwx/6YfNI
5kyPHq5gEv1sbUFg+VXDmI7JseXdl4jB19XRu8yOjQxQB1Vpd+5pjsUr89d+3R5Q
8oX2TapLS0W+BozW3eFWhVdY610xqkCEDR9h+2wtrgV/bpXG7Prva0hQE/qscHYQ
4Azo1lkwUKKYOKR7aYVfXtq+mztND3nxvMVvUQWNdwiWXDmHpGVp1Hps4ZWdFZKJ
Z8654wqKIi6VG+SPvpG596hbMnEhNRIKkievWZF7Rue50Z+uiwHySQuGOjlYabdC
LD4r/E6RzgiayvKqn0akjVK89tx/lUhAM9kGvnaEF8xKmMIARY5kpAPL4/xCi7sT
ZdmA6KJEr4vfIcZTyYI7elGlyUxpdfO0pMU+GgUuXRwKQiIDfgus++Gr6RUul/Zl
zsOlhd3mjmg=
=h3KC
-----END PGP SIGNATURE-----

--==_Exmh_1562689319_2389P--

--===============7270138304043792962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7270138304043792962==--
