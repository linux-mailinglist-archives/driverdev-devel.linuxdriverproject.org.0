Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22779A440D
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Aug 2019 12:32:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2B4DB20414;
	Sat, 31 Aug 2019 10:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SrDzaTSXWJZN; Sat, 31 Aug 2019 10:31:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8FC77203F6;
	Sat, 31 Aug 2019 10:31:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CBFD1BF42E
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 10:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 077E3870DC
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 10:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pWh-BhPzYPXo for <devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 10:31:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4D05E8708D
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 10:31:55 +0000 (UTC)
Received: from mr5.cc.vt.edu (junk.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x7VAVrEH022181
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 06:31:53 -0400
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mr5.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x7VAVmRn031825
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 06:31:53 -0400
Received: by mail-qt1-f200.google.com with SMTP id h18so9865857qto.18
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 03:31:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=IDGw4t+jkka64Wht6d3CAXrxONGQFYzW5tFrvF9rQ80=;
 b=AJDq+xexri3uEZXLTO9kTnvfrC7ZEaOv1oL+f4HHVZEwX7BJJP7YdJ96Fug3q+lWx8
 1T9AmVV8xrbswQV2maZQFqqQVwVgJFOiSXRHw2Ar/brahZnU2RhydWs1O3iwgRm94V2H
 g8DdxBcKlqVwMoI8chHvX37Jha7xwN3xYDFnuJClLA6AY9aO66A6Fs0jtJov+R/F49Lk
 ZkpwzUfYNzArU2q3CgAQa8u/l8F/AfRJ33Bifu135U2nU/h5yFlTD+tKbisHrmvBWNGQ
 F+aKTzgCMY9YB64qC+B0e1a/TzosBgjjTeRndnpbgOn4+wyfsYiplLmQYVIfP9wxHdKN
 e5kg==
X-Gm-Message-State: APjAAAU4+SwtoE47tkFYd+YIpl6UHMS1C9lvxzVMf3WxL4N3d+Q4mkrO
 eiDEGry5iwZzjcDZswJuvm50VzGPrNYFFIVj88Lqp1/oHo5M6/4o9dcSkp5AW5RzNOcICcFG7uB
 f7jjDAbBonlDS4M3BOpoU+JABWNGqnN4z
X-Received: by 2002:a37:8c04:: with SMTP id o4mr19360117qkd.163.1567247508218; 
 Sat, 31 Aug 2019 03:31:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwY45aL6/n6Q+yi+UlWzypyRQEmcFtucMm/svMFPIxtNeXRyUsVRUo0F9jcenYO+qbRIHxMog==
X-Received: by 2002:a37:8c04:: with SMTP id o4mr19360098qkd.163.1567247508020; 
 Sat, 31 Aug 2019 03:31:48 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4340::ba0])
 by smtp.gmail.com with ESMTPSA id 22sm4217243qkc.90.2019.08.31.03.31.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 31 Aug 2019 03:31:46 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Dave Chinner <david@fromorbit.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
In-Reply-To: <20190830215410.GD7777@dread.disaster.area>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190828170022.GA7873@kroah.com> <20190829062340.GB3047@infradead.org>
 <20190829063955.GA30193@kroah.com> <20190829094136.GA28643@infradead.org>
 <20190829095019.GA13557@kroah.com> <20190829103749.GA13661@infradead.org>
 <20190829111810.GA23393@kroah.com>
 <20190830215410.GD7777@dread.disaster.area>
Mime-Version: 1.0
Date: Sat, 31 Aug 2019 06:31:45 -0400
Message-ID: <295503.1567247505@turing-police>
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
Cc: devel@driverdev.osuosl.org, Sasha Levin <alexander.levin@microsoft.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: multipart/mixed; boundary="===============7704076009591472743=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============7704076009591472743==
Content-Type: multipart/signed; boundary="==_Exmh_1567247505_4251P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1567247505_4251P
Content-Type: text/plain; charset=us-ascii

On Sat, 31 Aug 2019 07:54:10 +1000, Dave Chinner said:

> The correct place for new filesystem review is where all the
> experienced filesystem developers hang out - that's linux-fsdevel,
> not the driver staging tree.

So far everything's been cc'ed to linux-fsdevel, which has been spending
more time discussing unlikely() usage in a different filesystem.



--==_Exmh_1567247505_4251P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXWpMkAdmEQWDXROgAQJ88g/+L8aZBmGh/szeaXflnEcMn79pb3NyBxih
+ZtyT6+w4tFSdaj5tNw2bqM+p/gNl7wEdZj0UsBmCZaogZi95/ZfawiJ/Fr/Ck5g
YAa6JJCa8KJfl5TwC3ojDmHSc92/zqivcB4DY58rjLkeHe6b0RkouQZVLGsLtGYY
3VsID8G7CKOVkBzGLOyv6xHpjcOg125ulCd+eoQw5Z2GHL7/50JDvy2TpAYlxut8
kGK07Fs2pwQMxDBMbxTS51qSGu51ZscURPt6jUGpqSEa1a/1x/y5fuILeoxyy9HO
hSrqc3lXnvbL7+0mXIqg7cm62kJ72GmGoE6mNwuG6Z9q0T7uK/0rT0Ffnnopf/b0
2cZz4+xTMJVeS3cZQttHVN9XNgq2DajdoDLNWFgTiPABIdRsaBeUrGRIzwbeTYRH
xESRCtZpePDBDWvu7q/IyuQoQJHWq7oqEHOTE0SJ4cZvycEnsf1AN6oN4ES3Umqs
ZQmPwjtm7vu10SsJPEYoxZQPau5qq/vPr9lF0pMW8J9fUH4Ro45wD2sSgllVBqQj
2PF59qNEfMzwuUiX8+Snb/cKChD6wzpMuz18+m1wEZGzuvybpdZITp2HofmRbovD
Dr+BttOImxJB7tpyJKtoRkr5A0Zf4pxk1RambfMqxtUtsJSr7JxCiH24nthjR0gG
ONk8TCj1hSg=
=xo/v
-----END PGP SIGNATURE-----

--==_Exmh_1567247505_4251P--

--===============7704076009591472743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7704076009591472743==--
