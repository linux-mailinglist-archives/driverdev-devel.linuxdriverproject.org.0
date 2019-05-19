Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2C822692
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 12:11:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70F54857B0;
	Sun, 19 May 2019 10:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YgKg9OUPTlcY; Sun, 19 May 2019 10:11:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 091DE857C5;
	Sun, 19 May 2019 10:11:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 831F31BF2EB
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 10:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7BA92857A4
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 10:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kcessZ4364aq for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 10:11:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4886283EF8
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 10:11:39 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id f12so5350362plt.8
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 03:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=3nXBmIh7/vFkJ4Tm2l4dtTScuooDKNvEF1jpFXfvwsc=;
 b=prPrOvv+nXzlq37dw9S0qdmegNQMY9mMQmGxVdosiPQlKvmQHZwzyNNaISmaHYISPL
 X+MnJT//NcQ21npBKca3WpAApauj41TAIoPfE8Yn1PKHUg9dRm+3twylCz1VcUhpj9AY
 TcBLFLBaEYI9qMBT/BXar0olvQLimM1sWud1T1/GfOO13CqMdqbUwAOF6akeVMHvShBG
 389EvyUF/W8ChWuTLWfKobvsEmxcppXOOvx5AbluLHXBrSxVUDsPtbnSGtuNc47AipJP
 LrRYAfePFA7lz8yV6lvkrbyhb38/XY3u7Pi4ItdkOP+VRZUORZzNtLVvNvBwQHUVJgbK
 jkPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=3nXBmIh7/vFkJ4Tm2l4dtTScuooDKNvEF1jpFXfvwsc=;
 b=nhJQ/LenHiBUXQtR9XF9quQJnfleIK34AIm4sYPVPfFllaxakBelbsiBj410S6ueoc
 OIKY/PQalNFtPDVG1Aukk+JEWrSWplUFy2ovBNPyUB89JELDHP1Mdg2vin+fM5wUsxz9
 J/0FsXcDO/e5NqJjrUd2/A6xm9rHTNPOzFh0Ax86CrZpCFsgxp+1sRUG1JApqzXgWaLp
 Wy75JgG8aI3eym/dAK3fXc6fPekd883lNBdMcoU9zy2juON4hxuM18bd7A71tnmbC0Ws
 uWvOyLJc2YIYWm4u2o1kuIdfA3gnGY8/moYcdK69CNAwQYelEsh6skoke6eux6/iaSZq
 ulcA==
X-Gm-Message-State: APjAAAUy5vgV0tdKl9U77QS8sXP+CmgxwVwcfwovr0ntpgq0ZSWzPYay
 emFuymRq5oLDCwoBy8h60tI=
X-Google-Smtp-Source: APXvYqxWU8wpTJXHBJp+Rkhz1pg1a0Wph4MXE9asWBt0UGUSJ69BeobNf1W2Emh5hysyAcKSb/AXeQ==
X-Received: by 2002:a17:902:204:: with SMTP id 4mr17066355plc.21.1558260698892; 
 Sun, 19 May 2019 03:11:38 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id c17sm9740268pfo.114.2019.05.19.03.11.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 03:11:38 -0700 (PDT)
Date: Sun, 19 May 2019 15:41:32 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Gao Xiang <hsiangkao@aol.com>, Gao Xiang <gaoxiang25@huawei.com>,
 Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-erofs@lists.ozlabs.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: Re: [Patch v2] staging: erofs: fix Warning Use BUG_ON instead of if
 condition followed by BUG
Message-ID: <20190519101132.GA22620@hari-Inspiron-1545>
References: <20190519093440.GA16838@hari-Inspiron-1545>
 <b32e6bca-60ec-2004-f1d6-16d2b8a478ae@aol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b32e6bca-60ec-2004-f1d6-16d2b8a478ae@aol.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU3VuLCBNYXkgMTksIDIwMTkgYXQgMDU6NTA6NDBQTSArMDgwMCwgR2FvIFhpYW5nIHdyb3Rl
Ogo+IAo+IAo+IE9uIDIwMTkvNS8xOSDkuIvljYg1OjM0LCBIYXJpcHJhc2FkIEtlbGFtIHdyb3Rl
Ogo+ID4gZml4IGJlbG93IHdhcm5pbmcgcmVwb3J0ZWQgYnkgIGNvY2NpY2hlY2sKPiA+IAo+ID4g
ZHJpdmVycy9zdGFnaW5nL2Vyb2ZzL3VuemlwX3BhZ2V2ZWMuaDo3NDoyLTU6IFdBUk5JTkc6IFVz
ZSBCVUdfT04KPiA+IGluc3RlYWQgb2YgaWYgY29uZGl0aW9uIGZvbGxvd2VkIGJ5IEJVRy4KPiA+
IAo+ID4gU2lnbmVkLW9mZi1ieTogSGFyaXByYXNhZCBLZWxhbSA8aGFyaXByYXNhZC5rZWxhbUBn
bWFpbC5jb20+Cj4gPiAtLS0tLQo+ID4gQ2hhbmdlcyBpbiB2MjoKPiA+ICAgLSByZXBsYWNlIEJV
R19PTiB3aXRoICBEQkdfQlVHT04KPiA+IC0tLS0tCj4gPiAtLS0KPiA+ICBkcml2ZXJzL3N0YWdp
bmcvZXJvZnMvdW56aXBfcGFnZXZlYy5oIHwgMyArLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvZXJvZnMvdW56aXBfcGFnZXZlYy5oIGIvZHJpdmVycy9zdGFnaW5nL2Vyb2ZzL3Vu
emlwX3BhZ2V2ZWMuaAo+ID4gaW5kZXggZjM3ZDhmZC4uNzkzOGVlMyAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvc3RhZ2luZy9lcm9mcy91bnppcF9wYWdldmVjLmgKPiA+ICsrKyBiL2RyaXZlcnMv
c3RhZ2luZy9lcm9mcy91bnppcF9wYWdldmVjLmgKPiA+IEBAIC03MCw4ICs3MCw3IEBAIHpfZXJv
ZnNfcGFnZXZlY19jdG9yX25leHRfcGFnZShzdHJ1Y3Qgel9lcm9mc19wYWdldmVjX2N0b3IgKmN0
b3IsCj4gPiAgCQkJcmV0dXJuIHRhZ3B0cl91bmZvbGRfcHRyKHQpOwo+ID4gIAl9Cj4gPiAgCj4g
Cj4gSSdkIGxpa2UgdG8gZGVsZXRlIHRoaXMgbGluZQo+IAo+ID4gLQlpZiAodW5saWtlbHkobnIg
Pj0gY3Rvci0+bnIpKQo+ID4gLQkJQlVHKCk7Cj4gPiArCURCR19CVUdPTihuciA+PSBjdG9yLT5u
cik7Cj4gPiAgCj4gCj4gYW5kIHRoaXMgbGluZS4uIEkgaGF2ZSBhbHJlYWR5IHNlbnQgYSBuZXcg
cGF0Y2ggYmFzZWQgb24geW91ciB2MSBwYXRjaCwKPiBjb3VsZCB5b3UgcGxlYXNlIGNoZWNrIGl0
IG91dCBpZiBpdCBpcyBhY2NlcHRhYmxlIGZvciB5b3U/IDopCj4gCj4gVGhhbmtzLAo+IEdhbyBY
aWFuZwoKSGkgR2FpIFhpYW5nLAoKVGhlIHBhdGNoIHdoaWNoIHlvdSBzZW50IGhhcyBhbGwgcmVx
dWlyZWQuIApUaGFua3MgZm9yIHRoZSAgcGF0Y2guIFdlIGNhbiBpZ25vcmUgdGhpcyB2MiBwYXRj
aC4KClRoYW5rcywKSGFyaXByYXNhZCBrCgoKCj4gPiAgCXJldHVybiBOVUxMOwo+ID4gIH0KPiA+
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
