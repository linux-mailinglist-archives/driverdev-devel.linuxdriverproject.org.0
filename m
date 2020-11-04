Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A60422A627E
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 11:49:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E28C62288F;
	Wed,  4 Nov 2020 10:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hdkhir1Eoewo; Wed,  4 Nov 2020 10:49:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6EF2420C41;
	Wed,  4 Nov 2020 10:49:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A2F01BF844
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 10:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 06CA586670
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 10:49:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m-lHaGIBx6UR for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 10:49:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp104.ord1d.emailsrvr.com (smtp104.ord1d.emailsrvr.com
 [184.106.54.104])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CD30C865FC
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 10:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1604486959;
 bh=nM3HMBm0LDHyS3BTjAs00IhVNoULUtyWP5a5SFL0J4A=;
 h=Subject:From:To:Date:From;
 b=c2UZups3mhpbRhyUtnZ3F8N93t9A6q8u+LMwkpQ4ft68Pn/cRiN8vTH84sV+wdEXk
 D0tjQz9PBha6iUHd1KbtzJY365tNuzpvCx+G3B/zTcf1bCH1QPPtD4RLl8GeZAVe6V
 sZKUYwpuIXzkZw4arcGdHRfR9E+xypnZeoK0TP7Y=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp22.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 53450E01B0; 
 Wed,  4 Nov 2020 05:49:19 -0500 (EST)
Subject: Re: [PATCH] staging: comedi: cb_pcidas: reinstate delay removed from
 trimpot setting
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
References: <20201029141833.126856-1-abbotti@mev.co.uk>
 <3d7cf15a-c389-ec2c-5e29-8838e8466790@mev.co.uk>
 <f28af317-08a7-8218-d2a6-0cdd9e681873@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <975358e2-6a08-211a-d232-3cd0ce628e8e@mev.co.uk>
Date: Wed, 4 Nov 2020 10:49:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <f28af317-08a7-8218-d2a6-0cdd9e681873@mev.co.uk>
Content-Language: en-GB
X-Classification-ID: c38d9511-2862-475a-af9e-afdf1fc6240b-1-1
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMDIvMTEvMjAyMCAxMToxNiwgSWFuIEFiYm90dCB3cm90ZToKPiBPbiAwMi8xMS8yMDIwIDEw
OjI1LCBJYW4gQWJib3R0IHdyb3RlOgo+PiBPbiAyOS8xMC8yMDIwIDE0OjE4LCBJYW4gQWJib3R0
IHdyb3RlOgo+Pj4gQ29tbWl0IGVkZGQyYTRjNjc1YyAoInN0YWdpbmc6IGNvbWVkaTogY2JfcGNp
ZGFzOiByZWZhY3Rvcgo+Pj4gd3JpdGVfY2FsaWJyYXRpb25fYml0c3RyZWFtKCkiKSBpbmFkdmVy
dGVudGx5IHJlbW92ZWQgb25lIG9mIHRoZQo+Pj4gYHVkZWxheSgxKWAgY2FsbHMgd2hlbiB3cml0
aW5nIHRvIHRoZSBjYWxpYnJhdGlvbiByZWdpc3RlciBpbgo+Pj4gYGNiX3BjaWRhc19jYWxpYl93
cml0ZSgpYC7CoCBSZWluc3RhdGUgdGhlIGRlbGF5LsKgIEl0IG1heSBzZWVtIHN0cmFuZ2UKPj4+
IHRoYXQgdGhlIGRlbGF5IGlzIHBsYWNlZCBiZWZvcmUgdGhlIHJlZ2lzdGVyIHdyaXRlLCBidXQg
dGhpcyBmdW5jdGlvbiBpcwo+Pj4gY2FsbGVkIGluIGEgbG9vcCBzbyB0aGUgZXh0cmEgZGVsYXkg
Y2FuIG1ha2UgYSBkaWZmZXJlbmNlLgo+Pj4KPj4+IFRoaXMgX21pZ2h0XyBzb2x2ZSByZXBvcnRl
ZCBpc3N1ZXMgcmVhZGluZyBhbmFsb2cgaW5wdXRzIG9uIGEKPj4+IFBDSWUtREFTMTYwMi8xNiBj
YXJkIHdoZXJlIHRoZSBhbmFsb2cgaW5wdXQgdmFsdWVzICJ3ZXJlIHNjYWxlZCBpbiBhCj4+PiBz
dHJhbmdlIHdheSB0aGF0IGRpZG4ndCBtYWtlIHNlbnNlIi7CoCBPbiB0aGUgc2FtZSBoYXJkd2Fy
ZSBydW5uaW5nIGEKPj4+IHN5c3RlbSB3aXRoIGEgMy4xMyBrZXJuZWwsIGFuZCB0aGVuIGEgc3lz
dGVtIHdpdGggYSA0LjQga2VybmVsLCBidXQgd2l0aAo+Pj4gdGhlIHNhbWUgYXBwbGljYXRpb24g
c29mdHdhcmUsIHRoZSBzeXN0ZW0gd2l0aCB0aGUgMy4xMyBrZXJuZWwgd2FzIGZpbmUsCj4+PiBi
dXQgdGhlIG9uZSB3aXRoIHRoZSA0LjQga2VybmVsIGV4aGliaXRlZCB0aGUgcHJvYmxlbS7CoCBP
ZiB0aGUgOTAKPj4+IGNoYW5nZXMgdG8gdGhlIGRyaXZlciBiZXR3ZWVuIHRob3NlIGtlcm5lbCB2
ZXJzaW9ucywgdGhpcyBjaGFuZ2UgbG9va2VkCj4+PiBsaWtlIHRoZSBtb3N0IGxpa2VseSBjdWxw
cml0Lgo+Pgo+PiBBY3R1YWxseSwgSSd2ZSByZWFsaXplZCB0aGF0IHRoaXMgcGF0Y2ggd2lsbCBo
YXZlIG5vIGVmZmVjdCBvbiB0aGUgCj4+IFBDSWUtREFTMTYwMi8xNiBjYXJkIGJlY2F1c2UgaXQg
dXNlcyBhIGRpZmZlcmVudCBkcml2ZXIgLSBjYl9wY2ltZGFzLCAKPj4gbm90IGNiX3BjaWRhcy4K
PiAKPiBCdXQgdGhhdCdzIGFsc28gY29uZnVzaW5nIGJlY2F1c2UgUENJZS1EQVMxNjAyLzE2IHdh
cyBub3Qgc3VwcG9ydGVkIAo+IHVudGlsIHRoZSAzLjE5IGtlcm5lbCHCoCBJIGtub3cgdGhlIHJl
cG9ydGVkIGhhcyBib3RoIFBDSS1EQVMxNjAyLzE2IGFuZCAKPiBQQ0llLURBUzE2MDIvMTYgY2Fy
ZHMgKHN1cHBvcnRlZCBieSBjYl9wY2lkYXMgYW5kIGNiX3BjaW1kYXMgCj4gcmVzcGVjdGl2ZWx5
KSwgc28gdGhlcmUgY291bGQgaGF2ZSBiZWVuIHNvbWUgbWl4LXVwIGluIHRoZSByZXBvcnRpbmcu
CgpNeXN0ZXJ5IHNvbHZlZC4gIFRoZSByZXBvcnRlciBoYWQgYSBtaXh0dXJlIG9mIFBDSWUtREFT
MTYwMi8xNiBhbmQgClBDSU0tREFTMTYwMi8xNiBjYXJkcyAobm90IFBDSS1EQVMxNjAyLzE2KS4g
IEJvdGggb2YgdGhvc2UgYXJlIHN1cHBvcnRlZCAKYnkgdGhlICJjYl9wY2ltZGFzIiBkcml2ZXIg
KG5vdCAiY2JfcGNpZGFzIiksIGFsdGhvdWdoIHRoZSBQQ0llIGNhcmQgd2FzIApub3Qgc3VwcG9y
dGVkIHVudGlsIHRoZSAzLjE5IGtlcm5lbCAoYnkgY29tbWl0IDRlM2QxNGFmMTI4NikuICBUZXN0
aW5nIAp3aXRoIHRoZSAzLjEzIGtlcm5lbCB3YXMgZG9uZSB3aXRoIHRoZSBQQ0lNIGNhcmQuCgpU
aGUgInN0cmFuZ2Ugc2NhbGluZyIgd2FzIGR1ZSB0byBhIGNoYW5nZSBpbiB0aGUgcmFuZ2VzIHJl
cG9ydGVkIGZvciB0aGUgCmFuYWxvZyBpbnB1dCBzdWJkZXZpY2UgaW4gdGhlIDQuMSBrZXJuZWwg
KGJ5IGNvbW1pdCBjNzU0OWQ3NzBhMjcpLiAKQmVmb3JlIHRoZW4sIGl0IGp1c3QgcmVwb3J0ZWQg
YSBzaW5nbGUgZHVtbXkgcmFuZ2UgWzAsIDEwMDAwMDBdIHdpdGggbm8gCnVuaXRzIChjb252ZXJ0
ZWQgdG8gWzAuMCwgMS4wXSB3aXRoIG5vIHVuaXRzIGJ5IGNvbWVkaWxpYikuICBBZnRlcndhcmRz
LCAKaXQgcmVwb3J0ZWQgZm91ciBkaWZmZXJlbnQgdm9sdGFnZSByYW5nZXMgKGVpdGhlciB1bmlw
b2xhciBvciBiaXBvbGFyLCAKZGVwZW5kaW5nIGluIGEgc3RhdHVzIGJpdCB0aWVkIHRvIGEgcGh5
c2ljYWwgc3dpdGNoKS4gIFRoZSByZXBvcnRlcidzIAphcHBsaWNhdGlvbiBjb2RlIHdhcyB1c2lu
ZyB0aGUgcmVwb3J0ZWQgcmFuZ2UgdG8gc2NhbGUgdGhlIHJhdyB2YWx1ZXMgdG8gCmEgdm9sdGFn
ZSAodXNpbmcgY29tZWRpbGliIGZ1bmN0aW9ucyksIGJ1dCBiZWNhdXNlIHRoZSByZXBvcnRlZCBy
YW5nZSAKd2FzIGJvZ3VzLCB0aGUgYXBwbGljYXRpb24gY29kZSB3YXMgcGVyZm9ybWluZyBhZGRp
dGlvbmFsIHNjYWxpbmcgCihvdXRzaWRlIG9mIGNvbWVkaWxpYikuICBUaGUgYXBwbGljYXRpb24g
Y29kZSBjYW4gYmUgY2hhbmdlZCB0byBjaGVjayAKd2hldGhlciB0aGUgZGV2aWNlIGlzIHJlcG9y
dGluZyBhIHByb3BlciB2b2x0YWdlIHJhbmdlIG9yIHRoZSBvbGQsIGJvZ3VzIApyYW5nZSwgYW5k
IGJlaGF2ZSBhY2NvcmRpbmdseS4KCj4+IEdyZWcsIHlvdSBtaWdodCBhcyB3ZWxsIGRyb3AgdGhp
cyBwYXRjaCBpZiB5b3UgaGF2ZW4ndCBhbHJlYWR5IGFwcGxpZWQgCj4+IGl0LCBzaW5jZSBpdCB3
YXMgb25seSBhIGh1bmNoIHRoYXQgaXQgZml4ZWQgYSBwcm9ibGVtLgoKVGhhdCdzIHN0aWxsIHRo
ZSBjYXNlLCBhbHRob3VnaCBpdCB3b24ndCBkbyBhbnkgaGFybSBpZiBhcHBsaWVkIChhcGFydCAK
ZnJvbSB0aGUgaW5jb3JyZWN0IHBhdGNoIGRlc2NyaXB0aW9uKS4KCi0tIAotPSggSWFuIEFiYm90
dCA8YWJib3R0aUBtZXYuY28udWs+IHx8IE1FViBMdGQuIGlzIGEgY29tcGFueSAgKT0tCi09KCBy
ZWdpc3RlcmVkIGluIEVuZ2xhbmQgJiBXYWxlcy4gIFJlZ2QuIG51bWJlcjogMDI4NjIyNjguICAp
PS0KLT0oIFJlZ2QuIGFkZHIuOiBTMTEgJiAxMiBCdWlsZGluZyA2NywgRXVyb3BhIEJ1c2luZXNz
IFBhcmssICk9LQotPSggQmlyZCBIYWxsIExhbmUsIFNUT0NLUE9SVCwgU0szIDBYQSwgVUsuIHx8
IHd3dy5tZXYuY28udWsgKT0tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
