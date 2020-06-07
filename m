Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17DA1F0FC9
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Jun 2020 22:38:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3646687D39;
	Sun,  7 Jun 2020 20:38:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3xk7uBykOVPj; Sun,  7 Jun 2020 20:38:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F6CF877E7;
	Sun,  7 Jun 2020 20:38:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4AC8A1BF422
 for <devel@linuxdriverproject.org>; Sun,  7 Jun 2020 20:37:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 46AE18639E
 for <devel@linuxdriverproject.org>; Sun,  7 Jun 2020 20:37:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uZ1C-DIDZson for <devel@linuxdriverproject.org>;
 Sun,  7 Jun 2020 20:37:58 +0000 (UTC)
X-Greylist: delayed 00:08:15 by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 50AC48639B
 for <devel@driverdev.osuosl.org>; Sun,  7 Jun 2020 20:37:58 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id l17so1578441qki.9
 for <devel@driverdev.osuosl.org>; Sun, 07 Jun 2020 13:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=Lz6rtZK9cjNPAtEwtLuwX/TSYzMGfXgJilYQqWDsi+k=;
 b=qoEfppc4l1T7Tnteea4ezpFwHMv4wHuEtUnWK1i2WOujZ0/uUUZEV5JDjWhOQm0HM5
 lmadO2e2RzPCpHob2PJQCUv8pduTvChQW5AB7tJolmxF+HYaMF+dYSYpllfmikA7wfWx
 fO/vgHjOzLtTDAIj+9bg7i5F7L5/5012scP4UNidpfkLffOv9AlAuiMjUjHrD34hjeCj
 0N59QLDrFIzqpCN8KC4XDuD6Vsby4PBF3VyR7YVUnc+hv3i0x2J8nvxGZGjxFSH7r+fu
 ODBQnt0VqGo9ici5Mry9hDofKgpGRmJiWdat8GvmeLh0/1VHA81xYDIbIqtJlzcsXRzE
 MAaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=Lz6rtZK9cjNPAtEwtLuwX/TSYzMGfXgJilYQqWDsi+k=;
 b=CmaGsIK1tjChSqbvnlltg/R8WFNQER9wFq4MpGaqd1L8SENHBP3H2HbFiCttIcKujU
 Xp8reMXGkV/VC65jQCWFjXhTh3htVezCWOW8S7hDbr8gv7TF+y31Jo4cOjEzMbv+kct+
 YAThmfWDRJiQ8JFm6uWTtQT5NaWhsTgTlzpnFVjaivtnEPHPvQku8+K3HsFgCs22UcCJ
 P/0bED33UqMyz7hANr6oN0mCxE8gtG7hGED0cruhDhj5GGZGCRrUG+7ZVJffBfwrQWal
 jUbIjOB8OmS+dgXYfP5G85uTVJfXy6rwDtg2p8RY3gyaV/y2btVyuWEvtD9lxsIfIfTH
 PNIA==
X-Gm-Message-State: AOAM5324x5IiU7JhU5G++hqgbVOBZgFJ9J+scla6CTRZW1ZR7Uaj3kES
 8RN9rPiTHsCkjX+QOscgtXg3mmYG888DQQ==
X-Google-Smtp-Source: ABdhPJxBY2kuRju1y7Y4Wso16zjhQCkYP7wBN9y8dzrRiSnIbCCe0LSgRuYomUlAn2H++WcfunFvTA==
X-Received: by 2002:a37:a504:: with SMTP id o4mr19036370qke.245.1591561782070; 
 Sun, 07 Jun 2020 13:29:42 -0700 (PDT)
Received: from skullcanyon
 (marriott-chateau-champlain-montreal.sites.intello.com. [66.171.169.34])
 by smtp.gmail.com with ESMTPSA id z4sm5237262qkj.131.2020.06.07.13.29.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 13:29:41 -0700 (PDT)
Message-ID: <3b1150a327aa1e6810b153a4ba1fe32cf6c98f45.camel@ndufresne.ca>
Subject: Re: [PATCH 0/3] media: uapi: cedrus: Fix decoding interlaced H264
 content
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Jernej Skrabec
 <jernej.skrabec@siol.net>
Date: Sun, 07 Jun 2020 16:29:40 -0400
In-Reply-To: <572f23d1945a685bf899e96de147454f31674ae1.camel@ndufresne.ca>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
 <CAAEAJfDFMzMkDkN7zzNvkwsmYzgQPNGkP=dhW7neycYYRBJzHA@mail.gmail.com>
 <572f23d1945a685bf899e96de147454f31674ae1.camel@ndufresne.ca>
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
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
Cc: devel@driverdev.osuosl.org, Jonas Karlman <jonas@kwiboo.se>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGUgZGltYW5jaGUgMDcganVpbiAyMDIwIMOgIDE2OjIxIC0wNDAwLCBOaWNvbGFzIER1ZnJlc25l
IGEgw6ljcml0IDoKPiBMZSBzYW1lZGkgMDYganVpbiAyMDIwIMOgIDA5OjQ2IC0wMzAwLCBFemVx
dWllbCBHYXJjaWEgYSDDqWNyaXQgOgo+ID4gSGkgSmVybmVqLAo+ID4gCj4gPiBPbiBUaHUsIDQg
SnVuIDIwMjAgYXQgMTU6NTUsIEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5l
dD4gd3JvdGU6Cj4gPiA+IEN1cnJlbnRseSBIMjY0IGludGVybGFjZWQgY29udGVudCBpdCdzIG5v
dCBwcm9wZXJseSBkZWNvZGVkIG9uIENlZHJ1cy4KPiA+ID4gVGhlcmUgYXJlIHR3byByZWFzb25z
IGZvciB0aGlzOgo+ID4gPiAxLiBzbGljZSBwYXJhbWV0ZXJzIGNvbnRyb2wgZG9lc24ndCBwcm92
aWRlIGVub3VnaCBpbmZvcm1hdGlvbgo+ID4gPiAyLiBidWcgaW4gZnJhbWUgbGlzdCBjb25zdHJ1
Y3Rpb24gaW4gQ2VkcnVzIGRyaXZlcgo+ID4gPiAKPiA+ID4gQXMgZGVzY3JpYmVkIGluIGNvbW1p
dCBtZXNzYWdlIGluIHBhdGNoIDEsIHJlZmVyZW5jZXMgc3RvcmVkIGluCj4gPiA+IHJlZmVyZW5j
ZSBsaXN0cyBzaG91bGQgdGVsbCBpZiByZWZlcmVuY2UgdGFyZ2V0cyB0b3Agb3IgYm90dG9tIGZp
ZWxkLgo+ID4gPiBIb3dldmVyLCB0aGlzIGluZm9ybWF0aW9uIGlzIGN1cnJlbnRseSBub3QgcHJv
dmlkZWQuIFBhdGNoIDEgYWRkcwo+ID4gPiBpdCBpbiBmb3JtIG9mIGZsYWdzIHdoaWNoIGFyZSBz
ZXQgZm9yIGVhY2ggcmVmZXJlbmNlLiBQYXRjaCAyIHRoZW4KPiA+ID4gdXNlcyB0aG9zZSBmbGFn
cyBpbiBDZWRydXMgZHJpdmVyLgo+ID4gPiAKPiA+ID4gRnJhbWUgbGlzdCBjb25zdHJ1Y3Rpb24g
aXMgZml4ZWQgaW4gcGF0Y2ggMy4KPiA+ID4gCj4gPiA+IFRoaXMgc29sdXRpb24gd2FzIGV4dGVu
c2l2ZWx5IHRlc3RlZCB1c2luZyBLb2RpIG9uIExpYnJlRUxFQyB3aXRoIEE2NCwKPiA+ID4gSDMs
IEg1IGFuZCBINiBTb0NzIGluIHNsaWdodGx5IGRpZmZlcmVudCBmb3JtIChmbGFncyB3ZXJlIHRy
YW5zbWl0dGVkCj4gPiA+IGluIE1TQiBiaXRzIGluIGluZGV4KS4KPiA+ID4gCj4gPiAKPiA+IFNv
LCBpZiBJIHVuZGVyc3RhbmQgY29ycmVjdGx5IHRoZSBmaWVsZCBuZWVkcyB0byBiZSBwYXNzZWQg
cGVyLXJlZmVyZW5jZSwKPiA+IGFuZCB0aGUgY3VycmVudCBwZXItRFBCIGVudHJ5IGlzIG5vdCBn
b29kPwo+IAo+IEZvciBpbnRlcmxhY2VkIGNvbnRlbnQgd2UgcmVmZXJlbmNlIGZpZWxkcyBzZXBh
cmF0ZWx5LiBUaGF0J3MgdGhlCj4gcmVhc29uIHRoZXJlIGlzIDMyIGVudHJpZXMgaW4gbDAvbDEu
IFRob3VnaCwgYXMgd2UgZGVjb2RlIGJvdGggZmllbGRzCj4gaW4gdGhlIHNhbWUgYnVmZmVyIChp
bnRlcmxlYXZlZCksIHRoZSBEUEIgaW5kaWNlIGlzIG5vdCBzdWZmaWNpZW50IHRvCj4gaW5mb3Jt
IHRoZSBkZWNvZGVyIHdoYXQgd2UgYXJlIHJlZmVyZW5jaW5nLiBVbmRlcnN0YW5kIHRoYXQgYSB0
b3AgZmllbGQKPiBjYW4gYmUgdXNlZCB0byBkZWNvZGUgdGhlIG5leHQgYm90dG9tIGZpZWxkLiBU
aGlzIGV2ZW4gbWFrZSBzZW5zZSBhcwo+IHRoZXkgYXJlIGNsb3NlciBvbiB0aGUgY2FwdHVyZSB0
aW1lbGluZS4gVGhpcyBjb3ZlcnMgc2xpY2UgYmFzZWQKPiBkZWNvZGVycy4KPiAKPiBUaGUgZmxh
Z3MgdG8gaW5kaWNhdGUgcHJlc2VuY2Ugb2YgdG9wL2JvdHRvbSBmaWVsZHMgaW4gRFBCIGFycmF5
IHNlZW1zCj4gb25seSB1c2VmdWwgdG8gZnJhbWUgYmFzZSBkZWNvZGVycy4gVGhpcyBpcyBzbyB0
aGF0IGRlY29kZXIgY2FuIGF2b2lkCj4gdXNpbmcgbG9zdCBmaWVsZHMgd2hlbiBjb25zdHJ1Y3Rp
bmcgaXQncyBvd24gbDAvbDEgaW50ZXJuYWxseS4KPiAKPiA+IElmIHlvdSBjb3VsZCBwb2ludCBh
dCB0aGUgdXNlcnNwYWNlIGNvZGUgZm9yIHRoaXMsIGl0IHdvdWxkIGJlIGludGVyZXN0aW5nCj4g
PiB0byB0YWtlIGEgbG9vay4KPiA+IAo+ID4gPiBOb3RlOiBJJ20gbm90IDEwMCUgc3VyZSBpZiBm
bGFncyBmb3IgYm90aCwgdG9wIGFuZCBib3R0b20gZmllbGRzIGFyZQo+ID4gPiBuZWVkZWQuIEFu
eSBpbnB1dCBoZXJlIHdvdWxkIGJlIHdlbGNvbWUuCj4gPiA+IAo+ID4gCj4gPiBHaXZlbiBlbnVt
IHY0bDJfZmllbGQgaXMgYWxyZWFkeSBwYXJ0IG9mIHRoZSB1QVBJLCBwZXJoYXBzIGl0IG1ha2Vz
Cj4gPiBzZW5zZSB0byBqdXN0IHJldXNlIHRoYXQgZm9yIHRoZSBmaWVsZCB0eXBlPyBNYXliZSBp
dCdzIGFuIG92ZXJraWxsLAo+ID4gYnV0IGl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gcmV1c2UgdGhl
IGNvbmNlcHRzIGFuZCB0eXBlcyB0aGF0Cj4gPiBhbHJlYWR5IGV4aXN0Lgo+ID4gCj4gPiBXZSBj
YW4gc3RpbGwgYWRkIGEgcmVzZXJ2ZWQgZmllbGQgdG8gbWFrZSB0aGlzIG5ldyByZWZlcmVuY2Ug
dHlwZQo+ID4gZXh0ZW5zaXZlLgo+IAo+IEkgdGhpbmsgaXQncyBmaW5lIHRvIGNyZWF0ZSBuZXcg
ZmxhZyBmb3IgdGhpcywgYXMgeW91ciBzb2x1dGlvbiB3b3VsZAo+IHJlcXVpcmUgZXh0ZW5kaW5n
IGEgcmVmZXJlbmNlIHRvIDI0Yml0ICh0aGlzIHBhdGNoIGV4dGVuZCB0byAxNmJpdHMpLgo+IFRo
b3VnaCBpbmRlZWQsIHdlIGNvdWxkIGNvbWJpbmUgZnJhbWUgYW5kIFRPUCBhbmQgcmVzZXJ2ZSBt
b3JlIGJpdHMgZm9yCj4gZnV0dXJlIHVzZS4KClNvcnJ5IGZvciB0aGUgb3ZlcnNpZ2h0LCB0aGUg
ZmxhZ3MgaXMgMTZiaXRzLCBzbyB3ZSBhbHJlYWR5IHVzZSAyNGJpdHMuCkJ1dCBsb29raW5nIGF0
ICJlbnVtIHY0bDJfZmllbGQiLCB3aGljaCBpcyBub3QgYSBmbGFnLCBzZWVtcyBsaWtlIGEKbWlz
cy1maXQuIEl0IHdvdWxkIGNyZWF0ZSBzdWNoIGEgY29uZnVzaW9uLCBhcyBWNEwyX0ZJRUxEX1NF
UV9UQi9CVCBjYW4Kc3RpbGwgYmUgdXNlZCB3aXRoIHRoaXMgaW50ZXJmYWNlLCBldmVuIHRob3Vn
aCB3ZSBzdGlsbCBuZWVkIHRvIHNheSBpZgp3ZSByZWZlcmVuY2UgVE9QIG9yIEJPVFRPTS4gT25s
eSBWNEwyX0ZJRUxEX0FMVEVSTkFURSBpcyBub3Qgc3VwcG9ydGVkLgpCdXQgYXMgeW91IGNhbiBz
ZWUsICJlbnVtIHY0bDJfZmllbCIgaXMgcmVhbGx5IG1lYW50IHRvIGRlc2NyaWJlIHRoZQpsYXlv
dXQgb2YgdGhlIGludGVybGVhdmVkIGZyYW1lIHJhdGhlciB0aGVuIHNpZ25hbGxpbmcgYSBmaWVs
ZApkaXJlY3RseS4KCj4gCj4gPiBUaGFua3MsCj4gPiBFemVxdWllbAo+ID4gCj4gPiAKPiA+ID4g
UGxlYXNlIHRha2UgYSBsb29rLgo+ID4gPiAKPiA+ID4gQmVzdCByZWdhcmRzLAo+ID4gPiBKZXJu
ZWoKPiA+ID4gCj4gPiA+IEplcm5laiBTa3JhYmVjICgzKToKPiA+ID4gICBtZWRpYTogdWFwaTog
aDI2NDogdXBkYXRlIHJlZmVyZW5jZSBsaXN0cwo+ID4gPiAgIG1lZGlhOiBjZWRydXM6IGgyNjQ6
IFByb3Blcmx5IGNvbmZpZ3VyZSByZWZlcmVuY2UgZmllbGQKPiA+ID4gICBtZWRpYTogY2VkcnVz
OiBoMjY0OiBGaXggZnJhbWUgbGlzdCBjb25zdHJ1Y3Rpb24KPiA+ID4gCj4gPiA+ICAuLi4vbWVk
aWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QgICAgICAgICAgICAgfCA0MCArKysrKysrKysrKysr
KysrKystCj4gPiA+ICAuLi4vc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQu
YyAgfCAyNyArKysrKysrLS0tLS0tCj4gPiA+ICBpbmNsdWRlL21lZGlhL2gyNjQtY3RybHMuaCAg
ICAgICAgICAgICAgICAgICAgfCAxMiArKysrKy0KPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNjIg
aW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiAtLQo+ID4gPiAyLjI3
LjAKPiA+ID4gCj4gPiA+IAo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+ID4gPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+ID4gPiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+ID4gaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
