Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3631219828F
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 19:41:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D59287C88;
	Mon, 30 Mar 2020 17:41:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UPKIUme5nyVV; Mon, 30 Mar 2020 17:41:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C71BA87C25;
	Mon, 30 Mar 2020 17:41:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A01D1BF403
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 17:41:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 166C9861AF
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 17:41:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6BQqBFgA892M for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 17:41:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [216.205.24.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4A4AB8618F
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 17:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585590079;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YGHvH2P6nK7TQrcIUAsAOYU1x8zpv/Ba4jDsyhsFhTg=;
 b=a/7Fk0ikjbm/6KjZTk/VJSP3nggTohCjRg2YvMafzA9Jhg2vXn6Tq4/OnsC1pxGx3ycaej
 nUE1O/g3t2kMCQ794iKekbSF3PYOtU3AgBoOKGysor0uPlTxGWDAHEGuXqYmO1PSG0m0vl
 CfnauKtyQFTOalp8d77PoFI1maqEL20=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-109-vixzt7PyMZC7dnLS7w5LvQ-1; Mon, 30 Mar 2020 13:41:03 -0400
X-MC-Unique: vixzt7PyMZC7dnLS7w5LvQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2189B1B2C980;
 Mon, 30 Mar 2020 17:41:00 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E96E7CDBFF;
 Mon, 30 Mar 2020 17:40:54 +0000 (UTC)
Date: Mon, 30 Mar 2020 19:40:43 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: John Wyatt <jbwyatt4@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Replace udelay with
 preferred usleep_range
Message-ID: <20200330194043.56c79bb8@elisabeth>
In-Reply-To: <alpine.DEB.2.21.2003291235590.2990@hadrien>
References: <20200329092204.770405-1-jbwyatt4@gmail.com>
 <alpine.DEB.2.21.2003291127230.2990@hadrien>
 <2fccf96c3754e6319797a10856e438e023f734a7.camel@gmail.com>
 <alpine.DEB.2.21.2003291144460.2990@hadrien>
 <CAMS7mKBEhqFat8fWi=QiFwfLV9+skwi1hE-swg=XxU48zk=_tQ@mail.gmail.com>
 <alpine.DEB.2.21.2003291235590.2990@hadrien>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Julia Lawall <julia.lawall@inria.fr>,
 outreachy-kernel@googlegroups.com,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Soumyajit Deb <debsoumyajit100@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU3VuLCAyOSBNYXIgMjAyMCAxMjozNzoxOCArMDIwMCAoQ0VTVCkKSnVsaWEgTGF3YWxsIDxq
dWxpYS5sYXdhbGxAaW5yaWEuZnI+IHdyb3RlOgoKPiBPbiBTdW4sIDI5IE1hciAyMDIwLCBTb3Vt
eWFqaXQgRGViIHdyb3RlOgo+IAo+ID4gSSBoYWQgdGhlIHNhbWUgZG91YnQgdGhlIG90aGVyIGRh
eSBhYm91dCB0aGUgcmVwbGFjZW1lbnQgb2YgdWRlbGF5KCkgd2l0aAo+ID4gdXNsZWVwX3Jhbmdl
KCkuIFRoZSBjb3JyZXNwb25kaW5nIHJhbmdlIGZvciB0aGUgc2luZ2xlIGFyZ3VtZW50IHZhbHVl
IG9mCj4gPiB1ZGVsYXkoKSBpcyBxdWl0ZSBjb25mdXNpbmcgYXMgSSBjb3VsZG4ndCBkZWNpZGUg
dGhlIHJhbmdlLsKgQnV0IGFzIG11Y2ggYXMgSQo+ID4gbm90aWNlZCBjaGVja3BhdGNoLnBsIGdp
dmVzIHdhcm5pbmcgZm9yIHJlcGxhY2luZyB1ZGVsYXkoKSB3aXRoCj4gPiB1c2xlZXBfcmFuZ2Uo
KSBieSBjaGVja2luZyB0aGUgYXJndW1lbnQgdmFsdWUgb2YgdWRlbGF5KCkuIEluIHRoZQo+ID4g
ZG9jdW1lbnRhdGlvbiwgaXQgaXMgd3JpdHRlbiB1ZGVsYXkoKSBzaG91bGQgYmUgdXNlZCBmb3Ig
YSBzbGVlcCB0aW1lIG9mIGF0Cj4gPiBtb3N0IDEwIG1pY3Jvc2Vjb25kcyBidXQgYmV0d2VlbiAx
MCBtaWNyb3NlY29uZHMgYW5kIDIwIG1pbGxpc2Vjb25kcywKPiA+IHVzbGVlcF9yYW5nZSgpIHNo
b3VsZCBiZSB1c2VkLsKgCj4gPiBJIHRoaW5rIHRoZSByYW5nZSBpcyBjb2RlIHNwZWNpZmljIGFu
ZCB3aWxsIGRlcGVuZCBvbiB3aGF0IHJhbmdlIGlzCj4gPiBhY2NlcHRhYmxlIGFuZCBkb2Vzbid0
IGJyZWFrIHRoZSBjb2RlLgo+ID4gwqBQbGVhc2UgY29ycmVjdCBtZSBpZiBJIGFtIHdyb25nLiAg
Cj4gCj4gVGhlIHJhbmdlIGRlcGVuZHMgb24gdGhlIGFzc29jaWF0ZWQgaGFyZHdhcmUuCgpKb2hu
LCBieSB0aGUgd2F5LCBoZXJlIHlvdSBjb3VsZCBoYXZlIGNoZWNrZWQgdGhlIGRhdGFzaGVldCBv
ZiB0aGlzIExDRApjb250cm9sbGVyLiBJdCdzIGEgcGFpciBvZiB0aG9zZToKCWh0dHBzOi8vd3d3
LnNwYXJrZnVuLmNvbS9kYXRhc2hlZXRzL0xDRC9rczAxMDhiLnBkZgoKcmVzZXQgdGltZSBpcyAx
wrVzIG1pbmltdW0sIHdoaWNoIGlzIHRoZSBvbmx5IGFjdHVhbCBjb25zdHJhaW50IGhlcmUuClRo
ZSByaXNlIHRpbWUgc2hvdWxkIHRoZW4gYmUgaGFuZGxlZCBieSBwb3dlciBzdXBwbHkgYW5kIHJl
ZmxlY3RlZAp3aXRoIHNvbWUgYXBwcm9wcmlhdGUgdXNhZ2Ugb2YgdGhlIHJlZ3VsYXRvciBmcmFt
ZXdvcmsuCgpUaGF0IDEyMG1zIGRlbGF5LCBob3dldmVyLCBtdXN0IGJlIHRoZXJlIGZvciBhIHJl
YXNvbiwgdGhhdCBpcywgbW9zdApsaWtlbHkgdG8gZGV2ZWxvcCB0aGlzIHF1aWNrbHkgd2l0aG91
dCBleHBvc2luZyBhIHByb3BlciBtb2RlbCBvZiB0aGUKcG93ZXIgc3VwcGxpZXMgdG8gdGhlIGRy
aXZlci4KClNvLi4uIGluIHRoaXMgY2FzZSwgd2l0aCB0aGUgZGF0YXNoZWV0IGFsb25lLCB5b3Ug
d29uJ3QgZ28gdmVyeSBmYXIsCnlvdSB3b3VsZCBuZWVkIHRoZSBhY3R1YWwgbW9kdWxlIChwcm9i
YWJseSBjb25uZWN0ZWQgdG8gYSBSYXNwYmVycnkgUGkKdG8gY2F0Y2ggYSB0eXBpY2FsIHVzYWdl
KS4gU3RpbGwsIGl0J3MgdXN1YWxseSB3b3J0aCBhIGNoZWNrLiBJbiBhbnkKY2FzZSwgbW9zdCBs
aWtlbHksIGFzIEFuZHkgc3VnZ2VzdGVkLCB0aGlzIGZ1bmN0aW9uIGNhbiBldmVudHVhbGx5IGJl
CmRyb3BwZWQuCgotLSAKU3RlZmFubwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
