Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA01421EB6
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 08:12:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65E7740210;
	Tue,  5 Oct 2021 06:12:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JXsG0aDXNApy; Tue,  5 Oct 2021 06:12:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B81E40116;
	Tue,  5 Oct 2021 06:12:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD1D91BF3C9
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 06:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTP id ABEAE83C22
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 06:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id lK7VbxBz8iCX for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 06:12:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by smtp1.osuosl.org (Postfix) with UTF8SMTPS id ABB4683C1C
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 06:12:36 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633414356; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=+xbESTP4kkiGyu41HaCLG8ls13YPmSv1/s4uk3OzTP4=;
 b=kotU4+K68k2JXb1xaEUlB54/gM4tPIS6RhQHO3e0qHzaeSao21gbMoP5CoaiXsE5c4cgRRmL
 OqGE3+7ddzxpHoQboMGpqGigjOXCjLJRiMy1dTgyWUom6fAzyNytchQHUlQz9PV8ycPEs1dO
 oOshlkLQycmZ/QSv+fxmSt0JB5Q=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-west-2.postgun.com with SMTP id
 615becd30d9325367be132a6 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 05 Oct 2021 06:12:35
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2C8A8C43460; Tue,  5 Oct 2021 06:12:35 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E4385C4338F;
 Tue,  5 Oct 2021 06:12:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org E4385C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Pali =?utf-8?Q?Roh=C3=A1r?= <pali@kernel.org>
Subject: Re: [PATCH v7 13/24] wfx: add hif_tx*.c/hif_tx*.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-14-Jerome.Pouiller@silabs.com>
 <87fstlkr1m.fsf@codeaurora.org> <2873071.CAOYYqaKbK@pc-42>
 <20211001161316.w3cwsigacznjbowl@pali>
Date: Tue, 05 Oct 2021 09:12:27 +0300
In-Reply-To: <20211001161316.w3cwsigacznjbowl@pali> ("Pali
 \=\?utf-8\?Q\?Roh\?\= \=\?utf-8\?Q\?\=C3\=A1r\=22's\?\= message of
 "Fri, 1 Oct 2021 18:13:16 +0200")
Message-ID: <87tuhwf19w.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
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
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4gd3JpdGVzOgoKPiBPbiBGcmlkYXkgMDEgT2N0
b2JlciAyMDIxIDE3OjE3OjUyIErDqXLDtG1lIFBvdWlsbGVyIHdyb3RlOgo+PiBPbiBGcmlkYXkg
MSBPY3RvYmVyIDIwMjEgMTE6NTU6MzMgQ0VTVCBLYWxsZSBWYWxvIHdyb3RlOgo+PiA+IENBVVRJ
T046IFRoaXMgZW1haWwgb3JpZ2luYXRlZCBmcm9tIG91dHNpZGUgb2YgdGhlIG9yZ2FuaXphdGlv
bi4KPj4gPiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bmxlc3MgeW91
IHJlY29nbml6ZSB0aGUKPj4gPiBzZW5kZXIgYW5kIGtub3cgdGhlIGNvbnRlbnQgaXMgc2FmZS4K
Pj4gPiAKPj4gPiAKPj4gPiBKZXJvbWUgUG91aWxsZXIgPEplcm9tZS5Qb3VpbGxlckBzaWxhYnMu
Y29tPiB3cml0ZXM6Cj4+ID4gCj4+ID4gPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21l
LnBvdWlsbGVyQHNpbGFicy5jb20+Cj4+ID4gPgo+PiA+ID4gU2lnbmVkLW9mZi1ieTogSsOpcsO0
bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+PiA+IAo+PiA+IFsuLi5d
Cj4+ID4gCj4+ID4gPiAtLS0gL2Rldi9udWxsCj4+ID4gPiArKysgYi9kcml2ZXJzL25ldC93aXJl
bGVzcy9zaWxhYnMvd2Z4L2hpZl90eF9taWIuaAo+PiA+ID4gQEAgLTAsMCArMSw0OSBAQAo+PiA+
ID4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KPj4gPiA+ICsv
Kgo+PiA+ID4gKyAqIEltcGxlbWVudGF0aW9uIG9mIHRoZSBob3N0LXRvLWNoaXAgTUlCcyBvZiB0
aGUgaGFyZHdhcmUgQVBJLgo+PiA+ID4gKyAqCj4+ID4gPiArICogQ29weXJpZ2h0IChjKSAyMDE3
LTIwMjAsIFNpbGljb24gTGFib3JhdG9yaWVzLCBJbmMuCj4+ID4gPiArICogQ29weXJpZ2h0IChj
KSAyMDEwLCBTVC1Fcmljc3Nvbgo+PiA+ID4gKyAqIENvcHlyaWdodCAoQykgMjAxMCwgU1QtRXJp
Y3Nzb24gU0EKPj4gPiA+ICsgKi8KPj4gPiA+ICsjaWZuZGVmIFdGWF9ISUZfVFhfTUlCX0gKPj4g
PiA+ICsjZGVmaW5lIFdGWF9ISUZfVFhfTUlCX0gKPj4gPiA+ICsKPj4gPiA+ICtzdHJ1Y3Qgd2Z4
X3ZpZjsKPj4gPiA+ICtzdHJ1Y3Qgc2tfYnVmZjsKPj4gPiA+ICsKPj4gPiA+ICtpbnQgaGlmX3Nl
dF9vdXRwdXRfcG93ZXIoc3RydWN0IHdmeF92aWYgKnd2aWYsIGludCB2YWwpOwo+PiA+ID4gK2lu
dCBoaWZfc2V0X2JlYWNvbl93YWtldXBfcGVyaW9kKHN0cnVjdCB3ZnhfdmlmICp3dmlmLAo+PiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBkdGltX2ludGVy
dmFsLAo+PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBs
aXN0ZW5faW50ZXJ2YWwpOwo+PiA+ID4gK2ludCBoaWZfc2V0X3JjcGlfcnNzaV90aHJlc2hvbGQo
c3RydWN0IHdmeF92aWYgKnd2aWYsCj4+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBpbnQgcnNzaV90aG9sZCwgaW50IHJzc2lfaHlzdCk7Cj4+ID4gPiAraW50IGhpZl9nZXRfY291
bnRlcnNfdGFibGUoc3RydWN0IHdmeF9kZXYgKndkZXYsIGludCB2aWZfaWQsCj4+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGhpZl9taWJfZXh0ZW5kZWRfY291bnRfdGFibGUg
KmFyZyk7Cj4+ID4gPiAraW50IGhpZl9zZXRfbWFjYWRkcihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwg
dTggKm1hYyk7Cj4+ID4gPiAraW50IGhpZl9zZXRfcnhfZmlsdGVyKHN0cnVjdCB3ZnhfdmlmICp3
dmlmLAo+PiA+ID4gKyAgICAgICAgICAgICAgICAgICBib29sIGZpbHRlcl9ic3NpZCwgYm9vbCBm
d2RfcHJvYmVfcmVxKTsKPj4gPiA+ICtpbnQgaGlmX3NldF9iZWFjb25fZmlsdGVyX3RhYmxlKHN0
cnVjdCB3ZnhfdmlmICp3dmlmLCBpbnQgdGJsX2xlbiwKPj4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBoaWZfaWVfdGFibGVfZW50cnkgKnRibCk7Cj4+ID4g
PiAraW50IGhpZl9iZWFjb25fZmlsdGVyX2NvbnRyb2woc3RydWN0IHdmeF92aWYgKnd2aWYsCj4+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IGVuYWJsZSwgaW50IGJlYWNvbl9j
b3VudCk7Cj4+ID4gPiAraW50IGhpZl9zZXRfb3BlcmF0aW9uYWxfbW9kZShzdHJ1Y3Qgd2Z4X2Rl
diAqd2RldiwgZW51bQo+PiA+ID4gaGlmX29wX3Bvd2VyX21vZGUgbW9kZSk7Cj4+ID4gPiAraW50
IGhpZl9zZXRfdGVtcGxhdGVfZnJhbWUoc3RydWN0IHdmeF92aWYgKnd2aWYsIHN0cnVjdCBza19i
dWZmICpza2IsCj4+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgdTggZnJhbWVfdHlwZSwg
aW50IGluaXRfcmF0ZSk7Cj4+ID4gPiAraW50IGhpZl9zZXRfbWZwKHN0cnVjdCB3ZnhfdmlmICp3
dmlmLCBib29sIGNhcGFibGUsIGJvb2wgcmVxdWlyZWQpOwo+PiA+ID4gK2ludCBoaWZfc2V0X2Js
b2NrX2Fja19wb2xpY3koc3RydWN0IHdmeF92aWYgKnd2aWYsCj4+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICB1OCB0eF90aWRfcG9saWN5LCB1OCByeF90aWRfcG9saWN5KTsKPj4gPiA+
ICtpbnQgaGlmX3NldF9hc3NvY2lhdGlvbl9tb2RlKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBpbnQg
YW1wZHVfZGVuc2l0eSwKPj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIGJvb2wgZ3Jl
ZW5maWVsZCwgYm9vbCBzaG9ydF9wcmVhbWJsZSk7Cj4+ID4gPiAraW50IGhpZl9zZXRfdHhfcmF0
ZV9yZXRyeV9wb2xpY3koc3RydWN0IHdmeF92aWYgKnd2aWYsCj4+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgaW50IHBvbGljeV9pbmRleCwgdTggKnJhdGVzKTsKPj4gPiA+ICtp
bnQgaGlmX2tlZXBfYWxpdmVfcGVyaW9kKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBpbnQgcGVyaW9k
KTsKPj4gPiA+ICtpbnQgaGlmX3NldF9hcnBfaXB2NF9maWx0ZXIoc3RydWN0IHdmeF92aWYgKnd2
aWYsIGludCBpZHgsIF9fYmUzMiAqYWRkcik7Cj4+ID4gPiAraW50IGhpZl91c2VfbXVsdGlfdHhf
Y29uZihzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgYm9vbCBlbmFibGUpOwo+PiA+ID4gK2ludCBoaWZf
c2V0X3VhcHNkX2luZm8oc3RydWN0IHdmeF92aWYgKnd2aWYsIHVuc2lnbmVkIGxvbmcgdmFsKTsK
Pj4gPiA+ICtpbnQgaGlmX2VycF91c2VfcHJvdGVjdGlvbihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwg
Ym9vbCBlbmFibGUpOwo+PiA+ID4gK2ludCBoaWZfc2xvdF90aW1lKHN0cnVjdCB3ZnhfdmlmICp3
dmlmLCBpbnQgdmFsKTsKPj4gPiA+ICtpbnQgaGlmX3dlcF9kZWZhdWx0X2tleV9pZChzdHJ1Y3Qg
d2Z4X3ZpZiAqd3ZpZiwgaW50IHZhbCk7Cj4+ID4gPiAraW50IGhpZl9ydHNfdGhyZXNob2xkKHN0
cnVjdCB3ZnhfdmlmICp3dmlmLCBpbnQgdmFsKTsKPj4gPiAKPj4gPiAid2Z4XyIgcHJlZml4IG1p
c3NpbmcgZnJvbSBxdWl0ZSBhIGZldyBmdW5jdGlvbnMuCj4+IAo+PiBJIGRpZG4ndCBrbm93IGl0
IHdhcyBtYW5kYXRvcnkgdG8gcHJlZml4IGFsbCB0aGUgZnVuY3Rpb25zIHdpdGggdGhlCj4+IHNh
bWUgcHJlZml4LgoKSSBkb24ndCBrbm93IGVpdGhlciBpZiB0aGlzIGlzIG1hbmRhdG9yeSBvciBu
b3QsIGZvciBleGFtcGxlIEkgZG8gbm90CmhhdmUgYW55IHJlY29sbGVjdGlvbiB3aGF0IExpbnVz
IGFuZCBvdGhlciBtYWludGFpbmVycyB0aGluayBvZiB0aGlzLiBJCmp1c3QgcGVyc29uYWxseSB0
aGluayBpdCdzIGdvb2QgcHJhY3Rpc2UgdG8gdXNlIGRyaXZlciBwcmVmaXggKCJ3ZnhfIikKaW4g
YWxsIG5vbi1zdGF0aWMgZnVuY3Rpb25zLgoKQW55IG9waW5pb25zIGZyb20gb3RoZXJzPyBHcmVn
PwoKPj4gV2l0aCB0aGUgcnVsZSBvZiA4MC1jb2x1bW5zLCBJIHRoaW5rIEkgd2lsbCBoYXZlIHRv
IGNoYW5nZSBhIGJ1bmNoIG9mCj4+IGNvZGUgOiggLgo+Cj4gSSB0aGluayB0aGF0IG5ldyBkcml2
ZXJzIGNhbiB1c2UgMTAwIGNoYXJhY3RlcnMgcGVyIGxpbmUuCgpUaGF0J3MgbXkgdW5kZXJzdGFu
ZGluZyBhcyB3ZWxsLgoKLS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9s
aW51eC13aXJlbGVzcy9saXN0LwoKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4v
ZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
