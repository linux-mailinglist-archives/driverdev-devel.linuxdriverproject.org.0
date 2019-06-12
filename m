Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C12D9421FC
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 12:08:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 450B72266F;
	Wed, 12 Jun 2019 10:08:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gc+VO9I85aSP; Wed, 12 Jun 2019 10:08:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0BD5920523;
	Wed, 12 Jun 2019 10:07:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 504801BF2B6
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:07:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4D5C08115D
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:07:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DG1MJQwAjTAQ for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 10:07:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9CD38810FB
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 10:07:54 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id j29so11603528lfk.10
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 03:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=InU/Lj35akDd3Wyfc3JTPKg/OWStN5q+3o8HMF9TC+c=;
 b=yII/WyQSRic/HvbG9WcCZmWLNXAli/YN11WteFhUHe4F+lvc7tMwvc+WrOKQpnhVWn
 SeIIQneJc5ik97bsE5DUfwdCY+VHYnvDPlZ5DjINgdwcd7Ew2HvIw/TFURFv45aalmwK
 GCr9lmJY/s8EKRx6Hca0pEu4bFZumPyZq2mhGn1cQ4vlizwDOr40LKIbYq++A3yyN4Ys
 BXJYGjLttISSsgzBbO0BWNe1LJto5hh49Oanf3DYdwJ1nzwj+ZNZOhForjDZ+419WFE3
 CZqVze8DrTJDRrGR9NxXsL3g7gSNEXigZTJrrtXKmHiDp6amyHeD/fyLGymIYeUOsjvI
 9Y0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=InU/Lj35akDd3Wyfc3JTPKg/OWStN5q+3o8HMF9TC+c=;
 b=MNj37uz5zwz0CVd0bDnNGLe9JmK7exFiC3rsp84Ucl60UJar4PsnwTYpRhWMHrvFTu
 zOwuWl29Oi3jF2c6VOnSflFm/z7dRr2WOJe4t8jFyfezN4lA/HsDjph9OOr7E2f83raH
 s6VdI3qqnn1L3++ANpdeQisIgB3XbhiksMX6YG+3LuHE5Z14zcD3PVynaGC6JzxB+TAR
 A+pmISar3HemCtVC1l9/lRkxQpevBO2NPdqc179yRpFLyYsNXdgeYoT0gbUUcilfmC1N
 mM+OivULF8Y/HXP20IeIRSMVVZn3ZWFVJH9fVFOAPaKU5lR4XoVEd/yTvpIvMOvz5yCT
 LYEA==
X-Gm-Message-State: APjAAAUz3U0PrLEqWGfAE5R4AHdAjVBD4x9yODyYjnidl6C2Yzz18QbU
 SktLl0Yz5Ivuh7q/UAUI2siTFg==
X-Google-Smtp-Source: APXvYqyklnno8AkiHQfR3VreFWXsSlFhmRPu73QFtpxa+Tw32wsXBxOAfwd1RtQW9gpoMuktAgGUbA==
X-Received: by 2002:ac2:5225:: with SMTP id i5mr30644019lfl.157.1560334072156; 
 Wed, 12 Jun 2019 03:07:52 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id v12sm2181698lje.14.2019.06.12.03.07.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 03:07:51 -0700 (PDT)
Date: Wed, 12 Jun 2019 12:07:49 +0200
From: Simon =?utf-8?Q?Sandstr=C3=B6m?= <simon@nikanor.nu>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/2] staging: kpc2000: remove unnecessary comments in
 kp2000_pcie_probe
Message-ID: <20190612100749.srpsz5er4ebwepls@dev.nikanor.nu>
References: <20190610200535.31820-1-simon@nikanor.nu>
 <20190610200535.31820-3-simon@nikanor.nu>
 <20190612073936.GD1915@kadam> <20190612074600.GA17100@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612074600.GA17100@kroah.com>
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
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMTIvMDYsIEdyZWcgS0ggd3JvdGU6Cj4gT24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMTA6Mzk6
MzZBTSArMDMwMCwgRGFuIENhcnBlbnRlciB3cm90ZToKPiA+IE9uIE1vbiwgSnVuIDEwLCAyMDE5
IGF0IDEwOjA1OjM1UE0gKzAyMDAsIFNpbW9uIFNhbmRzdHLDtm0gd3JvdGU6Cj4gPiA+IEBAIC0z
NDksOSArMzQwLDcgQEAgc3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNpX2Rl
diAqcGRldiwKPiA+ID4gIAkJZ290byBlcnJfcmVtb3ZlX2lkYTsKPiA+ID4gIAl9Cj4gPiA+ICAK
PiA+ID4gLQkvKgo+ID4gPiAtCSAqIFN0ZXAgNDogU2V0dXAgdGhlIFJlZ2lzdGVyIEJBUgo+ID4g
PiAtCSAqLwo+ID4gPiArCS8vIFNldHVwIHRoZSBSZWdpc3RlciBCQVIKPiA+IAo+ID4gR3JlZywg
YXJlIHdlIG1vdmluZyB0aGUgQysrIHN0eWxlIGNvbW1lbnRzPyAgTGludXMgaXMgZmluZSB3aXRo
IHRoZW0uICBJCj4gPiBkb24ndCBsaWtlIHRoZW0gYnV0IHdoYXRldmVyLi4uCj4gCj4gSSBkb24n
dCBsaWtlIHRoZW0gZWl0aGVyLiAgSSdtIG9ubHkgIm9rIiB3aXRoIHRoZW0gb24gdGhlIHZlcnkg
Zmlyc3QKPiBsaW5lIG9mIHRoZSBmaWxlLiAgTGludXMgY2hvc2UgLy8gdG8gbWFrZSBpdCAic3Rh
bmQgb3V0IiBmcm9tIHRoZSBub3JtYWwKPiBmbG93IG9mIHRoZSBmaWxlLCB3aGljaCBpcyBmaW5l
IGZvciBhbiBTUERYIGxpbmUuICBTbyBwdXR0aW5nIHRoZXNlIGluCj4gaGVyZSBsaWtlIHRoaXMg
aXMgbm90IG9rIHRvIG1lLgo+IAo+IHRoYW5rcywKPiAKPiBncmVnIGstaAoKSSBjaGFuZ2VkIHRo
ZW0gdG8gQysrIHN0eWxlIHNvIHRoYXQgdGhleSB3b3VsZCBtYXRjaCB0aGUgb3RoZXIgY29tbWVu
dHMKaW4gdGhlIGZpbGUsIHdoaWNoIGFyZSBDKysgc3R5bGUsIGJ1dCBJIGd1ZXNzIHRoYXQgaXQg
c2hvdWxkIGhhdmUgYmVlbgpkb25lIHRoZSBvdGhlciB3YXkgYXJvdW5kIHdpdGggdGhlIEMrKyBz
dHlsZSBjaGFuZ2VkIHRvIEMgc3R5bGUuCgpHb29kIHRvIGtub3cuIEknbGwgY2hhbmdlIHRoZW0g
YmFjayBhbmQgc2VuZCBhIHYyLgoKLSBTaW1vbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
