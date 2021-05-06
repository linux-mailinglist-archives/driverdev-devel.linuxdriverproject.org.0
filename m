Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BDB37547D
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 May 2021 15:11:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 570544068E;
	Thu,  6 May 2021 13:11:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0VlzBSHvWKqO; Thu,  6 May 2021 13:11:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 48F3F402A6;
	Thu,  6 May 2021 13:11:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F0461BF616
 for <devel@linuxdriverproject.org>; Thu,  6 May 2021 13:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2CFDF6067A
 for <devel@linuxdriverproject.org>; Thu,  6 May 2021 13:11:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kynesim-co-uk.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8YhWrwLFz4Lq for <devel@linuxdriverproject.org>;
 Thu,  6 May 2021 13:11:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CDE1A60661
 for <devel@driverdev.osuosl.org>; Thu,  6 May 2021 13:11:31 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id d4so5557551wru.7
 for <devel@driverdev.osuosl.org>; Thu, 06 May 2021 06:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kynesim-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:references:in-reply-to
 :user-agent:mime-version:content-transfer-encoding;
 bh=zLVLoCTZSwdGtIWCx1oxuHJ77KyosnHNt8+6TJIcliM=;
 b=mwcIAoYD9bw60tZhtCdcXNldYBx2EearFFTehyAs9iqn222cg8NMecuNxW0fPkCh4f
 5vItp1Rr75DpnXnO7H7tZcnrnWKua0e/wjVZD17WTc37h+vKMH2rICEDZkrzH6aBdRO/
 tI6A70RsA9biUwMn5TLQNlPdPyIobZ/u5GciHqAblW9ly9CIow1Ie9sF8K2iruSkSXTX
 CYij1rlm69oVBMeTn5LB7tKJAVVhwgyffHVaG8wXPLSJCpDbX2H9QGuZEDWHzbF2BsHi
 ywcMrlGFk1CW/fMA2G1cwJYOSJ9nhtPqgn99ih8scAmYp80KM2+biCGzISJb3bEW4zyl
 aqjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:references
 :in-reply-to:user-agent:mime-version:content-transfer-encoding;
 bh=zLVLoCTZSwdGtIWCx1oxuHJ77KyosnHNt8+6TJIcliM=;
 b=FFZVg3Hhk96k/PM9N8frjFwDFS4HB8E+7JA+OESZRFQ/Pc3VPs6ID9nJ6kLe9GcgMU
 syI33ETO5GwHLYtw1WNZZphTTBmN7xnVDR9uLhICnnhdLS6gz57wSMBGaGiK2GBkdIK2
 RlpBE9gyPMYq9Uv6mE+bQS9O8BPopX4fGbEGrk9YJNyN62qd5k6f8GWGb9dJal1dHF3w
 QUR7hOoq6zJhu5mqAajktE00KySnajfvOch4vrTOhk4kRqGTWJxuj35x0bIBEt0yDwU9
 PEddITmTcC3gw7eqNojOp57bTvimmOh3ofmomGm+zklhspS/W5a0jrM6DTfijv9N1EQh
 xVcg==
X-Gm-Message-State: AOAM5309494ea6SIIjR7HKZhbyCw6XdSArD7W7nI+nCtAxPiWcVmcsx/
 hgIuKdR+lRTlZ6Qq2HvD1Ccb3A==
X-Google-Smtp-Source: ABdhPJy08fvoyofymLrgTx2HJxauv5qh8y5Pod7Fm4yzLYyhRzL+8NBXfEaygWMS1PPMEEwnRLiNCA==
X-Received: by 2002:adf:fa50:: with SMTP id y16mr5231928wrr.63.1620306689920; 
 Thu, 06 May 2021 06:11:29 -0700 (PDT)
Received: from CTHALPA.outer.uphall.net
 (cpc1-cmbg20-2-0-cust759.5-4.cable.virginm.net. [86.21.218.248])
 by smtp.gmail.com with ESMTPSA id q12sm8757823wmj.7.2021.05.06.06.11.28
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Thu, 06 May 2021 06:11:29 -0700 (PDT)
From: John Cox <jc@kynesim.co.uk>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
Date: Thu, 06 May 2021 14:11:28 +0100
Message-ID: <n7q79gl86gvdo00sgsg1r5beittohsu4ta@4ax.com>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
 <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
 <1cf94540-7f4d-0179-dd1e-0b82ee30f6d2@collabora.com>
 <815a4bd6-599b-cfb8-9ddc-efa4b7092c23@xs4all.nl>
In-Reply-To: <815a4bd6-599b-cfb8-9ddc-efa4b7092c23@xs4all.nl>
User-Agent: ForteAgent/8.00.32.1272
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
Cc: kernel@collabora.com, devel@driverdev.osuosl.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, lee.jones@linaro.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 cphealy@gmail.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, s.hauer@pengutronix.de, mripard@kernel.org,
 robh+dt@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, jernej.skrabec@siol.net,
 gregkh@linuxfoundation.org, emil.l.velikov@gmail.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Pk9uIDA1LzA1LzIwMjEgMTc6MjAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiAKPj4gTGUg
MDUvMDUvMjAyMSDDoCAxNjo1NSwgSGFucyBWZXJrdWlsIGEgw6ljcml0wqA6Cj4+PiBPbiAyMC8w
NC8yMDIxIDE0OjEwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4+PiBUaGUgSEVWQyBIQU5U
Uk8gZHJpdmVyIG5lZWRzIHRvIGtub3cgdGhlIG51bWJlciBvZiBiaXRzIHRvIHNraXAgYXQKPj4+
PiB0aGUgYmVnaW5uaW5nIG9mIHRoZSBzbGljZSBoZWFkZXIuCj4+Pj4gVGhhdCBpcyBhIGhhcmR3
YXJlIHNwZWNpZmljIHJlcXVpcmVtZW50IHNvIGNyZWF0ZSBhIGRlZGljYXRlZCBjb250cm9sCj4+
Pj4gZm9yIHRoaXMgcHVycG9zZS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdh
aWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+Pj4+IC0tLQo+Pj4+ICAg
Li4uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0ICAgIHwgMTkgKysrKysr
KysrKysrKysrKysrKwo+Pj4+ICAgLi4uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRl
eC5yc3QgICAgIHwgIDEgKwo+Pj4+ICAgaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmggICAgICAg
ICAgICAgICAgICAgIHwgMTMgKysrKysrKysrKysrKwo+Pj4+ICAgMyBmaWxlcyBjaGFuZ2VkLCAz
MyBpbnNlcnRpb25zKCspCj4+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi91
c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdAo+Pj4+Cj4+Pj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3Qg
Yi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0Cj4+
Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmNkOTc1NGI0
ZTAwNQo+Pj4+IC0tLSAvZGV2L251bGwKPj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFj
ZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0Cj4+Pj4gQEAgLTAsMCArMSwxOSBAQAo+Pj4+
ICsuLiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+Pj4+ICsKPj4+PiArSGFudHJv
IHZpZGVvIGRlY29kZXIgZHJpdmVyCj4+Pj4gKz09PT09PT09PT09PT09PT09PT09PT09PT09PQo+
Pj4+ICsKPj4+PiArVGhlIEhhbnRybyB2aWRlbyBkZWNvZGVyIGRyaXZlciBpbXBsZW1lbnRzIHRo
ZSBmb2xsb3dpbmcgZHJpdmVyLXNwZWNpZmljIGNvbnRyb2xzOgo+Pj4+ICsKPj4+PiArYGBWNEwy
X0NJRF9IQU5UUk9fSEVWQ19TTElDRV9IRUFERVJfU0tJUCAoaW50ZWdlcilgYAo+Pj4+ICsgICAg
U3BlY2lmaWVzIHRvIEhhbnRybyBIRVZDIHZpZGVvIGRlY29kZXIgZHJpdmVyIHRoZSBudW1iZXIg
b2YgZGF0YSAoaW4gYml0cykgdG8KPj4+PiArICAgIHNraXAgaW4gdGhlIHNsaWNlIHNlZ21lbnQg
aGVhZGVyLgo+Pj4+ICsgICAgSWYgbm9uLUlEUiwgdGhlIGJpdHMgdG8gYmUgc2tpcHBlZCBnbyBm
cm9tIHN5bnRheCBlbGVtZW50ICJwaWNfb3V0cHV0X2ZsYWciCj4+Pj4gKyAgICB0byBiZWZvcmUg
c3ludGF4IGVsZW1lbnQgInNsaWNlX3RlbXBvcmFsX212cF9lbmFibGVkX2ZsYWciLgo+Pj4+ICsg
ICAgSWYgSURSLCB0aGUgc2tpcHBlZCBiaXRzIGFyZSBqdXN0ICJwaWNfb3V0cHV0X2ZsYWciCj4+
Pj4gKyAgICAoc2VwYXJhdGVfY29sb3VyX3BsYW5lX2ZsYWcgaXMgbm90IHN1cHBvcnRlZCkuCj4+
PiBJJ20gbm90IHZlcnkga2VlbiBvbiB0aGlzLiBXaXRob3V0IHRoaXMgaW5mb3JtYXRpb24gdGhl
IHZpZGVvIGRhdGEgY2Fubm90IGJlCj4+PiBkZWNvZGVkLCBvciB3aWxsIGl0IGp1c3QgYmUgc3Vi
b3B0aW1hbD8KPj4gCj4+IFdpdGhvdXQgdGhhdCBpbmZvcm1hdGlvbiB0aGUgdmlkZW8gY2FuJ3Qg
YmUgZGVjb2RlZC4KPj4gCj4+Pgo+Pj4gVGhlIHByb2JsZW0gaXMgdGhhdCBhIGdlbmVyaWMgZGVj
b2RlciB3b3VsZCBoYXZlIHRvIGtub3cgdGhhdCB0aGUgSFcgaXMgYSBoYW50cm8sCj4+PiBhbmQg
dGhlbiBjYWxsIHRoaXMgY29udHJvbC4gSWYgdGhleSBkb24ndCAoYW5kIGFyZSB0ZXN0aW5nIG9u
IG5vbi1oYW50cm8gSFcpLCB0aGVuCj4+PiBpdCB3b24ndCB3b3JrLCB0aHVzIGRlZmVhdGluZyB0
aGUgcHVycG9zZSBvZiB0aGUgSFcgaW5kZXBlbmRlbnQgZGVjb2RlciBBUEkuCj4+Pgo+Pj4gU2lu
Y2UgaGFudHJvIGlzIHdpZGVseSB1c2VkLCBhbmQgaWYgdGhlcmUgaXMgbm8gb3RoZXIgd2F5IHRv
IGRvIHRoaXMgYmVzaWRlIGV4cGxpdGVseQo+Pj4gc2V0dGluZyB0aGlzIGNvbnRyb2wsIHRoZW4g
cGVyaGFwcyB0aGlzIHNob3VsZCBiZSBwYXJ0IG9mIHRoZSBzdGFuZGFyZCBIRVZDIEFQSS4KPj4+
IE5vbi1oYW50cm8gZHJpdmVycyB0aGF0IGRvIG5vdCBuZWVkIHRoaXMgY2FuIGp1c3Qgc2tpcCBp
dC4KPj4gCj4+IEV2ZW4gaWYgSSBwdXQgdGhpcyBwYXJhbWV0ZXIgaW4gZGVjb2RlX3BhcmFtcyBz
dHJ1Y3R1cmUgdGhhdCB3b3VsZCBtZWFucyB0aGF0IGEgZ2VuZXJpYwo+PiB1c2VybGFuZCBkZWNv
ZGVyIHdpbGwgaGF2ZSB0byBrbm93IGhvdyB0aGUgY29tcHV0ZSB0aGlzIHZhbHVlIGZvciBoYW50
cm8gSFcgc2luY2UgaXQKPj4gaXNuJ3Qgc29tZXRoaW5nIHRoYXQgY291bGQgYmUgZG9uZSBvbiBr
ZXJuZWwgc2lkZS4KPgo+QnV0IHNpbmNlIGhhbnRybyBpcyB2ZXJ5IGNvbW1vbiwgYW55IHVzZXJs
YW5kIGRlY29kZXIgd2lsbCBuZWVkIHRvIGNhbGN1bGF0ZSB0aGlzIGFueXdheS4KPlNvIHBlcmhh
cHMgaXQgaXMgYmV0dGVyIHRvIGhhdmUgdGhpcyBhcyBwYXJ0IG9mIHRoZSBkZWNvZGVfcGFyYW1z
Pwo+Cj5JJ2QgbGlrZSB0byBrbm93IHdoYXQgb3RoZXJzIHRoaW5rIGFib3V0IHRoaXMuCgpJIGRv
bid0IGtub3cgZXhhY3RseSB3aGF0IEkgdGhpbmsgb24gdGhpcyAtIGl0cyBhbGwgYSBiaXQgb2Yg
YSBtZXNzLiBJCmRvbid0IHRoaW5rIHRoaXMgaXMgZ29pbmcgdG8gYmUgdGhlIGxhc3QgSEVWQyBk
ZWNvZGVyIHRoYXQgbmVlZHMgc29tZQpub24tc3RhbmRhcmQgc2V0dXAgdGhhdCBjYW4ndCBiZSB0
cml2aWFsbHkgZXh0cmFjdGVkIGZyb20gYSBzdGFuZGFyZApzbGljZSBoZWFkZXIgcGFyc2UuIFNv
IGlmIGZ1dHVyZSBkZWNvZGVycyBhcmUgZ29pbmcgdG8gaGF2ZSB0byBnZW5lcmF0ZQpjdXN0b20g
YXR0cmlidXRlcyB0byBjb3BlIHdpdGggdGhlaXIgcXVpcmtzIHRoZW4gSGFudHJvIHByb2JhYmx5
IHNob3VsZAp0b28uIEFuZCBpZiBIYW50cm8gaXMgY29tbW9uIHRoZW4gdGhlIHVzZXJzcGFjZSBw
cm9ncyB3aWxsIGF0IGxlYXN0IGhhdmUKYSBmcmFtZXdvcmsgZm9yIGRlYWxpbmcgd2l0aCB0aGlz
IHNvcnQgb2YgdGhpbmcgc28gd2hlbiB0aGUgbmV4dCBvZGRpdHkKY29tZXMgYWxvbmcuCgpSZWdh
cmRzCgpKb2huIENveAoKPlJlZ2FyZHMsCj4KPglIYW5zCj4KPj4gCj4+IAo+PiBSZWdhcmRzLAo+
PiBCZW5qYW1pbgo+PiAKPj4+Cj4+PiBSZWdhcmRzLAo+Pj4KPj4+IAlIYW5zCj4+Pgo+Pj4+ICsK
Pj4+PiArLi4gbm90ZTo6Cj4+Pj4gKwo+Pj4+ICsgICAgICAgIFRoaXMgY29udHJvbCBpcyBub3Qg
eWV0IHBhcnQgb2YgdGhlIHB1YmxpYyBrZXJuZWwgQVBJIGFuZAo+Pj4+ICsgICAgICAgIGl0IGlz
IGV4cGVjdGVkIHRvIGNoYW5nZS4KPj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91c2Vy
c3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3Bh
Y2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgucnN0Cj4+Pj4gaW5kZXggMWE5MDM4ZjVmOWZhLi4x
MmUzYzUxMmQ3MTggMTAwNjQ0Cj4+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBp
L21lZGlhL2RyaXZlcnMvaW5kZXgucnN0Cj4+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi91c2Vyc3Bh
Y2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgucnN0Cj4+Pj4gQEAgLTMzLDYgKzMzLDcgQEAgRm9y
IG1vcmUgZGV0YWlscyBzZWUgdGhlIGZpbGUgQ09QWUlORyBpbiB0aGUgc291cmNlIGRpc3RyaWJ1
dGlvbiBvZiBMaW51eC4KPj4+PiAgIAo+Pj4+ICAgCWNjcwo+Pj4+ICAgCWN4MjM0MXgtdWFwaQo+
Pj4+ICsgICAgICAgIGhhbnRybwo+Pj4+ICAgCWlteC11YXBpCj4+Pj4gICAJbWF4MjE3NQo+Pj4+
ICAgCW1leWUtdWFwaQo+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMu
aCBiL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4+Pj4gaW5kZXggOGUwMTA5ZWVhNDU0Li5i
NzEzZWVlZDE5MTUgMTAwNjQ0Cj4+Pj4gLS0tIGEvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgK
Pj4+PiArKysgYi9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaAo+Pj4+IEBAIC0yMjQsNCArMjI0
LDE3IEBAIHN0cnVjdCB2NGwyX2N0cmxfaGV2Y19kZWNvZGVfcGFyYW1zIHsKPj4+PiAgIAlfX3U2
NAlmbGFnczsKPj4+PiAgIH07Cj4+Pj4gICAKPj4+PiArLyogIE1QRUctY2xhc3MgY29udHJvbCBJ
RHMgc3BlY2lmaWMgdG8gdGhlIEhhbnRybyBkcml2ZXIgYXMgZGVmaW5lZCBieSBWNEwyICovCj4+
Pj4gKyNkZWZpbmUgVjRMMl9DSURfQ09ERUNfSEFOVFJPX0JBU0UJCQkJKFY0TDJfQ1RSTF9DTEFT
U19DT0RFQyB8IDB4MTIwMCkKPj4+PiArLyoKPj4+PiArICogVjRMMl9DSURfSEFOVFJPX0hFVkNf
U0xJQ0VfSEVBREVSX1NLSVAgLQo+Pj4+ICsgKiB0aGUgbnVtYmVyIG9mIGRhdGEgKGluIGJpdHMp
IHRvIHNraXAgaW4gdGhlCj4+Pj4gKyAqIHNsaWNlIHNlZ21lbnQgaGVhZGVyLgo+Pj4+ICsgKiBJ
ZiBub24tSURSLCB0aGUgYml0cyB0byBiZSBza2lwcGVkIGdvIGZyb20gc3ludGF4IGVsZW1lbnQg
InBpY19vdXRwdXRfZmxhZyIKPj4+PiArICogdG8gYmVmb3JlIHN5bnRheCBlbGVtZW50ICJzbGlj
ZV90ZW1wb3JhbF9tdnBfZW5hYmxlZF9mbGFnIi4KPj4+PiArICogSWYgSURSLCB0aGUgc2tpcHBl
ZCBiaXRzIGFyZSBqdXN0ICJwaWNfb3V0cHV0X2ZsYWciCj4+Pj4gKyAqIChzZXBhcmF0ZV9jb2xv
dXJfcGxhbmVfZmxhZyBpcyBub3Qgc3VwcG9ydGVkKS4KPj4+PiArICovCj4+Pj4gKyNkZWZpbmUg
VjRMMl9DSURfSEFOVFJPX0hFVkNfU0xJQ0VfSEVBREVSX1NLSVAJKFY0TDJfQ0lEX0NPREVDX0hB
TlRST19CQVNFICsgMCkKPj4+PiArCj4+Pj4gICAjZW5kaWYKPj4+Pgo+Pj4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
