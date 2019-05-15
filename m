Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 027891F993
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 19:49:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5160787062;
	Wed, 15 May 2019 17:48:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QHNNsqSdL66H; Wed, 15 May 2019 17:48:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 945EC8705D;
	Wed, 15 May 2019 17:48:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BBF21BF3A3
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 17:48:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 88621851E5
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 17:48:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j0k5mmXpPe89 for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 17:48:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 859FA84B35
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 17:48:53 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA8F02084F;
 Wed, 15 May 2019 17:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557942533;
 bh=r++EGBPjC2M3LILhKWcIN7iTN84Apfj6sGnaojnZTMk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kbRO3obfFZXSSyMihvDK42zhLhTJCMQ4uXk/19K1VrXq6KJEW86FtNmMcvgbflAhW
 7md44ENvC2KJabvtea270vd8YMiotbzRK5WTxjWMaMmj8pdczwxg9diWgiexnD5dHU
 DZhKf1/+iOOtxBJ3Lcm8Uy4TjZ5Jn3fERFYtRD2o=
Date: Wed, 15 May 2019 19:48:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] staging: Add rtl8821ce PCIe WiFi driver
Message-ID: <20190515174850.GA22015@kroah.com>
References: <20190515112401.15373-1-kai.heng.feng@canonical.com>
 <20190515114022.GA18824@kroah.com>
 <6D5557B8-8140-48A8-BED7-9587936902D8@canonical.com>
 <20190515123319.GA435@kroah.com>
 <63833AA2-AC8B-4EEA-AF36-EF2A9BFD4F9F@canonical.com>
 <20190515163945.GA5719@kroah.com>
 <C6B4FA3D-A590-47F1-9F94-916862DD15CD@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C6B4FA3D-A590-47F1-9F94-916862DD15CD@canonical.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBNYXkgMTYsIDIwMTkgYXQgMDE6NDA6MDBBTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3
cm90ZToKPiBhdCAwMDozOSwgR3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdy
b3RlOgo+IAo+ID4gT24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMDk6MDY6NDRQTSArMDgwMCwgS2Fp
LUhlbmcgRmVuZyB3cm90ZToKPiA+ID4gYXQgMjA6MzMsIEdyZWcgS0ggPGdyZWdraEBsaW51eGZv
dW5kYXRpb24ub3JnPiB3cm90ZToKPiA+ID4gCj4gPiA+ID4gT24gV2VkLCBNYXkgMTUsIDIwMTkg
YXQgMDc6NTQ6NThQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3cm90ZToKPiA+ID4gPiA+IGF0IDE5
OjQwLCBHcmVnIEtIIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4gd3JvdGU6Cj4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gT24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMDc6MjQ6MDFQTSArMDgwMCwg
S2FpLUhlbmcgRmVuZyB3cm90ZToKPiA+ID4gPiA+ID4gPiBUaGUgcnRsODgyMWNlIGNhbiBiZSBm
b3VuZCBvbiBtYW55IEhQIGFuZCBMZW5vdm8gbGFwdG9wcy4KPiA+ID4gPiA+ID4gPiBVc2VycyBo
YXZlIGJlZW4gdXNpbmcgb3V0LW9mLXRyZWUgbW9kdWxlIGZvciBhIHdoaWxlLAo+ID4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiA+IFRoZSBuZXcgUmVhbHRlayBXaUZpIGRyaXZlciwgcnR3ODgsIHdp
bGwgc3VwcG9ydCBydGw4ODIxY2UgaW4gMjAyMCBvcgo+ID4gPiA+ID4gPiA+IGxhdGVyLgo+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gV2hlcmUgaXMgdGhhdCBkcml2ZXIsIGFuZCB3aHkgaXMgaXQg
Z29pbmcgdG8gdGFrZSBzbwo+ID4gPiA+ID4gPiBsb25nIHRvIGdldCBtZXJnZWQ/Cj4gPiA+ID4g
PiAKPiA+ID4gPiA+IHJ0dzg4IGlzIGluIDUuMiBub3csIGJ1dCBpdCBkb2VzbuKAmXQgc3VwcG9y
dCA4ODIxY2UgeWV0Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGV5IHBsYW4gdG8gYWRkIHRoZSBz
dXBwb3J0IGluIDIwMjAuCj4gPiA+ID4gCj4gPiA+ID4gV2hvIGlzICJ0aGV5IiBhbmQgd2hhdCBp
cyBuZWVkZWQgdG8gc3VwcG9ydCB0aGlzIGRldmljZSBhbmQgd2h5IHdhaXQgYQo+ID4gPiA+IGZ1
bGwgeWVhcj8KPiA+ID4gCj4gPiA+IOKAnFRoZXnigJ0gcmVmZXJzIHRvIFJlYWx0ZWsuCj4gPiA+
IEl04oCZcyB0aGVpciBwbGFuIHNvIEkgY2Fu4oCZdCByZWFsbHkgYW5zd2VyIHRoYXQgb24gYmVo
YWxmIG9mIFJlYWx0ZWsuCj4gPiAKPiA+IFdoZXJlIGRpZCB0aGV5IHNheSB0aGF0PyAgQW55IHJl
YXNvbiB0aGVpciBkZXZlbG9wZXJzIGFyZSBub3Qgb24gdGhpcwo+ID4gcGF0Y2g/Cj4gPiAKPiA+
ID4gPiA+ID4gPiAyOTYgZmlsZXMgY2hhbmdlZCwgMjA2MTY2IGluc2VydGlvbnMoKykKPiA+ID4g
PiA+ID4gCj4gPiA+ID4gPiA+IFVnaCwgd2h5IGRvIHdlIGtlZXAgaGF2aW5nIHRvIGFkZCB0aGUg
d2hvbGUgbWVzcyBmb3IKPiA+ID4gPiA+ID4gZXZlcnkgc2luZ2xlIG9uZSBvZgo+ID4gPiA+ID4g
PiB0aGVzZSBkZXZpY2VzPwo+ID4gPiA+ID4gCj4gPiA+ID4gPiBCZWNhdXNlIFJlYWx0ZWsgZGV2
aWNlcyBhcmUgdW5mb3J0dW5hdGVseSB1YmlxdWl0b3VzIHNvIHRoZSBzdXBwb3J0IGlzCj4gPiA+
ID4gPiBiZXR0ZXIgY29tZSBmcm9tIGtlcm5lbC4KPiA+ID4gPiAKPiA+ID4gPiBUaGF0J3Mgbm90
IHRoZSBpc3N1ZSBoZXJlLiAgVGhlIGlzc3VlIGlzIHRoYXQgd2Uga2VlcCBhZGRpbmcgdGhlIHNh
bWUKPiA+ID4gPiBodWdlIGRyaXZlciBmaWxlcyB0byB0aGUga2VybmVsIHRyZWUsIG92ZXIgYW5k
IG92ZXIsIHdpdGggbm8gcmVhbCBjaGFuZ2UKPiA+ID4gPiBhdCBhbGwuICBXZSBoYXZlIHNlZW4g
YWxtb3N0IGFsbCBvZiB0aGVzZSBmaWxlcyBpbiBvdGhlciByZWFsdGVrCj4gPiA+ID4gZHJpdmVy
cywgcmlnaHQ/Cj4gPiA+IAo+ID4gPiBZZXMuIFRoZXkgdXNlIG9uZSBzaW5nbGUgZHJpdmVyIHRv
IHN1cHBvcnQgZGlmZmVyZW50IFNvQ3MsIGRpZmZlcmVudAo+ID4gPiBhcmNoaXRlY3R1cmVzIGFu
ZCBldmVuIGRpZmZlcmVudCBPU2VzLgo+ID4gCj4gPiBXZWxsLCB0aGV5IHRyeSB0bywgaXQgZG9l
c24ndCBhbHdheXMgd29yayA6KAo+ID4gCj4gPiA+IFRoYXTigJlzIHdoeSBpdOKAmXMgYSBtZXNz
Lgo+ID4gCj4gPiBPaCB3ZSBhbGwga25vdyB3aHkgdGhpcyBpcyBhIG1lc3MuICBCdXQgdGhleSBo
YXZlIGJlZW4gc2F5aW5nIGZvcgo+ID4gX3llYXJzXyB0aGV5IHdvdWxkIGNsZWFuIHVwIHRoaXMg
bWVzcy4gIFNvIHB1c2ggYmFjaywgSSdtIG5vdCBnb2luZyB0bwo+ID4gdGFrZSBhbm90aGVyIDIw
MGsgbGluZXMgZm9yIGEgc2ltcGxlIHdpZmkgZHJpdmVyLCBhZ2Fpbi4KPiA+IAo+ID4gQWxvbmcg
dGhvc2UgbGluZXMsIHdlIHNob3VsZCBwcm9iYWJseSBqdXN0IGRlbGV0ZSB0aGUgb3RoZXIgb2xk
IHJlYWx0ZWsKPiA+IGRyaXZlcnMgdGhhdCBkb24ndCBzZWVtIHRvIGJlIGdvaW5nIGFueXdoZXJl
IGZyb20gc3RhZ2luZyBhcyB3ZWxsLAo+ID4gYmVjYXVzZSB0aG9zZSBhcmUganVzdCBjb25mdXNp
bmcgcGVvcGxlLgo+ID4gCj4gPiA+ID4gV2h5IG5vdCB1c2UgdGhlIG9uZXMgd2UgYWxyZWFkeSBo
YXZlPwo+ID4gPiAKPiA+ID4gSXTigJlzIHZpcnR1YWxseSBpbXBvc3NpYmxlIGJlY2F1c2UgUmVh
bHRla+KAmXMgbWVnYSB3aWZpIGRyaXZlciB1c2VzIHRvbnMgb2YKPiA+ID4gI2lmZGVmcywgb25s
eSBvbmUgY2hpcCBjYW4gYmUgc2VsZWN0ZWQgdG8gYmUgc3VwcG9ydGVkIGF0IGNvbXBpbGUgdGlt
ZS4KPiA+IAo+ID4gVGhhdCdzIG5vdCB3aGF0IEkgYXNrZWQuCj4gPiAKPiA+IEkgd2FudCB0byBr
bm93IHdoeSB0aGV5IGNhbid0IGp1c3QgYWRkIHN1cHBvcnQgZm9yIHRoZWlyIG5ldyBkZXZpY2Vz
IHRvCj4gPiBvbmUgb2YgdGhlIG1hbnkgZXhpc3RpbmcgcmVhbHRlayBkcml2ZXJzIHdlIGFscmVh
ZHkgaGF2ZS4gIFRoYXQgaXMgdGhlCj4gPiBzaW1wbGVyIHdheSwgYW5kIHRoZSBjb3JyZWN0IHdh
eSB0byBkbyB0aGlzLiAgV2UgZG9uJ3QgZG8gdGhpcyBieSBhZGRpbmcKPiA+IDIwMGsgbGluZXMs
IGFnYWluLgo+ID4gCj4gPiA+ID4gQnV0IGJldHRlciB5ZXQsIHdoeSBub3QgYWRkIHByb3BlciBz
dXBwb3J0IGZvciB0aGlzIGhhcmR3YXJlIGFuZCBub3QgdXNlCj4gPiA+ID4gYSBzdGFnaW5nIGRy
aXZlcj8KPiA+ID4gCj4gPiA+IFJlYWx0ZWsgcGxhbnMgdG8gYWRkIHRoZSBzdXBwb3J0IGluIDIw
MjAsIGlmIGV2ZXJ5dGhpbmcgZ29lcyB3ZWxsLgo+ID4gCj4gPiBEZXZpY2UgImdvZXMgd2VsbCIg
cGxlYXNlLiAgQW5kIHdoZW4gaW4gMjAyMD8gIEFuZCB3aHkgMjAyMD8gIFdoeSBub3QKPiA+IDIw
MjI/ICAyMDI0Pwo+ID4gCj4gPiA+IE1lYW53aGlsZSwgbWFueSB1c2VycyBvZiBIUCBhbmQgTGVu
b3ZvIGxhcHRvcHMgYXJlIHVzaW5nIG91dC1vZi10cmVlCj4gPiA+IGRyaXZlciwKPiA+ID4gc29t
ZSBvZiB0aGVtIGFyZSBzdHVjayB0byBvbGRlciBrZXJuZWxzIGJlY2F1c2UgdGhleSBkb27igJl0
IGtub3cgaG93IHRvIGZpeAo+ID4gPiB0aGUgZHJpdmVyLiBTbyBJIHN0cm9uZ2x5IHRoaW5rIGhh
dmluZyB0aGlzIGluIGtlcm5lbCBpcyBiZW5lZmljaWFsCj4gPiA+IHRvIG1hbnkKPiA+ID4gdXNl
cnMsIGV2ZW4gaXTigJlzIG9ubHkgZm9yIGEgeWVhci4KPiA+IAo+ID4gU28gd2hvIGlzIGdvaW5n
IHRvIGJlIHJlc3BvbnNpYmxlIGZvciAiZml4aW5nIHRoZSBkcml2ZXIiIGZvciBhbGwgbmV3Cj4g
PiBrZXJuZWwgYXBpIHVwZGF0ZXM/ICBJJ20gdGlyZWQgb2Ygc2VlaW5nIG5ldyBkZXZlbG9wZXJz
IGdldCBsb3N0IGluIHRoZQo+ID4gbWF6ZSBvZiB5ZXQtYW5vdGhlciByZWFsdGVrIHdpZmkgZHJp
dmVyLiAgV2UndmUgYmVlbiBwdXR0aW5nIHVwIHdpdGgKPiA+IHRoaXMgY3J1ZCBmb3IgeWVhcnMs
IGFuZCBpdCBoYXMgbm90IGdvdHRlbiBhbnkgYmV0dGVyIGlmIHlvdSB3YW50IHRvIGFkZAo+ID4g
YW5vdGhlciAyMDBrIGxpbmVzIGZvciBzb21lIHVua25vd24gYW1vdW50IG9mIHRpbWUgd2l0aCB0
aGUgaG9wZSB0aGF0IGEKPiA+IGRyaXZlciBtaWdodCBtYWdpY2FsbHkgc2hvdyB1cCBvbmUgZGF5
Lgo+IAo+IEkgaGF2ZSBubyBpZGVhIHdoeSB0aGV5IGhhdmVu4oCZdCBtYWRlIGV2ZXJ5dGhpbmcg
dXBzdHJlYW0sIGFuZCBJIGRvIGhvcGUgdGhleQo+IGRpZCBhIGJldHRlciBqb2IsIHNvIEkgZG9u
4oCZdCBuZWVkIHRvIGNsZWFudXAgdGhlaXIgZHJpdmVyIGFuZCBzZW5kIGl0Cj4gdXBzdHJlYW0g
OigKPiAKPiBTbyBiYXNpY2FsbHkgSSBjYW7igJl0IGFuc3dlciBhbnkgb2YgeW91ciBxdWVzdGlv
bnMuIEFzIExhcnJ5IHN1Z2dlc3RlZCwgdGhlaXIKPiBkcml2ZXIgc2hvdWxkIGJlIGhvc3RlZCBz
ZXBhcmF0ZWx5IGFuZCBtYXliZSBieSBkb3duc3RyZWFtIGRpc3Ryby4KCkFzIGl0IHNvdW5kcyBs
aWtlIHlvdSBoYXZlIHRhbGtlZCB0byB0aGVzZSBkZXZlbG9wZXJzIChpLmUuIHRoZXkgdG9sZAp5
b3UgMjAyMCksIHlvdSBkbyBoYXZlIGEgd2F5IHRvIGNvbW11bmljYXRlIG91ciBjb25jZXJucy4g
IFBsZWFzZSBkbwp0aGF0LCBvciBmZWVsIGZyZWUgdG8gc2VuZCBtZSB0aGVpciBjb250YWN0IGlu
Zm9ybWF0aW9uIGFuZCBJIHdpbGwgYmUKZ2xhZCB0byB0YWxrIHRvIHRoZW0gYWJvdXQgdGhpcy4K
CnRoYW5rcywKCmdyZWcgay1oCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
