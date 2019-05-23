Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A1E27C77
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 14:10:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 98AF7881BE;
	Thu, 23 May 2019 12:10:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kqpZw3zl+rxG; Thu, 23 May 2019 12:10:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 375AD859F1;
	Thu, 23 May 2019 12:10:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C71F1BF42E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:10:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 377D986832
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:10:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EJL8ndrzQ_8C for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 12:10:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 45C5886813
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:09:42 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id l26so4190551lfh.13
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 05:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=h6lj7XxfSxFYE4ZQJuSyQV2q9lHLkjeov5udj7sc3bk=;
 b=FQ0it7Ctgumei+b9BjeJKiqMgsDTpyHgII+IhNI3w+vYYg27ZDMhMP/uIB26p/Q++R
 IoXhK9dNk4Zk5iNUJPBqUJM4xxPTQjBkLnwx4od6a3pI8mbuMB2nwFogeJMxioXEm5to
 4xH7qVtkEQ1MWEdlRRAYrcEyQxC0492R4fpu87VYZAaM2FHbQOH5eQrssfZuSnu2+L6k
 sCf5fzP3YEuJhiwAJKml4VYoXhzermIUkUn6OeYiGEN0ZOZTvJtM3TFg/ymm5nUIHM9E
 uBqcjLdMiKIzl1asXdmj6LiYS1EFDOguetlg6OFcGBCsJnvhChvmlAHubp7Toir/Vlas
 Y8dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=h6lj7XxfSxFYE4ZQJuSyQV2q9lHLkjeov5udj7sc3bk=;
 b=ADrpviE2Of+fO3KGTn+BIzhiLUm9fM6bvqUzFgAMOSQ4yR7t3wcJ/QWtCri4xV8tza
 ROiCat1rXlIFLK/YWwC5gtw58/A3UnfL5HTKuTbWHGGlK1iBjnehUT64ti/awedseNLE
 oJ8K4mzOYWaYfk2XM7eAJaCbK8ZEon51aQD1zFRglGG++LrU9FsuvT7Nnu7iEMJcnr7q
 7c6jC/E79ucGqTtKBHHqrZxiPwHty7XSY2M/f34g9+g0bg7UcDDSSpExd+FMNYbjR7Na
 3wBFqIWJQBAZQX2v1jo/ogy9c64/TH/pmvkJ7OKZeSVOErePp+Au3X/Z36T2fKprUugx
 WRQg==
X-Gm-Message-State: APjAAAUlIEMzN7vb27EnZr6Zg5F4mYw2BTT1vIeQfcKP9MzxAWRGuGxv
 brnJSNvSlhHtS4gc6QsPZ4dr7fYfhdnj6A==
X-Google-Smtp-Source: APXvYqzlzNEFp/xZRKmB8JdxW6mESUynRvJK0HU3P3lAVOPrac7uvZrZTDwDKYyxkHSAd7eR/nxNVg==
X-Received: by 2002:ac2:4d0d:: with SMTP id r13mr21381889lfi.30.1558613380386; 
 Thu, 23 May 2019 05:09:40 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id g15sm1226340ljk.83.2019.05.23.05.09.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 05:09:39 -0700 (PDT)
Date: Thu, 23 May 2019 14:09:37 +0200
From: Simon =?utf-8?Q?Sandstr=C3=B6m?= <simon@nikanor.nu>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/8] staging: kpc2000: use __func__ in debug messages
Message-ID: <20190523120937.zq6gif6amslfruna@dev.nikanor.nu>
References: <20190523113613.28342-1-simon@nikanor.nu>
 <20190523113613.28342-3-simon@nikanor.nu>
 <20190523115553.GA6953@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523115553.GA6953@kroah.com>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMDE6NTU6NTNQTSArMDIwMCwgR3JlZyBLSCB3cm90ZToK
PiBPbiBUaHUsIE1heSAyMywgMjAxOSBhdCAwMTozNjowN1BNICswMjAwLCBTaW1vbiBTYW5kc3Ry
w7ZtIHdyb3RlOgo+ID4gRml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5nICJQcmVmZXIgdXNpbmcg
JyIlcy4uLiIsIF9fZnVuY19fJyB0byB1c2luZwo+ID4gJzxmdW5jdGlvbiBuYW1lPicsIHRoaXMg
ZnVuY3Rpb24ncyBuYW1lLCBpbiBhIHN0cmluZyIuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFNp
bW9uIFNhbmRzdHLDtm0gPHNpbW9uQG5pa2Fub3IubnU+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3N0
YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYyB8IDIyICsrKysrKysrKysrKystLS0t
LS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0p
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2Nl
bGxfcHJvYmUuYyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5j
Cj4gPiBpbmRleCA5NWJmYmU0YWFlNGQuLjdiODUwZjNlODA4YiAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jCj4gPiArKysgYi9kcml2
ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYwo+ID4gQEAgLTI5OSw3ICsy
OTksOCBAQCBzdGF0aWMgaW50IHByb2JlX2NvcmVfdWlvKHVuc2lnbmVkIGludCBjb3JlX251bSwg
c3RydWN0IGtwMjAwMF9kZXZpY2UgKnBjYXJkLAo+ID4gIAo+ID4gIAlrdWRldiA9IGt6YWxsb2Mo
c2l6ZW9mKHN0cnVjdCBrcGNfdWlvX2RldmljZSksIEdGUF9LRVJORUwpOwo+ID4gIAlpZiAoIWt1
ZGV2KSB7Cj4gPiAtCQlkZXZfZXJyKCZwY2FyZC0+cGRldi0+ZGV2LCAicHJvYmVfY29yZV91aW86
IGZhaWxlZCB0byBremFsbG9jIGtwY191aW9fZGV2aWNlXG4iKTsKPiA+ICsJCWRldl9lcnIoJnBj
YXJkLT5wZGV2LT5kZXYsICIlczogZmFpbGVkIHRvIGt6YWxsb2Mga3BjX3Vpb19kZXZpY2VcbiIs
Cj4gPiArCQkJX19mdW5jX18pOwo+IAo+IGttYWxsb2MgYW5kIGZyaWVuZCBlcnJvciBtZXNzYWdl
cyBzaG91bGQganVzdCBiZSBkZWxldGVkLiAgRGlkbid0Cj4gY2hlY2twYXRjaCBzYXkgc29tZXRo
aW5nIGFib3V0IHRoYXQ/Cj4gCj4gdGhhbmtzLAo+IAo+IGdyZWcgay1oCgpZZXMgc29ycnksIGl0
IGRpZC4gU2hvdWxkIEkgZGVsZXRlIHRoaXMgY2h1bmsgZnJvbSB0aGlzIHBhdGNoIGFuZCBhZGQK
YW5vdGhlciBwYXRjaCB0byB0aGlzIHNlcmllcyB0aGF0IGp1c3QgZGVsZXRlcyB0aGUgbWVzc2Fn
ZSwgaW4gdjI/CgotIFNpbW9uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
