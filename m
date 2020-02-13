Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D5715B5A9
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Feb 2020 01:07:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 53E2721539;
	Thu, 13 Feb 2020 00:07:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mOYOtGOfjgft; Thu, 13 Feb 2020 00:07:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3BBD8214E4;
	Thu, 13 Feb 2020 00:07:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A29061BF33C
 for <devel@linuxdriverproject.org>; Thu, 13 Feb 2020 00:07:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9FDBC85F32
 for <devel@linuxdriverproject.org>; Thu, 13 Feb 2020 00:07:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RIa7s-iVgSUc for <devel@linuxdriverproject.org>;
 Thu, 13 Feb 2020 00:06:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5DB6985F67
 for <devel@driverdev.osuosl.org>; Thu, 13 Feb 2020 00:06:59 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id y11so4523032wrt.6
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 16:06:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=O1BPoQAiHeJ08USRykHnfve8Vnu0iANnJABo4Mj2ZQI=;
 b=tj+mP1zAB0okAO0Qbox6Xr40Gl5RTa+LpO0tTucHh94zQmdcttrnjSmMPggZL7Omrb
 KMOQpssxKHuklM1GatXDJm/OIJ1Hj0hcl2w1gBsTG7XPXZrsUhXK0Qozxx4wLFVIiSuC
 U+oeBNUpHfdI+RxZg+rcxzbaus5JnNeWAUJaohS54mXtOJDT+jsI95qDeCvPsbQ0hEKY
 a2b6cXiLn7pWr58zqzByitCv3K7G02nmeNyZmTGT78Fs0zdIy2atCDnXto9ZTYIMWCQi
 nus08pk1xSiCZfN/FWJ/MF8z6qo5fIvCEmhg+mTxUFr5Q3faUkLvNnmsJy3REklo0F2T
 pyvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=O1BPoQAiHeJ08USRykHnfve8Vnu0iANnJABo4Mj2ZQI=;
 b=s5ug4lFQrXRZDZajfAoNzmJLwiES+lY9fZ+iflhGok0+WLpCcrh7qxvfBW2tlJGfia
 z0hzux3FrOYkCDOGo6nMAncsm5DEcDFeeUO6vcewDtaqMtupj8tcuXju2s4UwEBDjyXh
 Gh9LBmlB2updig5BI0axov8VLzYXpaN29K2sqiWx40ahsU5hFW3FAF/Z3e9DvSCiLdq3
 9azCUMAA2wVEh73gWmBro2w1efg3ks/ZbS6IqoQK0IvuMNfsIe33j/QmR0187uyZKf7R
 X7eeMxxIsdHPUsETWjWC3rd5GamQeEMEHImZ/XASPJszSpppUsIomkis91F6wgQCica5
 vMrw==
X-Gm-Message-State: APjAAAWOrdMEFCFsh6oa+fh6uJbG5c/0dgNgebqW+RaxwOpDrxUdAb/t
 IjGV+GaABVLPN+Xw7P/SNAo=
X-Google-Smtp-Source: APXvYqzDTIe/LANGqzA7FtUhatpdgNkWPN6BGhpgz26N4uJtntPDqrvFQ8Zm6hEdzXfBDuOlod1mDQ==
X-Received: by 2002:adf:ffc5:: with SMTP id x5mr18300916wrs.92.1581552417568; 
 Wed, 12 Feb 2020 16:06:57 -0800 (PST)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id z19sm504912wmi.43.2020.02.12.16.06.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 16:06:56 -0800 (PST)
Date: Thu, 13 Feb 2020 01:06:56 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20200213000656.hx5wdofkcpg7aoyo@pali>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali>
 <184209.1567120696@turing-police> <20190829233506.GT5281@sasha-vm>
 <20190830075647.wvhrx4asnkrfkkwk@pali>
 <20191016140353.4hrncxa5wkx47oau@pali>
 <20191016143113.GS31224@sasha-vm>
 <20191016160349.pwghlg566hh2o7id@pali>
 <20191016203317.GU31224@sasha-vm>
 <20191017075008.2uqgdimo3hrktj3i@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017075008.2uqgdimo3hrktj3i@pali>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8hCgpPbiBUaHVyc2RheSAxNyBPY3RvYmVyIDIwMTkgMDk6NTA6MDggUGFsaSBSb2jDoXIg
d3JvdGU6Cj4gT24gV2VkbmVzZGF5IDE2IE9jdG9iZXIgMjAxOSAxNjozMzoxNyBTYXNoYSBMZXZp
biB3cm90ZToKPiA+IE9uIFdlZCwgT2N0IDE2LCAyMDE5IGF0IDA2OjAzOjQ5UE0gKzAyMDAsIFBh
bGkgUm9ow6FyIHdyb3RlOgo+ID4gPiBPbiBXZWRuZXNkYXkgMTYgT2N0b2JlciAyMDE5IDEwOjMx
OjEzIFNhc2hhIExldmluIHdyb3RlOgo+ID4gPiA+IE9uIFdlZCwgT2N0IDE2LCAyMDE5IGF0IDA0
OjAzOjUzUE0gKzAyMDAsIFBhbGkgUm9ow6FyIHdyb3RlOgo+ID4gPiA+ID4gT24gRnJpZGF5IDMw
IEF1Z3VzdCAyMDE5IDA5OjU2OjQ3IFBhbGkgUm9ow6FyIHdyb3RlOgo+ID4gPiA+ID4gPiBPbiBU
aHVyc2RheSAyOSBBdWd1c3QgMjAxOSAxOTozNTowNiBTYXNoYSBMZXZpbiB3cm90ZToKPiA+ID4g
PiA+ID4gPiBXaXRoIHJlZ2FyZHMgdG8gbWlzc2luZyBzcGVjcy9kb2NzL3doYXRldmVyIC0gb3Vy
IG1haW4gY29uY2VybiB3aXRoIHRoaXMKPiA+ID4gPiA+ID4gPiByZWxlYXNlIHdhcyB0aGF0IHdl
IHdhbnQgZnVsbCBpbnRlcm9wZXJhYmlsaXR5LCB3aGljaCBpcyB3aHkgdGhlIHNwZWMKPiA+ID4g
PiA+ID4gPiB3YXMgbWFkZSBwdWJsaWMgYXMtaXMgd2l0aG91dCBtb2RpZmljYXRpb25zIGZyb20g
d2hhdCB3YXMgdXNlZAo+ID4gPiA+ID4gPiA+IGludGVybmFsbHkuIFRoZXJlJ3Mgbm8gInNlY3Jl
dCBzYXVjZSIgdGhhdCBNaWNyb3NvZnQgaXMgaGlkaW5nIGhlcmUuCj4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+IE9rLCBpZiBpdCB3YXMganVzdCBkcm9wIG9mICJjdXJyZW50IHZlcnNpb24iIG9mIGRv
Y3VtZW50YXRpb24gdGhlbiBpdAo+ID4gPiA+ID4gPiBtYWtlcyBzZW5zZS4KPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gPiBIb3cgYWJvdXQgd2UgZ2l2ZSB0aGlzIHNwZWMvY29kZSB0aW1lIHRvIGdl
dCBzb2FrZWQgYW5kIHJldmlld2VkIGZvciBhCj4gPiA+ID4gPiA+ID4gYml0LCBhbmQgaWYgZm9s
a3Mgc3RpbGwgZmVlbCAoaW4gYSBtb250aCBvciBzbz8pIHRoYXQgdGhlcmUgYXJlIG1pc3NpbmcK
PiA+ID4gPiA+ID4gPiBiaXRzIG9mIGluZm9ybWF0aW9uIHJlbGF0ZWQgdG8gZXhmYXQsIEknbGwg
YmUgaGFwcHkgdG8gZ28gYmFjayBhbmQgdHJ5Cj4gPiA+ID4gPiA+ID4gdG8gZ2V0IHRoZW0gb3V0
IGFzIHdlbGwuCj4gPiA+ID4gPgo+ID4gPiA+ID4gSGVsbG8gU2FzaGEhCj4gPiA+ID4gPgo+ID4g
PiA+ID4gTm93IG9uZSBtb250aCBwYXNzZWQsIHNvIGRvIHlvdSBoYXZlIHNvbWUgaW5mb3JtYXRp
b24gd2hlbiBtaXNzaW5nIHBhcnRzCj4gPiA+ID4gPiBvZiBkb2N1bWVudGF0aW9uIGxpa2UgVGV4
RkFUIHdvdWxkIGJlIHJlbGVhc2VkIHRvIHB1YmxpYz8KPiA+ID4gPiAKPiA+ID4gPiBTdXJlLCBJ
J2xsIHNlZSBpZiBJIGNhbiBnZXQgYW4gYXBwcm92YWwgdG8gb3BlbiBpdCB1cC4KPiA+ID4gCj4g
PiA+IE9rIQo+ID4gPiAKPiA+ID4gPiBDYW4gSSBhc3N1bWUgeW91IHdpbGwgYmUgaW1wbGVtZW50
aW5nIFRleEZBVCBzdXBwb3J0IG9uY2UgdGhlIHNwZWMgaXMKPiA+ID4gPiBhdmFpbGFibGU/Cj4g
PiA+IAo+ID4gPiBJIGNhbm5vdCBwcm9taXNlIHRoYXQgSSB3b3VsZCBpbXBsZW1lbnQgc29tZXRo
aW5nIHdoaWNoIEkgZG8gbm90IGtub3cKPiA+ID4gaG93IGlzIHdvcmtpbmcuLi4gSXQgZGVwZW5k
cyBvbiBob3cgY29tcGxpY2F0ZWQgVGV4RkFUIGlzIGFuZCBhbHNvIGhvdwo+ID4gPiBmdXR1cmUg
ZXhmYXQgc3VwcG9ydCBpbiBrZXJuZWwgd291bGQgbG9vayBsaWtlLgo+ID4gPiAKPiA+ID4gQnV0
IEknbSBpbnRlcmVzdGluZyBpbiBpbXBsZW1lbnRpbmcgaXQuCj4gPiAKPiA+IEl0IGxvb2tzIGxp
a2UgdGhlIHJlYXNvbiB0aGlzIHdhc24ndCBtYWRlIHB1YmxpYyBhbG9uZyB3aXRoIHRoZSBleEZB
VAo+ID4gc3BlYyBpcyB0aGF0IFRleEZBVCBpcyBwcmV0dHkgbXVjaCBkZWFkIC0gaXQncyBvbGQs
IHRoZXJlIGFyZSBubyB1c2Vycwo+ID4gd2UgYXJlIGF3YXJlIG9mLCBhbmQgZGlnZ2luZyBpdCBv
dXQgb2YgaXQncyBncmF2ZSB0byBtYWtlIGl0IHB1YmxpYyBpcwo+ID4gYWN0dWFsbHkgcXVpdGUg
dGhlIGhlYWRhY2hlLgo+ID4gCj4gPiBJcyB0aGlzIHNvbWV0aGluZyB5b3UgYWN0dWFsbHkgaGF2
ZSBhIG5lZWQgZm9yPyBhbiBlbnRpdHkgdGhhdCBoYXMgYQo+ID4gcmVxdWlyZW1lbnQgZm9yIFRl
eEZBVD8KPiAKPiBIaSEKPiAKPiBJIGRvIG5vdCBoYXZlIGRldmljZSB3aXRoIHJlcXVpcmVtZW50
cyBmb3IgVGV4RkFULiBUaGUgZmlyc3QgcmVhc29uIHdoeQo+IEkgd2FudGVkIHRvIHVzZSBUZXhG
QVQgd2FzIHRoYXQgaXQgaXQgdGhlIG9ubHkgd2F5IGhvdyB0byB1c2UgbW9yZSBGQVQKPiB0YWJs
ZXMgKGUuZy4gc2Vjb25kYXJ5IGZvciBiYWNrdXApIGFuZCBpbmZvcm1hdGlvbiBmb3IgdGhhdCBp
cyBtaXNzaW5nCj4gaW4gcmVsZWFzZWQgZXhGQVQgc3BlY2lmaWNhdGlvbi4gVGhpcyBjb3VsZCBi
cmluZyBiZXR0ZXIgZGF0YSByZWNvdmVyeS4KPiAKPiA+IEknZCB3b3VsZCByYXRoZXIgc3BlbmQg
bXkgdGltZSBlbHNld2hlcmUgdGhhbiBkaWdnaW5nIFRleEZBVCBvdXQgb2YgaXQncyBncmF2ZS4K
PiAKPiBPay4KPiAKPiBJIHdhcyBob3BpbmcgdGhhdCBpdCB3b3VsZCBiZSBwb3NzaWJsZSB0byBl
YXNpbHkgdXNlIHNlY29uZGFyeSBGQVQgdGFibGUKPiAoZnJvbSBUZXhGQVQgZXh0ZW5zaW9uKSBm
b3IgcmVkdW5kYW5jeSB3aXRob3V0IG5lZWQgdG8gaW1wbGVtZW50IGZ1bGwKPiBUZXhGQVQsIHdo
aWNoIGNvdWxkIGJlIGFsc28gYmFja3dhcmQgY29tcGF0aWJsZSB3aXRoIHN5c3RlbXMgd2hpY2gg
ZG8KPiBub3QgaW1wbGVtZW50IFRleEZBVCBleHRlbnNpb24gYXQgYWxsLiBTaW1pbGFybHkgbGlr
ZSB1c2luZyBGQVQzMiBkaXNrCj4gd2l0aCB0d28gRkFUIHRhYmxlcyBpcyBwb3NzaWJsZSBhbHNv
IG9uIHN5c3RlbSB3aGljaCB1c2UgZmlyc3QgRkFUCj4gdGFibGUuCgpCeSB0aGUgY2hhbmNlLCBp
cyB0aGVyZSBhbnkgcG9zc2liaWxpdHkgdG8gcmVsZWFzZSBUZXhGQVQgc3BlY2lmaWNhdGlvbj8K
VXNhZ2Ugb2YgbW9yZSBGQVQgdGFibGVzIChldmVuIGZvciBMaW51eCkgY291bGQgaGVscCB3aXRo
IGRhdGEgcmVjb3ZlcnkuCgo+ID4gSXMgdGhlcmUgYW55dGhpbmcgZWxzZSBpbiB0aGUgZXhGQVQg
c3BlYyB0aGF0IGlzIG1pc3NpbmcgKGFuZCBzb21lb25lCj4gPiBhY3R1YWxseSB3YW50cy91c2Vz
KT8KPiAKPiBDdXJyZW50bHkgSSBkbyBub3Qga25vdy4KCkkgZm91bmQgb25lIG1pc3NpbmcgdGhp
bmc6CgpJbiByZWxlYXNlZCBleEZBVCBzcGVjaWZpY2F0aW9uIGlzIG5vdCB3cml0dGVuIGhvdyBh
cmUgVW5pY29kZSBjb2RlCnBvaW50cyBhYm92ZSBVK0ZGRkYgcmVwcmVzZW50ZWQgaW4gZXhGQVQg
dXBjYXNlIHRhYmxlLiBOb3JtYWxseSBpbgpVVEYtMTYgYXJlIFVuaWNvZGUgY29kZSBwb2ludHMg
YWJvdmUgVStGRkZGIHJlcHJlc2VudGVkIGJ5IHN1cnJvZ2F0ZQpwYWlycyBidXQgY29tcHJlc3Np
b24gZm9ybWF0IG9mIGV4RkFUIHVwY2FzZSB0YWJsZSBpcyBub3QgY2xlYXIgaG93IHRvCmRvIGl0
IHRoZXJlLgoKQXJlIHlvdSBhYmxlIHRvIHNlbmQgcXVlc3Rpb24gYWJvdXQgdGhpcyBwcm9ibGVt
IHRvIHJlbGV2YW50IE1TIHBlb3BsZT8KCk5ldyBMaW51eCBpbXBsZW1lbnRhdGlvbiBvZiBleGZh
dCB3aGljaCBpcyB3YWl0aW5nIG9uIG1haWxpbmcgbGlzdCBqdXN0CmRvIG5vdCBzdXBwb3J0IFVu
aWNvZGUgY29kZSBwb2ludHMgYWJvdmUgVStGRkZGIGluIGV4RkFUIHVwY2FzZSB0YWJsZS4KCi0t
IApQYWxpIFJvaMOhcgpwYWxpLnJvaGFyQGdtYWlsLmNvbQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
