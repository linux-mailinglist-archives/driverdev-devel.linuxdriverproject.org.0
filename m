Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E731F810
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 17:58:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3298A86E69;
	Wed, 15 May 2019 15:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id snae748zQ3YC; Wed, 15 May 2019 15:58:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4181486E00;
	Wed, 15 May 2019 15:58:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D5D81BF5F4
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 15:58:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1A8DE2280D
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 15:58:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WGhvvXPH5FGf for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 15:58:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 0A68A226DB
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 15:58:46 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id l17so516736otq.1
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 08:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qHNpaDZ9T9s/rwoEWw89q2mPvkb2at7yYH9yRZc7MGE=;
 b=BjNJtAvVMsBA6RQu7Dzlu9zInVoqfOkwbmLfPlz63CZxfKHJFfDmhIqQW34A/4RZ/C
 AkM254blN5+VAhEoC9E4bLnU6p+cMFUbZJ5TIZnuqBzojN3l0IpC3VDl/KBiam0PRMv3
 d4awiJLew9Kqf/ufetc01p7yZ9qXUwzPL71K1AcTbeiYMzu7bSHoFgzGGIaexsbRQXt0
 Ny8bNFf/F6QZ2aSQK0MyRtiNDR9WgF+U5JqktGdS7pDygkpf3yNH0O1nQsbV5N2TQE6C
 Df79wRweK/EbN3TACdyagXhlCHSjXSr0MDNpaB+vdJwgoavz0FF0zJ3qZcL4VyRJlaA2
 AUPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qHNpaDZ9T9s/rwoEWw89q2mPvkb2at7yYH9yRZc7MGE=;
 b=XdBmoM6nNMGu07YBzvZk4qT6iRMS0mdi7IqLhl41q+4HyfEVfBk2Zr3v7jI5Vbmq1g
 wrVW+rxS3wetHrcFEFkkbzaq5nHIqvxiX6S2azMJMBtbDQhE+HcL0nDJ16QNSmigdLQA
 makok07JkGOl35AwGbw2iny0u3OWrckGlVFWBsPVIl6o7yS9xa6uVbPMMMxJgsGoDWcO
 TjaEE9YSCtLqV3jvFcpL00KCkhjgMC0xyO4NW4hQUCVgON6QnNRFBtTC8pUShmY3xVlP
 JtcclmtZOqHUx1ZOfIM4GGxFXGbO2VuFYSrCSvFlUe87gx9Pw5iiUQAQdHWsY2m01F0P
 AAQw==
X-Gm-Message-State: APjAAAVEvlXLdI5cHrXb4cdQ7lza06wZhglhjJ+y7AL31vSi1rhxQxLr
 V0pNH/iLzRgPE8DGaNOwOZ0=
X-Google-Smtp-Source: APXvYqyqFf43xvvae24OrE0kRunWOIwr3I4My90hiPN62HNd2F9EZIMqc5+wSglwEGnPHZ8n5qtdmQ==
X-Received: by 2002:a9d:7f8b:: with SMTP id t11mr24947805otp.110.1557935925326; 
 Wed, 15 May 2019 08:58:45 -0700 (PDT)
Received: from [192.168.1.112] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id k139sm864974oib.11.2019.05.15.08.58.44
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 08:58:44 -0700 (PDT)
Subject: Re: [PATCH] staging: Add rtl8821ce PCIe WiFi driver
To: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Greg KH <gregkh@linuxfoundation.org>
References: <20190515112401.15373-1-kai.heng.feng@canonical.com>
 <20190515114022.GA18824@kroah.com>
 <6D5557B8-8140-48A8-BED7-9587936902D8@canonical.com>
 <20190515123319.GA435@kroah.com>
 <63833AA2-AC8B-4EEA-AF36-EF2A9BFD4F9F@canonical.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <05cd96e6-cc60-7feb-7098-a0a902012ef0@lwfinger.net>
Date: Wed, 15 May 2019 10:58:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <63833AA2-AC8B-4EEA-AF36-EF2A9BFD4F9F@canonical.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gNS8xNS8xOSA4OjA2IEFNLCBLYWktSGVuZyBGZW5nIHdyb3RlOgo+IGF0IDIwOjMzLCBHcmVn
IEtIIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4gd3JvdGU6Cj4gCj4+IE9uIFdlZCwgTWF5
IDE1LCAyMDE5IGF0IDA3OjU0OjU4UE0gKzA4MDAsIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4+PiBh
dCAxOTo0MCwgR3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+Pj4K
Pj4+PiBPbiBXZWQsIE1heSAxNSwgMjAxOSBhdCAwNzoyNDowMVBNICswODAwLCBLYWktSGVuZyBG
ZW5nIHdyb3RlOgo+Pj4+PiBUaGUgcnRsODgyMWNlIGNhbiBiZSBmb3VuZCBvbiBtYW55IEhQIGFu
ZCBMZW5vdm8gbGFwdG9wcy4KPj4+Pj4gVXNlcnMgaGF2ZSBiZWVuIHVzaW5nIG91dC1vZi10cmVl
IG1vZHVsZSBmb3IgYSB3aGlsZSwKPj4+Pj4KPj4+Pj4gVGhlIG5ldyBSZWFsdGVrIFdpRmkgZHJp
dmVyLCBydHc4OCwgd2lsbCBzdXBwb3J0IHJ0bDg4MjFjZSBpbiAyMDIwIG9yCj4+Pj4+IGxhdGVy
Lgo+Pj4+Cj4+Pj4gV2hlcmUgaXMgdGhhdCBkcml2ZXIsIGFuZCB3aHkgaXMgaXQgZ29pbmcgdG8g
dGFrZSBzbyBsb25nIHRvIGdldCBtZXJnZWQ/Cj4+Pgo+Pj4gcnR3ODggaXMgaW4gNS4yIG5vdywg
YnV0IGl0IGRvZXNu4oCZdCBzdXBwb3J0IDg4MjFjZSB5ZXQuCj4+Pgo+Pj4gVGhleSBwbGFuIHRv
IGFkZCB0aGUgc3VwcG9ydCBpbiAyMDIwLgo+Pgo+PiBXaG8gaXMgInRoZXkiIGFuZCB3aGF0IGlz
IG5lZWRlZCB0byBzdXBwb3J0IHRoaXMgZGV2aWNlIGFuZCB3aHkgd2FpdCBhCj4+IGZ1bGwgeWVh
cj8KPiAKPiDigJxUaGV54oCdIHJlZmVycyB0byBSZWFsdGVrLgo+IEl04oCZcyB0aGVpciBwbGFu
IHNvIEkgY2Fu4oCZdCByZWFsbHkgYW5zd2VyIHRoYXQgb24gYmVoYWxmIG9mIFJlYWx0ZWsuCj4g
Cj4+Cj4+Pj4+IDI5NiBmaWxlcyBjaGFuZ2VkLCAyMDYxNjYgaW5zZXJ0aW9ucygrKQo+Pj4+Cj4+
Pj4gVWdoLCB3aHkgZG8gd2Uga2VlcCBoYXZpbmcgdG8gYWRkIHRoZSB3aG9sZSBtZXNzIGZvciBl
dmVyeSBzaW5nbGUgb25lIG9mCj4+Pj4gdGhlc2UgZGV2aWNlcz8KPj4+Cj4+PiBCZWNhdXNlIFJl
YWx0ZWsgZGV2aWNlcyBhcmUgdW5mb3J0dW5hdGVseSB1YmlxdWl0b3VzIHNvIHRoZSBzdXBwb3J0
IGlzCj4+PiBiZXR0ZXIgY29tZSBmcm9tIGtlcm5lbC4KPj4KPj4gVGhhdCdzIG5vdCB0aGUgaXNz
dWUgaGVyZS7CoCBUaGUgaXNzdWUgaXMgdGhhdCB3ZSBrZWVwIGFkZGluZyB0aGUgc2FtZQo+PiBo
dWdlIGRyaXZlciBmaWxlcyB0byB0aGUga2VybmVsIHRyZWUsIG92ZXIgYW5kIG92ZXIsIHdpdGgg
bm8gcmVhbCBjaGFuZ2UKPj4gYXQgYWxsLsKgIFdlIGhhdmUgc2VlbiBhbG1vc3QgYWxsIG9mIHRo
ZXNlIGZpbGVzIGluIG90aGVyIHJlYWx0ZWsKPj4gZHJpdmVycywgcmlnaHQ/Cj4gCj4gWWVzLiBU
aGV5IHVzZSBvbmUgc2luZ2xlIGRyaXZlciB0byBzdXBwb3J0IGRpZmZlcmVudCBTb0NzLCBkaWZm
ZXJlbnQgCj4gYXJjaGl0ZWN0dXJlcyBhbmQgZXZlbiBkaWZmZXJlbnQgT1Nlcy4KPiBUaGF04oCZ
cyB3aHkgaXTigJlzIGEgbWVzcy4KPiAKPj4gV2h5IG5vdCB1c2UgdGhlIG9uZXMgd2UgYWxyZWFk
eSBoYXZlPwo+IAo+IEl04oCZcyB2aXJ0dWFsbHkgaW1wb3NzaWJsZSBiZWNhdXNlIFJlYWx0ZWvi
gJlzIG1lZ2Egd2lmaSBkcml2ZXIgdXNlcyB0b25zIG9mIAo+ICNpZmRlZnMsIG9ubHkgb25lIGNo
aXAgY2FuIGJlIHNlbGVjdGVkIHRvIGJlIHN1cHBvcnRlZCBhdCBjb21waWxlIHRpbWUuCj4gCj4+
Cj4+IEJ1dCBiZXR0ZXIgeWV0LCB3aHkgbm90IGFkZCBwcm9wZXIgc3VwcG9ydCBmb3IgdGhpcyBo
YXJkd2FyZSBhbmQgbm90IHVzZQo+PiBhIHN0YWdpbmcgZHJpdmVyPwo+IAo+IFJlYWx0ZWsgcGxh
bnMgdG8gYWRkIHRoZSBzdXBwb3J0IGluIDIwMjAsIGlmIGV2ZXJ5dGhpbmcgZ29lcyB3ZWxsLgo+
IE1lYW53aGlsZSwgbWFueSB1c2VycyBvZiBIUCBhbmQgTGVub3ZvIGxhcHRvcHMgYXJlIHVzaW5n
IG91dC1vZi10cmVlIGRyaXZlciwgCj4gc29tZSBvZiB0aGVtIGFyZSBzdHVjayB0byBvbGRlciBr
ZXJuZWxzIGJlY2F1c2UgdGhleSBkb27igJl0IGtub3cgaG93IHRvIGZpeCB0aGUgCj4gZHJpdmVy
LiBTbyBJIHN0cm9uZ2x5IHRoaW5rIGhhdmluZyB0aGlzIGluIGtlcm5lbCBpcyBiZW5lZmljaWFs
IHRvIG1hbnkgdXNlcnMsIAo+IGV2ZW4gaXTigJlzIG9ubHkgZm9yIGEgeWVhci4KCldoeSBub3Qg
c29sdmUgdGhlIG9sZGVyIGtlcm5lbCBwcm9ibGVtIHRoZSB3YXkgSSBkbyB3aXRoIGRyaXZlcnMg
Zm9yIG1hbnkgClJlYWx0ZWsgZGV2aWNlcyBieSBjcmVhdGluZyBhIEdpdEh1YiBwcm9qZWN0IHdp
dGggdGhlIGtlcm5lbCBBUEkgY2hhbmdlcyAKcHJvcGVybHkgaGFuZGxlZCBieSBpZmRlZiBzdGF0
ZW1lbnRzPyBTZWUgdGhlIGx3ZmluZ2VyIHByb2plY3RzLiBUaGF0IHNvbHZlcyB0aGUgCnByb2Js
ZW0gb2YgdXNlcnMgd2l0aG91dCB0aGUgc2tpbGxzIG5lZWRlZCB0byBhZGp1c3QgdG8ga2VybmVs
IGNoYW5nZXMgd2l0aG91dCAKYnVyZGVuaW5nIHRoZSBlbnRpcmUgTGludXgga2VybmVsIHdpdGgg
dGhlc2UgYmxvYXRlZCBkcml2ZXJzLiBUaGVyZSBhcmUgbm8gCnJlYXNvbnMgdGhhdCBhIHdpZmkg
ZHJpdmVyIHNob3VsZCByZXF1aXJlIDIwMEsgbGluZXMgb2YgY29kZSEKCkxhcnJ5CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
