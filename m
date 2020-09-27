Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7D827A222
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Sep 2020 19:50:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 63DD82050A;
	Sun, 27 Sep 2020 17:50:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OmI3XPVP2xft; Sun, 27 Sep 2020 17:50:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A5854203DF;
	Sun, 27 Sep 2020 17:50:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 183851BF402
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 17:50:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 13D3C8710F
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 17:50:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3oXkW52NE+WV for <devel@linuxdriverproject.org>;
 Sun, 27 Sep 2020 17:50:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.17.12])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C5D608710B
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 17:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1601228974;
 bh=StbMY9Hgsbm1J752Tk/92HD7oAAZhSOesT+RdOROAE0=;
 h=X-UI-Sender-Class:To:Cc:Subject:From:Date;
 b=F0LuEkmL980uyo6mRNH6AB9roL3c0gZgxUfB9ZW6LE4e5ah0s0QW8dmnbE6VOjYlI
 AMCw0chPeHK5bkmeFS04T0OgpgK6paHylvTmzw+rTEtTtvu9Dmxhq1pM+L9ity7rhV
 o6bUvuejZ4+vLPxXXh0McKLhNQPUFynQHLrLnQYY=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.138.181]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MD8Fc-1kCitm0LvQ-00GaLQ; Sun, 27
 Sep 2020 19:49:34 +0200
To: Souptick Joarder <jrdr.linux@gmail.com>, devel@driverdev.osuosl.org,
 linux-media@vger.kernel.org
Subject: Re: [PATCH] media: atomisp: Fixed error handling path
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <b9e813e3-29a3-0fc7-ac70-f15996c21ede@web.de>
Date: Sun, 27 Sep 2020 19:49:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Language: en-GB
X-Provags-ID: V03:K1:bWc/isC0sULcJvWTTFN3kmdJ8QLDsW7K3jmFWA4314+ql9ZLPSH
 TWkR5majC9JUH+7zy2PQOSQbwxwOqwdOQbG0Gf0U7kTdwR9qspOvQqjEfokQ5ob4Tmxcn4T
 MMUJxtfXAFw2bvc8wNUGUd93/uMW3yTFYclvYD6o7m2rgge1BlU7Cpb7kB+xi4IvA3gKmW4
 6jsPXdFU2H04L32b1rwZw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:GRZ8lNw2keM=:pW0oKU7uHYPbtQcYgai5g/
 CUVjEGIRSnSHCYiiHSHqeAVImSn3HAZ+ObYI9MoOaYIKE46nR3wEq9J8wtO4vPGHsfcpYpAa6
 pg4oQCvcaDl47rs9cYGOiJj5A+7Jd+qtgklv+ovCDldnkQaM70aL/2HS7MoL+sG1O7jAvpBL3
 MZ3oZoXg/I2YeQHES+jM6rkQ9XMDVAiW2e1HPsRKwAoVwJtCR/QGezzcY6fbinrvddqrbXJ4V
 /1eFqt7/JmXwcfqeMER6k7M1q1VjVFNZDuySNMD4g4vqn8ENaivoSljTBa+S9HzqHPa0JGI3W
 SBYOaIUEiaL7nstvAq9aLPqV9+uluPQCGpdgoi0P+vgTcqNmx2qaNrwWu93wdA+XtohXAqtmp
 jmxtuSXAYy9oPyaJ0+uK47wwl5tot1ULm2WBakWjThmBf4q6JsJY8UiJV1SQxxfCLAp1vJyPY
 QdSpCEd9QGC6pJpBao5m+3ELPzY8WhAogxyS9A7LgUVZ+d6C+J5VU33kJ9lV23fWKdpNpljKm
 8YAcQCQ9sdPyUnQd6CIPlQMqP+kW/LjeOG9U6AB8L4eCQ54OmvBD+9IoB2VbNl53Yuk2X32VP
 qcgAWPN7+Deckjt9BVUoXx4/So1EYrFSnBqxJEzuGU/lm0Cs0Cwrrgb68AIhtAVSyPnEyI2in
 nLP9EihSjs7FsyGj/Z0Siysan1LUJiV3xYCaLba6qBMkoYivApu2VxwZoF9IKnIu51j1+EZCs
 FJqQfE8VO5An9djMVOIU8SZVI/h19lw0Z9ENZVcdGIFIKz9ptKd/NNYbQIInWwx+JRSSsfCIo
 KcY+3SAu5PEc235+Br42d/8EpzLenS4eswyS918QCUmih71ipEoo1Yk2PHfWUUUhajjq+7YPR
 UtC334ws9F4JtRGSVLiV2CShyTE0PEt2THvfekR7xYmRJ08ge/lsDbPAo8ME0ibn74fRgf8gy
 qdJeDILz8Ux90LcYZpPTCXPpcnW8J6Md0s9LBafqTVDOOiIfuuNm/b5TMC9P8zWUOTxELcQTs
 5WzYhzTMU77d81WBCaRQK2GEWbEp+j9n+B9HUzpb2D/6Q8JBsFjUCCq0BUT3eHrMqWRb7/lzz
 cVtuxGzdgQ0Vi1mkwY2ntBMaPebATKTMF07Vyi4BsSzJlYjh+NvkoX6TLs5F3gc568ttBG2Z9
 cd4Hp2Z9GNrDHAnnhwTEMUjgz0S7kWit6DaoCqm068O5Nlsl252LSJqXc2qMdb0/UgHUWbJhw
 l1BriKrSE/j9dVVAPGTYlU+y/MwOkvMRQAg1Fxw==
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Michel Lespinasse <walken@google.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 John Hubbard <jhubbard@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> Fixes: 14a638ab96c5 ("media: atomisp: use pin_user_pages() for memory
> allocation")

Please omit a line break for this tag.

Regards,
Markus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
