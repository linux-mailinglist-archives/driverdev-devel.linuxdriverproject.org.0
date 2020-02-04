Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F191521A0
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Feb 2020 21:57:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 562CB847AB;
	Tue,  4 Feb 2020 20:57:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t2pDeGvHGeJB; Tue,  4 Feb 2020 20:57:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED93784368;
	Tue,  4 Feb 2020 20:57:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 833D71BF3BA
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 20:57:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7EB6882752
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 20:57:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 57g9UTXJGiUp for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 20:57:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B20C8826D3
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 20:57:30 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id e8so5166521plt.9
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 12:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=j89bGL97ra5P5zvrqTDzBsDUs78jnPcvnLuNMHuRpeU=;
 b=pKR9gKGYh3V550sbLyrtfSB+Ecuu3Ur+YTNOuRdbGFYL1wRryLmyri8qBvZhp9i1xW
 iD7wlZGn49Vpz1s53ra9mbRBwX53BN9SV/dcv53lfEFBBcJfPMgIrvHMkTd9tN223Z5O
 nPdR7iysNzLcMQ6iHiThah9MfO5I9DxB2C8/+Wdbt09EObxiQfUivftRCEQgRSZEHCUt
 ctOPn/rj6v6EhIdlqVZccwcMMNR7AhjEy4lxdfzYAZRLlkZ4GQg0fTt8Pro9Cv4tiACz
 5uHjnfdFte1vMFNPm4lokhuae9KWjg2/XKz+jYgoBspZ8gm3nwLyLn+zUJIjVfrxNZeJ
 WF1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=j89bGL97ra5P5zvrqTDzBsDUs78jnPcvnLuNMHuRpeU=;
 b=ngIPQT78DBuj/Oa85jzWi5Y3dpPeIitl73NWFdgUB654jGF/DzMrfqt6HcYRFb+bsX
 d8LDXzJ6/FfaafRD+ja4RR4ezauer84RBkH164lhi/3FRFP6VCqiPfbZq7n4asaWBV05
 wH1IYy+vyaufXYZg4JDQxXZsrZuLuhIbP9KokDJkdH/0nfuw27rjmtCgrUu3Qr4hgqQY
 86xNIE3KfadRD9dsokJNE1GMOdTXjSp+hvjc1dzJvQ11ugDae1jaHdnFgpzcyXqptLTj
 1/I+kNu3aH2sPVCNyS9vLLwVRKbnd0NkLCSVJnKFyXP1sMQclIT+IR2bKReOyNMuEYvt
 A1Ug==
X-Gm-Message-State: APjAAAXWQjsFG7bHYZqewcQK7TVIMNDj+2+AfWhByFEpcPD5bzh7iV52
 42fabubsWzRbuMm/px58btU=
X-Google-Smtp-Source: APXvYqygHaSU8Jp40MW7iwCODwvmudKfuenPeH2DKkHyGiCmVYJNkuNGct+7jSfrpvIzghs1VtdRsQ==
X-Received: by 2002:a17:902:b215:: with SMTP id
 t21mr31421810plr.190.1580849850360; 
 Tue, 04 Feb 2020 12:57:30 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id y197sm25726553pfc.79.2020.02.04.12.57.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Feb 2020 12:57:29 -0800 (PST)
Date: Tue, 4 Feb 2020 12:57:28 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Subject: Re: [SPAM] Re: [PATCH 1/2] staging: octeon: delete driver
Message-ID: <20200204205728.GB28502@roeck-us.net>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <6f934497-0635-7aa0-e7d5-ed2c4cc48d2d@roeck-us.net>
 <da150cdb160b5d1b58ad1ea2674cc93c1fc6aadc.camel@alliedtelesis.co.nz>
 <20200204070927.GA966981@kroah.com>
 <1a90dc4c62c482ed6a44de70962996b533d6f627.camel@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a90dc4c62c482ed6a44de70962996b533d6f627.camel@alliedtelesis.co.nz>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "brandonbonaby94@gmail.com" <brandonbonaby94@gmail.com>,
 "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "paulburton@kernel.org" <paulburton@kernel.org>,
 "aaro.koskinen@iki.fi" <aaro.koskinen@iki.fi>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "fw@strlen.de" <fw@strlen.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "willy@infradead.org" <willy@infradead.org>,
 "ddaney@caviumnetworks.com" <ddaney@caviumnetworks.com>,
 "bobdc9664@seznam.cz" <bobdc9664@seznam.cz>,
 "sandro@volery.com" <sandro@volery.com>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ivalery111@gmail.com" <ivalery111@gmail.com>, "ynezz@true.cz" <ynezz@true.cz>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "wambui.karugax@gmail.com" <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBGZWIgMDQsIDIwMjAgYXQgMDg6MDY6MTRQTSArMDAwMCwgQ2hyaXMgUGFja2hhbSB3
cm90ZToKPiBPbiBUdWUsIDIwMjAtMDItMDQgYXQgMDc6MDkgKzAwMDAsIGdyZWdraEBsaW51eGZv
dW5kYXRpb24ub3JnIHdyb3RlOgo+ID4gT24gVHVlLCBGZWIgMDQsIDIwMjAgYXQgMDQ6MDI6MTVB
TSArMDAwMCwgQ2hyaXMgUGFja2hhbSB3cm90ZToKPiA+ID4gSSdsbCBwaXBlIHVwIG9uIHRoaXMg
dGhyZWFkIHRvbwo+ID4gPiAKPiA+ID4gT24gVHVlLCAyMDE5LTEyLTEwIGF0IDAyOjQyIC0wODAw
LCBHdWVudGVyIFJvZWNrIHdyb3RlOgo+ID4gPiA+IE9uIDEyLzEwLzE5IDE6MTUgQU0sIEdyZWcg
S3JvYWgtSGFydG1hbiB3cm90ZToKPiA+ID4gPiA+IFRoaXMgZHJpdmVyIGhhcyBiZWVuIGluIHRo
ZSB0cmVlIHNpbmNlIDIwMDkgd2l0aCBubyByZWFsIG1vdmVtZW50IHRvIGdldAo+ID4gPiA+ID4g
aXQgb3V0LiAgTm93IGl0IGlzIHN0YXJ0aW5nIHRvIGNhdXNlIGJ1aWxkIGlzc3VlcyBhbmQgb3Ro
ZXIgcHJvYmxlbXMgZm9yCj4gPiA+ID4gPiBwZW9wbGUgd2hvIHdhbnQgdG8gZml4IGNvZGluZyBz
dHlsZSBwcm9ibGVtcywgYnV0IGNhbiBub3QgYWN0dWFsbHkgYnVpbGQKPiA+ID4gPiA+IGl0Lgo+
ID4gPiA+ID4gCj4gPiA+ID4gPiBBcyBub3RoaW5nIGlzIGhhcHBlbmluZyBoZXJlLCBqdXN0IGRl
bGV0ZSB0aGUgbW9kdWxlIGVudGlyZWx5Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBSZXBvcnRlZC1i
eTogR3VlbnRlciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0Pgo+ID4gPiA+ID4gQ2M6IERhdmlk
IERhbmV5IDxkZGFuZXlAY2F2aXVtbmV0d29ya3MuY29tPgo+ID4gPiA+ID4gQ2M6ICJEYXZpZCBT
LiBNaWxsZXIiIDxkYXZlbUBkYXZlbWxvZnQubmV0Pgo+ID4gPiA+ID4gQ2M6ICJNYXR0aGV3IFdp
bGNveCAoT3JhY2xlKSIgPHdpbGx5QGluZnJhZGVhZC5vcmc+Cj4gPiA+ID4gPiBDYzogR3VlbnRl
ciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0Pgo+ID4gPiA+ID4gQ2M6IFl1ZUhhaWJpbmcgPHl1
ZWhhaWJpbmdAaHVhd2VpLmNvbT4KPiA+ID4gPiA+IENjOiBBYXJvIEtvc2tpbmVuIDxhYXJvLmtv
c2tpbmVuQGlraS5maT4KPiA+ID4gPiA+IENjOiBXYW1idWkgS2FydWdhIDx3YW1idWkua2FydWdh
eEBnbWFpbC5jb20+Cj4gPiA+ID4gPiBDYzogSnVsaWEgTGF3YWxsIDxqdWxpYS5sYXdhbGxAbGlw
Ni5mcj4KPiA+ID4gPiA+IENjOiBGbG9yaWFuIFdlc3RwaGFsIDxmd0BzdHJsZW4uZGU+Cj4gPiA+
ID4gPiBDYzogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9yZz4KPiA+ID4g
PiA+IENjOiBCcmFuZGVuIEJvbmFieSA8YnJhbmRvbmJvbmFieTk0QGdtYWlsLmNvbT4KPiA+ID4g
PiA+IENjOiAiUGV0ciDFoHRldGlhciIgPHluZXp6QHRydWUuY3o+Cj4gPiA+ID4gPiBDYzogU2Fu
ZHJvIFZvbGVyeSA8c2FuZHJvQHZvbGVyeS5jb20+Cj4gPiA+ID4gPiBDYzogUGF1bCBCdXJ0b24g
PHBhdWxidXJ0b25Aa2VybmVsLm9yZz4KPiA+ID4gPiA+IENjOiBEYW4gQ2FycGVudGVyIDxkYW4u
Y2FycGVudGVyQG9yYWNsZS5jb20+Cj4gPiA+ID4gPiBDYzogR2lvdmFubmkgR2hlcmRvdmljaCA8
Ym9iZGM5NjY0QHNlem5hbS5jej4KPiA+ID4gPiA+IENjOiBWYWxlcnkgSXZhbm92IDxpdmFsZXJ5
MTExQGdtYWlsLmNvbT4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1h
biA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4gPiA+ID4gCj4gPiA+ID4gQWNrZWQtYnk6
IEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNrLXVzLm5ldD4KPiA+ID4gCj4gPiA+IFBsZWFzZSBj
YW4gd2Uga2VlcCB0aGlzIGRyaXZlci4gV2UgZG8gaGF2ZSBwbGF0Zm9ybXMgdXNpbmcgaXQgYW5k
IHdlCj4gPiA+IHdvdWxkIGxpa2UgaXQgdG8gc3RheSBhcm91bmQuCj4gPiA+IAo+ID4gPiBDbGVh
cmx5IHdlJ2xsIG5lZWQgdG8gc29ydCB0aGluZ3Mgb3V0IHRvIGEgcG9pbnQgd2hlcmUgdGhleSBi
dWlsZAo+ID4gPiBzdWNjZXNzZnVsbHkuIFdlJ3ZlIGJlZW4gaG9waW5nIHRvIHNlZSB0aGlzIG1v
dmUgb3V0IG9mIHN0YWdpbmcgZXZlcgo+ID4gPiBzaW5jZSB3ZSBzZWxlY3RlZCBDYXZpdW0gYXMg
YSB2ZW5kb3IuCj4gPiAKPiA+IEdyZWF0LCBjYW4geW91IHNlbmQgbWUgYSBwYXRjaHNldCB0aGF0
IHJldmVydHMgdGhpcyBhbmQgZml4ZXMgdGhlIGJ1aWxkCj4gPiBpc3N1ZXMgYW5kIGFjY2VwdCBt
YWludGFpbmVyc2hpcCBvZiB0aGUgY29kZT8KPiA+IAo+IAo+IFllcCB3aWxsIGRvLgo+IAo+IE9u
IFR1ZSwgMjAyMC0wMi0wNCBhdCAxMDoyMSArMDMwMCwgRGFuIENhcnBlbnRlciB3cm90ZToKPiA+
IE15IGFkdmljZSBpcyB0byBkZWxldGUgYWxsIHRoZSBDT01QSUxFX1RFU1QgY29kZS4gIFRoYXQg
c3R1ZmYgd2FzIGEKPiA+IGNvbnN0YW50IHNvdXJjZSBvZiBjb25mdXNpb24gYW5kIGhlYWRhY2hl
cy4KPiAKPiBJIHdhcyBhbHNvIGdvaW5nIHRvIHN1Z2dlc3QgdGhpcy4gU2luY2UgdGhlIENPTVBJ
TEVfVEVTVCBoYXMgYmVlbiBhCj4gc291cmNlIG9mIHRyb3VibGUgSSB3YXMgZ29pbmcgdG8gcHJv
cG9zZSBkcm9wcGluZyB0aGUgfHwgQ09NUElMRV9URVNUCj4gZnJvbSB0aGUgS2NvbmZpZyBmb3Ig
dGhlIG9jdGVvbiBkcml2ZXJzLgoKSXQgaXNuJ3QganVzdCB0aGUgS2NvbmZpZyBmaWxlLCB0aGVy
ZSBpcyBhbHNvIGEgbG90IG9mIGFjdHVhbCBfY29kZV8KdGhhdCBkZXBlbmRzIG9uIENPTVBJTEVf
VEVTVC4KCkd1ZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
