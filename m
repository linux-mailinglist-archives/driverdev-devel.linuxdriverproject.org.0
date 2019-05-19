Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 500A72269B
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 12:40:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E89A8786C;
	Sun, 19 May 2019 10:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sUyCXiDjCova; Sun, 19 May 2019 10:40:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 312EF877CE;
	Sun, 19 May 2019 10:39:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DA691BF616
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 10:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 45AC221533
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 10:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6i8EipljV9UI for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 10:39:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 516E52152B
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 10:39:55 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A25BB2166E;
 Sun, 19 May 2019 10:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558262395;
 bh=RyNE3JZI+YlVkh2xmqXpb/nqf7T44OMg4tbBzoAptd0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DcFOs9rBccmqfj2/A5J39xMlqtyK3GPley+aNW2gw3VN2hcxpHPHwlFPx815OXaxw
 5urhXnD993Z4elcFm17Or6W5hVau+UBKwXKfwcpllVHj1cmgjIAZGjhWVZou2Imf59
 tGJkz0mUX3Zk/JFelARILN3RJNBgaMlMXpzJ7IGM=
Date: Sun, 19 May 2019 11:39:49 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: =?UTF-8?B?Sm/Do28=?= Victor Marques de Oliveira        
 <joao.marques.oliveira@usp.br>
Subject: Re: [PATCH] staging: iio: ad9834: add of_device_id table
Message-ID: <20190519113949.2eb0cd3a@archlinux>
In-Reply-To: <20190518224720.30404-1-joao.marques.oliveira@usp.br>
References: <20190518224720.30404-1-joao.marques.oliveira@usp.br>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com, "Thiago L . A .
 Miller" <tmiller@mochsl.org.br>, "Osvaldo M . Yasuda" <omyasuda@yahoo.com.br>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCAxOCBNYXkgMjAxOSAxOTo0NzoyMCAtMDMwMApKb8OjbyBWaWN0b3IgTWFycXVlcyBk
ZSBPbGl2ZWlyYSAgICAgICAgIDxqb2FvLm1hcnF1ZXMub2xpdmVpcmFAdXNwLmJyPiB3cm90ZToK
Cj4gQWRkIGEgb2ZfZGV2aWNlX2lkIHN0cnVjdCBhcnJheSBvZl9tYXRjaF90YWJsZSB2YXJpYWJs
ZSBhbmQgc3Vic2VxdWVudAo+IGNhbGwgdG8gTU9EVUxFX0RFVklDRV9UQUJMRSBtYWNybyB0byBk
ZXZpY2UgdHJlZSBzdXBwb3J0Lgo+IAo+IENvLWRldmVsb3BlZC1ieTogVGhpYWdvIEwuIEEuIE1p
bGxlciA8dG1pbGxlckBtb2Noc2wub3JnLmJyPgo+IFNpZ25lZC1vZmYtYnk6IFRoaWFnbyBMLiBB
LiBNaWxsZXIgPHRtaWxsZXJAbW9jaHNsLm9yZy5icj4KPiBDby1kZXZlbG9wZWQtYnk6IE9zdmFs
ZG8gTS4gWWFzdWRhIDxvbXlhc3VkYUB5YWhvby5jb20uYnI+Cj4gU2lnbmVkLW9mZi1ieTogT3N2
YWxkbyBNLiBZYXN1ZGEgPG9teWFzdWRhQHlhaG9vLmNvbS5icj4KPiBTaWduZWQtb2ZmLWJ5OiBK
b8OjbyBWaWN0b3IgTWFycXVlcyBkZSBPbGl2ZWlyYSA8am9hby5tYXJxdWVzLm9saXZlaXJhQHVz
cC5icj4KTmljZSBwYXRjaC4KCkFwcGxpZWQgdG8gdGhlIHRvZ3JlZyBicmFuY2ggb2YgaWlvLmdp
dCBhbmQgcHVzaGVkIG91dCBhcyB0ZXN0aW5nIGZvciB0aGUKYXV0b2J1aWxkZXJzIHRvIHBsYXkg
d2l0aCBpdC4KClRoYW5rcywKCmoKPiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL2lpby9mcmVxdWVu
Y3kvYWQ5ODM0LmMgfCAxMSArKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2ZyZXF1ZW5jeS9h
ZDk4MzQuYyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vZnJlcXVlbmN5L2FkOTgzNC5jCj4gaW5kZXgg
NmRlM2NkNzM2M2Q3Li4wMzhkNjczMmMzZmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5n
L2lpby9mcmVxdWVuY3kvYWQ5ODM0LmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvaWlvL2ZyZXF1
ZW5jeS9hZDk4MzQuYwo+IEBAIC01MjEsOSArNTIxLDIwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
c3BpX2RldmljZV9pZCBhZDk4MzRfaWRbXSA9IHsKPiAgfTsKPiAgTU9EVUxFX0RFVklDRV9UQUJM
RShzcGksIGFkOTgzNF9pZCk7Cj4gIAo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9p
ZCBhZDk4MzRfb2ZfbWF0Y2hbXSA9IHsKPiArCXsuY29tcGF0aWJsZSA9ICJhZGksYWQ5ODMzIn0s
Cj4gKwl7LmNvbXBhdGlibGUgPSAiYWRpLGFkOTgzNCJ9LAo+ICsJey5jb21wYXRpYmxlID0gImFk
aSxhZDk4MzcifSwKPiArCXsuY29tcGF0aWJsZSA9ICJhZGksYWQ5ODM4In0sCj4gKwl7fQo+ICt9
Owo+ICsKPiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgYWQ5ODM0X29mX21hdGNoKTsKPiArCj4g
IHN0YXRpYyBzdHJ1Y3Qgc3BpX2RyaXZlciBhZDk4MzRfZHJpdmVyID0gewo+ICAJLmRyaXZlciA9
IHsKPiAgCQkubmFtZQk9ICJhZDk4MzQiLAo+ICsJCS5vZl9tYXRjaF90YWJsZSA9IGFkOTgzNF9v
Zl9tYXRjaAo+ICAJfSwKPiAgCS5wcm9iZQkJPSBhZDk4MzRfcHJvYmUsCj4gIAkucmVtb3ZlCQk9
IGFkOTgzNF9yZW1vdmUsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
