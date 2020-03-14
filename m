Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1E1185566
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Mar 2020 11:43:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D93987A55;
	Sat, 14 Mar 2020 10:43:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z5UnUxsrWgab; Sat, 14 Mar 2020 10:43:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7FF3487A4E;
	Sat, 14 Mar 2020 10:43:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D5461BF422
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 10:43:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 165FC88281
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 10:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DPCCLVueYUjy
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 10:43:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 41F2A88235
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 10:43:03 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id d62so12318399oia.11
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 03:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OL2srHMZr6Ehgdj3LxhdhVlrRYY4WZD0vgnp6hnEn7g=;
 b=YMIgtrSN0HUJ5cdChz9KGxfG7xLHZn+9rKKl7+aqvSEGRRexFua6ps1yTbPH7V1+yo
 4O+bV0sdTvVmn3nJ/84vE51bNYRbvxLcJRWBXU3LfXePaLraQyrbdKmEMyPCkEnKEodv
 0wsI/zzv4MQlwzAgXPKCdza4UH8Ua1waX/7ZZnRxBoHKSSb3YsYv0sGyciIy/raH0sK2
 2rlBly+vHL5ckOlzFvkSFx98XEkAv7CuGTfXXs+B6dFNQqtufW2LDOooFKyDRogevCwd
 jDNFDZQ1IXbQToF3sb4qBbNofTVop/levtc3V0f+G2p5grMZeXdFXIk3rlFoY1RbAsOF
 fXhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OL2srHMZr6Ehgdj3LxhdhVlrRYY4WZD0vgnp6hnEn7g=;
 b=Hg/jnZ1oIi2lokchaYkwdjt922PHUE2BKJpfKyc2qRYnS69TKmU9Ye05TYL7ACp46q
 BG0d2/ZgG8dnN8RnnDMfq+yo2trFIuyGXdabohCnS9WkTcW2T/yBQwaycNTtcZbktmuI
 oBe15/WONDc/MHHqyHOBn5MRmh7cQm5RMdR8hNutefzHW64xWRf1E1uqipI8QTs9iQQk
 TbfS0XevFV7pxOYGXKaT7xLvqo3Kq/JpSALohNCjTUe9P0h9MO/adTRbEPYCXZuLBzqL
 8f7EuxldUyAXJni6cX53ysI55w3a0RWruw3u3PyaljvMKuAJI7g4VZzgDiCuKayte/Ds
 Wb1Q==
X-Gm-Message-State: ANhLgQ0n8k6u0ZezhbsNjnTWgrhEkNVLzyPAKeADZSnHBlksMtIMbrvS
 Vw5v0lwQ1iG1ilV+Vcui8ONZw1WaTYoQds8Oa+A=
X-Google-Smtp-Source: ADFU+vszgMjl5M+6yUsGe37DfkAwkAlZIZNTepretwK41SmOgI95j1UCoVZLmeuMPAf4G3JRP/0r0fnMg2fkSYL7bcs=
X-Received: by 2002:aca:3386:: with SMTP id z128mr10635790oiz.40.1584182582330; 
 Sat, 14 Mar 2020 03:43:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
In-Reply-To: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 14 Mar 2020 11:42:51 +0100
Message-ID: <CAMhs-H_r_VTFBVAy1tgdxwdBF+=A1yhxhMU-cjPJ254PbZb=Mg@mail.gmail.com>
Subject: Re: [PATCH v4 0/6] staging: mt7621-pci: re-do reset boot process
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: ryder.lee@mediatek.com, Linus Walleij <linus.walleij@linaro.org>,
 driverdev-devel@linuxdriverproject.org, weijie.gao@mediatek.com,
 Greg Ungerer <gerg@kernel.org>, NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgpPbiBGcmksIE1hciAxMywgMjAyMCBhdCA5OjA5IFBNIFNlcmdpbyBQYXJhY3VlbGxvcwo8
c2VyZ2lvLnBhcmFjdWVsbG9zQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBTb21lIHRpbWUgYWdvIEdy
ZWcgVW5nZXJlciByZXBvcnRlZCBzb21lIHJhbmRvbSBoYW5ncyB1c2luZwo+IHRoZSBzdGFnaW5n
IG10NzYyMS1wY2kgZHJpdmVyOgo+Cj4gU2VlOgo+ICogaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL3BpcGVybWFpbC9kcml2ZXJkZXYtZGV2ZWwvMjAxOS1KdW5lLzEzNDk0
Ny5odG1sCj4KPiBUcnkgdG8gZml4IHRoYXQgaXMgdGhlIG1haW4gbW90aXZhdGlvbiBvZiB0aGlz
IHBhdGNoIHNlcmllcy4KPgo+IEFsc28gaW4gb3BlbndydCB0aGVyZSBpcyBhIGRyaXZlciBmb3Ig
bXQ3NjIxLXBjaSB3aGljaCBzZWVtcyB3YXMgcmV3cml0dGVuCj4gZnJvbSBzY3JhdGNoIChmb3Ig
a2VybmVsIDQuMTQpIGJ5IFJ5ZGVyIExlZSBhbmQgV2VpamllIEdhbyBmcm9tIG1lZGlhdGVrLgo+
IFRoZXJlIHRoZSBhcHByb2FjaCBmb3IgcmVzZXQgYXNzZXJ0LWRlYXNzZXJ0IHByb2Nlc3MgaXMg
dG8gc2V0IGFzICdncGlvJwo+IHRoZSBmdW5jdGlvbiBmb3IgYWxsIHRoZSAncGNpZScgZ3JvdXAg
Zm9yIHRoZSBwaW5jdHJsIGRyaXZlciBhbmQgdXNlIHRob3NlCj4gZ3BpbydzIGFzIGEgcmVzZXQg
Zm9yIHRoZSBlbmQgcG9pbnRzLiBUaGUgZHJpdmVyIEkgYW0gdGFsa2luZyBhYm91dCBpcyBzdGls
bAo+IHVzaW5nIGxlZ2FjeSBwY2kgYW5kIGxlZ2FjeSBncGlvIGtlcm5lbCBpbnRlcmZhY2VzLiBJ
TUhPLCB0aGUgY29ycmVjdCB0aGluZwo+IHRvIGRvIGlzIG1ha2UgdGhpcyBzdGFnaW5nIGRyaXZl
ciBwcm9wZXJseSBjbGVhbiBhbmQgZnVuY3Rpb25hbCBhbmQgcHV0IGl0Cj4gaW4gaXRzIGNvcnJl
Y3QgcGxhY2UgaW4gdGhlIG1haW5saW5lLgo+Cj4gU2VlOgo+ICogaHR0cHM6Ly9naXN0LmdpdGh1
Yi5jb20vZGVuZ3FmNi83YTllOWI0MDMyZDk5ZjFhOTFkZDkyNTZjOGE2NWMzNgo+Cj4gQmVjYXVz
ZSBvZiBhbGwgb2YgdGhpcyB0aGlzIHBhdGNoIHNlcmllcyB0cmllcyB0byBhdm9pZCByYW5kb20g
aGFuZ3Mgb2YgYm9vdAo+IHRyeWluZyB0byB1c2UgdGhlICdyZXNldC1ncGlvcycgYXBwcm9hY2gu
Cj4KPiBDaGFuZ2VzIGFyZSBiZWluZyB0ZXN0ZWQgYnkgb3BlbndydCBwZW9wbGUgYW5kIHNlZW1z
IHRvIHdvcmsuCj4KPiBIb3BlIHRoaXMgaGVscHMuCj4KPiBDaGFuZ2VzIGluIHY0Ogo+ICogTWFr
ZSB1c2Ugb2YgJ2Rldm1fZ3Bpb2RfZ2V0X2luZGV4X29wdGlvbmFsJyBpbnN0ZWFkIG9mICdkZXZt
X2dwaW9kX2dldF9pbmRleCcuCj4gKiBVc2UgJ2Rldl9lcnInIGluc3RlYWQgb2YgJ2Rldl9ub3Rp
Y2UnIGFuZCByZXR1cm4gRVJSX1BUUiBpZgo+ICdkZXZtX2dwaW9kX2dldF9pbmRleF9vcHRpb25h
bCcgZmFpbHMuCj4gKiBSZW5hbWUgcGVycyBkZWFseSBtYWNybyB0byBQRVJTVF9ERUxBWV9NUy4K
PiAqIEFkZCBuZXcgcGF0Y2ggNiB3aGljaCByZW1vdmVzIGZ1bmN0aW9uICdtdDc2MjFfcmVzZXRf
cG9ydCcgbm90IG5lZWRlZCBhbnltb3JlLgoKSXQgc2VlbXMgdGhpcyBzZXJpZXMgd29yayBidXQg
ZHVlIHRvIGFuIHVua25vdyBidWcgc2V0IC8gY2xlYXIgZ3BpbwpyZWdpc3RlcnMgYXJlIG5vdCBw
cm9wZXJseSB3b3JraW5nLgpTbyBtYXliZSB0aGlzIHBhdGNoIGlzIGFsc28gbmVjZXNzYXJ5Ogpo
dHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1bGwvMjc5OC9jb21taXRzLzgyM2Q0
MWUyOGI0ZTE1NzM0NTYwNTA4YjI5ZGY3MjZiMTZjNTFkYWIKClNob3VsZCB0aGlzIHBhdGNoIGJl
IGFsc28gcHJvcGVybHkgYWRkZWQgdG8gdGhlIHRyZWU/IEFkZGVkIExpbnVzCldhbGxlaWogYW5k
IFJlbsOpIHZhbiBEb3JzdCBpbiBvcmRlciB0byBnZXQgZmVlZGJhY2sgYWJvdXQgdGhpcyBpc3N1
ZS4KCkkgYWxzbyBhZGQgYWxsIHRoZSB0aHJlYWQgdG8gZ2V0IG9wZW53cnQgd29ya2luZyB3aXRo
IDUuNCBpbiB3aGVyZQp0aGlzIHBhdGNoZXMgYW5kIHRoZSBncGlvIG9uZSBoYXZlIGJlZW4gYWRk
ZWQgKGp1c3QgaW4gY2FzZSBpcwppbnRlcmVzdGluZyBmb3IgYW55b25lKToKaHR0cHM6Ly9naXRo
dWIuY29tL29wZW53cnQvb3BlbndydC9wdWxsLzI3OTgKCkJlc3QgcmVnYXJkcywKICAgIFNlcmdp
byBQYXJhY3VlbGxvcwo+Cj4gQ2hhbmdlcyBpbiB2MzoKPiAqIEF2b2lkIHRvIGZhaWwgaWYgZ3Bp
byBkZXNjcmlwdG9yIGZhaWxzIG9uIGdldC4KPiAqIHJlLWRvIFBBVENIIDEgY29tbWl0IG1lc3Nh
Z2UuCj4gKiBUYWtlIGludG8gYWNjb3VudCBncGlvIGxvdyBwb2xhcml0eSBvbiByZXF1ZXN0IGFu
ZCBhc3NlcnQgYW5kIGRlYXNzZXJ0Lgo+ICogUmV2aWV3IGVycm9yIHBhdGggb2YgZHJpdmVyIHRv
IHByb3Blcmx5IHJlbGVhc2UgZ3BpbydzIHJlc291cmNlcy4KPgo+IENoYW5nZXMgaW4gdjI6Cj4g
KiByZXN0b3JlIGNvbmZpZ3VyYXRpb24gZm9yIHBlcnMgbW9kZSB0byBHUElPLgo+ICogQXZvaWQg
dG8gcmVhZCBGVFNfTlVNIHJlZ2lzdGVyIGluIHJlc2V0IHN0YXRlLgo+ICogUmVsZWFzZSBncGlv
J3MgcGF0Y2ggYWRkZWQKPgo+IEJlc3QgcmVnYXJkcywKPiAgICAgU2VyZ2lvIFBhcmFjdWVsbG9z
Cj4KPgo+IFNlcmdpbyBQYXJhY3VlbGxvcyAoNik6Cj4gICBzdGFnaW5nOiBtdDc2MjEtcGNpOiB1
c2UgZ3Bpb3MgZm9yIHByb3Blcmx5IHJlc2V0Cj4gICBzdGFnaW5nOiBtdDc2MjEtcGNpOiBjaGFu
Z2UgdmFsdWUgZm9yICdQRVJTVF9ERUxBWV9NUycKPiAgIHN0YWdpbmc6IG10NzYyMS1kdHM6IG1h
a2UgdXNlIG9mICdyZXNldC1ncGlvcycgcHJvcGVydHkgZm9yIHBjaQo+ICAgc3RhZ2luZzogbXQ3
NjIxLXBjaTogYmluZGluZ3M6IHVwZGF0ZSBkb2MgYWNjb3JkbHkgdG8gbGFzdCBjaGFuZ2VzCj4g
ICBzdGFnaW5nOiBtdDc2MjEtcGNpOiByZWxlYXNlIGdwaW9zIGFmdGVyIHBjaSBpbml0aWFsaXph
dGlvbgo+ICAgc3RhZ2luZzogbXQ3NjIxLXBjaTogZGVsZXRlIG5vIG1vcmUgbmVlZGVkICdtdDc2
MjFfcmVzZXRfcG9ydCcKPgo+ICBkcml2ZXJzL3N0YWdpbmcvbXQ3NjIxLWR0cy9tdDc2MjEuZHRz
aSAgICAgICAgfCAgMTEgKy0KPiAgLi4uL210NzYyMS1wY2kvbWVkaWF0ZWssbXQ3NjIxLXBjaS50
eHQgICAgICAgIHwgICA3ICstCj4gIGRyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3BjaS1tdDc2
MjEuYyAgICAgICB8IDEyMiArKysrKysrKysrLS0tLS0tLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA4
MiBpbnNlcnRpb25zKCspLCA1OCBkZWxldGlvbnMoLSkKPgo+IC0tCj4gMi4yNS4xCj4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
