Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5388122CB8C
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 18:57:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E47887214;
	Fri, 24 Jul 2020 16:57:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KPkzv8fx7WZE; Fri, 24 Jul 2020 16:57:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 247C187200;
	Fri, 24 Jul 2020 16:57:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B83261BF37B
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 16:57:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B4DFE87201
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 16:57:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zZURLUj_-mN9 for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 16:57:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D69787200
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 16:57:31 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id m16so4791747pls.5
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 09:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SippstkTYnPDmGe0JxL9e/Dl+xQ0faDafFxLncOD7Ao=;
 b=br36lvHxMUXbASakMGxCauQBtM/0DE/9ofTfq23grxRs4+mKeN22H0iLcjaKrmRYrk
 eqe9TSXK8XUP2dX+E8wAcOCLctRW7VpFX1tHG4LeZZNduDynrf/1uzCovEoiMWHSW8Z/
 cE5VfummJI5qf06tHYUXzyFFXpXU/nN2cYTQK9ugzp4/JDzIwTBK05OKy9FDulZAwvo/
 fYqjKzIyiUoQR8+c72opobby+Fq3CEpMkF/5Wqn2/sw71HipYyGKNsjPFIcUYAqAUE3U
 IaqrhIJuwe8GP8af7kL33+6UUt9zpyIIr6UCJOre8ZX7VriWWBdj4Ly+9imxHENELiLU
 /oeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SippstkTYnPDmGe0JxL9e/Dl+xQ0faDafFxLncOD7Ao=;
 b=jFpwCj08mGx5DYbhZQK2JPRdr9b7JUl1q0ShVQhe4m757icpiJiuW026teGlB+1HV9
 Umm0Sr8DvSduwaHG2CiPeCckfto534wW8TOw7ur1XvEq0tglfxsgipI8TsTkCLR94Jh+
 NfmN3IbdxZBHQeekiZFCXgn/gjXa+NdD10aNH6J0lZpd9OybHXShOmEjGyty/pr0Vr+j
 glEUObwTWI0V9xR60tCWPI4I5B/QIMtwXxOn4XIkK0rBJvKEN4abfvb65kn4mCSo/bz2
 Ebn0V7ZtEpOdIdxfGZd+S2T/ug0zQM+5aEFW50zIbw8T7g39pKYpgyJ6j6UkIwHPbih4
 t63w==
X-Gm-Message-State: AOAM533vqoONfqSNo8gje/Fx72g7fqHaiYg0AQqGBOsxNm/hzT9nvC65
 O9MLzvhUpA2TpYtCweibr0LnwcBr3sg=
X-Google-Smtp-Source: ABdhPJyRV261+EXQENgsF9DvLK846Ax+Hrpv8hXlWJALuKLIjh5e5n2fcRpfTL+LNU1IGA0XS+5k/A==
X-Received: by 2002:a17:90a:1345:: with SMTP id
 y5mr6469648pjf.68.1595609850248; 
 Fri, 24 Jul 2020 09:57:30 -0700 (PDT)
Received: from [192.168.0.109] ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id m68sm6521015pje.24.2020.07.24.09.57.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Jul 2020 09:57:29 -0700 (PDT)
Subject: Re: [PATCH v3] staging: nvec: change usage of slave to secondary
To: Marc Dietrich <marvin24@posteo.de>
References: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
 <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <ac0f2bb4-7fa1-26a8-a43b-2db427188d4e@gmail.com>
 <20200724082810.GA3977020@kroah.com>
 <34e6c906-7def-816d-a45d-03d366f32c61@gmail.com>
 <alpine.OSX.2.23.453.2007241829180.9201@macbook-pro.fritz.box>
 <alpine.OSX.2.23.453.2007241835260.9201@macbook-pro.fritz.box>
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Message-ID: <365fd26d-94b1-760e-48f5-bf8a85a90399@gmail.com>
Date: Fri, 24 Jul 2020 22:27:25 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <alpine.OSX.2.23.453.2007241835260.9201@macbook-pro.fritz.box>
Content-Language: en-US
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
Cc: linux-tegra@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, p.zabel@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjQvMDcvMjAgMTA6MDYgcG0sIE1hcmMgRGlldHJpY2ggd3JvdGU6Cj4gCj4gCj4gT24gRnJp
LCAyNCBKdWwgMjAyMCwgTWFyYyBEaWV0cmljaCB3cm90ZToKPiAKPj4gSGkgUm9oaXQsCj4+Cj4+
IE9uIEZyaSwgMjQgSnVsIDIwMjAsIFJvaGl0IEJoYXJhZHdhaiB3cm90ZToKPj4KPj4+IE9uIDI0
LzA3LzIwIDE6NTggcG0sIEdyZWcgS0ggd3JvdGU6Cj4+Pj4gT24gRnJpLCBKdWwgMjQsIDIwMjAg
YXQgMDE6NDQ6MjdQTSArMDUzMCwgUm9oaXQgQmhhcmFkd2FqIHdyb3RlOgo+Pj4+PiBPbiAyNC8w
Ny8yMCAxMDowNiBhbSwgUm9oaXQgSyBCaGFyYWR3YWogd3JvdGU6Cj4+Pj4+PiBjaGFuZ2VkIHVz
YWdlIG9mIHNsYXZlIChkZXByZWNhdGVkKSB0byBzZWNvbmRhcnkKPj4+Pj4+Cj4+Pj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBSb2hpdCBLIEJoYXJhZHdhaiA8YmhhcmFkd2FqLnJvaGl0OEBnbWFpbC5jb20+
Cj4+Pj4+PiAtLS0KPj4+Pj4+IHYzOiBjaGFuZ2UgcGF0Y2ggc3ViamVjdCwgYWRkIHZlcnNpb24g
aGlzdG9yeQo+Pj4+Pj4gdjI6IGFkZCBjaGFuZ2Vsb2cgdGV4dCBpbiBib2R5IG9mIG1haWwKPj4+
Pj4+IHYxOiBmaXggc3R5bGUgaXNzdWVzIGJ5IGNoYW5naW5nIHVzYWdlIG9mIHNsYXZlIHRvIHNl
Y29uZGFyeQo+Pj4+Pj4KPj4+Pj4+IMKgZHJpdmVycy9zdGFnaW5nL252ZWMvbnZlYy5jIHwgMTIg
KysrKysrLS0tLS0tCj4+Pj4+PiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pCj4+Pj4+Pgo+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9u
dmVjL252ZWMuYyBiL2RyaXZlcnMvc3RhZ2luZy9udmVjL252ZWMuYwo+Pj4+Pj4gaW5kZXggMzYw
ZWMwNDA3NzQwLi41ZDdiNjY3MTlhMzkgMTAwNjQ0Cj4+Pj4+PiAtLS0gYS9kcml2ZXJzL3N0YWdp
bmcvbnZlYy9udmVjLmMKPj4+Pj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9udmVjL252ZWMuYwo+
Pj4+Pj4gQEAgLTcxOCw3ICs3MTgsNyBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgbnZlY19pbnRlcnJ1
cHQoaW50IGlycSwgdm9pZCAqZGV2KQo+Pj4+Pj4gwqDCoMKgwqAgcmV0dXJuIElSUV9IQU5ETEVE
Owo+Pj4+Pj4gwqB9Cj4+Pj4+Pgo+Pj4+Pj4gLXN0YXRpYyB2b2lkIHRlZ3JhX2luaXRfaTJjX3Ns
YXZlKHN0cnVjdCBudmVjX2NoaXAgKm52ZWMpCj4+Pj4+PiArc3RhdGljIHZvaWQgdGVncmFfaW5p
dF9pMmNfc2Vjb25kYXJ5KHN0cnVjdCBudmVjX2NoaXAgKm52ZWMpCj4+Pj4+PiDCoHsKPj4+Pj4+
IMKgwqDCoMKgIHUzMiB2YWw7Cj4+Pj4+Pgo+Pj4+Pj4gQEAgLTc0NCw3ICs3NDQsNyBAQCBzdGF0
aWMgdm9pZCB0ZWdyYV9pbml0X2kyY19zbGF2ZShzdHJ1Y3QgbnZlY19jaGlwICpudmVjKQo+Pj4+
Pj4gwqB9Cj4+Pj4+Pgo+Pj4+Pj4gwqAjaWZkZWYgQ09ORklHX1BNX1NMRUVQCj4+Pj4+PiAtc3Rh
dGljIHZvaWQgbnZlY19kaXNhYmxlX2kyY19zbGF2ZShzdHJ1Y3QgbnZlY19jaGlwICpudmVjKQo+
Pj4+Pj4gK3N0YXRpYyB2b2lkIG52ZWNfZGlzYWJsZV9pMmNfc2Vjb25kYXJ5KHN0cnVjdCBudmVj
X2NoaXAgKm52ZWMpCj4+Pj4+PiDCoHsKPj4+Pj4+IMKgwqDCoMKgIGRpc2FibGVfaXJxKG52ZWMt
PmlycSk7Cj4+Pj4+PiDCoMKgwqDCoCB3cml0ZWwoSTJDX1NMX05FV1NMIHwgSTJDX1NMX05BQ0ss
IG52ZWMtPmJhc2UgKyBJMkNfU0xfQ05GRyk7Cj4+Pj4+PiBAQCAtNzg0LDcgKzc4NCw3IEBAIHN0
YXRpYyBpbnQgdGVncmFfbnZlY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
Pj4+Pj4gwqDCoMKgwqAgcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgbnZlYyk7Cj4+Pj4+PiDC
oMKgwqDCoCBudmVjLT5kZXYgPSBkZXY7Cj4+Pj4+Pgo+Pj4+Pj4gLcKgwqDCoCBpZiAob2ZfcHJv
cGVydHlfcmVhZF91MzIoZGV2LT5vZl9ub2RlLCAic2xhdmUtYWRkciIsICZudmVjLT5pMmNfYWRk
cikpIHsKPj4+Pj4+ICvCoMKgwqAgaWYgKG9mX3Byb3BlcnR5X3JlYWRfdTMyKGRldi0+b2Zfbm9k
ZSwgInNlY29uZGFyeS1hZGRyIiwgJm52ZWMtPmkyY19hZGRyKSkgewo+Pj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoCBkZXZfZXJyKGRldiwgIm5vIGkyYyBhZGRyZXNzIHNwZWNpZmllZCIpOwo+Pj4+Pj4g
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT0RFVjsKPj4+Pj4+IMKgwqDCoMKgIH0KPj4KPj4g
YXMgQ2hyaXN0b3BoIHNhaWQsIHBsZWFzZSBkb24ndCBjaGFuZ2UgdGhpcyBsaW5lLgo+IAo+IGFy
ciwgSSBtZWFudCBEYW4gb2YgY291cnNlIDstKQpEZWFyIGFsbCwgdGhhbmsgeW91IHNvIG11Y2gg
Zm9yIHlvdXIgaW5wdXRzLCBJIHdpbGwgdHJ5IHRvIG1ha2Ugc29tZSBvdGhlciBwYXRjaCB3aGlj
aCB3aWxsIG5vdCBicmVhayB0aGUgZHJpdmVyIChob3BlZnVsbHkgOnApLCBvciBpZiB5b3UgZ2l2
ZSBtZSBwZXJtaXNzaW9uIHRvIHN1Ym1pdCB0aGlzIHBhdGNoIGl0c2VsZiBieSBqdXN0IGtlZXBp
bmcgdGhpcyBvbmUgbGluZQogIAo+IGlmIChvZl9wcm9wZXJ0eV9yZWFkX3UzMihkZXYtPm9mX25v
ZGUsICJzbGF2ZS1hZGRyIiwgJm52ZWMtPmkyY19hZGRyKSkKCnVuY2hhbmdlZCwgYW5kIHByb3Zp
ZGVkIGl0IGRvZXMgbm90IGJyZWFrIHRoZSBkcml2ZXIgYnkgZG9pbmcgc28sIEkgd291bGQgZ2xh
ZGx5IG1ha2UgdGhlIGNoYW5nZXMgYW5kIHN1Ym1pdCB2NCBvZiB0aGUgcGF0Y2guCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
