Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4A0A440A
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Aug 2019 12:30:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF5BB8708D;
	Sat, 31 Aug 2019 10:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OtUfjG-hSiC1; Sat, 31 Aug 2019 10:30:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C4C887074;
	Sat, 31 Aug 2019 10:30:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7AD381BF42E
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 10:30:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 76091203F6
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 10:30:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZhzcxUVcAiFp for <devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 10:30:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 7510A203EF
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 10:30:27 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x7VAUQvN004505
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 06:30:26 -0400
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x7VAULZt012728
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 06:30:26 -0400
Received: by mail-qt1-f200.google.com with SMTP id 38so9943738qtx.3
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 03:30:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=yS6lJBR0z5pXlUbR3vjtDfvuZ/ch4JHNsJdpqfM7yNY=;
 b=sOTEGu4ouKhQIQ8wKipzXQ+EE8phEAwa2w1x+vGjmPPBCkjMxHVWTVapx3Yzn0/bFi
 KIsVIb59w3hklXRN9GXvDAWktyE0oQ7MNJq/yBLFmUybWeN603k0DByeiCpUjgfIzoAN
 8tCmyWbaQw4gxcc+1UxmjJDGneNKVaYysHkY8PNRnlVouE3Hv7VpwIx55eONz98Bp26t
 /drLIfmL1IlBJPo2jsYyZXuBzDfrAswXfLv8uY5PXL4QSV8oehSlkdK6fOHA9zgDu8z5
 csxUq72DF7rwfWrg4UDUjWqUtoiGBTt1cek+iqRzFcqXSgHpPfCHIz4YhQV2pP9OvQEU
 C6WA==
X-Gm-Message-State: APjAAAVUDCki6+Q3I4LrLTcNBdxy5Mq+JvQZVRZuuflUbK+DnQ3Y8oPK
 yVZ2YMIxYs50StjiWlVqkv0kG7h1w3MNdcXS04jVNwaoxPVlDCbG0BU1h5BMyQNi1Lnhg3XwI7t
 ddHJ8il+fa+nXG9Dnmiv4cQ2y5hQo6sq7
X-Received: by 2002:a05:620a:1125:: with SMTP id
 p5mr4061528qkk.210.1567247421048; 
 Sat, 31 Aug 2019 03:30:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxuInrftSS9yb0sn0s1xQsaIUrlAnhCycOjV4outISe323Mo9dV6f7RRjcoGpIH/0dZSLvqtw==
X-Received: by 2002:a05:620a:1125:: with SMTP id
 p5mr4061511qkk.210.1567247420798; 
 Sat, 31 Aug 2019 03:30:20 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4340::ba0])
 by smtp.gmail.com with ESMTPSA id s17sm1979613qkm.54.2019.08.31.03.30.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 31 Aug 2019 03:30:19 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] staging: exfat: remove redundant goto
In-Reply-To: <20190830181523.13356-1-colin.king@canonical.com>
References: <20190830181523.13356-1-colin.king@canonical.com>
Mime-Version: 1.0
Date: Sat, 31 Aug 2019 06:30:18 -0400
Message-ID: <295459.1567247418@turing-police>
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6631363614109890318=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============6631363614109890318==
Content-Type: multipart/signed; boundary="==_Exmh_1567247418_4251P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1567247418_4251P
Content-Type: text/plain; charset=us-ascii

On Fri, 30 Aug 2019 19:15:23 +0100, Colin King said:
> From: Colin Ian King <colin.king@canonical.com>
>
> The goto after a return is never executed, so it is redundant and can
> be removed.
>
> Addresses-Coverity: ("Structurally dead code")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Good catch....

> -	if (dentry < -1) {
> +	if (dentry < -1)
>  		return FFS_NOTFOUND;
> -		goto out;
> -	}

But the wrong fix. The code *used* to have returns like this all over the
place, but that meant it returns with a lock held - whoops.  The *other* 287 or
so places I changed to 'ret = FFS_yaddayadda',  followed by a 'goto out' but I
apparently missed one.

And thanks a bunch for feeding it to Coverity :)



--==_Exmh_1567247418_4251P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXWpMOQdmEQWDXROgAQIm0w//aPU0Rv6gMxB2mP0p2L7LaEtmwIdoEwD9
ntgSn8am4fv/Zi99Y7BOBzCw5/KAyV8qo0V5LzIt4seIgXCa+I/gd12ngxmfRt1B
0HAjQQQZl5TX5l2gnAzTIlUasA6mnxkb27/9x+qSUZRwoCRSliQC4wsaNzHbDO0y
iSNdDeiRz9hqSHtim2p7OJG2DSMTzrahN5BYD58a78/ocgOGjokb4v1nSHkU2zIS
+3C1AhCU9K6o9RedPZ3aoLELlWfwXa6EWgtiMsNC28ay/b0LkJBiA8XelQkdlfmE
mXq+g51uNim/ZT5m2YZWx6znD/SjGbwBgmftA/oawZuw4REpvAHVihULK5SGVwNn
ClPsmzGIzLvlDeAE3NKnyMAZZ5/Ip49aLxjViJMAPKFhTOHpI8mKJFYjKja8DF/c
Bu16fZqvbm7Ux50iljUwc94NEVw1QDefd8PkTc3UgwInv54xpUvb5pckweHWe8bj
FANfoJKJWmYy2aDIHyww9Yj5obKJLazQTISnUZrpgP8b2HlvFolaLC/669sLd36v
Rdvz/nNh5bUL5vA8nojDQ+mSYMEy5zi38hRQdGnM45IW1K+GOquDRRTl3w82DNRF
TfuiZym2//hGZFaPD/tZuGLwmWcxN+5gvn6U5IPwaBHnDwYf4GgHmqh0G0PaOg5W
v4SY1xOsplg=
=O42f
-----END PGP SIGNATURE-----

--==_Exmh_1567247418_4251P--

--===============6631363614109890318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6631363614109890318==--
