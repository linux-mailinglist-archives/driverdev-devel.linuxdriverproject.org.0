Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB8594FDD1
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2024 08:28:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A7B4412A8;
	Tue, 13 Aug 2024 06:28:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ejmuuy8lSMV; Tue, 13 Aug 2024 06:28:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C524412B0
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C524412B0;
	Tue, 13 Aug 2024 06:28:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F26F71BF410
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2024 06:28:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E09B0606B8
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2024 06:28:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SUusyvnA28Br for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2024 06:28:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=gregkh@linuxfoundation.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9972A60008
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9972A60008
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9972A60008
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2024 06:28:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5F99E6155C;
 Tue, 13 Aug 2024 06:28:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E447C4AF09;
 Tue, 13 Aug 2024 06:28:11 +0000 (UTC)
Date: Tue, 13 Aug 2024 08:28:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Li Li <dualli@chromium.org>
Subject: Re: [PATCH v1] add binder genl for txn report
Message-ID: <2024081350-establish-direness-38ee@gregkh>
References: <20240812211844.4107494-1-dualli@chromium.org>
 <2024081341-egging-custodian-428d@gregkh>
 <CANBPYPjCobjbtyKoFJHAciE3=m0Z_QeDTdD9C=ggCcvaWy0daA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANBPYPjCobjbtyKoFJHAciE3=m0Z_QeDTdD9C=ggCcvaWy0daA@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1723530492;
 bh=derBRRAO0pG76FVV3scLWIoHy4jk/7v1q8+kLjSqkqo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CqAzioc7M91ugJKeoMUaWhhH/w5N9NuQYSiNIQc1A30ZHjIxEIn0b85FXdYg+2pW+
 kSe25YIJBmeuIPsMj+d0kx1y3sZCHj83KEOvLVhTJCR4i5442REhQ9p2kjYyAADqnd
 OdB8VolScMqCNYrBIeMveN8W0tdosiUx8/HzbC9Q=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=CqAzioc7
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
Cc: dualli@google.com, devel@driverdev.osuosl.org, brauner@kernel.org,
 tkjos@android.com, arnd@arndb.de, surenb@google.com, masahiroy@kernel.org,
 cmllamas@google.com, linux-kernel@vger.kernel.org, joel@joelfernandes.org,
 arve@android.com, maco@android.com, smoreland@google.com, hridya@google.com,
 kernel-team@android.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBBdWcgMTIsIDIwMjQgYXQgMTE6MTY6MjdQTSAtMDcwMCwgTGkgTGkgd3JvdGU6Cj4g
T24gTW9uLCBBdWcgMTIsIDIwMjQgYXQgMTA6MTPigK9QTSBHcmVnIEtIIDxncmVna2hAbGludXhm
b3VuZGF0aW9uLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24gTW9uLCBBdWcgMTIsIDIwMjQgYXQgMDI6
MTg6NDRQTSAtMDcwMCwgTGkgTGkgd3JvdGU6Cj4gPiA+IEZyb206IExpIExpIDxkdWFsbGlAZ29v
Z2xlLmNvbT4KPiA+Cj4gPiBTb3JyeSwgYnV0IEkgY2FuIG5vdCBwYXJzZSB5b3VyIFN1YmplY3Q6
IGxpbmUgYXQgYWxsLiAgUGxlYXNlIHVzZQo+ID4gdm93ZWxzLCB3ZSBkb24ndCBoYXZlIGEgbGFj
ayBvZiB0aGVtIDopCj4gPgo+ID4gQWxzbyBsb29rIGF0IGhvdyBvdGhlciBwYXRjaGVzIGFyZSBm
b3JtYXR0ZWQgZm9yIHRoZXNlIGZpbGVzIHRvIGdldCBhbgo+ID4gaWRlYSBvZiBob3cgdG8gY3Jl
YXRlIGEgZ29vZCBzdWJqZWN0IGxpbmUuCj4gCj4gVGhhbmsgeW91IGZvciByZXZpZXdpbmcgdGhl
IHBhdGNoIQo+IAo+IFN1cmUsIEknbGwgZmluZCBhIG1vcmUgbWVhbmluZ2Z1bCBzdWJqZWN0IGlu
IHYyLgo+IAo+ID4gPiBUbyBwcmV2ZW50IG1ha2luZyB0aGUgYWxyZWFkeSBibG9hdGVkIGJpbmRl
ci5jIGV2ZW4gYmlnZ2VyLCBhIG5ldyBzb3VyY2UKPiA+ID4gZmlsZSBiaW5kZXJfZ2VubC5jIGlz
IGNyZWF0ZWQgdG8gaG9zdCB0aG9zZSBnZW5lcmljIG5ldGxpbmsgY29kZS4KPiA+Cj4gPiAiZ2Vu
bCIgaXMgYSByb3VnaCBhYmJyZXZpYXRpb24gdGhhdCBpcyBub3QgZ29pbmcgdG8gYmUgZWFzeSB0
byByZW1lbWJlciwKPiA+IHdoYXQncyB3cm9uZyB3aXRoICJiaW5kZXJfbmV0bGluay5jIj8KPiAK
PiBJdCdzIGp1c3QgYmVjYXVzZSBnZW5sIGhhcyBhbHJlYWR5IGJlZW4gdXNlZCBpbiBib3RoIG9m
IGdlbmVyaWMgbmV0bGluawo+IGtlcm5lbCBjb2RlIChlLmcuIGluIGxpbnV4L2luY2x1ZGUvbmV0
L2dlbmV0bGluay5oKSBhbmQgdXNlciBzcGFjZSBsaWJyYXJpZXMKPiBodHRwczovL21hbjcub3Jn
L2xpbnV4L21hbi1wYWdlcy9tYW44L2dlbmwuOC5odG1sLgoKQWgsIEkgd2Fzbid0IGF3YXJlIG9m
IHRoZSBleGlzdGluZyBuYW1lcywgc28gdGhhdCdzIGZpbmUgaWYgaXQgaXMgd2hhdAp0aGUgbmV0
d29ya2luZyB3b3JsZCBpcyB1c2VkIHRvLgoKV2hpY2ggcmVtaW5kcyBtZSwgd2h5IGFyZW4ndCB5
b3UgYXNraW5nIGZvciB0aGVpciByZXZpZXcgaGVyZSBhcyB3ZWxsIHRvCmVuc3VyZSB0aGF0IHlv
dSBhcmUgZG9pbmcgdGhpbmdzIHdpdGggbmV0bGluayBjb3JyZWN0bHk/Cgo+ID4gV2hhdCB1c2Vy
c3BhY2UgY29kZSBpcyBub3cgZ29pbmcgdG8gdXNlIHRoaXMgYW5kIHJlcXVpcmUgaXQ/ICBIb3cg
d2FzIGl0Cj4gPiB0ZXN0ZWQ/ICBXaGVyZSBpcyB0aGUgdGVzdCBjb2RlPyAgV2hlcmUgaXMgdGhl
IG5ldyB1c2VyL2tlcm5lbCBhcGkgdGhhdAo+ID4geW91IGNyZWF0ZWQgaGVyZSBkb2N1bWVudGVk
Pwo+IAo+IEFzIG1lbnRpb25lZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UsIGJpbmRlciBpcyB1c2Vk
IGluIEFuZHJvaWQgT1MuIEJ1dCB0aGUKPiB1c2VyIHNwYWNlIGFkbWluaXN0cmF0aW9uIHByb2Nl
c3MgY2FuIGRvIGxpdHRsZSB0byBkZWFsIHdpdGggYmluZGVyIHRyYW5zYWN0aW9uCj4gZXJyb3Jz
LiBUaGlzIGlzIHRlc3RlZCB3aXRoIEFuZHJvaWQuIEknbGwgdXBsb2FkIHRoZSB1c2VyIHNwYWNl
IGNvZGUgdG8gQU9TUC4KPiBJZiB0aGVyZSdzIGEgYmV0dGVyIG9wdGlvbiB0byBob3N0IHRoZSB0
ZXN0IGNvZGUsIGUuZy4gYSBzbWFsbGVyIGFuZAo+IHNpbXBsZXIgcHJvamVjdAo+IHRoYXQgdXNl
cyBiaW5kZXIsIHBsZWFzZSBsZXQgbWUga25vdy4KCkl0IG5lZWRzIHRvIGJlIHNvbWV3aGVyZSwg
b3RoZXJ3aXNlIHdlIGRvbid0IGtub3cgaG93IGFueSBvZiB0aGlzIGlzCmJlaW5nIHVzZWQgYXQg
YWxsLiAgQW5kIHRoZXJlIHdhcyBzb21lIGJpbmRlciAidGVzdCBjb2RlIiBzb21ld2hlcmUsIGlz
CnRoaXMgbmV3IGZ1bmN0aW9uYWxpdHkgYWRkZWQgdG8gdGhhdCBhbHNvPwoKPiA+IFlvdSBhZGRl
ZCBhIG5ldyBpb2N0bCBoZXJlIGFzIHdlbGwsIHdoeSBub3QgbWVudGlvbiB0aGF0PyAgV2h5IGlz
IGl0Cj4gPiBuZWVkZWQ/ICBXaHkgbm90IGFsd2F5cyBlbWl0IG5ldGxpbmsgbWVzc2FnZXM/ICBI
b3cgZG8geW91IHR1cm4gdGhlbQo+ID4gb2ZmPwo+IAo+IFRoZSBnZW5lcmljIG5ldGxpbmsgbWVz
c2FnZSBpcyBhIGNvbnZlbmllbnQgd2F5IGZvciB0aGUga2VybmVsIGRyaXZlciB0byBzZW5kCj4g
aW5mb3JtYXRpb24gdG8gdXNlciBzcGFjZS4gVGVjaG5pY2FsbHkgaXQncyBwb3NzaWJsZSB0byBy
ZXBsYWNlIHRoaXMKPiBuZXcgaW9jdGwgd2l0aAo+IGEgbmV0bGluayBtZXNzYWdlLiBCdXQgdGhh
dCByZXF1aXJlcyBtdWNoIG1vcmUgdW5uZWNlc3NhcnkgY29kZSBwYXJzaW5nIHRoZQo+IHJhdyBi
eXRlIHN0cmVhbXMgYW5kIGFjY2Vzc2luZyBpbnRlcm5hbCBiaW5kZXJfcHJvYyBhbmQgb3RoZXIg
c3RydWN0dXJlcyBmcm9tCj4gbmV0bGluayBsYXllci4gSXQncyBtdWNoIG1vcmUgZWxlZ2FudCB0
byB1c2UgYW4gaW9jdGwgd2l0aCBvbmx5IGEKPiBjb3VwbGUgbGluZXMgb2YKPiBzb3VyY2UgY29k
ZS4KClRoZW4geW91IG5lZWQgdG8gZG9jdW1lbnQgdGhhdCBzb21ld2hlcmUuCgo+IFRvIHR1cm4g
dGhlbSBvZmYsIGp1c3QgY2FsbCB0aGUgc2FtZSBpb2N0bCwgcmVzZXR0aW5nIHRoZSBmbGFncyB0
byAwLgo+IFRoYXQgc2FpZCwgdGhlCj4gbmFtZSBvZiB0aGlzIG5ldyBpb2N0bCAoQklOREVSX0VO
QUJMRV9SRVBPUlQpIGlzbid0IGdvb2QgZW5vdWdoLgo+IFdoYXQgZG8geW91IHRoaW5rIGlmIEkg
Y2hhbmdlIGl0IHRvIEJJTkRFUl9TRVRfTkVUTElOS19SRVBPUlQ/CgpZZXMsIHRoZSBuYW1lIG5l
ZWRzIHRvIGNoYW5nZSBpZiB5b3UgY2FuIGJvdGggZW5hYmxlIGFuZCBkaXNhYmxlIHJlcG9ydHMK
ZnJvbSBpdC4KCj4gPiBBbmQgaG93IGRvZXMgdGhpcyBkZWFsIHdpdGggYmluZGVyIG5hbWVzcGFj
ZXM/ICBBcmUgdGhlc2UgbWVzc2FnZXMgYWxsCj4gPiBub3cgImdsb2JhbCIgc29tZWhvdz8gIE9y
IGFyZSB0aGV5IHNlcGFyYXRlZCBwcm9wZXJseSBwZXIgbmFtZXNwYWNlPwo+IAo+IFRoZSBuZXcg
aW9jdGwgQklOREVSX0VOQUJMRV9SRVBPUlQgKGFnYWluLCBpdCBkZXNlcnZlcyBhIGJldHRlciBu
YW1lKQo+IHNldHMgdGhlIHJlcG9ydF9mbGFncyBmb3IgaXRzIGFzc29jaWF0ZWQgYmluZGVyIGNv
bnRleHQuIEVhY2ggYmluZGVyIGNvbnRleHQgaGFzCj4gaXRzIG93biBzZXR0aW5ncy4gVGhlIG1l
c3NhZ2VzIGZyb20gYWxsIGJpbmRlciBjb250ZXh0cyBhcmUgc2VudCB0byB1c2VyIHNwYWNlCj4g
dmlhIHRoZSBzYW1lIG5ldGxpbmsgc29ja2V0LiBUaGUgdXNlciBzcGFjZSBjb2RlIGNhbiBlbmFi
bGUgdGhlIHJlcG9ydHMgZm9yCj4gZWFjaCBiaW5kZXIgY29udGV4dCBzZXBhcmF0ZWx5IGFuZCBk
aXN0aW5ndWlzaCB0aGUgbmV0bGluayBtZXNzYWdlcyBieSB0aGUKPiBuYW1lIG9mIHRoZSBiaW5k
ZXIgY29udGV4dC4KClNvIHVzZXJzcGFjZSB3aWxsIG5vdyBnZXQgYWxsIHJlcG9ydHMgYW5kIGhh
cyB0byBkbyB0aGUgcGFyc2luZyB0bwpkZXRlcm1pbmUgd2hhdCBpcywgYW5kIGlzIG5vdCwgcmVs
ZXZhbnQgZm9yIHdoYXQgdGhleSB3YW50PyAgVGhhdCBmZWVscwpsaWtlIGEgYmlnIHNlY3VyaXR5
IGhvbGUgdG8gbWUsIGhhcyB0aGlzIGJlZW4gYXVkaXRlZCBieSB0aGUgQW5kcm9pZApzZWN1cml0
eSB0ZWFtIHlldD8KCj4gSXQncyBhbHNvIHBvc3NpYmxlIHRvIGhhdmUgb25lIG5ldGxpbmsgc29j
a2V0IGZvciBlYWNoIGJpbmRlciBjb250ZXh0Lgo+IEJ1dCBpdCBzZWVtcwo+IGxpa2Ugb3Zlcmtp
bGwgdG8gbWUuCgpBZ2FpbiwgdGhpbmsgb2Ygc2VjdXJpdHkgaXNzdWVzIHBsZWFzZS4gIERvIHlv
dSB3YW50IGFsbCBiaW5kZXIKcHJvY2Vzc2VzIGluIGEgc3lzdGVtIHRvIGJlIGFibGUgdG8gc2Vl
IGFsbCBvdGhlciBtZXNzYWdlcz8KCnRoYW5rcywKCmdyZWcgay1oCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
