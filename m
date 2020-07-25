Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A39922D597
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 08:50:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 423AD880C7;
	Sat, 25 Jul 2020 06:50:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AWDgsnZdYk5G; Sat, 25 Jul 2020 06:50:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71F8C87FDE;
	Sat, 25 Jul 2020 06:50:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F9A11BF82F
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 06:50:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 39B048706E
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 06:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fKyH0vH0St1G for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 06:50:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7E31786FEC
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 06:50:47 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id o1so5711150plk.1
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 23:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pAY2tvHeP21yolAuUTkdsq2ZWrtpUyWnSU7nWtm6Js0=;
 b=TdxDp21WTv1YhoQPuyVTgx/O2Urd93QxxNBotlHTNzVb/HNG1B5fkBUUXwUGnjjrwd
 IL6D4nfh6/CtVeGalqOccvcMVlr1Tq1NBUjoxGW0XN5Ylpc2X2+c1EtMmmGwAu4f5cae
 Frx4AxZsBqQz9zk93xrgQ/hbNFBeKv2Hl5L732nwLU7ZXbi213gIN/w/g/zWrC6KUGuS
 V5fQX7DqSt4MsLQ2GK7euFOVuq4Y1dU8ibUpkTq3JVKVu6nD/ngGR5y1kxMLsperjYk8
 dXUSNDztqMzaG4HSt8+r7dBnv8GYHqAuTtbsPfb5SToQbsxG5ysZkLf1SFQiQth4THEc
 VF6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pAY2tvHeP21yolAuUTkdsq2ZWrtpUyWnSU7nWtm6Js0=;
 b=SR4/empbThrWk07oPYBwOcQoCvYf3PAqIgiSKB5Z/GifRXEuLYutndiYiSOM2e1Q0C
 IL/Z9KV6yzfJamr9npveZS4qHewICG5sFRWnvDD5SPpjUGHCVPy3cvSrXlJutmRiCgxe
 cVYcorx5VglxInVIjLW66JKFT0WzIVJaeTDpANUdAMzSK5CD1N26EEuizRKeDrKRQEJA
 rjR7qCIsGZ3pM90WE18D/X639SOTd6Goeyg160O8FAej2cTZ+3VAqNjGB4to8pQNwfZI
 arHS2C2+CzE+Mz+rDOLddXtHDZu9bnmsRia6xiqH6Zr4MwYMwaH4LIInzRTb8tR6m3JD
 Ymqw==
X-Gm-Message-State: AOAM532CgDYq3kh2EiYC1kkrgcPcnLtLJKQGA7pm3Gc+LHroB76pzVnO
 eQsW6QO8AWKEJJYGwy90LPD7v1p4wkI=
X-Google-Smtp-Source: ABdhPJy4kuRnILkVAvVmWm+/kdjDqMD399HL6RV2Q63lo6Dhk8Y5UdK4lP9HfhxqUqyJjFFeK48zKA==
X-Received: by 2002:a17:90a:c715:: with SMTP id
 o21mr9240782pjt.35.1595659846566; 
 Fri, 24 Jul 2020 23:50:46 -0700 (PDT)
Received: from [192.168.0.109] ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id u13sm7361784pjy.40.2020.07.24.23.50.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Jul 2020 23:50:45 -0700 (PDT)
Subject: Re: [PATCH v3] staging: nvec: change usage of slave to secondary
To: Marc Dietrich <marvin24@posteo.de>
References: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
 <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <ac0f2bb4-7fa1-26a8-a43b-2db427188d4e@gmail.com>
 <20200724082810.GA3977020@kroah.com>
 <34e6c906-7def-816d-a45d-03d366f32c61@gmail.com>
 <alpine.OSX.2.23.453.2007241829180.9201@macbook-pro.fritz.box>
 <alpine.OSX.2.23.453.2007241835260.9201@macbook-pro.fritz.box>
 <365fd26d-94b1-760e-48f5-bf8a85a90399@gmail.com>
 <alpine.OSX.2.23.453.2007242238230.12486@macbook-pro.fritz.box>
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Message-ID: <6db6189a-3bc9-72c4-7c7c-98ab5e03a0c0@gmail.com>
Date: Sat, 25 Jul 2020 12:20:41 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <alpine.OSX.2.23.453.2007242238230.12486@macbook-pro.fritz.box>
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

T24gMjUvMDcvMjAgMjoxMiBhbSwgTWFyYyBEaWV0cmljaCB3cm90ZToKPiAKPiBIaSBSb2hpdCwK
PiAKPiBPbiBGcmksIDI0IEp1bCAyMDIwLCBSb2hpdCBLIEJoYXJhZHdhaiB3cm90ZToKPiAKPj4g
T24gMjQvMDcvMjAgMTA6MDYgcG0sIE1hcmMgRGlldHJpY2ggd3JvdGU6Cj4+Pgo+Pj4KPj4+IE9u
IEZyaSwgMjQgSnVsIDIwMjAsIE1hcmMgRGlldHJpY2ggd3JvdGU6Cj4+Pgo+Pj4+IEhpIFJvaGl0
LAo+Pj4+Cj4+Pj4gT24gRnJpLCAyNCBKdWwgMjAyMCwgUm9oaXQgQmhhcmFkd2FqIHdyb3RlOgo+
Pj4+Cj4+Pj4+IE9uIDI0LzA3LzIwIDE6NTggcG0sIEdyZWcgS0ggd3JvdGU6Cj4+Pj4+PiBPbiBG
cmksIEp1bCAyNCwgMjAyMCBhdCAwMTo0NDoyN1BNICswNTMwLCBSb2hpdCBCaGFyYWR3YWogd3Jv
dGU6Cj4+Pj4+Pj4gT24gMjQvMDcvMjAgMTA6MDYgYW0sIFJvaGl0IEsgQmhhcmFkd2FqIHdyb3Rl
Ogo+Pj4+Pj4+PiBjaGFuZ2VkIHVzYWdlIG9mIHNsYXZlIChkZXByZWNhdGVkKSB0byBzZWNvbmRh
cnkKPj4+Pj4+Pj4KPj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogUm9oaXQgSyBCaGFyYWR3YWogPGJo
YXJhZHdhai5yb2hpdDhAZ21haWwuY29tPgo+Pj4+Pj4+PiAtLS0KPj4+Pj4+Pj4gdjM6IGNoYW5n
ZSBwYXRjaCBzdWJqZWN0LCBhZGQgdmVyc2lvbiBoaXN0b3J5Cj4+Pj4+Pj4+IHYyOiBhZGQgY2hh
bmdlbG9nIHRleHQgaW4gYm9keSBvZiBtYWlsCj4+Pj4+Pj4+IHYxOiBmaXggc3R5bGUgaXNzdWVz
IGJ5IGNoYW5naW5nIHVzYWdlIG9mIHNsYXZlIHRvIHNlY29uZGFyeQo+Pj4+Pj4+Pgo+Pj4+Pj4+
PiDCoGRyaXZlcnMvc3RhZ2luZy9udmVjL252ZWMuYyB8IDEyICsrKysrKy0tLS0tLQo+Pj4+Pj4+
PiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4+Pj4+
Pj4+Cj4+Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbnZlYy9udmVjLmMgYi9k
cml2ZXJzL3N0YWdpbmcvbnZlYy9udmVjLmMKPj4+Pj4+Pj4gaW5kZXggMzYwZWMwNDA3NzQwLi41
ZDdiNjY3MTlhMzkgMTAwNjQ0Cj4+Pj4+Pj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9udmVjL252
ZWMuYwo+Pj4+Pj4+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbnZlYy9udmVjLmMKPj4+Pj4+Pj4g
QEAgLTcxOCw3ICs3MTgsNyBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgbnZlY19pbnRlcnJ1cHQoaW50
IGlycSwgdm9pZCAqZGV2KQo+Pj4+Pj4+PiDCoMKgwqDCoCByZXR1cm4gSVJRX0hBTkRMRUQ7Cj4+
Pj4+Pj4+IMKgfQo+Pj4+Pj4+Pgo+Pj4+Pj4+PiAtc3RhdGljIHZvaWQgdGVncmFfaW5pdF9pMmNf
c2xhdmUoc3RydWN0IG52ZWNfY2hpcCAqbnZlYykKPj4+Pj4+Pj4gK3N0YXRpYyB2b2lkIHRlZ3Jh
X2luaXRfaTJjX3NlY29uZGFyeShzdHJ1Y3QgbnZlY19jaGlwICpudmVjKQo+Pj4+Pj4+PiDCoHsK
Pj4+Pj4+Pj4gwqDCoMKgwqAgdTMyIHZhbDsKPj4+Pj4+Pj4KPj4+Pj4+Pj4gQEAgLTc0NCw3ICs3
NDQsNyBAQCBzdGF0aWMgdm9pZCB0ZWdyYV9pbml0X2kyY19zbGF2ZShzdHJ1Y3QgbnZlY19jaGlw
ICpudmVjKQo+Pj4+Pj4+PiDCoH0KPj4+Pj4+Pj4KPj4+Pj4+Pj4gwqAjaWZkZWYgQ09ORklHX1BN
X1NMRUVQCj4+Pj4+Pj4+IC1zdGF0aWMgdm9pZCBudmVjX2Rpc2FibGVfaTJjX3NsYXZlKHN0cnVj
dCBudmVjX2NoaXAgKm52ZWMpCj4+Pj4+Pj4+ICtzdGF0aWMgdm9pZCBudmVjX2Rpc2FibGVfaTJj
X3NlY29uZGFyeShzdHJ1Y3QgbnZlY19jaGlwICpudmVjKQo+Pj4+Pj4+PiDCoHsKPj4+Pj4+Pj4g
wqDCoMKgwqAgZGlzYWJsZV9pcnEobnZlYy0+aXJxKTsKPj4+Pj4+Pj4gwqDCoMKgwqAgd3JpdGVs
KEkyQ19TTF9ORVdTTCB8IEkyQ19TTF9OQUNLLCBudmVjLT5iYXNlICsgSTJDX1NMX0NORkcpOwo+
Pj4+Pj4+PiBAQCAtNzg0LDcgKzc4NCw3IEBAIHN0YXRpYyBpbnQgdGVncmFfbnZlY19wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4+Pj4+PiDCoMKgwqDCoCBwbGF0Zm9ybV9z
ZXRfZHJ2ZGF0YShwZGV2LCBudmVjKTsKPj4+Pj4+Pj4gwqDCoMKgwqAgbnZlYy0+ZGV2ID0gZGV2
Owo+Pj4+Pj4+Pgo+Pj4+Pj4+PiAtwqDCoMKgIGlmIChvZl9wcm9wZXJ0eV9yZWFkX3UzMihkZXYt
Pm9mX25vZGUsICJzbGF2ZS1hZGRyIiwgJm52ZWMtPmkyY19hZGRyKSkgewo+Pj4+Pj4+PiArwqDC
oMKgIGlmIChvZl9wcm9wZXJ0eV9yZWFkX3UzMihkZXYtPm9mX25vZGUsICJzZWNvbmRhcnktYWRk
ciIsICZudmVjLT5pMmNfYWRkcikpIHsKPj4+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJy
KGRldiwgIm5vIGkyYyBhZGRyZXNzIHNwZWNpZmllZCIpOwo+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDC
oMKgIHJldHVybiAtRU5PREVWOwo+Pj4+Pj4+PiDCoMKgwqDCoCB9Cj4+Pj4KPj4+PiBhcyBDaHJp
c3RvcGggc2FpZCwgcGxlYXNlIGRvbid0IGNoYW5nZSB0aGlzIGxpbmUuCj4+Pgo+Pj4gYXJyLCBJ
IG1lYW50IERhbiBvZiBjb3Vyc2UgOy0pCj4+IERlYXIgYWxsLCB0aGFuayB5b3Ugc28gbXVjaCBm
b3IgeW91ciBpbnB1dHMsIEkgd2lsbCB0cnkgdG8gbWFrZSBzb21lIG90aGVyIHBhdGNoIHdoaWNo
IHdpbGwgbm90IGJyZWFrIHRoZSBkcml2ZXIgKGhvcGVmdWxseSA6cCksIG9yIGlmIHlvdSBnaXZl
IG1lIHBlcm1pc3Npb24gdG8gc3VibWl0IHRoaXMgcGF0Y2ggaXRzZWxmIGJ5IGp1c3Qga2VlcGlu
ZyB0aGlzIG9uZSBsaW5lCj4+Cj4+PiBpZiAob2ZfcHJvcGVydHlfcmVhZF91MzIoZGV2LT5vZl9u
b2RlLCAic2xhdmUtYWRkciIsICZudmVjLT5pMmNfYWRkcikpCj4+Cj4+IHVuY2hhbmdlZCwgYW5k
IHByb3ZpZGVkIGl0IGRvZXMgbm90IGJyZWFrIHRoZSBkcml2ZXIgYnkgZG9pbmcgc28sIEkgd291
bGQgZ2xhZGx5IG1ha2UgdGhlIGNoYW5nZXMgYW5kIHN1Ym1pdCB2NCBvZiB0aGUgcGF0Y2guCj4g
Cj4gcGxlYXNlIHJlc2VuZCB0aGUgcGF0Y2ggd2l0aCB0aGUgbGluZSBhYm92ZSB1bmNoYW5nZWQg
YXMgdjQuIERvbid0IGZvcmdldCB0byB0byB1cGRhdGUgdGhlIGNoYW5nZWxvZyB0byB0aGUgY29t
bWl0IG1lc3NhZ2UuIEkgdGVzdGVkIHlvdXIgcGF0Y2ggKHdpdGhvdXQgdGhlIGR0IHByb3BlcnR5
IGNoYW5nZSkgYW5kIGl0IGRvZXMgbm90IGNoYW5nZSBiZWhhdm9pciAtIGFzIGV4cGVjdGVkLAo+
IHNvIHlvdSB3aWxsIHJlY2V2aWNlIG15IEFjay4KPiAKPiBNYXJjCgpUaGFuayB5b3Ugc28gbXVj
aCBmb3IgdGhlIHN1Z2dlc3Rpb25zIGFuZCB0aGUgQWNrIHNpciwgSSBoYXZlIG1hZGUgdGhlIG5l
Y2Vzc2FyeSBjaGFuZ2VzIGFuZCBJIGhhdmUgc2VudCB0aGUgdjQgb2YgdGhlIHBhdGNoLgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
