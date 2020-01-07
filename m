Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE38132249
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jan 2020 10:29:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1352420438;
	Tue,  7 Jan 2020 09:29:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t-MUS0dHj-2r; Tue,  7 Jan 2020 09:29:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F0A842034D;
	Tue,  7 Jan 2020 09:29:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CED3D1BF2AB
 for <devel@linuxdriverproject.org>; Tue,  7 Jan 2020 09:29:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C7C7285F0A
 for <devel@linuxdriverproject.org>; Tue,  7 Jan 2020 09:29:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XQf95E7B-Xrc for <devel@linuxdriverproject.org>;
 Tue,  7 Jan 2020 09:29:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D87A785DFF
 for <devel@driverdev.osuosl.org>; Tue,  7 Jan 2020 09:29:28 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id y6so45942920lji.0
 for <devel@driverdev.osuosl.org>; Tue, 07 Jan 2020 01:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QC9ax52njxZvfMScI+pYnjQCr3iWMenb27w408KKrvk=;
 b=VawLg59+alC4Ja6gv1Z3uCiXgCNzcJLJpvipMvn2OVSXu2KNmIuRsXFGua6ptiTh/w
 qSdYqTAEKZo8pIoRpmX2NKPkmOiPtuJawUbLF9dkcNAKwiAZNSrf1VzxsQc9sGovj5Bi
 3XZ36wmH4gl0oK+E1maUaLZbgFYEe8PsbKukmE/0L5HHkkesnEjA+o0yjHGchS/VsaRZ
 5zehEYxQiEh/uAlwFmemlszl/W8fqp1SkB26V0BPLy3tHmWzZJpFiLAAg84dfiE6XTsX
 haZ+flyh7QGPii5Bbp99VziRU3hhv8ZWxX/jC1QYphoMccZEVmGXxtRsuIb7N4KZr9Ey
 Z6zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QC9ax52njxZvfMScI+pYnjQCr3iWMenb27w408KKrvk=;
 b=tbsP1CFiNOb2GZ8+DMTNMHiTEiEehAYgPxXPxGdtkWIS4UWVaKq1PJKk6g2VyeMkPg
 bfYuExVj6cTU10igZquqi92iFyHRvr1dpbXn/FHxM3r1LwkyK3ZFfaO4j766n1S8e7Ld
 XbMB+QWrvWWuiD3V7ZRoo9aOCJ2nt5d7tDcQBLMOCxZqtE0KTrS7ZC6l8ZUjZU8oBQAi
 Vhob8sB+9ksMidKsq7fUN1JfcgmDkvu+Z3eyJGiSaMmaQ3oPavheiWtEiniAf2wiGI1b
 K9INXlBybVuyTBpIdAWbQzpB3JHHTEgBJfWiPU6DpyfvhUmk54jH9Efw4BnZnRRL4pQ/
 yMsw==
X-Gm-Message-State: APjAAAX3Yat3T9MFILJubz9We8PBteLc+aivnqlbEmubJZJf0SRNrjpI
 oCohdHcR/Cs2DIs1J0UuY+72m6aYCoi1/NtO0RSigQ==
X-Google-Smtp-Source: APXvYqwwJvG6nEjsJq9xGfjG/kmOi0JGnHLKITQfD4l4UDDPnalI+bHc11y+yVlnnuEjiIhEiQoZl0ssMyyQlW0D+js=
X-Received: by 2002:a2e:844e:: with SMTP id u14mr63371948ljh.183.1578389366818; 
 Tue, 07 Jan 2020 01:29:26 -0800 (PST)
MIME-Version: 1.0
References: <20191215183047.9414-1-digetx@gmail.com>
 <CACRpkdYAKS50-CNmE0nRNQanFxKejoHrwxho3fZXROoLZUb4+Q@mail.gmail.com>
 <CAMpxmJVi1hy6a72M7rAHP0AXW1Z4cGp8H0O6ayLMwFm9UL3WPQ@mail.gmail.com>
In-Reply-To: <CAMpxmJVi1hy6a72M7rAHP0AXW1Z4cGp8H0O6ayLMwFm9UL3WPQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 7 Jan 2020 10:29:15 +0100
Message-ID: <CACRpkdaNAzpDu6uxETnuDGxnXTJTh0LhcE=9DL9-Kwi4butZLA@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] Tegra GPIO: Minor code clean up
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
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
Cc: devel@driverdev.osuosl.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBKYW4gNywgMjAyMCBhdCA5OjI1IEFNIEJhcnRvc3ogR29sYXN6ZXdza2kKPGJnb2xh
c3pld3NraUBiYXlsaWJyZS5jb20+IHdyb3RlOgoKPiBwb24uLCA2IHN0eSAyMDIwIG8gMjM6NTkg
TGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPiBuYXBpc2HFgihhKToKPiA+
IE9uIFN1biwgRGVjIDE1LCAyMDE5IGF0IDc6MzEgUE0gRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhA
Z21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiA+IEkgd2FzIGludmVzdGlnYXRpbmcgd2h5IENQVSBo
YW5ncyBkdXJpbmcgb2YgR1BJTyBkcml2ZXIgc3VzcGVuZCBhbmQgaW4KPiA+ID4gdGhlIGVuZCBp
dCB0dXJuZWQgb3V0IHRoYXQgaXQgaXMgYSBCcm9hZGNvbSBXaUZpIGRyaXZlciBwcm9ibGVtIGJl
Y2F1c2UKPiA+ID4gaXQga2VlcHMgT09CIHdha2UtaW50ZXJydXB0IGVuYWJsZWQgd2hpbGUgV0xB
TiBpbnRlcmZhY2UgaXMgRE9XTiBhbmQgdGhpcwo+ID4gPiBtYXkgY2F1c2UgYSBiaXQgd2VpcmQg
Q1BVIGhhbmcgb24gd3JpdGluZyB0byBJTlRfRU5CIHJlZ2lzdGVyIGR1cmluZyBvZgo+ID4gPiBH
UElPIGRyaXZlciBzdXNwZW5kLiBNZWFud2hpbGUgSSBhbHNvIG5vdGljZWQgdGhhdCBhIGZldyB0
aGluZ3MgY291bGQgYmUKPiA+ID4gaW1wcm92ZWQgaW4gdGhlIGRyaXZlciwgdGhhdCdzIHdoYXQg
dGhpcyBzbWFsbCBzZXJpZXMgYWRkcmVzc2VzLgo+ID4gPgo+ID4gPiBEbWl0cnkgT3NpcGVua28g
KDMpOgo+ID4gPiAgIGdwaW86IHRlZ3JhOiBVc2UgZ2VuZXJpYyByZWFkbF9yZWxheGVkL3dyaXRl
bF9yZWxheGVkIGFjY2Vzc29ycwo+ID4gPiAgIGdwaW86IHRlZ3JhOiBQcm9wZXJseSBoYW5kbGUg
aXJxX3NldF9pcnFfd2FrZSgpIGVycm9yCj4gPiA+ICAgZ3BpbzogdGVncmE6IFVzZSBOT0lSUSBw
aGFzZSBmb3Igc3VzcGVuZC9yZXN1bWUKPiA+Cj4gPiBBbGwgdGhyZWUgcGF0Y2hlcyBhcHBsaWVk
IHdpdGggVGhpZXJyeSdzIHJldmlldy90ZXN0IHRhZy4KPiA+Cj4gPiBZb3VycywKPiA+IExpbnVz
IFdhbGxlaWoKPgo+IFVnaCwgSSBub3cgbm90aWNlZCBJIHJlc3BvbmRlZCB0byBUaGllcnJ5IG9u
bHkgYWZ0ZXIgYXBwbHlpbmcgdGhpcyB0byBteSB0cmVlLgo+Cj4gQW55d2F5LCBpdCBzaG91bGRu
J3QgYmUgYSBwcm9ibGVtLiBJJ2xsIHRha2UgbW9yZSBjYXJlIG5leHQgdGltZS4KCk9LIHNoYWxs
IEkgZHJvcCB0aGUgcGF0Y2hlcyBmcm9tIG15IHRyZWUgdGhlbj8gTm8gYmlnIGRlYWwuCgpUaGFu
a3MsCkxpbnVzIFdhbGxlaWoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
