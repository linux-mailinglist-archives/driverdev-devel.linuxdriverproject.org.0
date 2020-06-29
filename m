Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C835220CC9B
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 07:30:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCE5D87555;
	Mon, 29 Jun 2020 05:30:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8e2a98VPfoT8; Mon, 29 Jun 2020 05:30:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A9D178752D;
	Mon, 29 Jun 2020 05:30:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0599B1BF3C0
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 05:30:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F3C2187533
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 05:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vRXQNGivZSuP for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 05:30:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6BAD28752D
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 05:30:10 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id f2so6638175plr.8
 for <devel@driverdev.osuosl.org>; Sun, 28 Jun 2020 22:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=RTxiRpvzpRJD0gmX8PNYXY4R+aOe0063njB+b000qww=;
 b=kzY0/e2RlK+glH8fy5i/IPcEaya89/gQceJy2XZKwDnqL9d5r3Ads9fMwoiYC8dQFl
 tGsiAxw6E1ivm5fMdTBlKLC2CDsBgTh3imQyb0NLPG4Sg5A1O/hEpKhplEcaBlh9nFfL
 Bxft3462dCCwN5bySfhnFQFNHIAa2M3LEyxk5MmP0XFEQeHAXPnJCeza+8oisGQWe0gI
 krWpMT5EVtn8JYUJrsUv9ZV7lUlvL56dzOCzpnbcGqzgd+vLGAM2gNEZw+2prJ4zsXrL
 5/s+Jtx8Qj6WEw7yVEHmakIDZ98JG8s3oDxv5v5RMik7n8iIZMkwxQk4GDBv+HcOeKOR
 tt/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=RTxiRpvzpRJD0gmX8PNYXY4R+aOe0063njB+b000qww=;
 b=XY2f2GyHslo2NNJyF9J52/pyiDxNXryhAO2jUfiW+t0FyNycvThwh7XbYmJMy8auwu
 SpfHHFvEpUvV4Q03tRYTLYz8TyAWftT7X5LBsU5q3ZI/fukjeHF7jchr4ss9mssQLvlz
 lomxm4ozyIc5GcqM2fbCHR3GkA+FKCmWMDMlpHgWvsv2DcrG5agrPCPhf1H2rlpCf0PQ
 k6aTZALm/sCdZWam6oBE2h8BJi4nMmnwGTpkwvfi1cIYdv+x632nEWeeIKXnQUP0O43G
 L2dAGNqoneqYSvwj+MU2sOsOtJ/Zcc5RT/6T/+1/SMon4K4hyejOLL4Py/Gu1/rPaYp0
 CXTg==
X-Gm-Message-State: AOAM533vqKLfLX/XwT0IcGnLhX5Lof0oxfFBOgdW+9K3iuE4uwYG32UA
 q9WnQBKfbJy7fBSFzJPi7jQ=
X-Google-Smtp-Source: ABdhPJzbaDbjKQDAWCduVkv0WZ13VTrbYwK7Ufzf0M0t0w6OPbJqunP2vGqA4bI1Cdxiyv0yoaY3PQ==
X-Received: by 2002:a17:90b:381:: with SMTP id
 ga1mr16047548pjb.232.1593408609732; 
 Sun, 28 Jun 2020 22:30:09 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id nl5sm19526826pjb.36.2020.06.28.22.30.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 28 Jun 2020 22:30:08 -0700 (PDT)
Date: Mon, 29 Jun 2020 14:30:04 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v2 4/4] staging: qlge: replace pr_err with netdev_err
Message-ID: <20200629053004.GA6165@f3>
References: <20200627145857.15926-1-coiby.xu@gmail.com>
 <20200627145857.15926-5-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200627145857.15926-5-coiby.xu@gmail.com>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 gregkh@linuxfoundation.org, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 joe@perches.com, dan.carpenter@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjAyMC0wNi0yNyAyMjo1OCArMDgwMCwgQ29pYnkgWHUgd3JvdGU6ClsuLi5dCj4gIHZvaWQg
cWxfZHVtcF9xZGV2KHN0cnVjdCBxbF9hZGFwdGVyICpxZGV2KQo+ICB7Cj4gQEAgLTE2MTEsOTkg
KzE2MTgsMTAwIEBAIHZvaWQgcWxfZHVtcF9xZGV2KHN0cnVjdCBxbF9hZGFwdGVyICpxZGV2KQo+
ICAjaWZkZWYgUUxfQ0JfRFVNUAo+ICB2b2lkIHFsX2R1bXBfd3FpY2Ioc3RydWN0IHdxaWNiICp3
cWljYikKPiAgewo+IC0JcHJfZXJyKCJEdW1waW5nIHdxaWNiIHN0dWZmLi4uXG4iKTsKPiAtCXBy
X2Vycigid3FpY2ItPmxlbiA9IDB4JXhcbiIsIGxlMTZfdG9fY3B1KHdxaWNiLT5sZW4pKTsKPiAt
CXByX2Vycigid3FpY2ItPmZsYWdzID0gJXhcbiIsIGxlMTZfdG9fY3B1KHdxaWNiLT5mbGFncykp
Owo+IC0JcHJfZXJyKCJ3cWljYi0+Y3FfaWRfcnNzID0gJWRcbiIsCj4gLQkgICAgICAgbGUxNl90
b19jcHUod3FpY2ItPmNxX2lkX3JzcykpOwo+IC0JcHJfZXJyKCJ3cWljYi0+cmlkID0gMHgleFxu
IiwgbGUxNl90b19jcHUod3FpY2ItPnJpZCkpOwo+IC0JcHJfZXJyKCJ3cWljYi0+d3FfYWRkciA9
IDB4JWxseFxuIiwKPiAtCSAgICAgICAodW5zaWduZWQgbG9uZyBsb25nKWxlNjRfdG9fY3B1KHdx
aWNiLT5hZGRyKSk7Cj4gLQlwcl9lcnIoIndxaWNiLT53cV9jbnNtcl9pZHhfYWRkciA9IDB4JWxs
eFxuIiwKPiAtCSAgICAgICAodW5zaWduZWQgbG9uZyBsb25nKWxlNjRfdG9fY3B1KHdxaWNiLT5j
bnNtcl9pZHhfYWRkcikpOwo+ICsJbmV0ZGV2X2VycihxZGV2LT5uZGV2LCAiRHVtcGluZyB3cWlj
YiBzdHVmZi4uLlxuIik7Cgpkcml2ZXJzL3N0YWdpbmcvcWxnZS9xbGdlX2RiZy5jOjE2MjE6MTM6
IGVycm9yOiDigJhxZGV24oCZIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9u
KTsgZGlkIHlvdSBtZWFuIOKAmGNkZXbigJk/CiAxNjIxIHwgIG5ldGRldl9lcnIocWRldi0+bmRl
diwgIkR1bXBpbmcgd3FpY2Igc3R1ZmYuLi5cbiIpOwogICAgICB8ICAgICAgICAgICAgIF5+fn4K
ICAgICAgfCAgICAgICAgICAgICBjZGV2CgpbLi4uXQphbmQgbWFueSBtb3JlIGxpa2UgdGhhdAoK
QW55d2F5cywgcWxnZV9kYmcuaCBpcyBhIGR1bXBzdGVyLiBJdCBoYXMgaHVuZHJlZHMgb2YgbGlu
ZXMgb2YgY29kZQpiaXRyb3R0aW5nIGF3YXkgaW4gaWZkZWYgbGFuZC4gU2VlIHRoaXMgY29tbWVu
dCBmcm9tIERhdmlkIE1pbGxlciBvbiB0aGUKdG9waWMgb2YgaWZkZWYnZWQgZGVidWdnaW5nIGNv
ZGU6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi8yMDIwMDMwMy4xNDU5MTYuMTUwNjA2
NjUxMDkyODAyMDE5My5kYXZlbUBkYXZlbWxvZnQubmV0LwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
