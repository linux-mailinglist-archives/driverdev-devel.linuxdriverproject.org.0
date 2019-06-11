Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4D23CA7E
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 13:56:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 178ED85B99;
	Tue, 11 Jun 2019 11:56:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mRL7U8SqEckD; Tue, 11 Jun 2019 11:56:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B833E8598A;
	Tue, 11 Jun 2019 11:56:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EFE401BF362
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 11:56:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ECFAD8790F
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 11:56:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id scVcNsfvKgYp for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 11:56:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1AA0885CE3
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 11:56:24 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id g135so2623823wme.4
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 04:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=/1MOR3QrJTEFCWZFdMC/DEmdNjlMHoHLCzjdZO2gpas=;
 b=tcCqahQKRNFhSuKKuHrTgh9xgWvINKKr8cpRQhx4Hpyyd/GqIFYa8WYkfhryWCySGV
 fXpSxyEUYa0GTYifC3QOrFgE7O2aykspKEIhLGjdVPQIxijuhkP5erdLaqg0/8T+3YTZ
 SGcI0Wo0yFCpV9uhSmch6O1dUkBakEXXfc93hjViYyPp/68ElEYh+Oq2YXlcLCrvNHS/
 Y5u6OoYTTKHrASe/hvFVEtRhPoEEmG2n1pFaH5x3wn1KIZcap5NdLvQHcez/Syl3bfX7
 /D6Kq+S0ev02u9kU/fluZWdvIpLkDjqks1Fgytrdmh2b4HTuw82vc6JXlR/aEaIRr8fJ
 1cIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=/1MOR3QrJTEFCWZFdMC/DEmdNjlMHoHLCzjdZO2gpas=;
 b=Q3hXewRFve0J8+lPKFio9LZq3Hcj2klqJq14JoWmGZ0b3wQz9G+Waktk1szKNBIOGw
 lAgfAcLGZHdsFBSyfIaXrAo/xCBMnCB1bQznwKFHnfZ63HXDUJvazsQw5Pqz8IjeTMHX
 6yJLXeU1ATqOZXyEDXZBoQlXM9K32DDu29V43LxKcORbOo+UIacwwWhjlNFVSDJgQDy9
 UyGKbADnbCHp3ld8wwXEe46hKDHhWasQiuaYgTsydqZhk+iG1kkqp0V8VaDQKlI1rVua
 NJgLicaRscYluvGHaBqA1cTwBlVoEbOlBa7WGEanGOeeF5AV+A/FRHDG2VBK+8w3L75i
 sXxw==
X-Gm-Message-State: APjAAAV0VpEih7ElCdLs6BO5mkKgGCD4XtRg8SQnM/04XF/fkCcWXmVL
 WPU1DE1LWKJ5M8TWi0WEbIA=
X-Google-Smtp-Source: APXvYqxKri0XmDaxau9DHr8vE7hTxWlAaPas+KdgSz6qoWEf0HDsPLpL8qzdgKkW6IuAvF6QL7KoxA==
X-Received: by 2002:a1c:630a:: with SMTP id x10mr13608161wmb.113.1560254182345; 
 Tue, 11 Jun 2019 04:56:22 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id f10sm22568606wrg.24.2019.06.11.04.56.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 04:56:21 -0700 (PDT)
References: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
 <20190606153825.8183-2-sebastien.szymanski@armadeus.com>
 <m34l4xpweh.fsf@gmail.com>
 <722336d1-c7f7-1796-95d5-7bba1fac7968@armadeus.com>
 <m3zhmo1mux.fsf@gmail.com>
 <df32fe2e-d9b1-8b09-686c-7f6970aa8e0c@armadeus.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: =?utf-8?Q?S=C3=A9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH v2 2/3] media: imx7-media-csi: add i.MX6UL support
In-reply-to: <df32fe2e-d9b1-8b09-686c-7f6970aa8e0c@armadeus.com>
Date: Tue, 11 Jun 2019 12:56:19 +0100
Message-ID: <m3wohs1gkc.fsf@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgU2ViYXN0aWVuLApPbiBUdWUgMTEgSnVuIDIwMTkgYXQgMTE6MDMsIFPDqWJhc3RpZW4gU3p5
bWFuc2tpIHdyb3RlOgo+IE9uIDYvMTEvMTkgMTE6NDAgQU0sIFJ1aSBNaWd1ZWwgU2lsdmEgd3Jv
dGU6Cj4+IEhpIFNlYmFzdGllbiwKPj4gT24gVHVlIDExIEp1biAyMDE5IGF0IDA5OjE2LCBTw6li
YXN0aWVuIFN6eW1hbnNraSB3cm90ZToKPj4+IEhpIFJ1aSwKPj4+Cj4+PiB0aGFua3MgZm9yIHRo
ZSByZXZpZXchCj4+Pgo+Pj4gT24gNi8xMC8xOSAxMjoyOCBQTSwgUnVpIE1pZ3VlbCBTaWx2YSB3
cm90ZToKPj4+PiBIaSBTZWJhc3RpZW4sCj4+Pj4gVGhhbmtzIGZvciB0aGUgcGF0Y2guCj4+Pj4K
Pj4+PiBPbiBUaHUgMDYgSnVuIDIwMTkgYXQgMTY6MzgsIFPDqWJhc3RpZW4gU3p5bWFuc2tpIHdy
b3RlOgo+Pj4+PiBpLk1YNyBhbmQgaS5NWDZVTC9MIGhhdmUgdGhlIHNhbWUgQ1NJIGNvbnRyb2xs
ZXIuIFNvIGFkZCBpLk1YNlVML0wgc3VwcG9ydAo+Pj4+PiB0byBpbXg3LW1lZGlhLWNzaSBkcml2
ZXIuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFPDqWJhc3RpZW4gU3p5bWFuc2tpIDxzZWJh
c3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+Cj4+Pj4+IENoYW5n
ZXMgZm9yIHYyOgo+Pj4+PiAgLSByZWJhc2Ugb24gdG9wIG9mIGxpbnV4dHYvbWFzdGVyCj4+Pj4+
ICAtIG1lbnRpb24gaS5NWDZVTC9MIGluIGhlYWRlciBhbmQgS2NvbmZpZyBoZWxwIHRleHQKPj4+
Pj4gIC0gcmVuYW1lIGNzaV90eXBlIHRvIGNzaV9zb2NfaWQKPj4+Pj4KPj4+Pj4gIGRyaXZlcnMv
c3RhZ2luZy9tZWRpYS9pbXgvS2NvbmZpZyAgICAgICAgICB8ICA0ICstCj4+Pj4+ICBkcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaW14L2lteDctbWVkaWEtY3NpLmMgfCA2MiArKysrKysrKysrKysrKysr
LS0tLS0tCj4+Pj4+ICAyIGZpbGVzIGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKyksIDE3IGRlbGV0
aW9ucygtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lt
eC9LY29uZmlnIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnCj4+Pj4+IGluZGV4
IGFkM2Q3ZGY2YmIzYy4uOGI2ZGM0MmMzOWUwIDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvaW14L0tjb25maWcKPj4+Pj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlh
L2lteC9LY29uZmlnCj4+Pj4+IEBAIC0yMiwxMSArMjIsMTEgQEAgY29uZmlnIFZJREVPX0lNWF9D
U0kKPj4+Pj4gIAkgIEEgdmlkZW80bGludXggY2FtZXJhIHNlbnNvciBpbnRlcmZhY2UgZHJpdmVy
IGZvciBpLk1YNS82Lgo+Pj4+Pgo+Pj4+PiAgY29uZmlnIFZJREVPX0lNWDdfQ1NJCj4+Pj4+IC0J
dHJpc3RhdGUgImkuTVg3IENhbWVyYSBTZW5zb3IgSW50ZXJmYWNlIGRyaXZlciIKPj4+Pj4gKwl0
cmlzdGF0ZSAiaS5NWDZVTC9MIC8gaS5NWDcgQ2FtZXJhIFNlbnNvciBJbnRlcmZhY2UgZHJpdmVy
Igo+Pj4+PiAgCWRlcGVuZHMgb24gVklERU9fSU1YX01FRElBICYmIFZJREVPX0RFViAmJiBJMkMK
Pj4+Pj4gIAlkZWZhdWx0IHkKPj4+Pj4gIAloZWxwCj4+Pj4+ICAJICBFbmFibGUgc3VwcG9ydCBm
b3IgdmlkZW80bGludXggY2FtZXJhIHNlbnNvciBpbnRlcmZhY2UgZHJpdmVyIGZvcgo+Pj4+PiAt
CSAgaS5NWDcuCj4+Pj4+ICsJICBpLk1YNlVML0wgb3IgaS5NWDcuCj4+Pj4+ICBlbmRtZW51Cj4+
Pj4+ICBlbmRpZgo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9p
bXg3LW1lZGlhLWNzaS5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9pbXg3LW1lZGlhLWNz
aS5jCj4+Pj4+IGluZGV4IDkxMDE1NjZmM2Y2Ny4uOTAyYmRjZTU5NGNmIDEwMDY0NAo+Pj4+PiAt
LS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L2lteDctbWVkaWEtY3NpLmMKPj4+Pj4gKysr
IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9pbXg3LW1lZGlhLWNzaS5jCj4+Pj4+IEBAIC0x
LDYgKzEsNiBAQAo+Pj4+PiAgLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPj4+
Pj4gIC8qCj4+Pj4+IC0gKiBWNEwyIENhcHR1cmUgQ1NJIFN1YmRldiBmb3IgRnJlZXNjYWxlIGku
TVg3IFNPQwo+Pj4+PiArICogVjRMMiBDYXB0dXJlIENTSSBTdWJkZXYgZm9yIEZyZWVzY2FsZSBp
Lk1YNlVML0wgLyBpLk1YNyBTT0MKPj4+Pj4gICAqCj4+Pj4+ICAgKiBDb3B5cmlnaHQgKGMpIDIw
MTkgTGluYXJvIEx0ZAo+Pj4+PiAgICoKPj4+Pj4gQEAgLTE1Miw2ICsxNTIsMTEgQEAKPj4+Pj4g
ICNkZWZpbmUgQ1NJX0NTSUNSMTgJCTB4NDgKPj4+Pj4gICNkZWZpbmUgQ1NJX0NTSUNSMTkJCTB4
NGMKPj4+Pj4KPj4+Pj4gK2VudW0gY3NpX3NvY19pZCB7Cj4+Pj4+ICsJSU1YNywKPj4+Pj4gKwlJ
TVg2VUwKPj4+Pj4gK307Cj4+Pj4+ICsKPj4+Pj4gIHN0cnVjdCBpbXg3X2NzaSB7Cj4+Pj4+ICAJ
c3RydWN0IGRldmljZSAqZGV2Owo+Pj4+PiAgCXN0cnVjdCB2NGwyX3N1YmRldiBzZDsKPj4+Pj4g
QEAgLTE5MSw2ICsxOTYsNyBAQCBzdHJ1Y3QgaW14N19jc2kgewo+Pj4+PiAgCWJvb2wgaXNfaW5p
dDsKPj4+Pj4gIAlib29sIGlzX3N0cmVhbWluZzsKPj4+Pj4gIAlib29sIGlzX2NzaTI7Cj4+Pj4+
ICsJZW51bSBjc2lfc29jX2lkIHNvY19pZDsKPj4+Pj4KPj4+Pj4gIAlzdHJ1Y3QgY29tcGxldGlv
biBsYXN0X2VvZl9jb21wbGV0aW9uOwo+Pj4+PiAgfTsKPj4+Pj4gQEAgLTU0OCw2ICs1NTQsMTQg
QEAgc3RhdGljIGludCBpbXg3X2NzaV9wYWRfbGlua192YWxpZGF0ZShzdHJ1Y3QgdjRsMl9zdWJk
ZXYgKnNkLAo+Pj4+PiAgCWlmIChyZXQpCj4+Pj4+ICAJCXJldHVybiByZXQ7Cj4+Pj4+Cj4+Pj4+
ICsJaWYgKGNzaS0+c29jX2lkID09IElNWDZVTCkgewo+Pj4+PiArCQltdXRleF9sb2NrKCZjc2kt
PmxvY2spOwo+Pj4+PiArCQljc2ktPmlzX2NzaTIgPSBmYWxzZTsKPj4+Pj4gKwkJbXV0ZXhfdW5s
b2NrKCZjc2ktPmxvY2spOwo+Pj4+PiArCj4+Pj4+ICsJCXJldHVybiAwOwo+Pj4+PiArCX0KPj4+
Pj4gKwo+Pj4+PiAgCXJldCA9IGlteDdfY3NpX2dldF91cHN0cmVhbV9lbmRwb2ludChjc2ksICZ1
cHN0cmVhbV9lcCwgdHJ1ZSk7Cj4+Pj4+ICAJaWYgKHJldCkgewo+Pj4+PiAgCQl2NGwyX2Vycigm
Y3NpLT5zZCwgImZhaWxlZCB0byBmaW5kIHVwc3RyZWFtIGVuZHBvaW50XG4iKTsKPj4+Pj4gQEAg
LTc1Nyw2ICs3NzEsNyBAQCBzdGF0aWMgaW50IGlteDdfY3NpX2NvbmZpZ3VyZShzdHJ1Y3QgaW14
N19jc2kgKmNzaSkKPj4+Pj4gIAlzdHJ1Y3QgdjRsMl9waXhfZm9ybWF0ICpvdXRfcGl4ID0gJnZk
ZXYtPmZtdC5mbXQucGl4Owo+Pj4+PiAgCV9fdTMyIGluX2NvZGUgPSBjc2ktPmZvcm1hdF9tYnVz
W0lNWDdfQ1NJX1BBRF9TSU5LXS5jb2RlOwo+Pj4+PiAgCXUzMiBjcjEsIGNyMTg7Cj4+Pj4+ICsJ
aW50IHdpZHRoID0gb3V0X3BpeC0+d2lkdGg7Cj4+Pj4+Cj4+Pj4+ICAJaWYgKG91dF9waXgtPmZp
ZWxkID09IFY0TDJfRklFTERfSU5URVJMQUNFRCkgewo+Pj4+PiAgCQlpbXg3X2NzaV9kZWludGVy
bGFjZV9lbmFibGUoY3NpLCB0cnVlKTsKPj4+Pj4gQEAgLTc2NiwxNSArNzgxLDI3IEBAIHN0YXRp
YyBpbnQgaW14N19jc2lfY29uZmlndXJlKHN0cnVjdCBpbXg3X2NzaSAqY3NpKQo+Pj4+PiAgCQlp
bXg3X2NzaV9idWZfc3RyaWRlX3NldChjc2ksIDApOwo+Pj4+PiAgCX0KPj4+Pj4KPj4+Pj4gLQlp
bXg3X2NzaV9zZXRfaW1hZ3BhcmEoY3NpLCBvdXRfcGl4LT53aWR0aCwgb3V0X3BpeC0+aGVpZ2h0
KTsKPj4+Pj4gKwljcjE4ID0gaW14N19jc2lfcmVnX3JlYWQoY3NpLCBDU0lfQ1NJQ1IxOCk7Cj4+
Pj4+ICsKPj4+Pj4gKwlpZiAoIWNzaS0+aXNfY3NpMikgewo+Pj4+PiArCQlpZiAob3V0X3BpeC0+
cGl4ZWxmb3JtYXQgPT0gVjRMMl9QSVhfRk1UX1VZVlkgfHwKPj4+Pj4gKwkJICAgIG91dF9waXgt
PnBpeGVsZm9ybWF0ID09IFY0TDJfUElYX0ZNVF9ZVVlWKQo+Pj4+PiArCQkJd2lkdGggKj0gMjsK
Pj4+Pj4gKwo+Pj4+PiArCQlpbXg3X2NzaV9zZXRfaW1hZ3BhcmEoY3NpLCB3aWR0aCwgb3V0X3Bp
eC0+aGVpZ2h0KTsKPj4+Pj4gKwo+Pj4+PiArCQljcjE4IHw9IChCSVRfQkFTRUFERFJfU1dJVENI
X0VOIHwgQklUX0JBU0VBRERSX1NXSVRDSF9TRUwgfAo+Pj4+PiArCQkJQklUX0JBU0VBRERSX0NI
R19FUlJfRU4pOwo+Pj4+PiArCQlpbXg3X2NzaV9yZWdfd3JpdGUoY3NpLCBjcjE4LCBDU0lfQ1NJ
Q1IxOCk7Cj4+Pj4+Cj4+Pj4+IC0JaWYgKCFjc2ktPmlzX2NzaTIpCj4+Pj4+ICAJCXJldHVybiAw
Owo+Pj4+PiArCX0KPj4+Pj4gKwo+Pj4+PiArCWlteDdfY3NpX3NldF9pbWFncGFyYShjc2ksIHdp
ZHRoLCBvdXRfcGl4LT5oZWlnaHQpOwo+Pj4+Pgo+Pj4+PiAgCWNyMSA9IGlteDdfY3NpX3JlZ19y
ZWFkKGNzaSwgQ1NJX0NTSUNSMSk7Cj4+Pj4+ICAJY3IxICY9IH5CSVRfR0NMS19NT0RFOwo+Pj4+
Pgo+Pj4+PiAtCWNyMTggPSBpbXg3X2NzaV9yZWdfcmVhZChjc2ksIENTSV9DU0lDUjE4KTsKPj4+
Pj4gIAljcjE4ICY9IEJJVF9NSVBJX0RBVEFfRk9STUFUX01BU0s7Cj4+Pj4+ICAJY3IxOCB8PSBC
SVRfREFUQV9GUk9NX01JUEk7Cj4+Pj4+Cj4+Pj4+IEBAIC04MDksMTEgKzgzNiw5IEBAIHN0YXRp
YyB2b2lkIGlteDdfY3NpX2VuYWJsZShzdHJ1Y3QgaW14N19jc2kgKmNzaSkKPj4+Pj4gIHsKPj4+
Pj4gIAlpbXg3X2NzaV9zd19yZXNldChjc2kpOwo+Pj4+Pgo+Pj4+PiAtCWlmIChjc2ktPmlzX2Nz
aTIpIHsKPj4+Pj4gLQkJaW14N19jc2lfZG1hcmVxX3JmZl9lbmFibGUoY3NpKTsKPj4+Pj4gLQkJ
aW14N19jc2lfaHdfZW5hYmxlX2lycShjc2kpOwo+Pj4+PiAtCQlpbXg3X2NzaV9od19lbmFibGUo
Y3NpKTsKPj4+Pj4gLQl9Cj4+Pj4+ICsJaW14N19jc2lfZG1hcmVxX3JmZl9lbmFibGUoY3NpKTsK
Pj4+Pj4gKwlpbXg3X2NzaV9od19lbmFibGVfaXJxKGNzaSk7Cj4+Pj4+ICsJaW14N19jc2lfaHdf
ZW5hYmxlKGNzaSk7Cj4+Pj4+ICB9Cj4+Pj4+Cj4+Pj4+ICBzdGF0aWMgdm9pZCBpbXg3X2NzaV9k
aXNhYmxlKHN0cnVjdCBpbXg3X2NzaSAqY3NpKQo+Pj4+PiBAQCAtMTE2NiwxOSArMTE5MSwzMiBA
QCBzdGF0aWMgaW50IGlteDdfY3NpX3BhcnNlX2VuZHBvaW50KHN0cnVjdCBkZXZpY2UgKmRldiwK
Pj4+Pj4gIAlyZXR1cm4gZndub2RlX2RldmljZV9pc19hdmFpbGFibGUoYXNkLT5tYXRjaC5md25v
ZGUpID8gMCA6IC1FSU5WQUw7Cj4+Pj4+ICB9Cj4+Pj4+Cj4+Pj4+ICtzdGF0aWMgY29uc3Qgc3Ry
dWN0IG9mX2RldmljZV9pZCBpbXg3X2NzaV9vZl9tYXRjaFtdID0gewo+Pj4+PiArCXsgLmNvbXBh
dGlibGUgPSAiZnNsLGlteDctY3NpIiwgLmRhdGEgPSAodm9pZCAqKUlNWDcgfSwKPj4+Pj4gKwl7
IC5jb21wYXRpYmxlID0gImZzbCxpbXg2dWwtY3NpIiwgLmRhdGEgPSAodm9pZCAqKUlNWDZVTCB9
LAo+Pj4+Cj4+Pj4gbG9va2luZyBhdCB0aGlzIGFnYWluIEkgdGhpbmsgd2UgY2FuIGRvIHRoaXMg
aXMgYSBkaWZmZXJlbnQgd2F5Lgo+Pj4+IEluc3RlYWQgZGF0YSBiZWluZyB0aGUgc29jX2lkLCBq
dXN0IHNldCBoZXJlIGlmIGl0IGlzX2NzaTIgb3Igbm90Lgo+Pj4+Cj4+Pj4gVGhpcyB3b3VsZCBh
dm9pZCB0byBhZGQgYSBzb2NfaWQgIHRvIHRoZSBzdHJ1Y3QgdGhhdCBpdCByZWFsbHkgaXQKPj4+
PiBpcyB1c2VkIG9ubHkgdG8gc2V0dXAgdGhlIGlzX2NzaTIgdmFyLiBJIHRoaW5rIHRoaXMgd2ls
bCBtYWtlIHRoaXMKPj4+PiBwYXRjaCBhIGxvdCBzaW1wbGVyLgo+Pj4KPj4+IFdlbGwsIEkgaGF2
ZSBhZGRlZCB0aGlzIHNvY19pZCBiZWNhdXNlIGlteDdfY3NpX2dldF91cHN0cmVhbV9lbmRwb2lu
dCBpbgo+Pj4gaW14N19jc2lfcGFkX2xpbmtfdmFsaWRhdGUgZmFpbHM6Cj4+Pgo+Pj4gWyAgMzY2
LjU0OTc2OF0gY3NpOiBmYWlsZWQgdG8gZmluZCB1cHN0cmVhbSBlbmRwb2ludAo+Pj4gWyAgMzY2
LjU1NjI3NF0gY3NpOiBwaXBlbGluZSBzdGFydCBmYWlsZWQgd2l0aCAtMTkKPj4+Cj4+Cj4+IEkg
dGhpbmsgdGhpcyBmYWlscyBiZWNhdXNlIHlvdSBkbyBub3QgZGVmaW5lIGFueSBlbmRwb2ludCBm
b3IgdGhlCj4+IGNzaSBpbiB5b3VyIGJvYXJkIGR0cyBmaWxlLiBJIHNlZSBpbiBwYXRjaCAxLzMg
dGhlIHNldHVwIG9mIGNzaSwKPj4gZGlzYWJsZWQsIGJ1dCBub3QgdGhlIGVuZHBvaW50IGNvbm5l
Y3RpbmcgY3NpIHdpdGggdGhlIG92NTY0MCBpbgo+PiB5b3VyIGJvYXJkIGZpbGUgKHNlZSB0aGUg
Y29ubmVjdGlvbiBiZXR3ZWVuIG1pcGkgaW14NyBhbmQgb3YyNjgwCj4+IGluIHRoZSBpbXg3LXdh
cnAuZHRzLCBvciB0aGUgb3Y1NjQwLnR4dCBmaWxlKS4KPgo+IEkgYWN0dWFsbHkgZG8sIGluIHRo
ZSBkZXZpY2UgdHJlZSBvZiBteSBib2FyZCBJIGhhdmU6CgpZZWFoLCBJIHRob3VnaHQgeW91IGRp
ZCB0aGlzLCBiZWNhdXNlIGlmIG5vdCBpdCBkaWQgbm90IHdvcmsgaW4KdGhlIGZpcnN0IHBsYWNl
LiBJIHdpbGwgdGFrZSBhIGxvb2sgYXQgd2h5IHRoZSBmZXRjaCBvZiB0aGUKdXBzdHJlYW0gZW5k
cG9pbnQgaXMgbm90IHdvcmtpbmcuIGl0IHNob3VsZCA6KS4KClRoYW5rcyBmb3IgdGhlIGZlZWRi
YWNrLiBJIHdpbGwgbGV0IHlvdSBrbm93LgoKLS0tCkNoZWVycywKCVJ1aQoKPgo+ICZjc2kgewo+
IAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+IAlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfY3Np
PjsKPiAJc3RhdHVzID0gIm9rYXkiOwo+Cj4gCXBvcnQgewo+IAkJY3NpX2VwOiBlbmRwb2ludCB7
Cj4gCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZvdjU2NDBfZXA+Owo+IAkJCWJ1cy10eXBlID0gPDU+
OyAvLyBWNEwyX0ZXTk9ERV9CVVNfVFlQRV9QQVJBTExFTAo+IAkJfTsKPiAJfTsKPiB9Owo+Cj4g
YW5kCj4KPiAmaTJjMiB7Cj4gLi4KPiAJb3Y1NjQwOiBjYW1lcmFAM2Mgewo+IAkJLi4uCj4gCQlw
b3J0IHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBvdjU2NDBfZXA6IGVuZHBvaW50IHsKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmY3NpX2Vw
PjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJ1cy13aWR0aCA9IDw4PjsKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRhdGEtc2hpZnQgPSA8Mj47IC8qIGxpbmVz
IDk6MiBhcmUgdXNlZCAqLwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaHN5bmMt
YWN0aXZlID0gPDA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdnN5bmMtYWN0
aXZlID0gPDE+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGNsay1zYW1wbGUg
PSA8MD47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiAgICAgICAgICAgICAgICAgfTsK
PiAJfTsKPiB9Owo+Cj4gUmVnYXJkcywKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
