Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B26B6E55
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 22:46:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 42B4F86988;
	Wed, 18 Sep 2019 20:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5XKTkZWbrwBY; Wed, 18 Sep 2019 20:46:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA46B86938;
	Wed, 18 Sep 2019 20:46:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AEADA1BF311
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 20:46:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AB07386938
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 20:46:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l9AdqWUiShPn for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 20:46:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A94A98693D
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 20:46:52 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x8IKkpOv015200
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 16:46:51 -0400
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x8IKkk5v021393
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 16:46:51 -0400
Received: by mail-qt1-f200.google.com with SMTP id 59so1457136qtc.5
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 13:46:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=sj1Be5bh36NPSKpH99IRc3lxyYGd2Gu2Ngf5QRmZxUQ=;
 b=YQj+yC7w0uFHqX5UuRELVtJ0bgQ6Mvhuykf/YzT3P5lQmg8ogvE0n8AuoX+z1IhHl+
 cXotN2t0v6Gvl3GZTKbDHrGCSjiRzFqh1dG+ZiTztLfm1eXQtENsBeJwkbwIRwa9ZiKK
 7QisLT1qRFEVkhLFj1l3wxEzEJWzRP2A08srArB8VyDZo84yVvUD9fhGCr9Nxwnf0806
 TPIU+cBqul1Dx8waU/u4jFMu4y3P3OeEj3okg0wFBxpmRiQD4HheZ8GKu1Rf+Mg82tpu
 twyL9ROi2Nl552OfpjZ49k2MsD4QLYFPIL9oXyNGNtMATO2hhbvB9/O/bhYAcG7IvnC8
 SZuA==
X-Gm-Message-State: APjAAAXQUMjmBo6pgFNO1YhRfyT/ywSan2d1DyWocyA5VMwOsFPRuygw
 3R/7cx/PQiEJbEPVBnmyVpMPWm/Mz7iB2SmUH7GMi4D17AN95y4Qvfg2uhr+3onv0t5eiaojqxZ
 kkhJFttHRUB5NOnG98LsuRbJC7iTj+JmV
X-Received: by 2002:a05:620a:1006:: with SMTP id
 z6mr5929158qkj.319.1568839606153; 
 Wed, 18 Sep 2019 13:46:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzN519XpVFShhPUhoMA/uSLKMiNhSJjhYtOC4Omz0W4d+P7MVfJeueZ8N3TjGMgAuGk/d7jtQ==
X-Received: by 2002:a05:620a:1006:: with SMTP id
 z6mr5929138qkj.319.1568839605913; 
 Wed, 18 Sep 2019 13:46:45 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::359])
 by smtp.gmail.com with ESMTPSA id l7sm3962855qke.67.2019.09.18.13.46.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 13:46:44 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Ju Hyung Park <qkrwngud825@gmail.com>
Subject: Re: [PATCH] staging: exfat: rebase to sdFAT v2.2.0
In-Reply-To: <CAD14+f1yP7qps9mpF1T9Xf7E5Osthzj7tH35VcWPr3TmxdkMTQ@mail.gmail.com>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190918195920.25210-1-qkrwngud825@gmail.com>
 <20190918201318.GB2025570@kroah.com>
 <CAD14+f0YeAPxmLbxB5gpJbNyjE1YiDyicBXeodwKN4Wvm_qJwA@mail.gmail.com>
 <20190918202629.GA2026850@kroah.com>
 <CAD14+f1yP7qps9mpF1T9Xf7E5Osthzj7tH35VcWPr3TmxdkMTQ@mail.gmail.com>
Mime-Version: 1.0
Date: Wed, 18 Sep 2019 16:46:43 -0400
Message-ID: <110019.1568839603@turing-police>
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Namjae Jeon <namjae.jeon@samsung.com>, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, alexander.levin@microsoft.com,
 sergey.senozhatsky@gmail.com, linux-fsdevel@vger.kernel.org,
 sj1557.seo@samsung.com, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: multipart/mixed; boundary="===============2428103457346144919=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============2428103457346144919==
Content-Type: multipart/signed; boundary="==_Exmh_1568839602_2440P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1568839602_2440P
Content-Type: text/plain; charset=us-ascii

On Thu, 19 Sep 2019 05:31:21 +0900, Ju Hyung Park said:

> We should probably ask Valdis on what happened there.
>
> Even the old exFAT v1.2.24 from Galaxy S7 is using "either version 2
> of the License, or (at your option) any later version".
> You can go check it yourself by searching "G930F" from
> http://opensource.samsung.com.
>
> I'm guessing he probably used "GPL-2.0" during his clean-up.

My  screw-up.

Original had:

/*
 *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
 *
 *  This program is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU General Public License
 *  as published by the Free Software Foundation; either version 2
 *  of the License, or (at your option) any later version.

So yes, I dorked up the SPDX tags, as I didn't realize GPL-2.0-or-later
was an actual thing for those...

--==_Exmh_1568839602_2440P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXYKXsgdmEQWDXROgAQIC3RAAq0TrBUiC6gE5oEzKfG//YUj0gtHCuodf
bPRfKrVM5QXCbdSFd4duU0Zfiiy7Zh87J4TVwruHVI4FFqLetNvlR6MqwkLlyYyV
SEAAoVo4iS+t1ysAaRfP6Vv0XhFHy6GqbtGaecARwtaUwOfnx0tIdafJSW3/NC9a
ejVyewuIdWD97inw2avmYtqr97HOJM5Nm7egWJ65ED2W9hjeVidMbPTLnAmuPu7a
+h2zt9HKF/siYYu004Bd5ySAdnI7SiaZ7BZ5vA/G6OVG0tc48exAlJHN7wgtaxw2
20REUNG+Ypt5sYT3xF6D6Puo1MbaF7qBZ5kG0YdKXtkIvRsMvREWlPjU7Tyq1gfD
4m8vhsO1jv5mb0iH5tNphOX8vwAGpiDgCVNazbHPQ2ZM6pyfnJE1LQ5XA8ssCMf/
2F4UVgi+eUL6RnbvO9nfqotEWGEJXT2vUTYbk5mhAbpGkiNQh0hX4raSjNiaM1ae
NJo0WYZjsMomikMMQ/Qy3OJBxsJtM4J7QzUxg//JX7/psUrC+78JjVYMOQBs1g4W
1oyfEmua+BTflDy9Axx5UMLKruDAecGRX79k7yBmeYBxJg26osh1wML0+0sSQ5RW
33NQeGKDCGXdnzUKIPoeNLzz11s/xBnrXs7d8sCbsP76new0henxcuWOVjcOLElF
dGD0xbaj5jM=
=wQUB
-----END PGP SIGNATURE-----

--==_Exmh_1568839602_2440P--

--===============2428103457346144919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2428103457346144919==--
