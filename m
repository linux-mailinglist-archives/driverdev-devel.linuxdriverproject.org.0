Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DAC32D5B3
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Mar 2021 15:55:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C64DA43263;
	Thu,  4 Mar 2021 14:55:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9DB7gh4U7sai; Thu,  4 Mar 2021 14:55:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0726942FB7;
	Thu,  4 Mar 2021 14:55:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1DBF1BF48D
 for <devel@linuxdriverproject.org>; Thu,  4 Mar 2021 14:55:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DD2A14EBFB
 for <devel@linuxdriverproject.org>; Thu,  4 Mar 2021 14:55:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bZfLG_e9E2vb for <devel@linuxdriverproject.org>;
 Thu,  4 Mar 2021 14:55:24 +0000 (UTC)
X-Greylist: delayed 00:58:09 by SQLgrey-1.8.0
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D24134EBCE
 for <devel@driverdev.osuosl.org>; Thu,  4 Mar 2021 14:55:23 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id x78so23057oix.1
 for <devel@driverdev.osuosl.org>; Thu, 04 Mar 2021 06:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mMs0KXBWR+YueGQlJbv/e4cedmjQSUXhVkUKXhpAdMI=;
 b=aWd1FTezvqGJ/6se8MkarAgtd/7/Sr1RRy8WXevNQsQfoQFm+BEiFudNJF/AEmsV3w
 /rVJiNqRZj8JTLsTMAZMZXmgsMlfZYSGZghGplJOMDRXka5ubbErHviBuy1TyZe+6uWX
 px4/bMDu5p1stqd73/GYapoIJHVpIIOJ61N1DGvgAmoCITK9kNnVvqUdYeCXyg8noo4T
 bjrXMhr89XlI5/l4yyjmit6TTymGjo4jFRr0pIBhXL6MozuRxnRzB2m6LFF0ITzqtt/s
 ugiaosaxSJxweuj3Mtux76Q7Wm4LKQTsHqpLJjgTZ9FYI/YJeoY8vBqfC+UQj3fcft/W
 gK9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mMs0KXBWR+YueGQlJbv/e4cedmjQSUXhVkUKXhpAdMI=;
 b=KXNa5jAWiH6Uj0zmerZ5NCvKRas5pa7ohZcomzgspY83m1HQDohdZwIcs+rfNCT9EB
 hhQIGq2ERrmhJc0lSD/+VMWSN5Ku3Ar4FZAS0kFI7ndKH0hLuOsq/IoOdzDaQAYH+nh3
 VjuXiTJO+9FOmCBEPow4n35KhJjrVjl5X8AfxXv6IG82JqHQ4jXqV9zXcrtQquUlc5lI
 10J2uMMnHQnq846kCCfxLR2TOgSqcSaq3VrQ9bqVhDflFM/rlt1zlWY1fJFt7lL2sW+I
 k1EQ7tCO3WcZEaT5xlu3kuy01pFsvf2ipdRzlh/PnTeYO8jEQBeCL8woNn3SI3Kk0kUM
 L52A==
X-Gm-Message-State: AOAM532cQ+Mw45ABpWdllKxJxXptc73fKdQYlDHkf/y1hcMhV4+U1kNu
 dKB6VgHEmeCDz7VnbIlcqZD1SerGEg6B9d2YrFkoAR0Q9/Y=
X-Google-Smtp-Source: ABdhPJyp4iaFUtNFKXjAtlVJECLk/aIzchITz/Yh9b1QeBFZu+N6Uza9NXnFye0XpLpVkacCMI77WdgZIPybjMJ1A5Q=
X-Received: by 2002:a17:90a:5601:: with SMTP id
 r1mr4325691pjf.236.1614862365193; 
 Thu, 04 Mar 2021 04:52:45 -0800 (PST)
MIME-Version: 1.0
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <e6f8537d2a1f34d0a424b68e056c0ae556c93efd.camel@pengutronix.de>
 <2d55ad69-9b93-ab0e-04af-cd775cc9248b@collabora.com>
 <c12d84b955b0265dbcf89f2d7fc4d5c28bc74756.camel@pengutronix.de>
In-Reply-To: <c12d84b955b0265dbcf89f2d7fc4d5c28bc74756.camel@pengutronix.de>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 4 Mar 2021 06:52:34 -0600
Message-ID: <CAHCN7xKs0FtVYu1hs1kAUeaer_uJgpaATDeB0-3mayXUuCrpDg@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] Reset driver for IMX8MQ VPU hardware block
To: Philipp Zabel <p.zabel@pengutronix.de>
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
Cc: devel@driverdev.osuosl.org, devicetree <devicetree@vger.kernel.org>,
 kernel@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBNYXIgMywgMjAyMSBhdCA1OjI0IFBNIFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gT24gV2VkLCAyMDIxLTAzLTAzIGF0IDE2OjIwICswMTAw
LCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+IExlIDAzLzAzLzIwMjEgw6AgMTU6MTcsIFBo
aWxpcHAgWmFiZWwgYSDDqWNyaXQgOgo+ID4gPiBIaSBCZW5qYW1pbiwKPiA+ID4KPiA+ID4gT24g
TW9uLCAyMDIxLTAzLTAxIGF0IDE2OjE3ICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToK
PiA+ID4gPiBUaGUgdHdvIFZQVXMgaW5zaWRlIElNWDhNUSBzaGFyZSB0aGUgc2FtZSBjb250cm9s
IGJsb2NrIHdoaWNoIGNhbiBiZSBzZWUKPiA+ID4gPiBhcyBhIHJlc2V0IGhhcmR3YXJlIGJsb2Nr
Lgo+ID4gPiBUaGlzIGlzbid0IGEgcmVzZXQgY29udHJvbGxlciB0aG91Z2guIFRoZSBjb250cm9s
IGJsb2NrIGFsc28gY29udGFpbnMKPiA+ID4gY2xvY2sgZ2F0ZXMgb2Ygc29tZSBzb3J0IGFuZCBh
IGZpbHRlciByZWdpc3RlciBmb3IgdGhlIGZlYXR1cmVzZXQgZnVzZXMuCj4gPiA+IFRob3NlIHNo
b3VsZG4ndCBiZSBtYW5pcHVsYXRlZCB2aWEgdGhlIHJlc2V0IEFQSS4KClRoaXMgZHJpdmVyIGlz
IHZlcnkgc2ltaWxhciB0byBzZXZlcmFsIG90aGVyIHBhdGNoZXMgZm9yIGNsa19ibGsKY29udHJv
bCBbMV0gd2hpY2ggY29udGFpbiBib3RoIHJlc2V0cyBhbmQgY2xvY2stZW5hYmxlcyBvbiB0aGUK
aS5NWDhNUCwgaS5NWDhNTSBhbmQgaS5NWDhNTi4gIEluIHRob3NlIGNhc2VzLCB0aGVyZSBhcmUg
c29tZSBzcGVjaWZpYwpwb3dlciBkb21haW4gY29udHJvbHMgdGhhdCBhcmUgbmVlZGVkLCBidXQg
SSB3b25kZXIgaWYgdGhlIGFwcHJvYWNoIHRvCmNyZWF0aW5nIHJlc2V0cyBhbmQgY2xvY2sgZW5h
YmxlcyBjb3VsZCBiZSB1c2VkIGluIGEgc2ltaWxhciB3YXkgaWYKdGhlIElNWDhNUSBkb2Vzbid0
IGhhdmUgdGhlIHNhbWUgcXVpcmtzLiAgSW4gdGhlIGNhc2Ugb2YgdGhlIGkuTVg4TQpNaW5pLCBJ
IHRoaW5rIGl0IGhhcyB0aGUgc2FtZSBWUFUuCgpbMV0gLSBodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL3Byb2plY3QvbGludXgtY2xrL3BhdGNoLzE1OTk1NjA2OTEtMzc2My0xMi1naXQtc2Vu
ZC1lbWFpbC1hYmVsLnZlc2FAbnhwLmNvbS8KCmFkYW0KPiA+Cj4gPiBUaGV5IGFyZSBhbGwgcGFy
dCBvZiB0aGUgY29udHJvbCBibG9jayBhbmQgb2YgdGhlIHJlc2V0IHByb2Nlc3MgZm9yIHRoaXMK
PiA+IGhhcmR3YXJlIHRoYXQgd2h5IEkgcHV0IHRoZW0gaGVyZS4gSSBndWVzcyBpdCBpcyBib3Jk
ZXIgbGluZSA6LSkKPgo+IEknbSBwdXNoaW5nIGJhY2sgdG8ga2VlcCB0aGUgcmVzZXQgY29udHJv
bCBmcmFtZXdvcmsgZm9jdXNlZCBvbgo+IGNvbnRyb2xsaW5nIHJlc2V0IGxpbmVzLiBFdmVyeSBz
aWRlIGVmZmVjdCAoc3VjaCBhcyB0aGUgYXN5bW1ldHJpYyBjbG9jawo+IHVuZ2F0aW5nKSBpbiBh
IHJhbmRvbSBkcml2ZXIgbWFrZXMgaXQgaGFyZGVyIHRvIHJlYXNvbiBhYm91dCBiZWhhdmlvdXIK
PiBhdCB0aGUgQVBJIGxldmVsLCBhbmQgdG8gcmV2aWV3IHBhdGNoZXMgZm9yIGhhcmR3YXJlIEkg
YW0gbm90IGZhbWlsaWFyCj4gd2l0aC4KPgo+ID4gPiA+IEluIG9yZGVyIHRvIGJlIGFibGUgdG8g
YWRkIHRoZSBzZWNvbmQgVlBVIChmb3IgSEVDViBkZWNvZGluZykgaXQgd2lsbCBiZQo+ID4gPiA+
IG1vcmUgaGFuZHkgaWYgdGhlIGJvdGggVlBVIGRyaXZlcnMgaW5zdGFuY2UgZG9uJ3QgaGF2ZSB0
byBzaGFyZSB0aGUKPiA+ID4gPiBjb250cm9sIGJsb2NrIHJlZ2lzdGVycy4gVGhpcyBsZWFkIHRv
IGltcGxlbWVudCBpdCBhcyBhbiBpbmRlcGVuZCByZXNldAo+ID4gPiA+IGRyaXZlciBhbmQgdG8g
Y2hhbmdlIHRoZSBWUFUgZHJpdmVyIHRvIHVzZSBpdC4KPiA+ID4gV2h5IG5vdCBzd2l0Y2ggdG8g
YSBzeXNjb24gcmVnbWFwIGZvciB0aGUgY29udHJvbCBibG9jaz8gVGhhdCBzaG91bGQKPiA+ID4g
YWxzbyBhbGxvdyB0byBrZWVwIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5IHdpdGggdGhlIG9sZCBi
aW5kaW5nIHdpdGgKPiA+ID4gbWluaW1hbCBlZmZvcnQuCj4gPgo+ID4gSSB3aWxsIGdpdmUgYSB0
cnkgaW4gdGhpcyBkaXJlY3Rpb24uCj4KPiBUaGFuayB5b3UuCj4KPiA+ID4gPiBQbGVhc2Ugbm90
ZSB0aGF0IHRoaXMgc2VyaWVzIGJyZWFrIHRoZSBjb21wYXRpYmlsaXR5IGJldHdlZW4gdGhlIERU
QiBhbmQKPiA+ID4gPiBrZXJuZWwuIFRoaXMgYnJlYWsgaXMgbGltaXRlZCB0byBJTVg4TVEgU29D
IGFuZCBpcyBkb25lIHdoZW4gdGhlIGRyaXZlcgo+ID4gPiA+IGlzIHN0aWxsIGluIHN0YWdpbmcg
ZGlyZWN0b3J5Lgo+ID4gPiBJIGtub3cgaW4gdGhpcyBjYXNlIHdlIGFyZSBwcmV0dHkgc3VyZSB0
aGVyZSBhcmUgbm8gdXNlcnMgb2YgdGhpcwo+ID4gPiBiaW5kaW5nIGV4Y2VwdCBmb3IgYSBzdGFn
aW5nIGRyaXZlciwgYnV0IGl0IHdvdWxkIHN0aWxsIGJlIG5pY2UgdG8ga2VlcAo+ID4gPiBzdXBw
b3J0IGZvciB0aGUgZGVwcmVjYXRlZCBiaW5kaW5nLCB0byBhdm9pZCB0aGUgcmVxdWlyZW1lbnQg
b2YgdXBkYXRpbmcKPiA+ID4ga2VybmVsIGFuZCBEVCBpbiBsb2NrLXN0ZXAuCj4gPgo+ID4gSWYg
SSB3YW50IHRvIHVzZSBhIHN5c2NvbiAob3IgYSByZXNldCkgdGhlIGRyaXZlciBtdXN0IG5vdCBp
b3JlbWFwIHRoZSAiY3RybCIKPiA+IHJlZ2lzdGVycy4gSXQgbWVhbnMgdGhhdCAiY3RybCIgaGFz
IHRvIGJlIHJlbW92ZWQgZnJvbSB0aGUgZHJpdmVyIHJlcXVlc3RlZAo+ID4gcmVnLW5hbWVzIChp
bXg4bXFfcmVnX25hbWVzW10pLiBEb2luZyB0aGF0IGJyZWFrIHRoZSBrZXJuZWwvRFQgY29tcGF0
aWJpbGl0eS4KPiA+IFNvbWVob3cgc3lzY29uIGFuZCAiY3RybCIgYXJlIGV4Y2x1c2l2ZS4KPgo+
IFRoZSB3YXkgdGhlIGRyaXZlciBpcyBzZXQgdXAgY3VycmVudGx5LCB5ZXMuIFlvdSBjb3VsZCBh
ZGQgYSBiaXQgb2YKPiBwbGF0Zm9ybSBzcGVjaWZpYyBwcm9iZSBjb2RlLCB0aG91Z2gsIHRoYXQg
d291bGQgc2V0IHVwIHRoZSByZWdtYXAKPiBlaXRoZXIgYnkgY2FsbGluZwo+ICAgICAgICAgc3lz
Y29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZSgpOwo+IGZvciB0aGUgbmV3IGJpbmRpbmcsIG9y
LCBpZiB0aGUgcGhhbmRsZSBpcyBub3QgYXZhaWxhYmxlLCBmYWxsIGJhY2sgdG8KPiAgICAgICAg
IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUoLi4uLCAiY3RybCIpOwo+ICAgICAgICAgZGV2
bV9pb3JlbWFwX3Jlc291cmNlKCk7Cj4gICAgICAgICBkZXZtX3JlZ21hcF9pbml0X21taW8oKTsK
PiBmb3IgdGhlIG9sZCBiaW5kaW5nLgo+IFRoZSBhY3R1YWwgY29kZWMgLnJlc2V0IGFuZCB2YXJp
YW50IC5ydW50aW1lX3Jlc3VtZSBvcHMgY291bGQgYmUKPiBpZGVudGljYWwgdGhlbi4KPgo+IHJl
Z2FyZHMKPiBQaGlsaXBwCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
