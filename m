Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E411F505
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 15:06:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BBEDE86E15;
	Wed, 15 May 2019 13:06:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wELKoj93arQr; Wed, 15 May 2019 13:06:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA5978608B;
	Wed, 15 May 2019 13:06:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CFFE11BF2C0
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 13:06:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CCAAF87D89
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 13:06:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JpWC8nkIlT3w for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 13:06:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E712D87CE1
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 13:06:51 +0000 (UTC)
Received: from mail-pg1-f199.google.com ([209.85.215.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hQtcP-0006fA-7O
 for devel@driverdev.osuosl.org; Wed, 15 May 2019 13:06:49 +0000
Received: by mail-pg1-f199.google.com with SMTP id e20so1829810pgm.16
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 06:06:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=b+v1+ZH7bfJgPvcJJLIMxLKe7U6ykNODw87a1WEv3H0=;
 b=GAJ56vxNdFLBIx/y48pYsYb/OtQ8fn+ZkZO+bpXv3TrU4L9rAc8VSWL4YThPuFzlsT
 KLbXfLl4dnV0ZBEh0cOUrTuV1+I3eaCsWMB6Z266ai6Kk9WPXfWIT3R9dZt6ygJHU13j
 1s2icHEWtVQV88lvRUGCTYXSPqj5RL8isYqjM4u8LeYlRRMwGwCAFLdqwQ0n5DT0OTKN
 PysqsMF7okiZgdpiiR9NjVfyr6+o71l9jACEkU6ZD2ImuKRdIKSnTOJqP8v+ogpY2w1K
 OXBDHtmOIoUdUcaRdON4gk4NLEk5tc30zjFoHgw8NPqWsYE2JZ49zOzYI9jtPn6riREk
 bwiw==
X-Gm-Message-State: APjAAAUcT+zB4eNE/Hhoi4Gv24nUu2nDenoF7F8M3hz3CFH5r3HlqTFa
 zQB8gP3ls05x/Q0tdKnqOE93MpVBTrhUa2oaEdxtEns1VtrpQoMOJrr6bvXnLxlBj2fBOmI+N0x
 a5hoZD2nCaXlBOZj/2XJPbMUGUt7ES9xCVRSMq/I=
X-Received: by 2002:a63:a08:: with SMTP id 8mr43468712pgk.46.1557925607630;
 Wed, 15 May 2019 06:06:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwJFexLP2zSmm/iUBvGJGsaJCiEp7WyO3ZYTOn/y7t+cMmaPFBnMblW+CcRKRX93p5aPbAfOw==
X-Received: by 2002:a63:a08:: with SMTP id 8mr43468675pgk.46.1557925607234;
 Wed, 15 May 2019 06:06:47 -0700 (PDT)
Received: from 2001-b011-380f-14b9-2dec-a462-2693-8ecd.dynamic-ip6.hinet.net
 (2001-b011-380f-14b9-2dec-a462-2693-8ecd.dynamic-ip6.hinet.net.
 [2001:b011:380f:14b9:2dec:a462:2693:8ecd])
 by smtp.gmail.com with ESMTPSA id v40sm2515992pgn.17.2019.05.15.06.06.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 06:06:46 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Subject: Re: [PATCH] staging: Add rtl8821ce PCIe WiFi driver
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20190515123319.GA435@kroah.com>
Date: Wed, 15 May 2019 21:06:44 +0800
Message-Id: <63833AA2-AC8B-4EEA-AF36-EF2A9BFD4F9F@canonical.com>
References: <20190515112401.15373-1-kai.heng.feng@canonical.com>
 <20190515114022.GA18824@kroah.com>
 <6D5557B8-8140-48A8-BED7-9587936902D8@canonical.com>
 <20190515123319.GA435@kroah.com>
To: Greg KH <gregkh@linuxfoundation.org>
X-Mailer: Apple Mail (2.3445.104.8)
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

YXQgMjA6MzMsIEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToKCj4g
T24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMDc6NTQ6NThQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3
cm90ZToKPj4gYXQgMTk6NDAsIEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3
cm90ZToKPj4KPj4+IE9uIFdlZCwgTWF5IDE1LCAyMDE5IGF0IDA3OjI0OjAxUE0gKzA4MDAsIEth
aS1IZW5nIEZlbmcgd3JvdGU6Cj4+Pj4gVGhlIHJ0bDg4MjFjZSBjYW4gYmUgZm91bmQgb24gbWFu
eSBIUCBhbmQgTGVub3ZvIGxhcHRvcHMuCj4+Pj4gVXNlcnMgaGF2ZSBiZWVuIHVzaW5nIG91dC1v
Zi10cmVlIG1vZHVsZSBmb3IgYSB3aGlsZSwKPj4+Pgo+Pj4+IFRoZSBuZXcgUmVhbHRlayBXaUZp
IGRyaXZlciwgcnR3ODgsIHdpbGwgc3VwcG9ydCBydGw4ODIxY2UgaW4gMjAyMCBvcgo+Pj4+IGxh
dGVyLgo+Pj4KPj4+IFdoZXJlIGlzIHRoYXQgZHJpdmVyLCBhbmQgd2h5IGlzIGl0IGdvaW5nIHRv
IHRha2Ugc28gbG9uZyB0byBnZXQgbWVyZ2VkPwo+Pgo+PiBydHc4OCBpcyBpbiA1LjIgbm93LCBi
dXQgaXQgZG9lc27igJl0IHN1cHBvcnQgODgyMWNlIHlldC4KPj4KPj4gVGhleSBwbGFuIHRvIGFk
ZCB0aGUgc3VwcG9ydCBpbiAyMDIwLgo+Cj4gV2hvIGlzICJ0aGV5IiBhbmQgd2hhdCBpcyBuZWVk
ZWQgdG8gc3VwcG9ydCB0aGlzIGRldmljZSBhbmQgd2h5IHdhaXQgYQo+IGZ1bGwgeWVhcj8KCuKA
nFRoZXnigJ0gcmVmZXJzIHRvIFJlYWx0ZWsuCkl04oCZcyB0aGVpciBwbGFuIHNvIEkgY2Fu4oCZ
dCByZWFsbHkgYW5zd2VyIHRoYXQgb24gYmVoYWxmIG9mIFJlYWx0ZWsuCgo+Cj4+Pj4gMjk2IGZp
bGVzIGNoYW5nZWQsIDIwNjE2NiBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gVWdoLCB3aHkgZG8gd2Ug
a2VlcCBoYXZpbmcgdG8gYWRkIHRoZSB3aG9sZSBtZXNzIGZvciBldmVyeSBzaW5nbGUgb25lIG9m
Cj4+PiB0aGVzZSBkZXZpY2VzPwo+Pgo+PiBCZWNhdXNlIFJlYWx0ZWsgZGV2aWNlcyBhcmUgdW5m
b3J0dW5hdGVseSB1YmlxdWl0b3VzIHNvIHRoZSBzdXBwb3J0IGlzCj4+IGJldHRlciBjb21lIGZy
b20ga2VybmVsLgo+Cj4gVGhhdCdzIG5vdCB0aGUgaXNzdWUgaGVyZS4gIFRoZSBpc3N1ZSBpcyB0
aGF0IHdlIGtlZXAgYWRkaW5nIHRoZSBzYW1lCj4gaHVnZSBkcml2ZXIgZmlsZXMgdG8gdGhlIGtl
cm5lbCB0cmVlLCBvdmVyIGFuZCBvdmVyLCB3aXRoIG5vIHJlYWwgY2hhbmdlCj4gYXQgYWxsLiAg
V2UgaGF2ZSBzZWVuIGFsbW9zdCBhbGwgb2YgdGhlc2UgZmlsZXMgaW4gb3RoZXIgcmVhbHRlawo+
IGRyaXZlcnMsIHJpZ2h0PwoKWWVzLiBUaGV5IHVzZSBvbmUgc2luZ2xlIGRyaXZlciB0byBzdXBw
b3J0IGRpZmZlcmVudCBTb0NzLCBkaWZmZXJlbnQgIAphcmNoaXRlY3R1cmVzIGFuZCBldmVuIGRp
ZmZlcmVudCBPU2VzLgpUaGF04oCZcyB3aHkgaXTigJlzIGEgbWVzcy4KCj4gV2h5IG5vdCB1c2Ug
dGhlIG9uZXMgd2UgYWxyZWFkeSBoYXZlPwoKSXTigJlzIHZpcnR1YWxseSBpbXBvc3NpYmxlIGJl
Y2F1c2UgUmVhbHRla+KAmXMgbWVnYSB3aWZpIGRyaXZlciB1c2VzIHRvbnMgb2YgIAojaWZkZWZz
LCBvbmx5IG9uZSBjaGlwIGNhbiBiZSBzZWxlY3RlZCB0byBiZSBzdXBwb3J0ZWQgYXQgY29tcGls
ZSB0aW1lLgoKPgo+IEJ1dCBiZXR0ZXIgeWV0LCB3aHkgbm90IGFkZCBwcm9wZXIgc3VwcG9ydCBm
b3IgdGhpcyBoYXJkd2FyZSBhbmQgbm90IHVzZQo+IGEgc3RhZ2luZyBkcml2ZXI/CgpSZWFsdGVr
IHBsYW5zIHRvIGFkZCB0aGUgc3VwcG9ydCBpbiAyMDIwLCBpZiBldmVyeXRoaW5nIGdvZXMgd2Vs
bC4KTWVhbndoaWxlLCBtYW55IHVzZXJzIG9mIEhQIGFuZCBMZW5vdm8gbGFwdG9wcyBhcmUgdXNp
bmcgb3V0LW9mLXRyZWUgIApkcml2ZXIsIHNvbWUgb2YgdGhlbSBhcmUgc3R1Y2sgdG8gb2xkZXIg
a2VybmVscyBiZWNhdXNlIHRoZXkgZG9u4oCZdCBrbm93IGhvdyAgCnRvIGZpeCB0aGUgZHJpdmVy
LiBTbyBJIHN0cm9uZ2x5IHRoaW5rIGhhdmluZyB0aGlzIGluIGtlcm5lbCBpcyBiZW5lZmljaWFs
ICAKdG8gbWFueSB1c2VycywgZXZlbiBpdOKAmXMgb25seSBmb3IgYSB5ZWFyLgoKS2FpLUhlbmcK
Cj4KPiB0aGFua3MsCj4KPiBncmVnIGstaAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
